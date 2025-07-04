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