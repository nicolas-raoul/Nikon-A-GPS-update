#!/bin/bash
# Download the Nikon A-GPS file and puts it on the SD card.

#
# Load settings.
#
source settings.source

#
# Download the A-GPS file.
#
# Note:
#  The most reliable method to get the download URL would be to use an automatic browser (such as scrapy) to accept the license and get the link.
#  But it seems that the link below always points to the most recent file, so let's be lazy and use it.
#  If it fails please create an issue, thanks!
#
wget -O NML_28A.ee "http://crossgate.nikonimglib.com/dsd_redirect/redirect.do?P=F9JnZ07&R=SLOnf25&L=uTmf400&O=CVMiG00"

#
# Copy the A-GPS file to the SD card.
#
# Note:
#  It will overwrite any previously present file with the same name.
#
mv NML_28A.ee "$SD_CARD_PATH/Nikon/"

