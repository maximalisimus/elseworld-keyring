#!/bin/bash
# maximalisimus keyring
#
sudo pacman-key --init
wait
wget https://maximalisimus.github.io/elseworld-keyring/elseworld{.gpg,-revoked,-trusted,-id.txt}
wait
mv elseworld{.gpg,-revoked,-trusted} /usr/share/pacman/keyrings/
wait
pacman-key --add /usr/share/pacman/keyrings/elseworld.gpg
wait
ewid=$(cat elseworld-id.txt)
wait
pacman-key --lsign-key ${ewid}
wait
pacman-key --populate archlinux elseworld
wait
pacman-key --refresh-keys
wait
rm -rf elseworld-id.txt
exit 0

