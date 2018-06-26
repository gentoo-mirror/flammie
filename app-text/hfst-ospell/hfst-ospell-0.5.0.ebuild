# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

MY_P="hfstospell-${PV}"
DESCRIPTION="Small spell-checker library and tools based on FST technology"
HOMEPAGE="https://hfst.github.io/"
SRC_URI="https://github.com/hfst/hfst-ospell/releases/download/v${PV}/${MY_P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE="+zip +xml test"

COMMON_DEPEND="zip? ( >=app-arch/libarchive-3 )
	zip? ( xml? ( dev-cpp/libxmlpp:2.6 ) )"
DEPEND="${COMMON_DEPEND}
	test? ( sci-misc/hfst )
	zip? ( virtual/pkgconfig )
	xml? ( virtual/pkgconfig )"
RDEPEND="${COMMON_DEPEND}"

S="${WORKDIR}/${MY_P}"

src_configure() {
	econf \
		$(use_enable zip zhfst ) \
		$(use_enable xml xml libxmlpp )
}
