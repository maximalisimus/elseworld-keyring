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
sha256sums=('84d74fdee75835ba98637d1c0362bb6d89aa74fd82b8cf130d19153b14779e33' # Makefile
			'44e8d7b4bbefacbdd374d35c0195162483557b82fca2bf6d2d4ebd22d846cdf9' # *.gpg
			'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855' # *-revoked
			'fbee25c699401775ed8a035574f27cc815ae6608d23abae72be67fdd1ceb794d') # *-trusted

package() {
  cd "${srcdir}"
  make PREFIX=/usr DESTDIR=${pkgdir} install
}
