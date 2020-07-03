From: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH] rockchip: rk3288: Add OF board setup
Date: Fri, 3 Jul 2020 15:40:25 +0530
Message-ID: <CAMty3ZDuk=svN+aHdodx5d1hL8QzZC5MS6LJoSUgtcstnSZXoA@mail.gmail.com>
References: <20200702084820.35942-1-jagan@amarulasolutions.com>
 <8e4ff8ec-d782-32da-05ac-ae24c1bc6164@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <8e4ff8ec-d782-32da-05ac-ae24c1bc6164@arm.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Robin Murphy <robin.murphy@arm.com>
Cc: Kever Yang <kever.yang@rock-chips.com>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Simon Glass <sjg@chromium.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, =?UTF-8?Q?Myl=C3=A8ne_Josserand?= <mylene.josserand@collabora.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, U-Boot-Denx <u-boot@lists.denx.de>, Suniel Mahesh <sunil@amarulasolutions.com>, Michael Trimarchi <michael@amarulasolutions.com>, linux-amarula <linux-amarula@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

On Thu, Jul 2, 2020 at 7:26 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2020-07-02 09:48, Jagan Teki wrote:
> > The new rk3288 revision rk3288w has some changes with respect
> > to legacy rk3288 like hclk_vio and usb host0 ohci.
> >
> > In order to work these on the same in Linux kernel update the
> > compatible the root compatible with rockchip,rk3288w before
> > booting.
> >
> > So, this support during of board setup code of rk3288.
> >
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> >   arch/arm/mach-rockchip/Kconfig         |  1 +
> >   arch/arm/mach-rockchip/rk3288/rk3288.c | 26 ++++++++++++++++++++++++++
> >   2 files changed, 27 insertions(+)
> >
> > diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
> > index b1008a5058..822d8d4e9c 100644
> > --- a/arch/arm/mach-rockchip/Kconfig
> > +++ b/arch/arm/mach-rockchip/Kconfig
> > @@ -98,6 +98,7 @@ config ROCKCHIP_RK322X
> >   config ROCKCHIP_RK3288
> >       bool "Support Rockchip RK3288"
> >       select CPU_V7A
> > +     select OF_BOARD_SETUP
> >       select SUPPORT_SPL
> >       select SPL
> >       select SUPPORT_TPL
> > diff --git a/arch/arm/mach-rockchip/rk3288/rk3288.c b/arch/arm/mach-rockchip/rk3288/rk3288.c
> > index 804abe8a1b..8a682675e6 100644
> > --- a/arch/arm/mach-rockchip/rk3288/rk3288.c
> > +++ b/arch/arm/mach-rockchip/rk3288/rk3288.c
> > @@ -115,6 +115,32 @@ int rk_board_late_init(void)
> >       return rk3288_board_late_init();
> >   }
> >
> > +#ifdef CONFIG_OF_BOARD_SETUP
> > +
> > +#define RK3288_HDMI_PHYS     0xff980000
> > +#define RK3288W_HDMI_REV     0x1A
> > +#define HDMI_CONFIG0_ID              0x04
> > +
> > +int ft_board_setup(void *blob, bd_t *bd)
> > +{
> > +     u8 config0;
> > +     int ret;
> > +
> > +     config0 = readb(RK3288_HDMI_PHYS + HDMI_CONFIG0_ID);
> > +     if (config0 == RK3288W_HDMI_REV) {
> > +             ret = fdt_setprop_string(blob, 0,
> > +                                      "compatible", "rockchip,rk3288w");
>
> Does this end up replacing the entire top-level compatible property?
> i.e. from:
>
>         compatible = "vendor,board\0rockchip,rk3288";
>
> to just:
>
>         compatible = "rockchip,rk3288w";
>
> If so, that's a bit of a problem for various drivers that care about the
> actual board compatible rather than the SoC.

Yes, It looks replacing the entire compatible. I think the root
compatible is mostly untouchable because of this reason.

But, if we skip the root compatible and trying to replace individual
nodes for W revision then it requires extra registration code on in
the Linux drivers like Linux clock driver is registering the clock
with rockchip,rk3288-cru but updating this compatible with
rockchip,rk3288w-cru will require another registration code. Having
common rockchip,rk3288w can be possible to check any code in the tree.

Jagan.
