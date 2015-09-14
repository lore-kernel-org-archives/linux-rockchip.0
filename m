From: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] clk: rockchip: add critical clock for rk3368
Date: Mon, 14 Sep 2015 16:19:42 +0100
Message-ID: <20150914151942.GJ7002@leverpostej>
References: <5267432.TORlj1Iv40@diego>
 <20150914141920.GF7002@leverpostej>
 <6675833.8DAAvDYooL@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-clk-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <6675833.8DAAvDYooL@diego>
Sender: linux-clk-owner@vger.kernel.org
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@codeaurora.org" <sboyd@codeaurora.org>, "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

On Mon, Sep 14, 2015 at 04:06:05PM +0100, Heiko St=C3=BCbner wrote:
> Am Montag, 14. September 2015, 15:19:21 schrieb Mark Rutland:
> > On Sun, Sep 13, 2015 at 12:20:36PM +0100, Heiko St=C3=BCbner wrote:
> > > Again a result of the gpio-clock-liberation the rk3368 needs the
> > > pclk_pd_pmu marked as critical, to boot successfully.
> > >=20
> > > Reported-by: Mark Rutland <mark.rutland@arm.com>
> > > Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> >=20
> > FWIW: Tested-by: Mark Rutland <mark.rutland@arm.com>
> >=20
> > I'm surprised that we don't describe these as critical in the DT, g=
iven
> > that this isn't really an internal property of the clock controller=
, but
> > rather what happens to be attached to it. That ship appears to have
> > sailed, however.
>=20
> I wouldn't necessarily think so ... what is called critical only mean=
s "don't=20
> turn off when walking the clock-tree upwards".
>=20
> The pclk_pd_pmu for example simply supplies some more clocks we don't=
 handle=20
> at all currently (pclk_pmu_noc, ...). That we currently choose to ign=
ore those=20
> [because we don't have any code nor dt-bindings to handle the compone=
nts=20
> supplied] sounds very much like an implementation-specific detail, no=
t=20
> something about the hardware.

Sure, but the specific case that lead to this report was the fact that
this clock (directly?) feeds the pinctrl programming interface, and tha=
t
fact is neither described in the DT nor handled by the driver. Surely
that should be described and handled?

Thanks,
Mark.
