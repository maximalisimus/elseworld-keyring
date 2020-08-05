# maximalisimus keyring
# https://maximalisimus.github.io/elseworld-keyring/elseworld.gpg

$ pacman-key --init

$ wget https://maximalisimus.github.io/elseworld-keyring/elseworld{.gpg,-revoked,-trusted}

$ sudo mv elseworld{.gpg,-revoked,-trusted} /usr/share/pacman/keyrings/

$ pacman-key --add /usr/share/pacman/keyrings/elseworld.gpg

$ ewid= $(cat elseworld-fingerprint.txt)

$ pacman-key --lsign-key ${ewid}

$ pacman-key --populate archlinux elseworld

$ pacman-key --refresh-keys

