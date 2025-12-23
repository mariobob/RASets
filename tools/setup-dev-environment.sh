#!/bin/bash
# =============================================================================
# RetroAchievements Development Environment Setup
# =============================================================================
# Detects OS and runs the appropriate setup script.
#
# Usage: ./setup-dev-environment.sh [game-folder]
# =============================================================================

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

case "$(uname -s)" in
    Darwin)
        echo "🍎 macOS detected"
        echo ""
        exec "$SCRIPT_DIR/setup/setup-macos.sh" "$@"
        ;;
    Linux)
        echo "🐧 Linux detected"
        echo ""
        exec "$SCRIPT_DIR/setup/setup-linux.sh" "$@"
        ;;
    MINGW*|MSYS*|CYGWIN*)
        echo "🪟 Windows detected"
        echo ""
        exec "$SCRIPT_DIR/setup/setup-windows.sh" "$@"
        ;;
    *)
        echo "❌ Unknown OS: $(uname -s)"
        exit 1
        ;;
esac
