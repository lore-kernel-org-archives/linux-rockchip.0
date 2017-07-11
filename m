From: Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>
Subject: Re: [PATCH 1/2] phy-rockchip-pcie: add set_mode callback
Date: Tue, 11 Jul 2017 10:15:58 +0530
Message-ID: <cea27b15-2c2d-a4a9-76f8-f4798c152101@ti.com>
References: <1497601068-181656-1-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1497601068-181656-1-git-send-email-shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Bjorn Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Friday 16 June 2017 01:47 PM, Shawn Lin wrote:
> phy_mode was added for switching USB mode purposely as
> well as phy_set_mode API. However other types of PHY could
> also have some miscellaneous setting/modes need to be
> handled. This patch is gonna support this callback for
> phy-rockchip-pcie and do some power-saving work there.
> Note that we just stuff in some other values other that the
> existing phy_mode and convert it in the coressponding driver
> instead, otherwise we should extend the phy_mode again which
> it doesn't make sense to add in new driver's specificed value.
> Overall it looks fine to me as the controller's driver and the
> phy's driver are paired so that the caller and the consumer should
> be able to keep the value(mode) in consistent.

I really don't prefer using an API other that what it is intended for. We have
to come up with a better way for handling this.

IIUC this patch sets unused lanes in idle mode? If yes, then can't we model
each lane as a separate phy, so that we can power-on/power-off each lane
independently.

Thanks
Kishon
> 
> Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> ---
> 
>  drivers/phy/rockchip/phy-rockchip-pcie.c | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-pcie.c b/drivers/phy/rockchip/phy-rockchip-pcie.c
> index 6904633..9ffad15 100644
> --- a/drivers/phy/rockchip/phy-rockchip-pcie.c
> +++ b/drivers/phy/rockchip/phy-rockchip-pcie.c
> @@ -255,11 +255,33 @@ static int rockchip_pcie_phy_exit(struct phy *phy)
>  	return 0;
>  }
>  
> +static int rockchip_pcie_phy_set_mode(struct phy *phy, enum phy_mode mode)
> +{
> +	struct rockchip_pcie_phy *rk_phy = phy_get_drvdata(phy);
> +	u8 map = (u8)mode;
> +	int i;
> +
> +	for (i = 0; i < PHY_MAX_LANE_NUM; i++) {
> +		if (map & BIT(i))
> +			continue;
> +
> +		dev_dbg(&phy->dev, "idling lane %d\n", i);
> +		regmap_write(rk_phy->reg_base,
> +			     rk_phy->phy_data->pcie_laneoff,
> +			     HIWORD_UPDATE(PHY_LANE_IDLE_OFF,
> +			     PHY_LANE_IDLE_MASK,
> +			     PHY_LANE_IDLE_A_SHIFT + i));
> +	}
> +
> +	return 0;
> +}
> +
>  static const struct phy_ops ops = {
>  	.init		= rockchip_pcie_phy_init,
>  	.exit		= rockchip_pcie_phy_exit,
>  	.power_on	= rockchip_pcie_phy_power_on,
>  	.power_off	= rockchip_pcie_phy_power_off,
> +	.set_mode	= rockchip_pcie_phy_set_mode,
>  	.owner		= THIS_MODULE,
>  };
>  
> 
