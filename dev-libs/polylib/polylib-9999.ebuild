# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit autotools git-r3

EGIT_REPO_URI="git://repo.or.cz/${PN}.git
	http://repo.or.cz/r/${PN}.git"

DESCRIPTION="ppl port of cloog"
HOMEPAGE="http://icps.u-strasbg.fr/polylib/"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

src_prepare() {
	default
	eautoreconf
	sed -i '/Libs:/s:@LDFLAGS@::' configure
}

src_install() {
	default
	dodoc doc/Changes
}
