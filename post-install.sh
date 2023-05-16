#!/bin/bash

# Author: Cyrus Cravens
# Post base install script

# Directories Setup
# Sets permanent location for fonts, icons, & wallpapers needed to customize the directories.
mkdir -p /usr/share/{icons,fonts,wallpapers} # Ensuring directories exist
mkdir -p /usr/share/wallpapers/Custom # Change Custom if applicable

# ICONS
cd /tmp/Arch-Template/.icons/ # Moving to icons .file
cp -r * /usr/share/icons/ # Copies my icons to a shared icons directory

# WALLPAPERS
cd /tmp/Arch-Template/.wallpapers/ # Moving to wallpapers .file
cp -r * /usr/share/wallpapers/Custom/ # Copies my backgrounds to a shared wallpapers directory

ICONPATH="/usr/share/icons"


# Ask the user if they want the icons installed globally or for specific directories
echo "Do you want to install the icon theme:"
echo "1. Globally (both home and documents directories)"
echo "2. For specific directories (home and documents)"

read -p "Enter your choice [1-2]: " install_choice

# Validate install choice
if ! [[ $install_choice =~ ^[1-2]$ ]]; then
    echo "Invalid choice. Exiting script."
    exit 1
fi

if [ $install_choice -eq 1 ]; then
    # Ask the user for the icon theme to install globally
    echo "Which icon theme do you want to install globally?"
    echo "1. 3D"
    echo "2. Colored"
    echo "3. Gradient"

    read -p "Enter your choice [1-3]: " global

    # Validate global icon theme choice
    if ! [[ $global =~ ^[1-3]$ ]]; then
        echo "Invalid choice. Exiting script."
        exit 1
    fi

    if [ $global -eq 1 ]; then
        # Install 3D icon theme globally
        echo "Installing 3D icon theme globally..."
        # Set the icon theme path for the home directory
        HOME_THEME_PATH="$ICONPATH/3D/Home"
        DOCS_THEME_PATH="$ICONPATH/3D/Documents"
        # Export the icon theme path
        export HOME_THEME_PATH
        export DOCS_THEME_PATH

    elif [ $global -eq 2 ]; then
        # Install Colored icon theme globally
        echo "Installing Colored icon theme globally..."
        # Set the icon theme path based on the selected theme
        HOME_THEME_PATH="$ICONPATH/Colored/Home"
        DOCS_THEME_PATH="$ICONPATH/Colored/Documents"
        # Export the icon theme path
        export HOME_THEME_PATH
        export DOCS_THEME_PATH

    elif [ $global -eq 3 ]; then
        # Install Gradient icon theme globally
        echo "Installing Gradient icon theme globally..."
        # Set the icon theme path based on the selected theme
        HOME_THEME_PATH="$ICONPATH/Gradient/Home"
        DOCS_THEME_PATH="$ICONPATH/Gradient/Documents"
        # Export the icon theme path
        export HOME_THEME_PATH
        export DOCS_THEME_PATH
    fi
elif [ $install_choice -eq 2 ]; then
    # Ask the user for the icon theme for the home directory
    echo "Which icon theme do you want to install for the home directory?"
    echo "1. 3D"
    echo "2. Colored"
    echo "3. Gradient"

    read -p "Enter your choice [1-3]: " home_choice

    # Validate home icon theme choice
    if ! [[ $home_choice =~ ^[1-3]$ ]]; then
        echo "Invalid choice. Exiting script."
        exit 1
    fi

    if [ $home_choice -eq 1 ]; then
        # Install 3D icon theme for home directory
        echo "Installing 3D icon theme for the home directory..."
        # Set the icon theme path for the home directory
        HOME_THEME_PATH="$ICONPATH/3D/Home"
        # Export the icon theme path
        export HOME_THEME_PATH

    elif [ $home_choice -eq 2 ]; then
        # Install Colored icon theme for home directory
        echo "Installing Colored icon theme for the home directory..."
        # Set the icon theme path for the home directory
        HOME_THEME_PATH="$ICONPATH/Colored/Home"
        # Export the icon theme path
        export HOME_THEME_PATH

    elif [ $home_choice -eq 3 ]; then
        # Install Gradient icon theme for home directory
        echo "Installing Gradient icon theme for the home directory..."
        # Set the icon theme path for the home directory
        HOME_THEME_PATH="$ICONPATH/Gradient/Home"
        # Export the icon theme path
        export HOME_THEME_PATH
    fi
    # Ask the user for the icon theme for the documents directory
    echo "Which icon theme do you want to install for the documents directory?"
    echo "1. 3D"
    echo "2. Colored"
    echo "3. Gradient"

    read -p "Enter your choice [1-3]: " docs_choice

    # Validate documents icon theme choice
    if ! [[ $docs_choice =~ ^[1-3]$ ]]; then
        echo "Invalid choice. Exiting script."
        exit 1
    fi

    if [ $docs_choice -eq 1 ]; then
        # Install 3D icon theme for documents directory
        echo "Installing 3D icon theme for the documents directory..."
        # Set the icon theme path for the home directory
        DOCS_THEME_PATH="$ICONPATH/3D/Documents"
        # Export the icon theme path
        export DOCS_THEME_PATH

    elif [ $docs_choice -eq 2 ]; then
        # Install Colored icon theme for documents directory
        echo "Installing Colored icon theme for the documents directory..."
        # Set the icon theme path for the home directory
        DOCS_THEME_PATH="$ICONPATH/Colored/Documents"
        # Export the icon theme path
        export DOCS_THEME_PATH

    elif [ $docs_choice -eq 3 ]; then
        # Install Gradient icon theme for documents directory
        echo "Installing Gradient icon theme for the documents directory..."
        # Set the icon theme path for the home directory
        DOCS_THEME_PATH="$ICONPATH/Gradient/Documents"
        # Export the icon theme path
        export DOCS_THEME_PATH
    fi
fi

cd /tmp/Arch-Template/

# Run the home setup script
bash dir-setup-Home.sh
# Run the documents setup script
bash dir-setup-Documents.sh


