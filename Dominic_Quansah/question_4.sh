#!/bin/bash

# Author: Dominic Quansah
# Date Created: 30/08/23
# Description:This Scripts organizes a given directory

# Create files for the work
touch b2.sh bashass.sh bash.sh black.mp3 bubu.avi dame.mov david.flac
dev.log dino.log edochie.jpg efe.log games.avi hunger.mov
mapple.jnp naija.jpg nana.mov peace.py pete.png python.py
shata.flac sheriff.flac toyin.pdf van.avi wale.mp3
wike.avi wiz.mp3 yul.jpg Yvonne.txt zanku.mp3 ghana.avi

# Create directories if they don't exist
mkdir -p music images videos

# Move music files
for file in *.mp3 *.flac; do
    if [ -e "$file" ]; then
        mv "$file" music/
    fi
done

# Move image files
for file in *.jpg *.png; do
    if [ -e "$file" ]; then
        mv "$file" images/
    fi
done

# Move video files
for file in *.avi *.mov; do
    if [ -e "$file" ]; then
        mv "$file" videos/
    fi
done

# Remove log files
rm -f *.log

# Print a message indicating the organization is complete
echo "Directory organized."
