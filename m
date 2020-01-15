From: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [PATCH 5/6] PCI: rockchip: add DesignWare based PCIe controller
Date: Wed, 15 Jan 2020 11:24:30 -0600
Message-ID: <20200115172430.GA180494@google.com>
References: <1578986701-72072-1-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-pci-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1578986701-72072-1-git-send-email-shawn.lin@rock-chips.com>
Sender: linux-pci-owner@vger.kernel.org
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, Jingoo Han <jingoohan1@gmail.com>, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, William Wu <william.wu@rock-chips.com>, Simon Xue <xxm@rock-chips.com>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Follow subject line convention.

On Tue, Jan 14, 2020 at 03:25:01PM +0800, Shawn Lin wrote:
> From: Simon Xue <xxm@rock-chips.com>

Needs a commit log.  Please describe the relationship with the
existing drivers/pci/controller/pcie-rockchip-host.c.  Are they for
different devices?  Does this supercede the other?

> Signed-off-by: Simon Xue <xxm@rock-chips.com>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
> 
>  drivers/pci/controller/dwc/Kconfig            |   9 +
>  drivers/pci/controller/dwc/Makefile           |   1 +
>  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 441 ++++++++++++++++++++++++++
>  3 files changed, 451 insertions(+)
>  create mode 100644 drivers/pci/controller/dwc/pcie-dw-rockchip.c
> 
> diff --git a/drivers/pci/controller/dwc/Kconfig b/drivers/pci/controller/dwc/Kconfig
> index 0830dfc..9160264 100644
> --- a/drivers/pci/controller/dwc/Kconfig
> +++ b/drivers/pci/controller/dwc/Kconfig
> @@ -82,6 +82,15 @@ config PCIE_DW_PLAT_EP
>  	  order to enable device-specific features PCI_DW_PLAT_EP must be
>  	  selected.
>  
> +config PCIE_DW_ROCKCHIP
> +	bool "Rockchip DesignWare PCIe controller"
> +	select PCIE_DW
> +	select PCIE_DW_HOST
> +	depends on ARCH_ROCKCHIP
> +	depends on OF
> +	help
> +	  Enables support for the DW PCIe controller in the Rockchip SoC.

A user needs to be able to tell whether to enable
CONFIG_PCIE_ROCKCHIP_HOST or CONFIG_PCIE_DW_ROCKCHIP.  Is there an
endpoint driver coming?  Should this be named PCIE_DW_ROCKCHIP_HOST?

> +	ret = rockchip_pcie_reset_grant_ctrl(rockchip, true);
> +	if (ret)
> +		goto deinit_clk;
> +
> +//	if (rockchip->mode == DW_PCIE_RC_TYPE)
> +//		ret = rk_add_pcie_port(rockchip);

Remove commented-out code.  I do like an "if" statement better than
the complicated assignment/ternary thing below, though.

> +	ret = rockchip->mode == DW_PCIE_RC_TYPE ?
> +		rk_add_pcie_port(rockchip) : -EINVAL;
> +
> +	if (ret)
> +		goto deinit_clk;
