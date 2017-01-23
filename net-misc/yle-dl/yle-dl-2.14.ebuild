# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6
PYTHON_COMPAT=( python2_7 )

inherit distutils-r1

DESCRIPTION="Download videos from Yle servers"
HOMEPAGE="http://aajanki.github.io/yle-dl/index-en.html"
SRC_URI="https://github.com/aajanki/yle-dl/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
DOCS=( )

DEPEND="
	dev-python/pycrypto[${PYTHON_USEDEP}]
	net-misc/youtube-dl[${PYTHON_USEDEP}]
	dev-lang/php[bcmath,crypt,curl,simplexml]
	media-video/rtmpdump"

RDEPEND="${DEPEND}"
