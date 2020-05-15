From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v5 13/16] driver: usb: drop legacy rockchip xhci driver
Date: Fri, 15 May 2020 10:50:13 +0800
Message-ID: <95a19d90-d22f-2bdd-171f-7446a89e125b@rock-chips.com>
References: <20200513071344.5430-1-frank.wang@rock-chips.com>
 <20200513071710.5651-1-frank.wang@rock-chips.com>
 <20200513071710.5651-4-frank.wang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200513071710.5651-4-frank.wang@rock-chips.com>
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
> We have changed to use dwc3 generic driver for usb3.0 host, so the
> legacy Rockchip's xHCI driver is not needed, and drop it.
>
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> Reviewed-by: Jagan Teki <jagan@amarulasolutions.com>

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>   drivers/usb/host/Kconfig         |   9 --
>   drivers/usb/host/Makefile        |   1 -
>   drivers/usb/host/xhci-rockchip.c | 196 -------------------------------
>   3 files changed, 206 deletions(-)
>   delete mode 100644 drivers/usb/host/xhci-rockchip.c
>
> diff --git a/drivers/usb/host/Kconfig b/drivers/usb/host/Kconfig
> index 2f381dc958..088931a6b9 100644
> --- a/drivers/usb/host/Kconfig
> +++ b/drivers/usb/host/Kconfig
> @@ -53,15 +53,6 @@ config USB_XHCI_PCI
>   	help
>   	  Enables support for the PCI-based xHCI controller.
>   
> -config USB_XHCI_ROCKCHIP
> -	bool "Support for Rockchip on-chip xHCI USB controller"
> -	depends on ARCH_ROCKCHIP
> -	depends on DM_REGULATOR
> -	depends on DM_USB
> -	default y
> -	help
> -	  Enables support for the on-chip xHCI controller on Rockchip SoCs.
> -
>   config USB_XHCI_RCAR
>   	bool "Renesas RCar USB 3.0 support"
>   	default y
> diff --git a/drivers/usb/host/Makefile b/drivers/usb/host/Makefile
> index e8e3b17e42..29d4f87e38 100644
> --- a/drivers/usb/host/Makefile
> +++ b/drivers/usb/host/Makefile
> @@ -48,7 +48,6 @@ obj-$(CONFIG_USB_XHCI_BRCM) += xhci-brcm.o
>   obj-$(CONFIG_USB_XHCI_HCD) += xhci.o xhci-mem.o xhci-ring.o
>   obj-$(CONFIG_USB_XHCI_DWC3) += xhci-dwc3.o
>   obj-$(CONFIG_USB_XHCI_DWC3_OF_SIMPLE) += dwc3-of-simple.o
> -obj-$(CONFIG_USB_XHCI_ROCKCHIP) += xhci-rockchip.o
>   obj-$(CONFIG_USB_XHCI_EXYNOS) += xhci-exynos5.o
>   obj-$(CONFIG_USB_XHCI_FSL) += xhci-fsl.o
>   obj-$(CONFIG_USB_XHCI_MTK) += xhci-mtk.o
> diff --git a/drivers/usb/host/xhci-rockchip.c b/drivers/usb/host/xhci-rockchip.c
> deleted file mode 100644
> index b67722fe45..0000000000
> --- a/drivers/usb/host/xhci-rockchip.c
> +++ /dev/null
> @@ -1,196 +0,0 @@
> -// SPDX-License-Identifier: GPL-2.0+
> -/*
> - * Copyright (c) 2016 Rockchip, Inc.
> - * Authors: Daniel Meng <daniel.meng@rock-chips.com>
> - */
> -#include <common.h>
> -#include <dm.h>
> -#include <malloc.h>
> -#include <usb.h>
> -#include <watchdog.h>
> -#include <linux/errno.h>
> -#include <linux/compat.h>
> -#include <linux/usb/dwc3.h>
> -#include <power/regulator.h>
> -
> -#include <usb/xhci.h>
> -
> -struct rockchip_xhci_platdata {
> -	fdt_addr_t hcd_base;
> -	struct udevice *vbus_supply;
> -};
> -
> -/*
> - * Contains pointers to register base addresses
> - * for the usb controller.
> - */
> -struct rockchip_xhci {
> -	struct usb_platdata usb_plat;
> -	struct xhci_ctrl ctrl;
> -	struct xhci_hccr *hcd;
> -	struct dwc3 *dwc3_reg;
> -};
> -
> -static int xhci_usb_ofdata_to_platdata(struct udevice *dev)
> -{
> -	struct rockchip_xhci_platdata *plat = dev_get_platdata(dev);
> -	int ret = 0;
> -
> -	/*
> -	 * Get the base address for XHCI controller from the device node
> -	 */
> -	plat->hcd_base = dev_read_addr(dev);
> -	if (plat->hcd_base == FDT_ADDR_T_NONE) {
> -		pr_err("Can't get the XHCI register base address\n");
> -		return -ENXIO;
> -	}
> -
> -	/* Vbus regulator */
> -	ret = device_get_supply_regulator(dev, "vbus-supply",
> -					  &plat->vbus_supply);
> -	if (ret)
> -		debug("Can't get VBus regulator!\n");
> -
> -	return 0;
> -}
> -
> -/*
> - * rockchip_dwc3_phy_setup() - Configure USB PHY Interface of DWC3 Core
> - * @dwc: Pointer to our controller context structure
> - * @dev: Pointer to ulcass device
> - */
> -static void rockchip_dwc3_phy_setup(struct dwc3 *dwc3_reg,
> -				    struct udevice *dev)
> -{
> -	u32 reg;
> -	u32 utmi_bits;
> -
> -	/* Set dwc3 usb2 phy config */
> -	reg = readl(&dwc3_reg->g_usb2phycfg[0]);
> -
> -	if (dev_read_bool(dev, "snps,dis-enblslpm-quirk"))
> -		reg &= ~DWC3_GUSB2PHYCFG_ENBLSLPM;
> -
> -	utmi_bits = dev_read_u32_default(dev, "snps,phyif-utmi-bits", -1);
> -	if (utmi_bits == 16) {
> -		reg |= DWC3_GUSB2PHYCFG_PHYIF;
> -		reg &= ~DWC3_GUSB2PHYCFG_USBTRDTIM_MASK;
> -		reg |= DWC3_GUSB2PHYCFG_USBTRDTIM_16BIT;
> -	} else if (utmi_bits == 8) {
> -		reg &= ~DWC3_GUSB2PHYCFG_PHYIF;
> -		reg &= ~DWC3_GUSB2PHYCFG_USBTRDTIM_MASK;
> -		reg |= DWC3_GUSB2PHYCFG_USBTRDTIM_8BIT;
> -	}
> -
> -	if (dev_read_bool(dev, "snps,dis-u2-freeclk-exists-quirk"))
> -		reg &= ~DWC3_GUSB2PHYCFG_U2_FREECLK_EXISTS;
> -
> -	if (dev_read_bool(dev, "snps,dis-u2-susphy-quirk"))
> -		reg &= ~DWC3_GUSB2PHYCFG_SUSPHY;
> -
> -	writel(reg, &dwc3_reg->g_usb2phycfg[0]);
> -}
> -
> -static int rockchip_xhci_core_init(struct rockchip_xhci *rkxhci,
> -				   struct udevice *dev)
> -{
> -	int ret;
> -
> -	ret = dwc3_core_init(rkxhci->dwc3_reg);
> -	if (ret) {
> -		pr_err("failed to initialize core\n");
> -		return ret;
> -	}
> -
> -	rockchip_dwc3_phy_setup(rkxhci->dwc3_reg, dev);
> -
> -	/* We are hard-coding DWC3 core to Host Mode */
> -	dwc3_set_mode(rkxhci->dwc3_reg, DWC3_GCTL_PRTCAP_HOST);
> -
> -	return 0;
> -}
> -
> -static int rockchip_xhci_core_exit(struct rockchip_xhci *rkxhci)
> -{
> -	return 0;
> -}
> -
> -static int xhci_usb_probe(struct udevice *dev)
> -{
> -	struct rockchip_xhci_platdata *plat = dev_get_platdata(dev);
> -	struct rockchip_xhci *ctx = dev_get_priv(dev);
> -	struct xhci_hcor *hcor;
> -	int ret;
> -
> -	ctx->hcd = (struct xhci_hccr *)plat->hcd_base;
> -	ctx->dwc3_reg = (struct dwc3 *)((char *)(ctx->hcd) + DWC3_REG_OFFSET);
> -	hcor = (struct xhci_hcor *)((uint64_t)ctx->hcd +
> -			HC_LENGTH(xhci_readl(&ctx->hcd->cr_capbase)));
> -
> -	if (plat->vbus_supply) {
> -		ret = regulator_set_enable(plat->vbus_supply, true);
> -		if (ret) {
> -			pr_err("XHCI: failed to set VBus supply\n");
> -			return ret;
> -		}
> -	}
> -
> -	ret = rockchip_xhci_core_init(ctx, dev);
> -	if (ret) {
> -		pr_err("XHCI: failed to initialize controller\n");
> -		return ret;
> -	}
> -
> -	return xhci_register(dev, ctx->hcd, hcor);
> -}
> -
> -static int xhci_usb_remove(struct udevice *dev)
> -{
> -	struct rockchip_xhci_platdata *plat = dev_get_platdata(dev);
> -	struct rockchip_xhci *ctx = dev_get_priv(dev);
> -	int ret;
> -
> -	ret = xhci_deregister(dev);
> -	if (ret)
> -		return ret;
> -	ret = rockchip_xhci_core_exit(ctx);
> -	if (ret)
> -		return ret;
> -
> -	if (plat->vbus_supply) {
> -		ret = regulator_set_enable(plat->vbus_supply, false);
> -		if (ret)
> -			pr_err("XHCI: failed to set VBus supply\n");
> -	}
> -
> -	return ret;
> -}
> -
> -static const struct udevice_id xhci_usb_ids[] = {
> -	{ .compatible = "rockchip,rk3328-xhci" },
> -	{ }
> -};
> -
> -U_BOOT_DRIVER(usb_xhci) = {
> -	.name	= "xhci_rockchip",
> -	.id	= UCLASS_USB,
> -	.of_match = xhci_usb_ids,
> -	.ofdata_to_platdata = xhci_usb_ofdata_to_platdata,
> -	.probe = xhci_usb_probe,
> -	.remove = xhci_usb_remove,
> -	.ops	= &xhci_usb_ops,
> -	.bind	= dm_scan_fdt_dev,
> -	.platdata_auto_alloc_size = sizeof(struct rockchip_xhci_platdata),
> -	.priv_auto_alloc_size = sizeof(struct rockchip_xhci),
> -	.flags	= DM_FLAG_ALLOC_PRIV_DMA,
> -};
> -
> -static const struct udevice_id usb_phy_ids[] = {
> -	{ .compatible = "rockchip,rk3328-usb3-phy" },
> -	{ }
> -};
> -
> -U_BOOT_DRIVER(usb_phy) = {
> -	.name = "usb_phy_rockchip",
> -	.of_match = usb_phy_ids,
> -};
