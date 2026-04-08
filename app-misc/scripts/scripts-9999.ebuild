EAPI=8

DESCRIPTION="scripts for my linux machines"
HOMEPAGE="https://github.com/dirtytowel/scritps"

inherit git-r3
EGIT_REPO_URI="https://github.com/dirtytowel/scritps}}.git"

LICENSE="MIT"
SLOT="0"
SCRIPTS="animated_webp bm calc clock cmenu desktop_mode dmu event_handler event_listener lock mpvcw notes pkgunmask polybar port portage_dir_share qs smartspwn sshmenu sw touchpad trackpoint urxvtcd weechat xresources"
IUSE="${SCRIPTS/clock/+clock}"

src_install() {
	local f
	for f in ${SCRIPTS}; do
		use "${f}" && dobin "${f}"
	done
}
