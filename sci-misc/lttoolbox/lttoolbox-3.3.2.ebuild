# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
DESCRIPTION="Toolbox for lexical processing, morphological analysis and generation of words"
HOMEPAGE="http://apertium.sourceforge.net"
SRC_URI="mirror://sourceforge/apertium/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="static-libs"

RDEPEND="dev-libs/libxml2:2"
DEPEND="${RDEPEND}
	virtual/pkgconfig"

src_configure() {
	econf $(use_enable static-libs static)
}
