#!/bin/bash

# Define file paths
SOURCE_FILE="/home/sia268/manage_virtual_desktop/xorg.conf"
TARGET_DIR="/usr/share/X11/xorg.conf.d/"
TARGET_FILE="${TARGET_DIR}xorg.conf"

# Check the input parameter
if [ "$1" == "start" ]; then
    # Start virtual desktop
    if [ -f "$SOURCE_FILE" ]; then
        sudo cp "$SOURCE_FILE" "$TARGET_FILE"
        echo "Virtual desktop started."
    else
        echo "Source file does not exist: $SOURCE_FILE"
    fi
elif [ "$1" == "stop" ]; then
    # Stop virtual desktop
    if [ -f "$TARGET_FILE" ]; then
        sudo rm "$TARGET_FILE"
        echo "Virtual desktop stopped."
    else
        echo "Target file does not exist: $TARGET_FILE"
    fi
else
    echo "Usage: $0 {start|stop}"
fi
