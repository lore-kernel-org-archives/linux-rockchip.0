From: Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH 058/102] phy: rockchip-pcie: explicitly request exclusive
 reset control
Date: Sat, 22 Jul 2017 21:09:05 +0800
Message-ID: <8d913686-5765-c808-772f-da389e991b71@rock-chips.com>
References: <20170719152646.25903-1-p.zabel@pengutronix.de>
 <20170719152646.25903-59-p.zabel@pengutronix.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20170719152646.25903-59-p.zabel@pengutronix.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-kernel@vger.kernel.org, shawn.lin@rock-chips.com, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Philipp

On 2017/7/19 23:26, Philipp Zabel wrote:
> Commit a53e35db70d1 ("reset: Ensure drivers are explicit when requesting
> reset lines") started to transition the reset control request API calls
> to explicitly state whether the driver needs exclusive or shared reset
> control behavior. Convert all drivers requesting exclusive resets to the
> explicit API call so the temporary transition helpers can be removed.
>
> No functional changes.
>
> Cc: Kishon Vijay Abraham I <kishon@ti.com>
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: linux-rockchip@lists.infradead.org
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> ---
>  drivers/phy/rockchip/phy-rockchip-pcie.c | 2 +-

This driver is under reconstruction and would probably go via
pci tree later. So I would mention your change to the reconstruction
work if that's applied.

>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/phy/rockchip/phy-rockchip-pcie.c b/drivers/phy/rockchip/phy-rockchip-pcie.c
> index 6904633cad687..258220b7f481c 100644
> --- a/drivers/phy/rockchip/phy-rockchip-pcie.c
> +++ b/drivers/phy/rockchip/phy-rockchip-pcie.c
> @@ -305,7 +305,7 @@ static int rockchip_pcie_phy_probe(struct platform_device *pdev)
>  	rk_phy->phy_data = (struct rockchip_pcie_data *)of_id->data;
>  	rk_phy->reg_base = grf;
>
> -	rk_phy->phy_rst = devm_reset_control_get(dev, "phy");
> +	rk_phy->phy_rst = devm_reset_control_get_exclusive(dev, "phy");
>  	if (IS_ERR(rk_phy->phy_rst)) {
>  		if (PTR_ERR(rk_phy->phy_rst) != -EPROBE_DEFER)
>  			dev_err(dev,
>


-- 
Best Regards
Shawn Lin
