#!/usr/bin/env bash

# Script for creating home/subdirectories

# Working on data icons, also need to create a better header section and add temp directory

# Moving into new directory to shorten path

# Gets the current directory using the pwd command and compares it to /home/$USER If they are not equal, it changes the directory to /home/$USER using the cd command.

if [ "$(pwd)" != "/home/$USER" ]; then
    cd /home/$USER
fi

# Assign the theme path
theme_path="$HOME_THEME_PATH"

# Assigning directory icons

############################################################################################################################################################################################


# Archives
mkdir -p Archives
cat > Archives/.directory <<- archives
[Desktop Entry]
Icon=$theme_path/archives.png
Type=Directory
archives

############################################################################################################################################################################################


# Arch User Repository
mkdir -p AUR
cat > AUR/.directory <<- aur
[Desktop Entry]
Icon=$theme_path/aur.png
Type=Directory
aur

############################################################################################################################################################################################


# Data
mkdir -p Data/{Agriculture,Biology,Census,Chemistry,Climate,Crime/{PDX,OR},Economic,Education,Energy,Geographic,Geologic,Government,Healthcare,Labor,Logistics,Realty,Trade}
cat > Data/.directory <<- data
[Desktop Entry]
Icon=$theme_path/data/database.png
Type=Directory
data

# Data/Subdirectories
######################

# Data/Agriculture
cat > Data/Agriculture/.directory <<- agriculture
[Desktop Entry]
Icon=$theme_path/data/data_agriculture.png
Type=Directory
agriculture

# Data/Biology
cat > Data/Biology/.directory <<- biology
[Desktop Entry]
Icon=$theme_path/data/data_biology.png
Type=Directory
biology

# Data/Census
cat > Data/Census/.directory <<- census
[Desktop Entry]
Icon=$theme_path/data/data_census.png
Type=Directory
census

# Data/Chemistry
cat > Data/Chemistry/.directory <<- chemistry
[Desktop Entry]
Icon=$theme_path/data/data_chemistry.png
Type=Directory
chemistry

# Data/Climate
cat > Data/Climate/.directory <<- climate
[Desktop Entry]
Icon=$theme_path/data/data_meterology.png
Type=Directory
climate

# Data/Crime
cat > Data/Crime/.directory <<- crime
[Desktop Entry]
Icon=$theme_path/data/data_crime.png
Type=Directory
crime

# Data/Crime/PDX
cat > Data/Crime/PDX/.directory <<- crime
[Desktop Entry]
Icon=$theme_path/data/data_crimePDX.png
Type=Directory
crime

# Data/Crime/OR
cat > Data/Crime/OR/.directory <<- crime
[Desktop Entry]
Icon=$theme_path/data/data_crime2.png
Type=Directory
crime

# Data/Economic
cat > Data/Economic/.directory <<- economic
[Desktop Entry]
Icon=$theme_path/data/data_economics.png
Type=Directory
economic

# Data/Education
cat > Data/Education/.directory <<- education
[Desktop Entry]
Icon=$theme_path/data/data_education.png
Type=Directory
education

# Data/Energy
cat > Data/Energy/.directory <<- energy
[Desktop Entry]
Icon=$theme_path/data/data_energy.png
Type=Directory
energy

# Data/Geographic
cat > Data/Geographic/.directory <<- geographic
[Desktop Entry]
Icon=$theme_path/data/data_geographic.png
Type=Directory
geographic

# Data/Geologic
cat > Data/Geologic/.directory <<- geologic
[Desktop Entry]
Icon=$theme_path/data/data_geo.png
Type=Directory
geologic

# Data/Government
cat > Data/Government/.directory <<- government
[Desktop Entry]
Icon=$theme_path/data/data_gov.png
Type=Directory
government

# Data/Healthcare
cat > Data/Healthcare/.directory <<- healthcare
[Desktop Entry]
Icon=$theme_path/data/data_healthcare.png
Type=Directory
healthcare

# Data/Labor
cat > Data/Labor/.directory <<- labor
[Desktop Entry]
Icon=$theme_path/data/data_labor.png
Type=Directory
labor

# Data/Logistics
cat > Data/Logistics/.directory <<- logistics
[Desktop Entry]
Icon=$theme_path/data/data_logistics.png
Type=Directory
logistics

# Data/Realty
cat > Data/Realty/.directory <<- realty
[Desktop Entry]
Icon=$theme_path/data/data_housing.png
Type=Directory
realty

# Data/Trade
cat > Data/Trade/.directory <<- trade
[Desktop Entry]
Icon=$theme_path/data/data_trade.png
Type=Directory
trade

############################################################################################################################################################################################


# Desktop
cat > Desktop/.directory <<- desktop
[Desktop Entry]
Icon=$theme_path/desktop.png
Type=Directory
desktop

############################################################################################################################################################################################


# Documents
cat > Documents/.directory <<- documents
[Desktop Entry]
Icon=$theme_path/documents.png
Type=Directory
documents

############################################################################################################################################################################################


# Downloads
cat > Downloads/.directory <<- downloads
[Desktop Entry]
Icon=$theme_path/downloads.png
Type=Directory
downloads

############################################################################################################################################################################################


# Legal
mkdir -p Legal
cat > Legal/.directory <<- legal
[Desktop Entry]
Icon=$theme_path/legal.png
Type=Directory
legal

############################################################################################################################################################################################


# Life
mkdir -p Life
cat > Life/.directory <<- life
[Desktop Entry]
Icon=$theme_path/life.png
Type=Directory
life

############################################################################################################################################################################################

# Logs
mkdir -p Logs/{Benchmarks,Notifications}
cat > Logs/.directory <<- logs
[Desktop Entry]
Icon=$theme_path/logs.png
Type=Directory
logs

# Logs/Subdirectories
######################

# Logs/Benchmarks
cat > Logs/Benchmarks/.directory <<- benchmarks
[Desktop Entry]
Icon=$theme_path/benchmarks.png
Type=Directory
benchmarks

# Logs/Notifications
cat > Logs/Notifications/.directory <<- notifications
[Desktop Entry]
Icon=$theme_path/notifications.png
Type=Directory
notifications

############################################################################################################################################################################################

# Music
mkdir -p Music/Audio
cat > Music/.directory <<- music
[Desktop Entry]
Icon=$theme_path/music.png
Type=Directory
music

# Music/Subdirectories
#######################

# Audio
cat > Music/Audio/.directory <<- audio
[Desktop Entry]
Icon=$theme_path/audio.png
Type=Directory
audio

############################################################################################################################################################################################


# Pictures
cat > Pictures/.directory <<- pictures
[Desktop Entry]
Icon=$theme_path/pictures.png
Type=Directory
pictures

############################################################################################################################################################################################


# Projects
mkdir -p Projects
cat > Projects/.directory <<- projects
[Desktop Entry]
Icon=$theme_path/projects.png
Type=Directory
projects

############################################################################################################################################################################################


# Public
cat > Public/.directory <<- public
[Desktop Entry]
Icon=$theme_path/public.png
Type=Directory
public

############################################################################################################################################################################################


# R
cat > R/.directory <<- r
[Desktop Entry]
Icon=$theme_path/r.png
Type=Directory
r

############################################################################################################################################################################################


# School
mkdir -p School/{Audits,Current,Future,Previous}
cat > School/.directory <<- school
[Desktop Entry]
Icon=$theme_path/school.png
Type=Directory
school

# School/Subdirectories
########################

# School/Audits
cat > School/Audits/.directory <<- audits
[Desktop Entry]
Icon=$theme_path/audits.png
Type=Directory
audits

# School/Current
cat > School/Current/.directory <<- current
[Desktop Entry]
Icon=$theme_path/current.png
Type=Directory
current

# School/Future
cat > School/Future/.directory <<- future
[Desktop Entry]
Icon=$theme_path/future.png
Type=Directory
future

# School/Previous
cat > School/Previous/.directory <<- previous
[Desktop Entry]
Icon=$theme_path/previous.png
Type=Directory
previous

############################################################################################################################################################################################


# Security
mkdir -p Security/{Firewall,Reports,Scans,VPN}
cat > Security/.directory <<- security
[Desktop Entry]
Icon=$theme_path/security.png
Type=Directory
security

# Security/Subdirectories
##########################

# Security/Firewall
cat > Security/Firewall/.directory <<- firewall
[Desktop Entry]
Icon=$theme_path/firewall.png
Type=Directory
firewall

# Security/Quarantined
cat > Security/Quarantined/.directory <<- quarantined
[Desktop Entry]
Icon=$theme_path/quarantined.png
Type=Directory
quarantined

# Security/Reports
cat > Security/Reports/.directory <<- reports
[Desktop Entry]
Icon=$theme_path/reports.png
Type=Directory
reports

# Security/Scans
cat > Security/Scans/.directory <<- scans
[Desktop Entry]
Icon=$theme_path/scans.png
Type=Directory
scans

# Security/VPN
cat > Security/VPN/.directory <<- vpn
[Desktop Entry]
Icon=$theme_path/vpn.png
Type=Directory
vpn

############################################################################################################################################################################################


# Temp
mkdir -p /home/$USER/Temp/
cat > Temp/.directory <<- temp
[Desktop Entry]
Icon=$theme_path/temp.png
Type=Directory
temp

############################################################################################################################################################################################


# Templates
mkdir -p /home/$USER/Templates/{Design,Office,Scripts}
cat > Templates/.directory <<- templates
[Desktop Entry]
Icon=$theme_path/templates.png
Type=Directory
templates

# Templates/Subdirectories
###########################

# Templates/Design
cat > Templates/Design/.directory <<- design
[Desktop Entry]
Icon=$theme_path/design.png
Type=Directory
design

# Templates/Office
cat > Templates/Office/.directory <<- office
[Desktop Entry]
Icon=$theme_path/office.png
Type=Directory
office

# Templates/Scripts
cat > Templates/Scripts/.directory <<- scripts
[Desktop Entry]
Icon=$theme_path/scripts.png
Type=Directory
scripts

############################################################################################################################################################################################


# Videos
cat > Videos/.directory <<- videos
[Desktop Entry]
Icon=$theme_path/videos.png
Type=Directory
videos

############################################################################################################################################################################################


# Work
mkdir -p Work
cat > Work/.directory <<- work
[Desktop Entry]
Icon=$theme_path/work.png
Type=Directory
work

############################################################################################################################################################################################

#
#
#
# for dir in $(find -name "Assets" -type d ); do
#     cat > "$dir"/.directory <<- assets
#     [Desktop Entry]
#     Icon=$theme_path/assets.png
#     Type=Directory
# assets
# done
#
#
# for dir in $(find -name "Cheatsheets" -type d ); do
#     cat > "$dir"/.directory <<- cheatsheets
#     [Desktop Entry]
#     Icon=$theme_path/cheatsheets.png
#     Type=Directory
# cheatsheets
# done
#
# for dir in $(find -name "Publications" -type d ); do
#     cat > "$dir"/.directory <<- publications
#     [Desktop Entry]
#     Icon=$theme_path/publications.png
#     Type=Directory
# publications
# done
#
# for dir in $(find -name "Vignettes" -type d ); do
#     cat > "$dir"/.directory <<- vignettes
#     [Desktop Entry]
#     Icon=$theme_path/vignettes.png
#     Type=Directory
# vignettes
# done
