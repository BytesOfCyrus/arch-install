#!/usr/bin/env bash
# Function to check if command exists
command_exists () {
    type "$1" &> /dev/null ;
}

# Ensure running as root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Update system first
pacman -Syu --noconfirm

# Install R
pacman -S --noconfirm r

# Check if yay is installed
if ! command_exists yay ; then
    echo "The yay AUR helper is not installed on your system."
    echo "Please install yay and re-run this script."
    exit 1
fi

# Install RStudio
yay -S --noconfirm rstudio-desktop-bin

# Switch to regular user for installing R packages
if [ "$SUDO_USER" ]; then
    real_user="$SUDO_USER"
else
    real_user="$(whoami)"
fi

# A function to install R packages as the correct user
install_r_package() {
    sudo -u "$real_user" R -e "install.packages('$1', repos='http://cran.rstudio.com/')"
}

# Install R packages
# Install R packages
install_r_packages "
    'knitr',
    'rmarkdown',
    'bookdown',
    'dashboard',
    'dashboardthemes',
    'tidyverse',
    'tidycharts',
    'gapminder',
    'gapmap',
    'threejs',
    'igraph',
    'igraphdata',
    'shiny',
    'leaflet',
    'leaflegend',
    'dplyr',
    'tidyr',
    'ggthemes',
    'ggplot2',
    'nycflights13',
    'pander',
    'purr',
    'rio',
    'rvest',
    'googledrive',
    'httr',
    'repurrsive',
    'lubridate',
    'scatterD3',
    'scatterplot3d',
    'jsonlite',
    'viridis',
    'gganimate',
    'psych',
    'RPostgres',
    'RPostgreSQL',
    'pacman',
    'd3r',
    'DataViz',
    'DataVisualizations',
    'klustR',
    'geojson',
    'networkD3',
    'r2d3',
    'collapsibleTree',
    'D3GB',
    'd3Network',
    'd3plus',
    'd3po',
    'd3r',
    'd3Tree',
    'jsonify',
    'jsonStrings',
    'jsontools',
    'jsonld',
    'json64',
    'jsonvalidate',
    'jsonstat',
    'jstable',
    'latex2exp',
    'latrend',
    'mathpix',
    'RcmdrPlugin.Export',
    'RColorBrewer',
    'texPreview',
    'texreg',
    'tikzDevice',
    'timelineR',
    'timelineS',
    'timeDate',
    'tilegramsR',
    'tilemaps',
    'tiler',
    'TileManager',
    'geoelectrics',
    'geofabrik',
    'GeodRegr',
    'geodata',
    'UKgrid',
    'USgrid',
    'agridat',
    'agrifeature',
    'finnishgrid',
    'finnts',
    'finreportr',
    'firebase',
    'fisheye',
    'fishmethods',
    'fishtree',
    'flashCard',
    'foreSIGHT',
    'gdistance',
    'gclus',
    'gear',
    'openskies',
    'openssl',
    'openSTARS',
    'OpenStreetMap',
    'pdxTrees',
    'pedquant',
    'cropdatape',
    'crimedata',
    'cluster',
    'matlib',
    'MatrixCorrelation',
    'golem'
"

echo "Setup complete."
