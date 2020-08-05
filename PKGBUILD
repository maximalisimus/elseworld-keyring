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
         '2f480d1c82fe4acc9da6bce9ea90b51b' # *.gpg
         'd41d8cd98f00b204e9800998ecf8427e' # *-revoked
         'ae3a55c59146569b2ac2300564a6afde') # *-trusted

package() {
  cd "${srcdir}"
  make PREFIX=/usr DESTDIR=${pkgdir} install
}
