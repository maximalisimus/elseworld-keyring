# Maximalisimus keyring gpg-key

pkgname=maximalisimus-keyring
pkgver=stable
pkgrel=1
pkgdesc='maximalisimus PGP keyring'
arch=('any')
url='https://github.com/maximalisimus/maximalisimus-keyring'
license=('GPL')
install="${pkgname}.install"
source=('Makefile'
        'maximalisimus.gpg'
        'maximalisimus-revoked'
        'maximalisimus-trusted')
md5sums=('c898af4bbabfd32595836594a419f9f9' # Makefile
         'SKIP' # *.gpg
         'd41d8cd98f00b204e9800998ecf8427e' # *-revoked
         'SKIP') # *-trusted

package() {
  cd "${srcdir}"
  make PREFIX=/usr DESTDIR=${pkgdir} install
}
