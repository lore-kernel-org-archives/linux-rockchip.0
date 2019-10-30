From: Chunfeng Yun <chunfeng.yun-NuS5LvNUpcJWk0Htik3J/w@public.gmane.org>
Subject: Re: [PATCH 1/5] phy: rockchip: add inno-usb3 phy driver
Date: Wed, 30 Oct 2019 10:59:21 +0800
Message-ID: <1572404361.18464.24.camel@mhfsdcap03>
References: <20191028182254.30739-1-pgwipeout@gmail.com>
 <20191028182254.30739-2-pgwipeout@gmail.com>
 <1572315115.18464.11.camel@mhfsdcap03>
 <CAMdYzYoOQ_C_f2v-3XBid8X0fc6z3Bw0XqRi3CQiwCzRLT-_0g@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAMdYzYoOQ_C_f2v-3XBid8X0fc6z3Bw0XqRi3CQiwCzRLT-_0g-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Tue, 2019-10-29 at 11:26 -0400, Peter Geis wrote:
> On Mon, Oct 28, 2019 at 10:12 PM Chunfeng Yun <chunfeng.yun-NuS5LvNUpcJWk0Htik3J/w@public.gmane.org> wrote:
> >
> > On Mon, 2019-10-28 at 18:22 +0000, Peter Geis wrote:
> > > Add the rockchip innosilicon usb3 phy driver, supporting devices such as the rk3328.
> > > Pulled from:
> > > https://github.com/FireflyTeam/kernel/blob/roc-rk3328-cc/drivers/phy/rockchip/phy-rockchip-inno-usb3.c
> > >
> > > Signed-off-by: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > > ---
> > >  drivers/phy/rockchip/Kconfig                  |    9 +
> > >  drivers/phy/rockchip/Makefile                 |    1 +
> > >  drivers/phy/rockchip/phy-rockchip-inno-usb3.c | 1107 +++++++++++++++++
> > >  3 files changed, 1117 insertions(+)
> > >  create mode 100644 drivers/phy/rockchip/phy-rockchip-inno-usb3.c
> > >
...
> > > +static int rk3328_u3phy_pipe_power(struct rockchip_u3phy *u3phy,
> > > +                                struct rockchip_u3phy_port *u3phy_port,
> > > +                                bool on)
> > > +{
> > > +     unsigned int reg;
> > > +
> > > +     if (on) {
> > > +             reg = readl(u3phy_port->base + 0x1a8);
> > > +             reg &= ~BIT(4); /* ldo power up */
> > > +             writel(reg, u3phy_port->base + 0x1a8);
> > > +
> > > +             reg = readl(u3phy_port->base + 0x044);
> > > +             reg &= ~BIT(4); /* bg power on */
> > > +             writel(reg, u3phy_port->base + 0x044);
> > > +
> > > +             reg = readl(u3phy_port->base + 0x150);
> > > +             reg |= BIT(6); /* tx bias enable */
> > > +             writel(reg, u3phy_port->base + 0x150);
> > > +
> > > +             reg = readl(u3phy_port->base + 0x080);
> > > +             reg &= ~BIT(2); /* tx cm power up */
> > > +             writel(reg, u3phy_port->base + 0x080);
> > > +
> > > +             reg = readl(u3phy_port->base + 0x0c0);
> > > +             /* tx obs enable and rx cm enable */
> > > +             reg |= (BIT(3) | BIT(4));
> > > +             writel(reg, u3phy_port->base + 0x0c0);
> > > +
> > > +             udelay(1);
> > > +     } else {
> > > +             reg = readl(u3phy_port->base + 0x1a8);
> > > +             reg |= BIT(4); /* ldo power down */
> > > +             writel(reg, u3phy_port->base + 0x1a8);
> > > +
> > > +             reg = readl(u3phy_port->base + 0x044);
> > > +             reg |= BIT(4); /* bg power down */
> > > +             writel(reg, u3phy_port->base + 0x044);
> > > +
> > > +             reg = readl(u3phy_port->base + 0x150);
> > > +             reg &= ~BIT(6); /* tx bias disable */
> > > +             writel(reg, u3phy_port->base + 0x150);
> > > +
> > > +             reg = readl(u3phy_port->base + 0x080);
> > > +             reg |= BIT(2); /* tx cm power down */
> > > +             writel(reg, u3phy_port->base + 0x080);
> > > +
> > > +             reg = readl(u3phy_port->base + 0x0c0);
> > > +             /* tx obs disable and rx cm disable */
> > > +             reg &= ~(BIT(3) | BIT(4));
> > > +             writel(reg, u3phy_port->base + 0x0c0);
> > > +     }
> > Try to avoid magic number
> 
> Since this was not my driver, I only pulled it in and made the
> necessary changes to get it working, I tried to refrain from
> modifications as much as possible.
> Do you want me to convert these addresses to definitions based on the
> comments in the code?
It's better to follow register names defined in register map doc if you
have
> 
> >
> > > +
> > > +     return 0;
> > > +}
> > > +
