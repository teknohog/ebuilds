# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"
WX_GTK_VER="2.8"

inherit wxwidgets

MY_PN="iMule"

DESCRIPTION="P2P sharing software which connects through I2P and Kad network"
HOMEPAGE="http://www.imule.i2p.tin0.de/"
SRC_URI="http://echelon.i2p/imule/${PV}/${MY_PN}-${PV}-src.tbz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86"
IUSE="daemon irouter imulecmd webserver"

DEPEND="x11-libs/wxGTK:2.8
	dev-libs/crypto++
	irouter? ( sys-devel/gcc[gcj] )
	sys-devel/flex
	sys-apps/texinfo"

RDEPEND="x11-libs/wxGTK:2.8"

S="${WORKDIR}/${MY_PN}-${PV}-src"

src_configure() {
	local myopts

	use daemon && myopts="${myopts} --enable-imule-daemon"
	use irouter && myopts="${myopts} --enable-irouter"
	use imulecmd && myopts="${myopts} --enable-imulecmd"
	use webserver && myopts="${myopts} --enable-webserver"
	export WX_GTK_VER="2.8"
	need-wxwidgets unicode
	econf --with-wx-config=${WX_CONFIG} \
		--with-wxbase-config=${WX_CONFIG} \
		--enable-optimize --disable-debug --enable-alc \
		${myopts} || die
}

src_install() {
	make DESTDIR="${D}" install || die
}

pkg_postinst() {
	if use irouter ; then
        	ewarn "You have irouter USE disabled, to use iMule you must have I2P installed and running"
	fi

}