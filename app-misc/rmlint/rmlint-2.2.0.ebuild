# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit scons-utils eutils

DESCRIPTION="commandline tool to clean your filesystem from various sort of lint (unused files, twins, etc.)."
HOMEPAGE="https://github.com/sahib/rmlint"
SRC_URI="https://github.com/sahib/${PN}/archive/v${PV}.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~amd64-linux ~ia64 ~ia64-linux ~x86 ~x86-linux ~x86-solaris"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
		dev-util/scons
		dev-python/sphinx
		sys-devel/gettext"

src_compile(){
	escons CC="$(tc-getCC)"
}

src_install() {
	escons install LIBDIR=/usr/$(get_libdir) --prefix="${ED}"/usr
}
