#!/bin/bash

# Information
author="RR"
homepage_url=""
factorio_version="2.0"

# Mod Information
mod_name="wood-fill"
mod_version="0.1.2"
mod_title="Wood Fill"
mod_description="Wood to Landfill"
mod_dependencies="base >= 2.0"

# Factorio Mod Info
factorio_mods_folder="$HOME/AppData/Roaming/Factorio/mods"

# Make info.json
info_json="  {
    \"name\": \"$mod_name\",
    \"version\": \"$mod_version\",
    \"factorio_version\": \"$factorio_version\",
    \"title\": \"$mod_title\",
    \"author\": \"$author\",
    \"contact\": \"Private\",
    \"homepage\": \"$homepage_url\",
    \"description\": \"$mod_description\",
    \"dependencies\": [\"$mod_dependencies\"]
  }"

echo -e "${info_json}" > "${mod_name}/info.json"

echo "Created 'info.json':"

echo -e "${info_json}"

echo -e "\n################\n"

#Zip
# Check if dist folder exists, create if it doesn't
output_folder="./dist"
if [ ! -d "$output_folder" ]; then
    echo "Creating output directory: $output_folder"
    mkdir -p "$output_folder"
    echo "Output directory created successfully"
else
    echo "Output directory already exists: $output_folder"
fi

# Build
build_name="${mod_name}_${mod_version}.zip"
local_build="${output_folder}/${build_name}"
if zip -r "$local_build" "$mod_name"; then
    echo "Successfully zipped up $mod_name"
else
    echo "Error: Failed to zip up $mod_name"
    exit 1
fi

# Check if --install argument is provided
if [[ "$1" == "--install" ]]; then
    # Copy the mod to the Factorio mods folder
    echo -e "\nCopying '${build_name}' over to ${factorio_mods_folder}"

    cp "$local_build" "$factorio_mods_folder"

    echo "${mod_title} successfully moved to the Factorio mods folder."
else
    echo -e "\nSkipping installation. Use --install to copy to Factorio mods folder."
fi

echo -e "\nComplete"
