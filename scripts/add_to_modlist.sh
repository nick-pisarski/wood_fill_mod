# Set the mod name and path
mod_name="WoodFillMod"
mod_path="/path/to/your/mod/mod.zip"

# Set the path to the mod-list.json file
mod_list_file="$HOME/.factorio/mods/mod-list.json"

# Check if the mod entry already exists in the mod-list.json file
if grep -q "\"name\": \"$mod_name\"," "$mod_list_file"; then
  echo "Mod '$mod_name' is already present in mod-list.json."
else
  # Generate a unique mod ID
  mod_id=$(date +%s)

  # Add the mod entry to the mod-list.json file
  echo -e "  {\n    \"name\": \"$mod_name\",\n    \"enabled\": true,\n    \"version\": \"0.0.1\",\n    \"title\": \"Your Mod Title\",\n    \"author\": \"Your Name\",\n    \"path\": \"$mod_path\",\n    \"dependencies\": [],\n    \"description\": \"Your mod description\",\n    \"homepage\": \"https://yourmodhomepage.com\",\n    \"factorio_version\": \"$factorio_version\",\n    \"name_version\": \"$mod_name_$mod_version\",\n    \"id\": \"$mod_id\"\n  }," >> "$mod_list_file"

  echo "Mod '$mod_name' added to mod-list.json."
fi