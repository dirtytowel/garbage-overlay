EAPI=8

DESCRIPTION="Just a shitty shell script to navigate file trees, play media files, and continue watching where you left off later."
HOMEPAGE="https://github.com/dirtytowel/fzmedia"


inherit git-r3
EGIT_REPO_URI="https://github.com/dirtytowel/fzmedia.git"


LICENSE="MIT"
SLOT="0"

IUSE="+fzy +mpv"

RDEPEND="
	dev-lang/python
	fzy? ( app-text/fzy )
	mpv? ( media-video/mpv )
	net-misc/wget
"

src_compile() { :; }

src_install() {
	dodir /usr/bin
	emake PREFIX="${D}${EPREFIX}/usr" install
	einstalldocs
}
