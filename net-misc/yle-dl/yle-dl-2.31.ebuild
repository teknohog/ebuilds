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
	dev-lang/php[bcmath,crypt,curl,simplexml]
	dev-python/future[${PYTHON_USEDEP}]
	dev-python/lxml[${PYTHON_USEDEP}]
	dev-python/pyamf[${PYTHON_USEDEP}]
	dev-python/pycrypto[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	media-video/ffmpeg
	media-video/rtmpdump
	net-misc/youtube-dl[${PYTHON_USEDEP}]
"

RDEPEND="${DEPEND}"
