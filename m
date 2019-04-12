From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH] clk: rockchip: rk3288: Limit use of USB PHY clock to USB
Date: Fri, 12 Apr 2019 20:55:21 +0200
Message-ID: <2234566.NSlXb2d66Y@diego>
References: <20190411175917.173566-1-mka@chromium.org> <2029012.W0xZ3ly3fY@diego> <20190412180255.GW112750@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190412180255.GW112750@google.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Matthias Kaehlcke <mka@chromium.org>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

Am Freitag, 12. April 2019, 20:02:55 CEST schrieb Matthias Kaehlcke:
> On Fri, Apr 12, 2019 at 11:30:37AM +0200, Heiko Stübner wrote:
> > Am Freitag, 12. April 2019, 02:16:57 CEST schrieb Matthias Kaehlcke:
> > > Hi Heiko,
> > > 
> > > On Thu, Apr 11, 2019 at 09:03:07PM +0200, Heiko Stübner wrote:
> > > > Hi Matthias,
> > > > 
> > > > Am Donnerstag, 11. April 2019, 19:59:17 CEST schrieb Matthias Kaehlcke:
> > > > > The USB PHY clock can be configured as (grand) parent of uart0_sclk and
> > > > > sclk_gpu. It has been observed that UART0 doesn't work reliably in high
> > > > > speed mode with the PHY clock as input when certain USB devices are
> > > > > plugged to the USB HOST1 port (see https://crrev.com/c/320543).
> > > > > 
> > > > > Prefix the name of the PHY clock with a '.' in the non-USB muxes to
> > > > > effectively remove the clock as input from these muxes.
> > > > > 
> > > > > Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> > > > > ---
> > > > >  drivers/clk/rockchip/clk-rk3288.c | 4 ++--
> > > > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/clk/rockchip/clk-rk3288.c b/drivers/clk/rockchip/clk-rk3288.c
> > > > > index 5a67b7869960..677bc5485201 100644
> > > > > --- a/drivers/clk/rockchip/clk-rk3288.c
> > > > > +++ b/drivers/clk/rockchip/clk-rk3288.c
> > > > > @@ -200,8 +200,8 @@ PNAME(mux_aclk_cpu_src_p)	= { "cpll_aclk_cpu", "gpll_aclk_cpu" };
> > > > >  PNAME(mux_pll_src_cpll_gpll_p)		= { "cpll", "gpll" };
> > > > >  PNAME(mux_pll_src_npll_cpll_gpll_p)	= { "npll", "cpll", "gpll" };
> > > > >  PNAME(mux_pll_src_cpll_gpll_npll_p)	= { "cpll", "gpll", "npll" };
> > > > > -PNAME(mux_pll_src_cpll_gpll_usb480m_p)	= { "cpll", "gpll", "usbphy480m_src" };
> > > > > -PNAME(mux_pll_src_cpll_gll_usb_npll_p)	= { "cpll", "gpll", "usbphy480m_src", "npll" };
> > > > > +PNAME(mux_pll_src_cpll_gpll_usb480m_p)	= { "cpll", "gpll", ".usbphy480m_src" };
> > > > > +PNAME(mux_pll_src_cpll_gll_usb_npll_p)	= { "cpll", "gpll", ".usbphy480m_src", "npll" };
> > > > 
> > > > In general I like to have things like the clock-tree described fully
> > > > and let the kernel handle correct sourcing ... but:
> > > > 
> > > > As you write this seems like a systemic problem when just connecting
> > > > random peripherals can create unstable clock source frequencies,
> > > > so I tend to agree here ... but:
> > > > 
> > > > Can we please find a more "talking" name for this ... because as with the
> > > > above someone will find the "." and submit a fix for it ;-) .
> > > > 
> > > > So just name it "unstable_dummy" or so?
> > > 
> > > I looked for some common pattern, but couldn't find one. I liked the
> > > '.' since it leaves the name of the clock mostly intact, just hiding
> > > it (similar to a leading '.' in a Linux file system). But I agree that
> > > it might not be expressive enough. I still like the idea to keep the
> > > clock name around for reference, maybe we could name it
> > > "unstable:usbphy480m_src" or similar. If you don't object I'll send a
> > > patch with this some time tomorrow.
> > 
> > I've just adapted the patch to use the new parent-name you suggested
> > and applied it for 5.2 So no need to resend :-) .
> 
> Pefect, thanks!
> 
> I don't see the patch in the git.kernel.org repo (nor
> https://lore.kernel.org/patchwork/patch/1060781/), looks like the push
> is still pending.

oops, I really had forgotten the push ... done now with your patch at
https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/log/?h=v5.2-clk/next

Heiko
