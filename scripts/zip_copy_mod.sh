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

# Build
build_name="${mod_name}_${mod_version}.zip"
local_build="./dist/${build_name}"

# Make info.json
info_json="  {\n    \"name\": \"$mod_name\",\n    \"version\": \"$mod_version\",\n    \"factorio_version\": \"$factorio_version\",\n    \"title\": \"$mod_title\",\n    \"author\": \"$author\",\n    \"contact\": \"Private\",\n    \"homepage\": \"$homepage_url\",\n    \"description\": \"$mod_description\",\n    \"dependencies\": [\"$mod_dependencies\"]\n  }" 

echo -e "${info_json}" > "${mod_name}/info.json"

echo "Created 'info.json':"

echo -e "${info_json}"

echo -e "\n################\n"

#Zip
    zip -r "$local_build" "$mod_name"

echo "Successfully zipped up $mod_name"

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
