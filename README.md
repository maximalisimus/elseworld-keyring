# maximalisimus keyring
# https://maximalisimus.github.io/elseworld-keyring/elseworld.gpg

$ pacman-key --init

$ wget https://maximalisimus.github.io/elseworld-keyring/elseworld{.gpg,-revoked,-trusted}

$ sudo mv elseworld{.gpg,-revoked,-trusted} /usr/share/pacman/keyrings/

$ pacman-key --add /usr/share/pacman/keyrings/elseworld.gpg

$ pacman-key --lsign-key 50417293016B25BED7249D8398F76D97B786E6A3

$ pacman-key --populate archlinux elseworld

$ pacman-key --refresh-keys

