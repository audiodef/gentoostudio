# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="A powerful and flexible parametric equalizer and more"
HOMEPAGE="http://eq10q.sourceforge.net"
SRC_URI="https://gentoostudio.org/src/eq10q-2.2.tar.gz"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-cpp/gtkmm:2.4
	media-libs/lv2
	sci-libs/fftw:3.0"
DEPEND="${RDEPEND}
	dev-util/cmake"

src_compile() {
	CXX="$(tc-getCXX)" emake || die
}

src_install() {
	einstall INSTALL_DIR="${D}/usr/$(get_libdir)/lv2" || die
	dodoc README
}
