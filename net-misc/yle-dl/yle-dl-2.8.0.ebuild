# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# http://www.kosunen.fi/gentoo/portage/media-video/rtmpdump-yle/rtmpdump-yle-1.3.0.ebuild
# retrieved on 2011-11-26, and updated for 1.4.5 by teknohog

EAPI=2
PYTHON_DEPEND="2"

inherit python

DESCRIPTION="Download media files from Yle Areena"
HOMEPAGE="http://aajanki.github.io/yle-dl/"
SRC_URI="https://github.com/aajanki/yle-dl/tarball/${PV} -> ${P}.tar.gz
	https://raw.githubusercontent.com/K-S-V/Scripts/master/AdobeHDS.php"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~arm ~ppc ~x86"

DEPEND="dev-python/pycrypto
	media-video/rtmpdump
	!media-video/rtmpdump-yle
	dev-lang/php[bcmath,curl,simplexml]
	net-misc/youtube-dl"
	 
RDEPEND="${DEPEND}"

S=${WORKDIR}/aajanki-yle-dl-6daffd4
#: ${PREFIX:=/usr}

src_unpack() {
	cp ${DISTDIR}/AdobeHDS.php ${WORKDIR}/

	if [ "${A}" != "" ]; then
		unpack ${A}
	fi
}

src_prepare() {
	python_convert_shebangs -r 2 .
	sed -i 's|/usr/local/share/yle-dl/AdobeHDS.php|/usr/bin/AdobeHDS.php|g' yle-dl	
}

src_compile() {
	if [ -f Makefile ]; then
		emake -j1 prefix="${DESTTREE}" || die "emake failed"
	fi
}

src_install() {
	einstall
	dobin ${WORKDIR}/AdobeHDS.php
}

pkg_setup() {
	python_set_active_version 2
}

