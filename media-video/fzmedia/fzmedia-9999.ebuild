EAPI=8

DESCRIPTION="Just a shitty shell script to navigate file trees, play media files, and continue watching where you left off later."
HOMEPAGE="https://github.com/dirtytowel/fzmedia"

inherit git-r3
EGIT_REPO_URI="https://github.com/dirtytowel/fzmedia.git"

LICENSE="MIT"
SLOT="0"

IUSE="+fzy +mpv +wget"

RDEPEND="
	dev-lang/python
	fzy? ( app-text/fzy )
	mpv? ( media-video/mpv )
	wget? ( net-misc/wget )
"

src_install() {
	newbin fzmedia.sh fzmedia
}
