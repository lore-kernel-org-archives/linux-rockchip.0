From: "Huang, Tao" <huangtao@rock-chips.com>
Subject: Re: [PATCH] ARM: rockchip: restore dapswjdp after suspend
Date: Thu, 21 May 2015 10:02:31 +0800
Message-ID: <555D3CB7.2000002@rock-chips.com>
References: <1432154048-19126-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1432154048-19126-1-git-send-email-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux@arm.linux.org.uk, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Chris Zhong <zyw@rock-chips.com>, linux-arm-kernel@lists.infradead.org, Tony Xie <tony.xie@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Hi, Doug:

=E5=9C=A8 2015=E5=B9=B405=E6=9C=8821=E6=97=A5 04:34, Doug Anderson =E5=86=
=99=E9=81=93:
> In the commit (0ea001d ARM: rockchip: disable dapswjdp during suspend=
)
> we made the assumption that we didn't need to restore dapswjdp after
> suspend because "the MASKROM will enable it back".
>=20
> It turns out that's not a safe assumption.  In some cases (pending
> interrupts) it's possible that the WFI might act as a no-op and the
> MaskROM will never run.


I don't think this can happen. It seems we set PMU_GLOBAL_INT_DISABLE
bit, which means in power off flow, the IRQ will not accepted until the
ARM is power off. Do you see the SGRF_CPU_CON0[0] is 0 after resume?

Anyway, restore the value is okay, which make the code more symmetrical=
ly



  Since we're changing the bit, we should
> restore it ourselves.
>=20
> Signed-off-by: Doug Anderson <dianders@chromium.org>
> ---
>  arch/arm/mach-rockchip/pm.c | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/arch/arm/mach-rockchip/pm.c b/arch/arm/mach-rockchip/pm.=
c
> index b0dcbe2..a7be465 100644
> --- a/arch/arm/mach-rockchip/pm.c
> +++ b/arch/arm/mach-rockchip/pm.c
> @@ -48,6 +48,7 @@ static struct regmap *sgrf_regmap;
> =20
>  static u32 rk3288_pmu_pwr_mode_con;
>  static u32 rk3288_sgrf_soc_con0;
> +static u32 rk3288_sgrf_cpu_con0;
> =20
>  static inline u32 rk3288_l2_config(void)
>  {
> @@ -70,6 +71,7 @@ static void rk3288_slp_mode_set(int level)
>  {
>  	u32 mode_set, mode_set1;
> =20
> +	regmap_read(sgrf_regmap, RK3288_SGRF_CPU_CON0, &rk3288_sgrf_cpu_con=
0);
>  	regmap_read(sgrf_regmap, RK3288_SGRF_SOC_CON0, &rk3288_sgrf_soc_con=
0);
> =20
>  	regmap_read(pmu_regmap, RK3288_PMU_PWRMODE_CON,
> @@ -129,6 +131,9 @@ static void rk3288_slp_mode_set(int level)
> =20
>  static void rk3288_slp_mode_set_resume(void)
>  {
> +	regmap_write(sgrf_regmap, RK3288_SGRF_CPU_CON0,
> +		     rk3288_sgrf_cpu_con0 | SGRF_DAPDEVICEEN_WRITE);
> +
>  	regmap_write(pmu_regmap, RK3288_PMU_PWRMODE_CON,
>  		     rk3288_pmu_pwr_mode_con);
> =20
>=20
