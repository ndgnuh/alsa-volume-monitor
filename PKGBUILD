_pkgname="alsa-volume-monitor"
pkgname="${_pkgname}-git"
pkgver=10
pkgrel=1
pkgdesc="Control alsa from DBus, made to work with Awesomewm"
url="https://github.com/ndgnuh/alsa-volume-monitor"
arch=(any)
license=(GPL2)
makedepends=(alsa-lib dbus)
source=(git+https://github.com/ndgnuh/alsa-volume-monitor)
md5sums=('SKIP')

pkgver() {
    cd ${srcdir}/${_pkgname}
    git rev-list --count HEAD
}

build() {
    cd ${srcdir}/${_pkgname}
    make
}

package() {
    mkdir -p $pkgdir/usr/bin
    cp ${srcdir}/${_pkgname}/alsa-volume-monitor $pkgdir/usr/bin
}

