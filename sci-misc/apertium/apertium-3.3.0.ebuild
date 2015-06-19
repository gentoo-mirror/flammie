# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sci-misc/apertium/apertium-3.2.0.ebuild,v 1.4 2013/06/14 06:52:28 jlec Exp $

EAPI=5

DESCRIPTION="Shallow-transfer machine Translation engine and toolbox"
HOMEPAGE="http://apertium.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-libs/libxslt
	dev-libs/libpcre[cxx]
	>=sci-misc/lttoolbox-3.3
	virtual/libiconv"
DEPEND="${RDEPEND}
	virtual/pkgconfig"
