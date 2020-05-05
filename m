From: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH] docs: dt: fix broken links due to txt->yaml renames
Date: Mon, 4 May 2020 23:07:57 -0500
Message-ID: <CAL_JsqJuRrhEtt5uxaQ=7WvDKiF_2v025GiYUvrrFE5jxBr-Xg@mail.gmail.com>
References: <967df5c3303b478b76199d4379fe40f5094f3f9b.1588584538.git.mchehab+huawei@kernel.org>
 <20200504174522.GA3383@ravnborg.org> <20200504175553.jdm7a7aabloevxba@pengutronix.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-mips-owner@vger.kernel.org>
In-Reply-To: <20200504175553.jdm7a7aabloevxba@pengutronix.de>
Sender: linux-mips-owner@vger.kernel.org
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, Sam Ravnborg <sam@ravnborg.org>
Cc: Linux-ALSA <alsa-devel@alsa-project.org>, Olivier Moysan <olivier.moysan@st.com>, Linux Doc Mailing List <linux-doc@vger.kernel.org>, David Airlie <airlied@linux.ie>, dri-devel <dri-devel@lists.freedesktop.org>, "open list:MIPS" <linux-mips@vger.kernel.org>, Andrzej Hajda <a.hajda@samsung.com>, Jonathan Corbet <corbet@lwn.net>, Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, devicetree@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>, Sean Wang <sean.wang@mediatek.com>, Jyri Sarha <jsarha@ti.com>, Mark Brown <broonie@kernel.org>, "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>, Matthias Brugger <matthias.bgg@gmail.com>, moderated list:ARM/FREESCALE I
List-Id: linux-rockchip.vger.kernel.org

On Mon, May 4, 2020 at 12:56 PM Uwe Kleine-K=C3=B6nig
<u.kleine-koenig@pengutronix.de> wrote:
>
> Hi Sam,
>
> On Mon, May 04, 2020 at 07:45:22PM +0200, Sam Ravnborg wrote:
> > On Mon, May 04, 2020 at 11:30:20AM +0200, Mauro Carvalho Chehab wrote:
> > > There are some new broken doc links due to yaml renames
> > > at DT. Developers should really run:
> > >
> > >     ./scripts/documentation-file-ref-check
> > >
> > > in order to solve those issues while submitting patches.
> > Would love if some bot could do this for me on any patches that creates
> > .yaml files or so.
> > I know I will forget this and it can be automated.
> > If I get a bot mail that my patch would broke a link I would
> > have it fixed before it hits any tree.

I can probably add this to what I'm already checking. Not completely
automated though as it depends on me to review before sending.

> What about adding a check to check_patch?

That would be the best way to get submitters to do this.

Rob
