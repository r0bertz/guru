# Copyright 2022-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.4

EAPI=8

CRATES="
	adler2@2.0.0
	anstream@0.6.15
	anstyle-parse@0.2.5
	anstyle-query@1.1.1
	anstyle-wincon@3.0.4
	anstyle@1.0.8
	base64@0.22.1
	bitflags@1.3.2
	bitflags@2.6.0
	cc@1.1.14
	cfg-if@1.0.0
	cfg_aliases@0.1.1
	clap@4.5.16
	clap_builder@4.5.15
	clap_complete@4.5.23
	clap_lex@0.7.2
	clipboard-win@5.4.0
	colorchoice@1.0.2
	crc32fast@1.4.2
	deranged@0.3.11
	diff@0.1.13
	directories@5.0.1
	dirs-sys@0.4.1
	endian-type@0.1.2
	equivalent@1.0.1
	errno@0.3.9
	error-code@3.2.0
	fd-lock@4.0.2
	flate2@1.0.33
	form_urlencoded@1.2.1
	getrandom@0.2.15
	hashbrown@0.14.5
	home@0.5.9
	idna@0.5.0
	indexmap@2.4.0
	is_terminal_polyfill@1.70.1
	itoa@1.0.11
	libc@0.2.158
	libredox@0.0.2
	libredox@0.1.3
	linux-raw-sys@0.4.14
	log@0.4.22
	memchr@2.7.4
	miniz_oxide@0.8.0
	nibble_vec@0.1.0
	nix@0.28.0
	num-conv@0.1.0
	num_threads@0.1.7
	numtoa@0.1.0
	once_cell@1.19.0
	option-ext@0.2.0
	percent-encoding@2.3.1
	powerfmt@0.2.0
	pretty_assertions@1.4.0
	proc-macro2@1.0.86
	quote@1.0.37
	radix_trie@0.2.1
	redox_syscall@0.4.1
	redox_termios@0.1.3
	redox_users@0.4.6
	ring@0.17.8
	rustix@0.38.34
	rustls-pki-types@1.8.0
	rustls-webpki@0.102.6
	rustls@0.23.12
	rustyline@14.0.0
	ryu@1.0.18
	serde@1.0.209
	serde_derive@1.0.209
	serde_json@1.0.127
	serde_spanned@0.6.7
	shlex@1.3.0
	smallvec@1.13.2
	smawk@0.3.2
	spin@0.9.8
	strsim@0.11.1
	subtle@2.6.1
	syn@2.0.76
	terminal_size@0.3.0
	termion@4.0.2
	textwrap@0.16.1
	thiserror-impl@1.0.63
	thiserror@1.0.63
	time-core@0.1.2
	time-macros@0.2.18
	time@0.3.36
	tinyvec@1.8.0
	tinyvec_macros@0.1.1
	toml@0.8.19
	toml_datetime@0.6.8
	toml_edit@0.22.20
	unicode-bidi@0.3.15
	unicode-ident@1.0.12
	unicode-linebreak@0.1.5
	unicode-normalization@0.1.23
	unicode-segmentation@1.11.0
	unicode-width@0.1.13
	untrusted@0.9.0
	ureq@2.10.1
	url@2.5.2
	utf8parse@0.2.2
	wasi@0.11.0+wasi-snapshot-preview1
	webpki-roots@0.26.3
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-targets@0.48.5
	windows-targets@0.52.6
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.6
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.6
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.6
	windows_i686_gnullvm@0.52.6
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.6
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.6
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.6
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.6
	winnow@0.6.18
	yansi@0.5.1
	zeroize@1.8.1
"

inherit cargo shell-completion

DESCRIPTION="Command-line PeerTube viewer inspired by youtube-viewer"
HOMEPAGE="https://gitlab.com/peertube-viewer/peertube-viewer-rs"
SRC_URI="
	https://gitlab.com/peertube-viewer/peertube-viewer-rs/-/archive/v${PV}/${PN}-v${PV}.tar.bz2
	${CARGO_CRATE_URIS}
"
S="${WORKDIR}/${PN}-v${PV}"

LICENSE="AGPL-3"
# Dependent crate licenses
LICENSE+=" Apache-2.0 BSD Boost-1.0 ISC MIT MPL-2.0 Unicode-DFS-2016"
# ring
LICENSE+=" openssl"

SLOT="0"
KEYWORDS="~amd64"

QA_FLAGS_IGNORED="usr/bin/peertube-viewer-rs"

src_install() {
	cargo_src_install
	doman "${PN}.1"
	newbashcomp "completions/${PN}.bash" "${PN}"
	dofishcomp "completions/${PN}.fish"
	dozshcomp "completions/_${PN}"
}
