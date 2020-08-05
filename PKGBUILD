# Maximalisimus keyring gpg-key

pkgname=elseworld-keyring
pkgver=stable
pkgrel=1
pkgdesc='elseworld PGP keyring'
arch=('any')
url='https://github.com/maximalisimus/elseworld-keyring'
license=('GPL')
install="${pkgname}.install"
source=('Makefile'
        'elseworld.gpg'
        'elseworld-revoked'
        'elseworld-trusted')
md5sums=('547c89ef8b1c509a438dc580b08762d5' # Makefile
         '284617f80ad66083b12b5cd9fa9d0ae4' # *.gpg
         'd41d8cd98f00b204e9800998ecf8427e' # *-revoked
         '077744c6332a8619d0c2e8d1f68956e3') # *-trusted

package() {
  cd "${srcdir}"
  make PREFIX=/usr DESTDIR=${pkgdir} install
}
