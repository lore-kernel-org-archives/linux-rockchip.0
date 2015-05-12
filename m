From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 1/2] ARM: rockchip: fix undefined instruction of
 reset_ctrl_regs
Date: Wed, 13 May 2015 00:48:42 +0200
Message-ID: <5486316.3HPLixSGlU@phil>
References: <1612786.HeTW0LsLmg@diego> <5378157.9QgVi1hAmY@diego>
 <55517AC0.1030103@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <55517AC0.1030103-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Chris,

Am Dienstag, 12. Mai 2015, 12:00:00 schrieben Sie:
> We do not need this patch, since we have this one:
> <https://patchwork.kernel.org/patch/6218791/>
> =

> these 2 patches fixed a same issue.

thanks for pointing that out - looks like I didn't need to resurrect the ol=
d =

patch then. Just to make sure I don't mess up when removing the obsolete on=
e:

both patches
	b403125 ARM: rockchip: fix undefined instruction of reset_ctrl_regs
	0ea001d ARM: rockchip: disable dapswjdp during suspend
actually fix the same issue and
	b403125 ARM: rockchip: fix undefined instruction of reset_ctrl_regs
is the one that should be removed, right?


Thanks
Heiko

[I've readded the lists to give this a bit publicity, so people can see why=
 we =

remove one of the patches again]


> On 04/25/2015 08:13 AM, Heiko St=FCbner wrote:
> > Sometimes the debug module may not work well after resume, since it has
> > not been correctly reset when wakeup from suspend. That cause system
> > crash during reusme, and a 'undefined instruction' is displayed on the
> > console. Set the GRF_FORCE_JTAG bit of RK3288_GRF_SOC_CON0 can ensure
> > that debug modul is reset. And we can change the value of
> > RK3288_GRF_SOC_CON0 back when system resume.
> > =

> > Signed-off-by: Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> > Tested-by: Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> > Reviewed-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> > =

> > According to discussions, there does not seem a better solution availab=
le.
> > Please also see the potential security implication described in the
> > comment inline in the code.
> > =

> > Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
> > ---
> > =

> >   arch/arm/mach-rockchip/pm.c | 26 ++++++++++++++++++++++++++
> >   arch/arm/mach-rockchip/pm.h |  4 ++++
> >   2 files changed, 30 insertions(+)
> > =

> > diff --git a/arch/arm/mach-rockchip/pm.c b/arch/arm/mach-rockchip/pm.c
> > index b0dcbe2..22812fe 100644
> > --- a/arch/arm/mach-rockchip/pm.c
> > +++ b/arch/arm/mach-rockchip/pm.c
> > @@ -44,9 +44,11 @@ static void __iomem *rk3288_bootram_base;
> > =

> >   static phys_addr_t rk3288_bootram_phy;
> >   =

> >   static struct regmap *pmu_regmap;
> > =

> > +static struct regmap *grf_regmap;
> > =

> >   static struct regmap *sgrf_regmap;
> >   =

> >   static u32 rk3288_pmu_pwr_mode_con;
> > =

> > +static u32 rk3288_grf_soc_con0;
> > =

> >   static u32 rk3288_sgrf_soc_con0;
> >   =

> >   static inline u32 rk3288_l2_config(void)
> > =

> > @@ -70,12 +72,26 @@ static void rk3288_slp_mode_set(int level)
> > =

> >   {
> >   =

> >   	u32 mode_set, mode_set1;
> > =

> > +	regmap_read(grf_regmap, RK3288_GRF_SOC_CON0, &rk3288_grf_soc_con0);
> > +
> > =

> >   	regmap_read(sgrf_regmap, RK3288_SGRF_SOC_CON0, =

&rk3288_sgrf_soc_con0);
> >   	=

> >   	regmap_read(pmu_regmap, RK3288_PMU_PWRMODE_CON,
> >   	=

> >   		    &rk3288_pmu_pwr_mode_con);
> >   	=

> >   	/*
> > =

> > +	 * We need set this bit GRF_FORCE_JTAG here, for the debug module,
> > +	 * otherwise, it may become inaccessible after resume.
> > +	 * This creates a potential security issue, as the sdmmc pins may
> > +	 * accept jtag data for a short time during resume if no card is
> > +	 * inserted.
> > +	 * But this is of course also true for the regular boot, before we
> > +	 * turn of the jtag/sdmmc autodetect.
> > +	 */
> > +	regmap_write(grf_regmap, RK3288_GRF_SOC_CON0, GRF_FORCE_JTAG |
> > +		     GRF_FORCE_JTAG_WRITE);
> > +
> > +	/*
> > =

> >   	 * SGRF_FAST_BOOT_EN - system to boot from FAST_BOOT_ADDR
> >   	 * PCLK_WDT_GATE - disable WDT during suspend.
> >   	 */
> > =

> > @@ -135,6 +151,9 @@ static void rk3288_slp_mode_set_resume(void)
> > =

> >   	regmap_write(sgrf_regmap, RK3288_SGRF_SOC_CON0,
> >   	=

> >   		     rk3288_sgrf_soc_con0 | SGRF_PCLK_WDT_GATE_WRITE
> >   		     =

> >   		     | SGRF_FAST_BOOT_EN_WRITE);
> > =

> > +
> > +	regmap_write(grf_regmap, RK3288_GRF_SOC_CON0, rk3288_grf_soc_con0 |
> > +		     GRF_FORCE_JTAG_WRITE);
> > =

> >   }
> >   =

> >   static int rockchip_lpmode_enter(unsigned long arg)
> > =

> > @@ -193,6 +212,13 @@ static int rk3288_suspend_init(struct device_node
> > *np)
> > =

> >   		return PTR_ERR(pmu_regmap);
> >   	=

> >   	}
> > =

> > +	grf_regmap =3D syscon_regmap_lookup_by_compatible(
> > +				"rockchip,rk3288-grf");
> > +	if (IS_ERR(grf_regmap)) {
> > +		pr_err("%s: could not find grf regmap\n", __func__);
> > +		return PTR_ERR(pmu_regmap);
> > +	}
> > +
> > =

> >   	sram_np =3D of_find_compatible_node(NULL, NULL,
> >   	=

> >   					  "rockchip,rk3288-pmu-sram");
> >   	=

> >   	if (!sram_np) {
> > =

> > diff --git a/arch/arm/mach-rockchip/pm.h b/arch/arm/mach-rockchip/pm.h
> > index 3e8d39c..f8a747b 100644
> > --- a/arch/arm/mach-rockchip/pm.h
> > +++ b/arch/arm/mach-rockchip/pm.h
> > @@ -48,6 +48,10 @@ static inline void rockchip_suspend_init(void)
> > =

> >   #define RK3288_PMU_WAKEUP_RST_CLR_CNT	0x44
> >   #define RK3288_PMU_PWRMODE_CON1		0x90
> > =

> > +#define RK3288_GRF_SOC_CON0		0x244
> > +#define GRF_FORCE_JTAG			BIT(12)
> > +#define GRF_FORCE_JTAG_WRITE		BIT(28)
> > +
> > =

> >   #define RK3288_SGRF_SOC_CON0		(0x0000)
> >   #define RK3288_SGRF_FAST_BOOT_ADDR	(0x0120)
> >   #define SGRF_PCLK_WDT_GATE		BIT(6)
