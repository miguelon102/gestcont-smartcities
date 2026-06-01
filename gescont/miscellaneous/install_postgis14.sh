#!/bin/sh
#shebang line. Indicates how to execute this file.
##/*source: https://trac.osgeo.org/postgis/wiki/UsersWikiPostGIS3UbuntuPGSQLApt*/

echo "Installing postgis"

echo "Showing the linux version"
sudo lsb_release -a 

echo "Installing certificate management software"
apt install ca-certificates gnupg

echo "Getting the repo key and storing it in trusted repos"
curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/apt.postgresql.org.gpg >/dev/null

echo "Creating the /etc/apt/sources.list.d/pgdg.list file with the repo address"
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

# to allow dependencies to be installed
echo "Adding info at the eng of /etc/apt/preferences.d/pgdg.pref to to allow dependencies to be installed"
cat << EOF >> /etc/apt/preferences.d/pgdg.pref
Package: *
Pin: release o=apt.postgresql.org
Pin-Priority: 500
EOF

echo "Getting the list of software of the repos. Necessary before new installs"
sudo apt update

echo "Updating the system. Necessary before new installs"
sudo apt upgrade

echo "Installing postgres 14"
sudo apt install postgresql-14 

echo "Installing postgis 3"
sudo apt install postgresql-14-postgis-3

Getting the command line tools: shp2pgsql, raster2pgsql
sudo apt install postgis