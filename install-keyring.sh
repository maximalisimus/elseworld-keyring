#!/bin/bash
# maximalisimus keyring
#
sudo pacman-key --init
wait
wget https://maximalisimus.github.io/elseworld-keyring/elseworld{.gpg,-revoked,-trusted}
wait
sudo mv elseworld{.gpg,-revoked,-trusted} /usr/share/pacman/keyrings/
wait
sudo pacman-key --add /usr/share/pacman/keyrings/elseworld.gpg
wait
sudo pacman-key --lsign-key maximalis171091@yandex.ru
wait
sudo pacman-key --populate archlinux elseworld
wait
sudo pacman-key --refresh-keys
wait
exit 0

