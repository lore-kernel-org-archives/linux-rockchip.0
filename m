From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v2 7/9] rockchip: make sure timer5 is enabled on rk3036 platforms
Date: Mon, 28 Sep 2015 14:44:21 +0200
Message-ID: <1726823.4nE2gJuWPe@diego>
References: <1442478540-15068-1-git-send-email-zhengxing@rock-chips.com> <11125723.j2J5LpAGi4@diego> <560931A3.2020403@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <560931A3.2020403@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Xing Zheng <zhengxing@rock-chips.com>
Cc: linux@arm.linux.org.uk, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

Am Montag, 28. September 2015, 20:25:07 schrieb Xing Zheng:
> On 2015=E5=B9=B409=E6=9C=8817=E6=97=A5 23:05, Heiko St=C3=BCbner wrot=
e:
> > Am Donnerstag, 17. September 2015, 18:37:24 schrieb Xing Zheng:
> >> The timer5 supplies the architected timer and thus as has to run w=
hen
> >> the system clocksource and clockevents drivers are registered.
> >=20
> > please kindly ask the people doing uboot development to do this in =
uboot
> > itself in future socs :-) - for example Simon's rk3288 mainline ubo=
ot does
> > this correctly.
>=20
> OK, I will ask the engineer who is doing uboot whether needs to add
> this patch. So I will remove it from the patchset v3 of "Build and su=
pport
> rk3036 SoC platform".

No, I really only meant try to make people get this right in the future=
 :-).

=46or the rk3036 there are probably already devices on the market with =
uboots=20
sporting that issue. So it's ok to have this in here now, it's just to =
make=20
sure it gets really fixed in future socs.


Heiko



>=20
> Thanks.
>=20
> >> Signed-off-by: Xing Zheng<zhengxing@rock-chips.com>
> >> ---
> >>=20
> >> Changes in v2: None
> >>=20
> >>   arch/arm/mach-rockchip/rockchip.c |   22 ++++++++++++++++++++++
> >>   1 file changed, 22 insertions(+)
> >>=20
> >> diff --git a/arch/arm/mach-rockchip/rockchip.c
> >> b/arch/arm/mach-rockchip/rockchip.c index b6cf3b4..937047f 100644
> >> --- a/arch/arm/mach-rockchip/rockchip.c
> >> +++ b/arch/arm/mach-rockchip/rockchip.c
> >> @@ -32,6 +32,8 @@
> >>=20
> >>   #define RK3288_GRF_SOC_CON0 0x244
> >>   #define RK3288_TIMER6_7_PHYS 0xff810000
> >>=20
> >> +#define RK3036_TIMER5_PHYS 0x200440a0
> >> +
> >=20
> > #define RK3036_TIMER_PHYS 0x20044000
> > -->  the actual base address of the timer block
> >=20
> > As it looks like that we'll need to duplicate that timer init at le=
ast for
> > the rk3036 and the timer ip in question is actually the same on bot=
h,
> > please split out the actual work into a separate function like
> >=20
> > static void rockchip_init_arch_timer_supply(resource_size_t phys, i=
nt
> > offs)
> > {
> >=20
> > 		reg_base =3D ioremap(phys, SZ_16K);
> > 		if (reg_base) {
> > 	=09
> > 			writel(0, reg_base + offs + 0x10);
> > 			writel(0xffffffff, reg_base + offs);
> > 			writel(0xffffffff, reg_base + offs + 0x04);
> > 			writel(1, reg_base + offs + 0x10);
> > 			dsb();
> > 			iounmap(reg_base);
> > 	=09
> > 		} else {
> > 	=09
> > 			pr_err("rockchip: could not map timer registers\n");
> > 	=09
> > 		}
> >=20
> > }
>=20
> Done.
>=20
> >>   static void __init rockchip_timer_init(void)
> >>   {
> >>  =20
> >>   	if (of_machine_is_compatible("rockchip,rk3288")) {
> >>=20
> >> @@ -64,6 +66,25 @@ static void __init rockchip_timer_init(void)
> >=20
> > for the rk3288 exchange the timer init against
> > rockchip_init_arch_timer_supply(RK3288_TIMER6_7_PHYS, 0x20);
>=20
> Done.
>=20
> >>   			regmap_write(grf, RK3288_GRF_SOC_CON0, 0x10000000);
> >>   	=09
> >>   		else
> >>   	=09
> >>   			pr_err("rockchip: could not get grf syscon\n");
> >>=20
> >> +	} else if (of_machine_is_compatible("rockchip,rk3036")) {
> >> +		void __iomem *reg_base;
> >> +
> >> +		/*
> >> +		 * Most/all uboot versions for rk3036 don't enable timer5
> >> +		 * which is needed for the architected timer to work.
> >> +		 * So make sure it is running during early boot.
> >> +		 */
> >> +		reg_base =3D ioremap(RK3036_TIMER5_PHYS, SZ_16K);
> >> +		if (reg_base) {
> >> +			writel(0, reg_base + 0x10);
> >> +			writel(0xffffffff, reg_base);
> >> +			writel(0xffffffff, reg_base + 0x04);
> >> +			writel(1, reg_base + 0x10);
> >> +			dsb();
> >> +			iounmap(reg_base);
> >> +		} else {
> >> +			pr_err("rockchip: could not map timer5 registers\n");
> >> +		}
> >=20
> > rockchip_init_arch_timer_supply(RK3036_TIMER_PHYS, 0xa0);
>=20
> Done.
>=20
> >>   	}
> >>   =09
> >>   	of_clk_init(NULL);
> >>=20
> >> @@ -79,6 +100,7 @@ static void __init rockchip_dt_init(void)
> >>=20
> >>   static const char * const rockchip_board_dt_compat[] =3D {
> >>  =20
> >>   	"rockchip,rk2928",
> >>=20
> >> +	"rockchip,rk3036",
> >>=20
> >>   	"rockchip,rk3066a",
> >>   	"rockchip,rk3066b",
> >>   	"rockchip,rk3188",
