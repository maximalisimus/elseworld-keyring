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
         'SKIP' # *.gpg
         'SKIP' # *-revoked
         'SKIP') # *-trusted

package() {
  cd "${srcdir}"
  make PREFIX=/usr DESTDIR=${pkgdir} install
}
