# (c) 2014-2015 Sam Nazarko
# email@samnazarko.co.uk

#!/bin/bash

. ../common.sh

make clean

REV="c72960b33ee7be8078913ccf5f4dbb598d4ca44c"

echo -e "Building package mediacenter-skin-osmc"
echo -e "Downloading skin"
pull_source "https://github.com/osmc/skin.osmc/archive/${REV}.tar.gz" "$(pwd)/src"
if [ $? != 0 ]; then echo -e "Error downloading" && exit 1; fi
pushd src/skin.osmc-*
install_patch "../../patches" "all"
popd
echo -e "Moving files in to place"
mkdir -p files/usr/share/kodi/addons
cp -ar src/skin.osmc-${REV}/ files/usr/share/kodi/addons/skin.osmc
if [ -f files/usr/share/kodi/addons/skin.osmc/media/Textures.xbt ]
then
    echo "TexturePacked file detected, deleting unneeded artefacts"
    pushd files/usr/share/kodi/addons/skin.osmc/media
    find . ! -name 'Textures.xbt' -delete
    popd
fi

dpkg_build files/ mediacenter-skin-osmc.deb
