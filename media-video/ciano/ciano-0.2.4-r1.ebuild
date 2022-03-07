# Copyright 2020-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{8,9} )

inherit gnome2-utils meson python-any-r1 vala xdg

DESCRIPTION="A multimedia file converter focused on simplicity"
HOMEPAGE="https://robertsanseries.github.io/ciano/"
SRC_URI="https://github.com/robertsanseries/ciano/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="dev-libs/granite"
BDEPEND="${PYTHON_DEPS}"
RDEPEND="
	${DEPEND}
	media-video/ffmpeg
	virtual/imagemagick-tools
"

src_prepare() {
	vala_src_prepare
	xdg_src_prepare
}

src_install() {
	meson_src_install
	dosym com.github.robertsanseries.ciano usr/bin/ciano
}

pkg_postinst() {
	gnome2_schemas_update
	xdg_pkg_postinst
}

pkg_postrm() {
	gnome2_schemas_update
	xdg_pkg_postrm
}
