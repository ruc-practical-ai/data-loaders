#!/usr/bin/expect

# =============================================================================
# nbia_resume_downloads.sh
#
# Description:
# Convenience script to resume a download via the command line interface of the
# NBIA Data Retriever. The NBIA Data Retriever is used to download data from
# The Cancer Imaging Archive (TCIA). This script is intended for use inside the
# devcontainer that accompanies this repository.
#
# Dependencies:
# This script assumes that expect is already installed in the environment.
#
# Usage:
#
# expect nbia_resume_download.sh <manifest_filename> <download_location>
#
# Example:
#
# expect nbia_resume_download.sh \
#    /workspaces/data-loaders/nbia_manifest_files/small_test_manifest/manifest-1727052249988.tcia \
#    /workspaces/data-loaders/nbia_downloads/
#
# =============================================================================

set manifest_file [lindex $argv 0]
set download_location [lindex $argv 1]

set timeout 10

spawn /opt/nbia-data-retriever/nbia-data-retriever --cli "$manifest_file" -d "$download_location" -v -F

# Agree to the data usage terms
expect "Do you agree with the Data Usage Agreement? (Y/N)"
send "Y\n"

# Since this is a resumed download, we only need to download the missing series
expect "Enter A for downloading all, M for downloading missing series. E for exiting the program:"
send "M\n"
expect eof
