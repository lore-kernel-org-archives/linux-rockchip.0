From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2 1/2] phy: rockchip-emmc: retry calpad busy trimming
Date: Wed, 10 Jan 2018 11:36:34 -0800
Message-ID: <CAD=FV=WGw7i+=S0JLSmAEnG8t_oT5gWwYn4e1TJ4LkHUVYp6Cw@mail.gmail.com>
References: <1515581362-181200-1-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1515581362-181200-1-git-send-email-shawn.lin@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Heiko Stuebner <heiko@sntech.de>, Ziyuan Xu <xzy.xu@rock-chips.com>, Brian Norris <briannorris@chromium.org>, LKML <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

This seems like a good idea to me.  The fact that there was no polling
loop here always seemed strange to me, but that's how the original
code was structured and I personally never saw any problems with it.

On Wed, Jan 10, 2018 at 2:49 AM, Shawn Lin <shawn.lin@rock-chips.com> wrote:
> It turns out that 5us isn't enough for all cases, so let's
> retry some more times to wait for caldone.
>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> Reviewed-by: Brian Norris <briannorris@chromium.org>
> Tested-by: Caesar Wang <wxt@rock-chips.com>
> Tested-by: Ziyuan Xu <xzy.xu@rock-chips.com>
> ---
>
> Changes in v2:
> - propagate the error and print it
>
>  drivers/phy/rockchip/phy-rockchip-emmc.c | 27 +++++++++++++++++----------
>  1 file changed, 17 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/phy/rockchip/phy-rockchip-emmc.c b/drivers/phy/rockchip/phy-rockchip-emmc.c
> index f1b24f1..547b746 100644
> --- a/drivers/phy/rockchip/phy-rockchip-emmc.c
> +++ b/drivers/phy/rockchip/phy-rockchip-emmc.c
> @@ -76,6 +76,10 @@
>  #define PHYCTRL_OTAPDLYSEL_MASK                0xf
>  #define PHYCTRL_OTAPDLYSEL_SHIFT       0x7
>
> +#define PHYCTRL_IS_CALDONE(x) \
> +       ((((x) >> PHYCTRL_CALDONE_SHIFT) & \
> +         PHYCTRL_CALDONE_MASK) == PHYCTRL_CALDONE_DONE)
> +
>  struct rockchip_emmc_phy {
>         unsigned int    reg_offset;
>         struct regmap   *reg_base;
> @@ -90,6 +94,7 @@ static int rockchip_emmc_phy_power(struct phy *phy, bool on_off)
>         unsigned int freqsel = PHYCTRL_FREQSEL_200M;
>         unsigned long rate;
>         unsigned long timeout;
> +       int ret;
>
>         /*
>          * Keep phyctrl_pdb and phyctrl_endll low to allow
> @@ -160,17 +165,19 @@ static int rockchip_emmc_phy_power(struct phy *phy, bool on_off)
>                                    PHYCTRL_PDB_SHIFT));
>
>         /*
> -        * According to the user manual, it asks driver to
> -        * wait 5us for calpad busy trimming
> +        * According to the user manual, it asks driver to wait 5us for
> +        * calpad busy trimming. However it is documented that this value is
> +        * PVT(A.K.A process,voltage and temperature) relevant, so some
> +        * failure cases are found which indicates we should be more tolerant
> +        * to calpad busy trimming.
>          */
> -       udelay(5);
> -       regmap_read(rk_phy->reg_base,
> -                   rk_phy->reg_offset + GRF_EMMCPHY_STATUS,
> -                   &caldone);
> -       caldone = (caldone >> PHYCTRL_CALDONE_SHIFT) & PHYCTRL_CALDONE_MASK;
> -       if (caldone != PHYCTRL_CALDONE_DONE) {
> -               pr_err("rockchip_emmc_phy_power: caldone timeout.\n");
> -               return -ETIMEDOUT;
> +       ret = regmap_read_poll_timeout(rk_phy->reg_base,
> +                                      rk_phy->reg_offset + GRF_EMMCPHY_STATUS,
> +                                      caldone, PHYCTRL_IS_CALDONE(caldone),
> +                                      5, 50);

See comments in part 2 of this series, AKA
<https://patchwork.kernel.org/patch/10154797/>.  I think this should
be "0, 50", not "5, 50".  ...or, if you insist, "10, 50"


> +       if (ret) {
> +               pr_err("%s: caldone failed %d.\n", __func__, ret);

I like this v2 slightly better than Caesar's v2 because you changed
the word "timeout" to "failed".
