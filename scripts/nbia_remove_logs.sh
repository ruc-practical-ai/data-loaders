#!/usr/bin/bash

# =============================================================================
# nbia_remove_logs.sh
#
# Description:
# Convenience script to remove logs generated by the NBIA Data Retriever.
# The NBIA Data Retriever is used to download data from The Cancer Imaging
# Archive (TCIA). This script is intended for use inside the devcontainer that
# accompanies this repository.
#
# Usage:
#
# bash nbia_remove_logs.sh
#
# =============================================================================

DOWNLOAD_DIR="/workspaces/data-loaders/downloads/nbia"

echo "Removing NBIA log files..."

rm "$DOWNLOAD_DIR"/*.log*

if [ $? -eq 0 ]; then
    echo "Removed NBIA logs."
else
    echo "Failed to remove NBIA logs."
fi
