#!/bin/bash
#
# Utility that moves pictures to your hard drive then update the A-GPS file.
# Using this utility to pull pictures every time can be a way to make sure you update the A-GPS file regularly.

#
# Load settings.
#
source settings.source

#
# Create destination folder.
#
DATE=`date +%Y%m%d` # Example: 20180709
DESTINATION="$PICTURES_FOLDER/$DATE"
if [ -d "$DESTINATION" ]; then
  # If directory already exists, add time suffix
  TIME=`date +%H%M` # Example: 2257 if the time is 22:57
  DESTINATION="${DESTINATION}_${TIME}"
fi
mkdir "$DESTINATION"

#
# Move the pictures.
#
for FOLDER in "$SD_CARD_PATH"/DCIM/*
do
  # Move all content
  # The argument --backup=t is to avoid overwriting files with the same name, even though that should never happen because we just created that folder.
  mv --backup=t --verbose "${FOLDER}" "$DESTINATION"
done

#
# Update the A-GPS file
#
./update-a-gps-data.sh
echo "Do not forget to load the A-GPS file in the camera's settings after inserting the SD card back."
