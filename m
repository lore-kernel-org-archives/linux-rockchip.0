From: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v2 04/25] PCI: altera: Use
 pci_parse_request_of_pci_ranges()
Date: Fri, 18 Oct 2019 13:09:30 +0100
Message-ID: <20191018120930.GE47056@e119886-lin.cambridge.arm.com>
References: <20191016200647.32050-1-robh@kernel.org>
 <20191016200647.32050-5-robh@kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
Content-Disposition: inline
In-Reply-To: <20191016200647.32050-5-robh@kernel.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Rob Herring <robh@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, linux-pci@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>, Matthias Brugger <matthias.bgg@gmail.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Michal Simek <michal.simek@xilinx.com>, linux-rockchip@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com, Linus Walleij <linus.walleij@linaro.org>, Ray Jui <rjui@broadcom.com>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Ryder Lee <ryder.lee@mediatek.com>, linux-mediatek@lists.infradead.org, Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>, Jingoo Han <jingoohan1@gmail.com>, rfi@lists.rocketboards.org, linux-renesas-soc@vger.kernel.org, Tom Joseph <tjos>
List-Id: linux-rockchip.vger.kernel.org

On Wed, Oct 16, 2019 at 03:06:26PM -0500, Rob Herring wrote:
> Convert altera host bridge to use the common
> pci_parse_request_of_pci_ranges().
> 
> There's no need to assign the resources to a temporary list first. Just
> use bridge->windows directly and remove all the temporary list handling.
> 
> If an I/O range is present, then it will now be mapped. It's expected
> that h/w which doesn't support I/O range will not define one.
> 
> Cc: Ley Foon Tan <lftan@altera.com>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Cc: rfi@lists.rocketboards.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---

Reviewed-by: Andrew Murray <andrew.murray@arm.com>

> v2:
> - Remove temporary resource list
> ---
>  drivers/pci/controller/pcie-altera.c | 41 ++--------------------------
>  1 file changed, 2 insertions(+), 39 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-altera.c b/drivers/pci/controller/pcie-altera.c
> index d2497ca43828..ba025efeae28 100644
> --- a/drivers/pci/controller/pcie-altera.c
> +++ b/drivers/pci/controller/pcie-altera.c
> @@ -92,7 +92,6 @@ struct altera_pcie {
>  	u8			root_bus_nr;
>  	struct irq_domain	*irq_domain;
>  	struct resource		bus_range;
> -	struct list_head	resources;
>  	const struct altera_pcie_data	*pcie_data;
>  };
>  
> @@ -670,39 +669,6 @@ static void altera_pcie_isr(struct irq_desc *desc)
>  	chained_irq_exit(chip, desc);
>  }
>  
> -static int altera_pcie_parse_request_of_pci_ranges(struct altera_pcie *pcie)
> -{
> -	int err, res_valid = 0;
> -	struct device *dev = &pcie->pdev->dev;
> -	struct resource_entry *win;
> -
> -	err = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff,
> -						    &pcie->resources, NULL);
> -	if (err)
> -		return err;
> -
> -	err = devm_request_pci_bus_resources(dev, &pcie->resources);
> -	if (err)
> -		goto out_release_res;
> -
> -	resource_list_for_each_entry(win, &pcie->resources) {
> -		struct resource *res = win->res;
> -
> -		if (resource_type(res) == IORESOURCE_MEM)
> -			res_valid |= !(res->flags & IORESOURCE_PREFETCH);
> -	}
> -
> -	if (res_valid)
> -		return 0;
> -
> -	dev_err(dev, "non-prefetchable memory resource required\n");
> -	err = -EINVAL;
> -
> -out_release_res:
> -	pci_free_resource_list(&pcie->resources);
> -	return err;
> -}
> -
>  static int altera_pcie_init_irq_domain(struct altera_pcie *pcie)
>  {
>  	struct device *dev = &pcie->pdev->dev;
> @@ -833,9 +799,8 @@ static int altera_pcie_probe(struct platform_device *pdev)
>  		return ret;
>  	}
>  
> -	INIT_LIST_HEAD(&pcie->resources);
> -
> -	ret = altera_pcie_parse_request_of_pci_ranges(pcie);
> +	ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
> +					      NULL);
>  	if (ret) {
>  		dev_err(dev, "Failed add resources\n");
>  		return ret;
> @@ -853,7 +818,6 @@ static int altera_pcie_probe(struct platform_device *pdev)
>  	cra_writel(pcie, P2A_INT_ENA_ALL, P2A_INT_ENABLE);
>  	altera_pcie_host_init(pcie);
>  
> -	list_splice_init(&pcie->resources, &bridge->windows);
>  	bridge->dev.parent = dev;
>  	bridge->sysdata = pcie;
>  	bridge->busnr = pcie->root_bus_nr;
> @@ -884,7 +848,6 @@ static int altera_pcie_remove(struct platform_device *pdev)
>  
>  	pci_stop_root_bus(bridge->bus);
>  	pci_remove_root_bus(bridge->bus);
> -	pci_free_resource_list(&pcie->resources);
>  	altera_pcie_irq_teardown(pcie);
>  
>  	return 0;
> -- 
> 2.20.1
> 
