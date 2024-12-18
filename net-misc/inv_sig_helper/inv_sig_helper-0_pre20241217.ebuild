# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.3

EAPI=8

CRATES="
	addr2line@0.21.0
	adler@1.0.2
	aho-corasick@1.1.3
	anstream@0.6.15
	anstyle-parse@0.2.5
	anstyle-query@1.1.1
	anstyle-wincon@3.0.4
	anstyle@1.0.8
	async-lock@2.8.0
	autocfg@1.2.0
	backtrace@0.3.71
	base64@0.22.0
	bitflags@1.3.2
	bitflags@2.5.0
	bumpalo@3.16.0
	bytes@1.6.0
	cc@1.0.95
	cfg-if@1.0.0
	colorchoice@1.0.2
	core-foundation-sys@0.8.6
	core-foundation@0.9.4
	crossbeam-queue@0.3.11
	crossbeam-utils@0.8.19
	encoding_rs@0.8.34
	env_filter@0.1.2
	env_logger@0.11.5
	equivalent@1.0.1
	errno@0.3.8
	event-listener@2.5.3
	fastrand@2.1.0
	fnv@1.0.7
	foreign-types-shared@0.1.1
	foreign-types@0.3.2
	form_urlencoded@1.2.1
	futures-channel@0.3.30
	futures-core@0.3.30
	futures-executor@0.3.30
	futures-io@0.3.30
	futures-macro@0.3.30
	futures-sink@0.3.30
	futures-task@0.3.30
	futures-util@0.3.30
	futures@0.3.30
	gimli@0.28.1
	h2@0.4.4
	hashbrown@0.14.3
	hermit-abi@0.3.9
	http-body-util@0.1.1
	http-body@1.0.0
	http@1.1.0
	httparse@1.8.0
	humantime@2.1.0
	hyper-tls@0.6.0
	hyper-util@0.1.3
	hyper@1.3.1
	idna@0.5.0
	indexmap@2.2.6
	ipnet@2.9.0
	is_terminal_polyfill@1.70.1
	itoa@1.0.11
	js-sys@0.3.69
	lazy-regex-proc_macros@3.1.0
	lazy-regex@3.1.0
	lazy_static@1.4.0
	libc@0.2.153
	linux-raw-sys@0.4.13
	lock_api@0.4.12
	log@0.4.22
	memchr@2.7.2
	mime@0.3.17
	miniz_oxide@0.7.2
	mio@0.8.11
	native-tls@0.2.11
	num_cpus@1.16.0
	object@0.32.2
	once_cell@1.19.0
	openssl-macros@0.1.1
	openssl-probe@0.1.5
	parking_lot@0.12.2
	parking_lot_core@0.9.10
	percent-encoding@2.3.1
	pin-project-internal@1.1.5
	pin-project-lite@0.2.14
	pin-project@1.1.5
	pin-utils@0.1.0
	pkg-config@0.3.30
	proc-macro2@1.0.81
	quote@1.0.36
	redox_syscall@0.5.1
	regex-automata@0.4.6
	regex-syntax@0.8.3
	regex@1.10.4
	reqwest@0.12.4
	rquickjs-core@0.6.0
	rquickjs-sys@0.6.0
	rquickjs@0.6.0
	rustc-demangle@0.1.23
	rustix@0.38.34
	rustls-pemfile@2.1.2
	rustls-pki-types@1.5.0
	ryu@1.0.17
	schannel@0.1.23
	scopeguard@1.2.0
	security-framework-sys@2.10.0
	security-framework@2.10.0
	serde@1.0.199
	serde_derive@1.0.199
	serde_json@1.0.116
	serde_urlencoded@0.7.1
	signal-hook-registry@1.4.2
	slab@0.4.9
	smallvec@1.13.2
	socket2@0.5.6
	syn@2.0.60
	sync_wrapper@0.1.2
	system-configuration-sys@0.5.0
	system-configuration@0.5.1
	tempfile@3.10.1
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	tokio-macros@2.2.0
	tokio-native-tls@0.3.1
	tokio-util@0.7.10
	tokio@1.37.0
	tower-layer@0.3.2
	tower-service@0.3.2
	tower@0.4.13
	tracing-core@0.1.32
	tracing@0.1.40
	try-lock@0.2.5
	tub@0.3.7
	unicode-bidi@0.3.15
	unicode-ident@1.0.12
	unicode-normalization@0.1.23
	url@2.5.0
	utf8parse@0.2.2
	vcpkg@0.2.15
	want@0.3.1
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.92
	wasm-bindgen-futures@0.4.42
	wasm-bindgen-macro-support@0.2.92
	wasm-bindgen-macro@0.2.92
	wasm-bindgen-shared@0.2.92
	wasm-bindgen@0.2.92
	web-sys@0.3.69
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-targets@0.48.5
	windows-targets@0.52.5
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.5
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.5
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.5
	windows_i686_gnullvm@0.52.5
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.5
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.5
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.5
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.5
	winreg@0.52.0
"

CRATE_PATHS_OVERRIDE="
	openssl-sys@0.9.104
	openssl@0.10.68
"

inherit cargo systemd

COMMIT="74e879b54e46831e31c09fd08fe672ca58e9cb2d"
DESCRIPTION="Rust service that decrypts YouTube signatures and manages player information"
HOMEPAGE="https://github.com/iv-org/inv_sig_helper"
SRC_URI="
	https://github.com/iv-org/inv_sig_helper/archive/${COMMIT}.tar.gz -> ${P}.gh.tar.gz
	${CARGO_CRATE_URIS}
"
S="${WORKDIR}/${PN}-${COMMIT}"

LICENSE="AGPL-3"
# Dependent crate licenses
LICENSE+=" Apache-2.0 BSD MIT Unicode-DFS-2016"
SLOT="0"
KEYWORDS="~amd64"

src_prepare() {
	default
	cargo_update_crates
}

src_install() {
	cargo_src_install
	systemd_dounit "${S}"/inv_sig_helper.service
	newinitd "${FILESDIR}"/inv_sig_helper.initd "${PN}"
}
