#!/bin/sh

if [ "$1" = "" ]; then
    echo "Usage $0 <GPG-key-ID>"
    exit 1
fi

for repo in "ubuntu/focal"
do
    echo "publishing $repo"
    cd $repo
    dpkg-scanpackages --multiversion . > Packages
    gzip -k -f Packages
    apt-ftparchive release . > Release
    gpg --default-key "$1" -abs -o - Release > Release.gpg
    gpg --default-key "$1" --clearsign -o - Release > InRelease
    cd -
done

exit 0


