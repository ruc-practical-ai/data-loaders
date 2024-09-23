#!/usr/bin/bash

# =============================================================================
# nbia_data_retriever_install.sh
#
# Description:
# Installs the National Biomedical Imaging Archive (NBIA) Data Retriever. The
# NBIA Data Retriever is used to download data from The Cancer Imaging Archive
# (TCIA). This script is intended for use inside the devcontainer that
# accompanies this repository.
#
# This process is mostly derived from the instructions here:
# https://wiki.cancerimagingarchive.net/display/NBIA/NBIA+Data+Retriever+Command-Line+Interface+Guide
#
# Usage:
#
# bash nbia_data_retriever_install.sh
#
# =============================================================================

echo "Downloading NBIA Data Retriever..."

installer_web_location="https://cbiit-download.nci.nih.gov/nbia/releases/ForTCIA/NBIADataRetriever_4.4/nbia-data-retriever-4.4.2.deb"

wget "$installer_web_location"

if [ $? -eq 0 ]; then
    echo "Downloaded NBIA Data Retriever!"
else
    echo "Failed to download NBIA Data Retriever."
    exit 1
fi

# The NBIA Data Retriever installer requires a desktop directory to run. If
# this directory is not present the installer will error when attempting to
# make a shortcut in this directory. The shortcut itself is not needed since
# this repository uses the CLI for the NBIA Data Retriever.

echo "Creating desktop directory needed by install and running installer..."

sudo mkdir -p /usr/share/desktop-directories/ &&
sudo -S dpkg -i nbia-data-retriever-4.4.2.deb &&
rm nbia-data-retriever-4.4.2.deb

if [ $? -eq 0 ]; then
    echo "Installed NBIA Data Retriever!"
else
    echo "Failed to install NBIA Data Retriever."
    exit 1
fi

