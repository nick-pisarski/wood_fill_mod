# Wood Fill Mod

A Factorio mod that allows players to convert wood into landfill, providing an alternative way to create land tiles.

## Description

The Wood Fill mod adds a new recipe that converts 50 wood into 1 landfill. This provides players with a sustainable way to create landfill using renewable wood resources instead of relying solely on stone.

## Features

- **Wood to Landfill Recipe**: Convert 50 wood into 1 landfill
- **Fast Crafting**: 0.5 second crafting time
- **Base Game Compatible**: Works with Factorio 2.0+
- **No Dependencies**: Only requires the base game

## Installation

### Manual Installation

1. Download the latest release from the `dist/` folder
2. Extract the zip file to your Factorio mods directory:
   - Windows: `%APPDATA%/Factorio/mods/`
   - Linux: `~/.factorio/mods/`
   - macOS: `~/Library/Application Support/factorio/mods/`

### Using the Build Script

The project includes a build script that can automatically package and install the mod:

```bash
# Build the mod
./scripts/zip_copy_mod.sh

# Build and install to Factorio mods folder
./scripts/zip_copy_mod.sh --install
```

## Development

### Project Structure

```
wood_fill_mod/
├── wood-fill/           # Main mod files
│   ├── info.json       # Mod metadata
│   └── data.lua        # Recipe definitions
├── scripts/            # Build and utility scripts
│   ├── zip_copy_mod.sh # Main build script
│   ├── add_to_modlist.sh # Mod list management
│   └── list_mods.sh    # List installed mods
├── dist/               # Built mod packages
├── examples/           # Example mods and configurations
└── README.md          # This file
```

### Building the Mod

1. Ensure you have the required dependencies
2. Run the build script:
   ```bash
   ./scripts/zip_copy_mod.sh
   ```
3. The built mod will be available in the `dist/` folder

### Mod Information

- **Name**: wood-fill
- **Version**: 0.1.2
- **Factorio Version**: 2.0+
- **Author**: RR
- **Dependencies**: base >= 2.0

## Recipe Details

The mod adds a single recipe:

- **Input**: 50 wood
- **Output**: 1 landfill
- **Crafting Time**: 0.5 seconds
- **Category**: crafting
- **Subgroup**: terrain
- **Order**: b[landfill]-a[dirt]

## Scripts

### zip_copy_mod.sh
Main build script that:
- Generates the mod's info.json file
- Creates a zip package of the mod
- Optionally installs to the Factorio mods folder

### add_to_modlist.sh
Utility script to add mod entries to the mod-list.json file.

### list_mods.sh
Lists all mods currently installed in the Factorio mods directory.

## License

This mod is provided as-is for personal use.

## Contributing

This is a private mod project. For questions or issues, please contact the author directly.
