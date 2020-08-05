# maximalisimus keyring
# https://maximalisimus.github.io/elseworld-keyring/

$ sudo pacman-key --init

$ wget https://maximalisimus.github.io/elseworld-keyring/elseworld{.gpg,-revoked,-trusted,-id.txt}

$ sudo mv elseworld{.gpg,-revoked,-trusted} /usr/share/pacman/keyrings/

$ sudo pacman-key --add /usr/share/pacman/keyrings/elseworld.gpg

$ ewid=$(cat elseworld-id.txt)

$ sudo pacman-key --lsign-key ${ewid}

$ sudo pacman-key --populate archlinux elseworld

$ sudo pacman-key --refresh-keys

