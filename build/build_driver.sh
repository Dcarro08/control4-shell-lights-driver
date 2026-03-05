#!/bin/bash

# Script to package the driver as a .c4z file archive

# Define the name of the archive
ARCHIVE_NAME="control4-driver-$(date +%Y%m%d%H%M%S).c4z"

# Create the archive
zip -r ${ARCHIVE_NAME} .

# Provide feedback
if [ $? -eq 0 ]; then
    echo "Packaging successful: ${ARCHIVE_NAME}"
else
    echo "Packaging failed!"
fi
