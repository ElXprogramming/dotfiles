#!/bin/bash

# 1. Configuration
DIR="$HOME/Pictures/Wallpapers"
CACHE_FILE="$HOME/.cache/current_wallpaper_index"

# 2. Get list of images (sorted alphabetically)
# We use arrays to handle filenames with spaces correctly
mapfile -t WALLPAPERS < <(find "$DIR" -maxdepth 1 -type f \( -name "*.jpg" -o -name "*.png" -o -name "*.jpeg" \) | sort)

# 3. Check if we have images
NUM_WALLPAPERS=${#WALLPAPERS[@]}
if [ "$NUM_WALLPAPERS" -eq 0 ]; then
    notify-send "Error" "No images found in $DIR"
    exit 1
fi

# 4. Read the last index, or start at -1 if first run
if [ -f "$CACHE_FILE" ]; then
    CURRENT_INDEX=$(cat "$CACHE_FILE")
else
    CURRENT_INDEX=-1
fi

# 5. Calculate the next index (Loop back to 0 if at the end)
NEXT_INDEX=$(( (CURRENT_INDEX + 1) % NUM_WALLPAPERS ))

# 6. Get the file path for the next wallpaper
NEXT_WALLPAPER="${WALLPAPERS[$NEXT_INDEX]}"

# 7. Set it using swww
swww img "$NEXT_WALLPAPER" --transition-type wipe --transition-angle 30 --transition-step 90 --transition-fps 60

# 8. Save the new index and notify
echo "$NEXT_INDEX" > "$CACHE_FILE"
notify-send "Wallpaper Next" "$(basename "$NEXT_WALLPAPER")"
