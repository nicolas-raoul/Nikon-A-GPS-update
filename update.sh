#!/bin/bash
# Download the Nikon A-GPS file and puts it on the SD card.

#
# Path to your SD card.
#
# Note:
#  It depends on your operating system, and on how you formatted your SD card, so adapt the lines below as appropriate.
#  The current code works on Ubuntu. Pull requests welcome for other operating systems.
#
USERNAME=`whoami`
SD_CARD_PATH="/media/$USERNAME/NIKON\ D5300"

#
# Download the A-GPS file.
#
# Note:
#  The most reliable method to get the download URL would be to use an automatic browser (such as scrapy) to accept the license and get the link.
#  But it seems that the link below always points to the most recent file, so let's be lazy and use it.
#  If it fails please create an issue, thanks!
#
wget -O NML_28A.ee "http://crossgate.nikonimglib.com/dsd_redirect/redirect.do?P=F9JnZ07&R=SLOnf25&L=uTmf400&O=CVMiG00"

# Copy the A-GPS file to the SD card.
#
# Note:
#  It will overwrite any previously present file with the same name.
#
cp NML_28A.ee $SD_CARD_PATH/Nikon/

