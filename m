From: Joe Perches <joe@perches.com>
Subject: Re: [PATCH] docs: dt: fix broken links due to txt->yaml renames
Date: Mon, 04 May 2020 12:04:00 -0700
Message-ID: <7af4a2979fb5c060af769a996d3e5917b4d265d0.camel@perches.com>
References: <967df5c3303b478b76199d4379fe40f5094f3f9b.1588584538.git.mchehab+huawei@kernel.org>
         <20200504174522.GA3383@ravnborg.org>
         <20200504175553.jdm7a7aabloevxba@pengutronix.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 8bit
Return-path: <linux-doc-owner@vger.kernel.org>
In-Reply-To: <20200504175553.jdm7a7aabloevxba@pengutronix.de>
Sender: linux-doc-owner@vger.kernel.org
To: Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>, Sam Ravnborg <sam@ravnborg.org>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, alsa-devel@alsa-project.org, Olivier Moysan <olivier.moysan@st.com>, Linux Doc Mailing List <linux-doc@vger.kernel.org>, David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org, linux-mips@vger.kernel.org, Andrzej Hajda <a.hajda@samsung.com>, Jonathan Corbet <corbet@lwn.net>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>, Sean Wang <sean.wang@mediatek.com>, Jyri Sarha <jsarha@ti.com>, Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>, linux-arm-kernel@lists.infradead.org, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Arnaud
List-Id: linux-rockchip.vger.kernel.org

On Mon, 2020-05-04 at 19:55 +0200, Uwe Kleine-König wrote:
> Hi Sam,
> 
> On Mon, May 04, 2020 at 07:45:22PM +0200, Sam Ravnborg wrote:
> > On Mon, May 04, 2020 at 11:30:20AM +0200, Mauro Carvalho Chehab wrote:
> > > There are some new broken doc links due to yaml renames
> > > at DT. Developers should really run:
> > > 
> > > 	./scripts/documentation-file-ref-check
> > > 
> > > in order to solve those issues while submitting patches.
> > Would love if some bot could do this for me on any patches that creates
> > .yaml files or so.
> > I know I will forget this and it can be automated.
> > If I get a bot mail that my patch would broke a link I would
> > have it fixed before it hits any tree.
> 
> What about adding a check to check_patch?

There's already a checkpatch warning when a patch renames
a file without a MAINTAINERS update.
