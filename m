From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v3 4/8] phy: rockchip-usb: add compatible values for rk3066a and rk3188
Date: Sun, 22 Nov 2015 20:49:21 +0100
Message-ID: <1586601.dy8rrhuEYg@phil>
References: <1447968149-10979-1-git-send-email-heiko@sntech.de> <1447968149-10979-5-git-send-email-heiko@sntech.de> <CAD=FV=V=5vP4a32Gonkv+vw7E+B=tP1VoWSfLA6YTh8knJZcfg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAD=FV=V=5vP4a32Gonkv+vw7E+B=tP1VoWSfLA6YTh8knJZcfg@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@codeaurora.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Romain Perier <romain.perier@gmail.com>, Arnd Bergmann <arnd@arndb.de>, Lin Huang <hl@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 19. November 2015, 16:32:23 schrieb Doug Anderson:
> Heiko,
> 
> On Thu, Nov 19, 2015 at 1:22 PM, Heiko Stuebner <heiko@sntech.de> wrote:
> > We need custom handling for these two socs in the driver shortly,
> > so add the necessary compatible values to binding and driver.
> >
> > Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> > ---
> >  Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt | 5 ++++-
> >  drivers/phy/phy-rockchip-usb.c                             | 2 ++
> >  2 files changed, 6 insertions(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt 
b/Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt
> > index 826454a..9b37242 100644
> > --- a/Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt
> > +++ b/Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt
> > @@ -1,7 +1,10 @@
> >  ROCKCHIP USB2 PHY
> >
> >  Required properties:
> > - - compatible: rockchip,rk3288-usb-phy
> > + - compatible: matching the soc type, one of
> > +     "rockchip,rk3066a-usb-phy"
> > +     "rockchip,rk3188-usb-phy"
> > +     "rockchip,rk3288-usb-phy"
> 
> I can never quite keep it straight how this is supposed to work, but
> since previously only "rockchip,rk3288-usb-phy" was supported and now
> we have these new compatible strings, I would have expected the new
> strings to specify the old ones as fallback.  That would mean your
> choices would be:
> 
> - "rockchip,rk3288-usb-phy" - A real rk3288
> - "rockchip,rk3188-usb-phy", "rockchip,rk3288-usb-phy" - A rk3188 with
> fallback to 3288 driver.
> - "rockchip,rk3066a-usb-phy", "rockchip,rk3288-usb-phy" - A rk3066a
> with fallback to 3288 driver.

How this is supposed to be done also is sometimes confusing for me :-)

But I don't think that specifying the "fallbacks" is part of the binding at 
all, when the binding really is done in a soc-specific way.  For example 
following the suggestion of the dt-maintainers at the time we're specifying 
the uarts as

	compatible = "rockchip,rk3288-uart", "snps,dw-apb-uart"

as a measure to use a more-special driver if there is ever the need for it. 
But here the "snps,dw-apb-uart" actually is a superset (a more generic 
implementation), while in the usb-uart-case


> That means that if you land the dts changes without the driver changes
> that things still work OK.

We already have the alternative for the usb-phys in the devicetree, but I 
still don't think that this alternative is part of the binding itself :-)


Heiko
