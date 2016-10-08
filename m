From: Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH 3/3] PCI: rockchip: Remove unused platform data
Date: Sat, 8 Oct 2016 10:54:11 +0800
Message-ID: <70f86886-8ba8-1240-f6f0-4800486a9845@rock-chips.com>
References: <20161007162706.23835.10081.stgit@bhelgaas-glaptop2.roam.corp.google.com>
 <20161007162726.23835.51154.stgit@bhelgaas-glaptop2.roam.corp.google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-pci-owner@vger.kernel.org>
In-Reply-To: <20161007162726.23835.51154.stgit@bhelgaas-glaptop2.roam.corp.google.com>
Sender: linux-pci-owner@vger.kernel.org
To: Bjorn Helgaas <bhelgaas@google.com>, Wenrui Li <wenrui.li@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
Cc: shawn.lin@rock-chips.com, linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

在 2016/10/8 0:27, Bjorn Helgaas 写道:
> The rockchip driver never uses the platform drvdata pointer, so don't
> bother setting it.  No functional change intended.
>

Currently it's a build-in driver, so it seems okay to remove
this now.

Acked-by: Shawn Lin <shawn.lin@rock-chips.com>

> Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
> ---
>  drivers/pci/host/pcie-rockchip.c |    4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/pci/host/pcie-rockchip.c b/drivers/pci/host/pcie-rockchip.c
> index 0a89d02..b3548d0 100644
> --- a/drivers/pci/host/pcie-rockchip.c
> +++ b/drivers/pci/host/pcie-rockchip.c
> @@ -1019,8 +1019,8 @@ static int rockchip_pcie_prog_ib_atu(struct rockchip_pcie *rockchip,
>
>  static int rockchip_pcie_probe(struct platform_device *pdev)
>  {
> -	struct rockchip_pcie *rockchip;
>  	struct device *dev = &pdev->dev;
> +	struct rockchip_pcie *rockchip;
>  	struct pci_bus *bus, *child;
>  	struct resource_entry *win;
>  	resource_size_t io_base;
> @@ -1083,8 +1083,6 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
>  	if (err)
>  		goto err_vpcie;
>
> -	platform_set_drvdata(pdev, rockchip);
> -
>  	rockchip_pcie_enable_interrupts(rockchip);
>
>  	err = rockchip_pcie_init_irq_domain(rockchip);
>
> --
> To unsubscribe from this list: send the line "unsubscribe linux-pci" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>


-- 
Best Regards
Shawn Lin
