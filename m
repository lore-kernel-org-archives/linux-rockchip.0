From: Caesar Wang <wxt@rock-chips.com>
Subject: Re: [PATCH 1/2] phy: rockchip-emmc: retry calpad busy trimming
Date: Fri, 5 Jan 2018 09:32:30 +0800
Message-ID: <7fd47a8b-d254-6336-ced4-82b2a44a0e9d@rock-chips.com>
References: <1514859720-151161-1-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1514859720-151161-1-git-send-email-shawn.lin@rock-chips.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Shawn Lin <shawn.lin@rock-chips.com>, Kishon Vijay Abraham I <kishon@ti.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Ziyuan Xu <xzy.xu@rock-chips.com>, linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Kishon & Shawn,

As the bug had tracked on https://issuetracker.google.com/71561742.

In some cases, the mmc phy power on failed during booting up.
The log as below:
...
[   2.375333] rockchip_emmc_phy_power: caldone timeout.
[    2.377815] phy phy-ff770000.syscon:phy@f780.4: phy poweron failed 
--> -110
...
[    2.489295] mmc0: mmc_select_hs400es failed, error -110
[    2.489302] mmc0: error -110 whilst initialising MMC card
..


在 2018年01月02日 10:21, Shawn Lin 写道:
> It turns out that 5us isn't enough for all cases, so let's
> retry some more times to wait for caldone.
>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

Tested-by: Caesar Wang <wxt@rock-chips.com>

I had tested on rk3399 chromebook, so feel free to add my tag.

-Caesar
> ---
>
>   drivers/phy/rockchip/phy-rockchip-emmc.c | 21 +++++++++++++--------
>   1 file changed, 13 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/phy/rockchip/phy-rockchip-emmc.c b/drivers/phy/rockchip/phy-rockchip-emmc.c
> index f1b24f1..512a6ef 100644
> --- a/drivers/phy/rockchip/phy-rockchip-emmc.c
> +++ b/drivers/phy/rockchip/phy-rockchip-emmc.c
> @@ -76,6 +76,10 @@
>   #define PHYCTRL_OTAPDLYSEL_MASK		0xf
>   #define PHYCTRL_OTAPDLYSEL_SHIFT	0x7
>   
> +#define PHYCTRL_IS_CALDONE(x) \
> +	((((x) >> PHYCTRL_CALDONE_SHIFT) & \
> +	  PHYCTRL_CALDONE_MASK) == PHYCTRL_CALDONE_DONE)
> +
>   struct rockchip_emmc_phy {
>   	unsigned int	reg_offset;
>   	struct regmap	*reg_base;
> @@ -160,15 +164,16 @@ static int rockchip_emmc_phy_power(struct phy *phy, bool on_off)
>   				   PHYCTRL_PDB_SHIFT));
>   
>   	/*
> -	 * According to the user manual, it asks driver to
> -	 * wait 5us for calpad busy trimming
> +	 * According to the user manual, it asks driver to wait 5us for
> +	 * calpad busy trimming. However it is documented that this value is
> +	 * PVT(A.K.A process,voltage and temperature) relevant, so some
> +	 * failure cases are found which indicates we should be more tolerant
> +	 * to calpad busy trimming.
>   	 */
> -	udelay(5);
> -	regmap_read(rk_phy->reg_base,
> -		    rk_phy->reg_offset + GRF_EMMCPHY_STATUS,
> -		    &caldone);
> -	caldone = (caldone >> PHYCTRL_CALDONE_SHIFT) & PHYCTRL_CALDONE_MASK;
> -	if (caldone != PHYCTRL_CALDONE_DONE) {
> +	if (regmap_read_poll_timeout(rk_phy->reg_base,
> +				     rk_phy->reg_offset + GRF_EMMCPHY_STATUS,
> +				     caldone, PHYCTRL_IS_CALDONE(caldone),
> +				     5, 50)) {
>   		pr_err("rockchip_emmc_phy_power: caldone timeout.\n");
>   		return -ETIMEDOUT;
>   	}
