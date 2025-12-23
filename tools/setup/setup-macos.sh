#!/bin/bash
# =============================================================================
# RetroAchievements Development Environment Setup (macOS)
# =============================================================================
# Installs tools needed for achievement development.
#
# Usage: ./setup-dev-environment.sh [game-folder]
#
# SAFE: Checks if apps/commands exist before installing.
#       Asks for confirmation before each installation.
#       Python packages are installed in a local virtual environment.
# =============================================================================

set -e  # Exit on error

# =============================================================================
# Configuration
# =============================================================================

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
REPO_ROOT="$(dirname "$SCRIPT_DIR")"
GAME_FOLDER="${1:-}"
VENV_DIR="$REPO_ROOT/.venv"

# Counters
INSTALLED_COUNT=0
SKIPPED_COUNT=0

# =============================================================================
# Helper Functions
# =============================================================================

# Check if an app exists (supports patterns like PCSX2-v*)
app_exists() {
    local app_pattern="$1"
    compgen -G "/Applications/${app_pattern}*.app" > /dev/null 2>&1 ||
    compgen -G "$HOME/Applications/${app_pattern}*.app" > /dev/null 2>&1
}

# Check if a command exists
cmd_exists() {
    command -v "$1" &> /dev/null
}

# Ask user for confirmation (returns 0 for yes, 1 for no)
ask_install() {
    local name="$1"
    local description="$2"
    echo ""
    read -p "📦 Install $name ($description)? [y/N] " -n 1 -r
    echo ""
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        return 0
    else
        ((SKIPPED_COUNT++))
        echo "   Skipped."
        return 1
    fi
}

# Install a brew formula (command-line tool)
install_formula() {
    local formula="$1"
    local cmd="$2"
    local description="$3"

    if cmd_exists "$cmd"; then
        echo "✓ $formula already installed"
    elif ask_install "$formula" "$description"; then
        brew install "$formula" && ((INSTALLED_COUNT++)) || echo "⚠ $formula installation issue"
    fi
}

# Install a brew cask (GUI app)
install_cask() {
    local cask="$1"
    local app_pattern="$2"
    local description="$3"

    if app_exists "$app_pattern"; then
        echo "✓ $cask already installed"
    elif ask_install "$cask" "$description"; then
        brew install --cask "$cask" && ((INSTALLED_COUNT++)) || echo "⚠ $cask installation issue"
    fi
}

# =============================================================================
# Setup Functions
# =============================================================================

print_header() {
    echo "╔══════════════════════════════════════════════════════════════════════╗"
    echo "║  RetroAchievements Development Environment Setup                     ║"
    echo "╚══════════════════════════════════════════════════════════════════════╝"
    echo ""
}

check_homebrew() {
    if ! cmd_exists "brew"; then
        echo "⚠ Homebrew not found."
        if ask_install "Homebrew" "macOS package manager - required for other tools"; then
            /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
            ((INSTALLED_COUNT++))
        else
            echo ""
            echo "❌ Homebrew is required to install other tools. Exiting."
            exit 1
        fi
    else
        echo "✓ Homebrew found"
    fi
}

install_dev_tools() {
    echo ""
    echo "Checking development tools..."
    echo "═══════════════════════════════════════════════════════════════════════"

    # Required for RATools
    install_formula "dotnet" "dotnet" "required for RATools compiler"

    # Emulators
    install_cask "pcsx2" "PCSX2" "PS2 emulator with RetroAchievements support"
    install_cask "retroarch" "RetroArch" "multi-system emulator with RA integration"

    # Development tools
    install_formula "xdelta" "xdelta3" "ROM/ISO patching tool"
    install_cask "bit-slicer" "Bit Slicer" "memory scanner for macOS"
    install_cask "hex-fiend" "Hex Fiend" "hex editor"

    # Utilities
    install_formula "python3" "python3" "for helper scripts"
    install_formula "p7zip" "7z" "for ISO extraction"
}

setup_python_venv() {
    echo ""
    if [ ! -d "$VENV_DIR" ]; then
        if ask_install "Python venv" "virtual environment for Python packages"; then
            python3 -m venv "$VENV_DIR"
            echo "   Created virtual environment at .venv/"
            ((INSTALLED_COUNT++))
        fi
    else
        echo "✓ Python virtual environment already exists"
    fi
}

print_summary() {
    echo ""
    echo "═══════════════════════════════════════════════════════════════════════"
    echo ""

    if [ $INSTALLED_COUNT -eq 0 ] && [ $SKIPPED_COUNT -eq 0 ]; then
        echo "✅ All tools already installed!"
    elif [ $INSTALLED_COUNT -gt 0 ]; then
        echo "✅ Installed $INSTALLED_COUNT tool(s)"
    fi

    if [ $SKIPPED_COUNT -gt 0 ]; then
        echo "⏭️  Skipped $SKIPPED_COUNT tool(s)"
    fi
}

print_next_steps() {
    echo ""
    echo "╔══════════════════════════════════════════════════════════════════════╗"
    echo "║  NEXT STEPS                                                          ║"
    echo "╠══════════════════════════════════════════════════════════════════════╣"
    echo "║                                                                      ║"
    echo "║  1. BUILD RATOOLS (if not already done):                             ║"
    echo "║     git clone https://github.com/Jamiras/RATools.git ~/RATools       ║"
    echo "║     cd ~/RATools && git submodule update --init --recursive          ║"
    echo "║     dotnet build --configuration Release                             ║"
    echo "║                                                                      ║"
    echo "║  2. PCSX2 SETUP (for PS2 games):                                     ║"
    echo "║     • Launch PCSX2                                                   ║"
    echo "║     • Configure PS2 BIOS (you need legitimate BIOS files)            ║"
    echo "║     • Settings > Achievements > Enable                               ║"
    echo "║     • Enable 'Test Unofficial Achievements' for development          ║"
    echo "║                                                                      ║"
    echo "║  3. RETROARCH SETUP (alternative):                                   ║"
    echo "║     • Launch RetroArch                                               ║"
    echo "║     • Settings > Achievements > Enable Achievements                  ║"
    echo "║     • Enter your RetroAchievements credentials                       ║"
    echo "║     • Download cores for your target console                         ║"
    echo "║                                                                      ║"
    echo "║  4. RETROACHIEVEMENTS:                                               ║"
    echo "║     • Register at https://retroachievements.org/                     ║"
    echo "║     • Join Discord: https://discord.gg/retroachievements             ║"
    echo "║     • Apply for Jr-Dev role in #role-request                         ║"
    echo "║                                                                      ║"
    echo "║  5. MEMORY HUNTING:                                                  ║"
    echo "║     • Use Bit Slicer to attach to emulator process                   ║"
    echo "║     • Search for known values (health, money, etc.)                  ║"
    echo "║     • Document findings in your game's resources/code-notes.md       ║"
    echo "║                                                                      ║"
    echo "║  6. ACTIVATE PYTHON ENVIRONMENT:                                     ║"
    echo "║     source .venv/bin/activate                                        ║"
    echo "║                                                                      ║"
    echo "╚══════════════════════════════════════════════════════════════════════╝"
}

create_game_directories() {
    if [ -n "$GAME_FOLDER" ] && [ -d "$REPO_ROOT/$GAME_FOLDER" ]; then
        mkdir -p "$REPO_ROOT/$GAME_FOLDER/badges"
        mkdir -p "$REPO_ROOT/$GAME_FOLDER/notes"
        mkdir -p "$REPO_ROOT/$GAME_FOLDER/patches"
        mkdir -p "$REPO_ROOT/$GAME_FOLDER/resources"
        echo ""
        echo "📁 Created directories in $GAME_FOLDER:"
        echo "   • badges/    - Achievement badge images (128x128 PNG)"
        echo "   • notes/     - Memory hunting notes"
        echo "   • patches/   - xdelta patch files"
        echo "   • resources/ - Cheat codes, memory maps, references"
    fi
}

print_footer() {
    echo ""
    echo "🎮 Happy achievement hunting!"
    echo ""
}

# =============================================================================
# Main
# =============================================================================

main() {
    print_header
    check_homebrew
    install_dev_tools
    setup_python_venv
    print_summary
    print_next_steps
    create_game_directories
    print_footer
}

main "$@"
