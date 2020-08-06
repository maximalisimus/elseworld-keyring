#!/bin/bash
# maximalisimus keyring
#
sudo pacman-key --init
wait
wget https://maximalisimus.github.io/elseworld-keyring/elseworld{.gpg,-revoked,-trusted,-id.txt}
wait
sudo mv elseworld{.gpg,-revoked,-trusted} /usr/share/pacman/keyrings/
wait
sudo pacman-key --add /usr/share/pacman/keyrings/elseworld.gpg
wait
ewid=$(cat elseworld-id.txt)
wait
sudo pacman-key --lsign-key ${ewid}
wait
sudo pacman-key --populate archlinux elseworld
wait
sudo pacman-key --refresh-keys
wait
rm -rf elseworld-id.txt
exit 0

