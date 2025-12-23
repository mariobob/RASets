# RetroAchievements sets
Achievement sets and subsets in development.

## Sets
| Platform | Game | Type | Status | Link |
| --- | --- | --- | --- | --- |

## Tools
Helper scripts in the `tools/` directory:

| Tool | Description |
| --- | --- |
| `setup-dev-environment.sh` | Installs PCSX2, RetroArch, Bit Slicer, Hex Fiend, and other dev tools |
| `rascript` | Wrapper for RATools CLI. Set `RATOOLS_DIR` env var or clone RATools to `~/RATools` |

### Quick start
```bash
# 1. Install dev tools
./tools/setup-dev-environment.sh

# 2. Build RATools (one-time)
git clone https://github.com/Jamiras/RATools.git ~/RATools
cd ~/RATools && git submodule update --init --recursive
dotnet build --configuration Release

# 3. Compile a .rascript file
./tools/rascript -i game-folder/achievements.rascript -o game-folder/
```

## Resources
- [RetroAchievements](https://retroachievements.org/)
- [Developer Documentation](https://docs.retroachievements.org/developer-docs/)
- [RATools](https://github.com/Jamiras/RATools) - RAScript compiler
