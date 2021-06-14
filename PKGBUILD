# Maximalisimus keyring gpg-key

pkgname=elseworld-keyring
pkgver=1.2
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
			'96888449c31c906f1edd211059a38057dd65e117be8e2fe7446e60ae9625f627' # *.gpg
			'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855' # *-revoked
			'fbee25c699401775ed8a035574f27cc815ae6608d23abae72be67fdd1ceb794d') # *-trusted

package() {
  cd "${srcdir}"
  make PREFIX=/usr DESTDIR=${pkgdir} install
}
