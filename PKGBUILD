# Maximalisimus keyring gpg-key

pkgname=elseworld-keyring
pkgver=1.3
pkgrel=1
pkgdesc='elseworld PGP keyring'
arch=('any')
url='https://github.com/maximalisimus/elseworld-keyring'
license=('GPL')
install="${pkgname}.install"
replaces=('${pkgname}')
source=('Makefile'
        'elseworld.gpg'
        'elseworld-revoked'
        'elseworld-trusted')
sha256sums=('8a8c50989cc0ef7d780c19fcbb7a1f61f17b4f99cff0af1032ef1941522a4f3a' # Makefile
			'53987e08a8d3fe506c83741e5b0556df597eed04c3299fbedea613b6c85f6a0a' # *.gpg
			'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855' # *-revoked
			'88ad75a9306fcbde0aed71410f782854235c0ec228e2b6ca4c38bb651ad3f864') # *-trusted

package() {
  cd "${srcdir}"
  make PREFIX=/usr DESTDIR=${pkgdir} install
}
