From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v5 12/16] usb: dwc3: add make compatible for rockchip
 platform
Date: Fri, 15 May 2020 10:49:56 +0800
Message-ID: <4537a5fc-6494-0e1f-9589-1677694b390e@rock-chips.com>
References: <20200513071344.5430-1-frank.wang@rock-chips.com>
 <20200513071710.5651-1-frank.wang@rock-chips.com>
 <20200513071710.5651-3-frank.wang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200513071710.5651-3-frank.wang@rock-chips.com>
Content-Language: en-US
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Frank Wang <frank.wang@rock-chips.com>, heiko@sntech.de, marex@denx.de, bmeng.cn@gmail.com, philipp.tomsich@theobroma-systems.com, klaus.goger@theobroma-systems.com, jagan@amarulasolutions.com, sjg@chromium.org
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com, marek.belisko@gmail.com, william.wu@rock-chips.com, jianing.ren@rock-chips.com, chenjh@rock-chips.com, wmc@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org


On 2020/5/13 下午3:17, Frank Wang wrote:
> RK3399 Type-C PHY is required that must hold whole USB3.0 OTG controller
> in resetting to hold pipe power state in P2 before initializing the PHY.
> This commit fixed it and added device compatible for rockchip platform.
>
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>   drivers/usb/dwc3/dwc3-generic.c | 33 +++++++++++++++++++++++++++------
>   1 file changed, 27 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/usb/dwc3/dwc3-generic.c b/drivers/usb/dwc3/dwc3-generic.c
> index eabd53a36d..421e0be135 100644
> --- a/drivers/usb/dwc3/dwc3-generic.c
> +++ b/drivers/usb/dwc3/dwc3-generic.c
> @@ -24,6 +24,12 @@
>   #include <clk.h>
>   #include <usb/xhci.h>
>   
> +struct dwc3_glue_data {
> +	struct clk_bulk		clks;
> +	struct reset_ctl_bulk	resets;
> +	fdt_addr_t regs;
> +};
> +
>   struct dwc3_generic_plat {
>   	fdt_addr_t base;
>   	u32 maximum_speed;
> @@ -47,6 +53,7 @@ static int dwc3_generic_probe(struct udevice *dev,
>   	int rc;
>   	struct dwc3_generic_plat *plat = dev_get_platdata(dev);
>   	struct dwc3 *dwc3 = &priv->dwc3;
> +	struct dwc3_glue_data *glue = dev_get_platdata(dev->parent);
>   
>   	dwc3->dev = dev;
>   	dwc3->maximum_speed = plat->maximum_speed;
> @@ -55,10 +62,22 @@ static int dwc3_generic_probe(struct udevice *dev,
>   	dwc3_of_parse(dwc3);
>   #endif
>   
> +	/*
> +	 * It must hold whole USB3.0 OTG controller in resetting to hold pipe
> +	 * power state in P2 before initializing TypeC PHY on RK3399 platform.
> +	 */
> +	if (device_is_compatible(dev->parent, "rockchip,rk3399-dwc3")) {
> +		reset_assert_bulk(&glue->resets);
> +		udelay(1);
> +	}
> +
>   	rc = dwc3_setup_phy(dev, &priv->phys);
>   	if (rc)
>   		return rc;
>   
> +	if (device_is_compatible(dev->parent, "rockchip,rk3399-dwc3"))
> +		reset_deassert_bulk(&glue->resets);
> +
>   	priv->base = map_physmem(plat->base, DWC3_OTG_REGS_END, MAP_NOCACHE);
>   	dwc3->regs = priv->base + DWC3_GLOBALS_REGS_START;
>   
> @@ -186,12 +205,6 @@ U_BOOT_DRIVER(dwc3_generic_host) = {
>   };
>   #endif
>   
> -struct dwc3_glue_data {
> -	struct clk_bulk		clks;
> -	struct reset_ctl_bulk	resets;
> -	fdt_addr_t regs;
> -};
> -
>   struct dwc3_glue_ops {
>   	void (*select_dr_mode)(struct udevice *dev, int index,
>   			       enum usb_dr_mode mode);
> @@ -394,6 +407,12 @@ static int dwc3_glue_probe(struct udevice *dev)
>   	if (ret)
>   		return ret;
>   
> +	if (glue->resets.count == 0) {
> +		ret = dwc3_glue_reset_init(child, glue);
> +		if (ret)
> +			return ret;
> +	}
> +
>   	while (child) {
>   		enum usb_dr_mode dr_mode;
>   
> @@ -424,6 +443,8 @@ static const struct udevice_id dwc3_glue_ids[] = {
>   	{ .compatible = "ti,dwc3", .data = (ulong)&ti_ops },
>   	{ .compatible = "ti,am437x-dwc3", .data = (ulong)&ti_ops },
>   	{ .compatible = "ti,am654-dwc3" },
> +	{ .compatible = "rockchip,rk3328-dwc3" },
> +	{ .compatible = "rockchip,rk3399-dwc3" },
>   	{ }
>   };
>   
