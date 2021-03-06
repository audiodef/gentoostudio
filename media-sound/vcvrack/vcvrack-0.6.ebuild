# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit autotools git-r3

DESCRIPTION="Open-source virtual modular synthesizer"
HOMEPAGE="https://vcvrack.com/"
EGIT_REPO_URI="https://github.com/VCVRack/Rack.git"
EGIT_BRANCH="v0.6"
# need git checkout v0.6

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"

#src_unpack(){
#	git-r3_checkout v0.6
#}
