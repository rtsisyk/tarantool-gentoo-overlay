# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Expiration daemon module for Tarantool"
HOMEPAGE="https://github.com/tarantool/expirationd"

if [[ ${PV} == 9999 ]]; then
	inherit git-r3
	KEYWORDS=""
	EGIT_REPO_URI="https://github.com/tarantool/$PN"
else
	KEYWORDS="~amd64 ~x86"
	SRC_URI="https://github.com/tarantool/$PN/archive/${PV}.tar.gz -> ${PF}.tar.gz"
fi
RESTRICT="mirror"

LICENSE="BSD-2"
SLOT="0"
IUSE=""

DEPEND="dev-db/tarantool"
RDEPEND="${DEPEND}"

src_install() {
	dodir /usr/share/tarantool
	insinto /usr/share/tarantool
	doins expirationd.lua
}
