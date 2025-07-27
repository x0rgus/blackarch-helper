# Maintainer: Lucas <lucas.pr1@hotmail.com>
pkgname=blackarch-helper
pkgver=1.0.0
pkgrel=1
pkgdesc="Simple CLI helper to explore and install tools from the BlackArch repository"
arch=('any')
url="https://github.com/x0rgus/blackarch-helper"
license=('MIT')
depends=('bash' 'pacman' 'grep' 'coreutils' 'fzf')
source=("blackarch-helper")
md5sums=('SKIP')

package() {
    install -Dm755 "$srcdir/blackarch-helper" "$pkgdir/usr/bin/blackarch-helper"
}

