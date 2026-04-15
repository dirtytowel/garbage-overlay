EAPI=8

DESCRIPTION="Just a shitty shell script to navigate file trees, play media files, and continue watching where you left off later."
HOMEPAGE="https://github.com/dirtytowel/fzmedia"


SRC_URI="https://github.com/dirtytowel/fzmedia/archive/refs/tags/v0.3.2.tar.gz -> fzmedia-0.3.2.tar.gz"
S="${WORKDIR}/fzmedia-0.3.2"
KEYWORDS="~amd64 ~arm64"


LICENSE="MIT"
SLOT="0"

IUSE="+fzy +mpv"

RDEPEND="
	dev-lang/python
	fzy? ( app-text/fzy )
	mpv? ( media-video/mpv )
"

src_compile() { :; }

src_install() {
	dodir /usr/bin
	emake PREFIX="${D}${EPREFIX}/usr" install
	einstalldocs
}
