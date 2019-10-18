From: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v2 06/25] PCI: faraday: Use pci_parse_request_of_pci_ranges
Date: Fri, 18 Oct 2019 13:57:56 +0100
Message-ID: <20191018125756.GH47056@e119886-lin.cambridge.arm.com>
References: <20191016200647.32050-1-robh@kernel.org>
 <20191016200647.32050-7-robh@kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
Content-Disposition: inline
In-Reply-To: <20191016200647.32050-7-robh@kernel.org>
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

On Wed, Oct 16, 2019 at 03:06:28PM -0500, Rob Herring wrote:
> Convert the Faraday host bridge to use the common
> pci_parse_request_of_pci_ranges().
> 
> There's no need to assign the resources to a temporary list first. Just
> use bridge->windows directly and remove all the temporary list handling.
> 
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Andrew Murray <andrew.murray@arm.com>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> v2:
> - New patch
> 

Reviewed-by: Andrew Murray <andrew.murray@arm.com>

>  drivers/pci/controller/pci-ftpci100.c | 51 ++++++---------------------
>  1 file changed, 11 insertions(+), 40 deletions(-)
> 
> diff --git a/drivers/pci/controller/pci-ftpci100.c b/drivers/pci/controller/pci-ftpci100.c
> index bf5ece5d9291..12bc7daef5b5 100644
> --- a/drivers/pci/controller/pci-ftpci100.c
> +++ b/drivers/pci/controller/pci-ftpci100.c
> @@ -430,10 +430,8 @@ static int faraday_pci_probe(struct platform_device *pdev)
>  	const struct faraday_pci_variant *variant =
>  		of_device_get_match_data(dev);
>  	struct resource *regs;
> -	resource_size_t io_base;
>  	struct resource_entry *win;
>  	struct faraday_pci *p;
> -	struct resource *mem;
>  	struct resource *io;
>  	struct pci_host_bridge *host;
>  	struct clk *clk;
> @@ -441,7 +439,6 @@ static int faraday_pci_probe(struct platform_device *pdev)
>  	unsigned char cur_bus_speed = PCI_SPEED_33MHz;
>  	int ret;
>  	u32 val;
> -	LIST_HEAD(res);
> 
>  	host = devm_pci_alloc_host_bridge(dev, sizeof(*p));
>  	if (!host)
> @@ -480,44 +477,20 @@ static int faraday_pci_probe(struct platform_device *pdev)
>  	if (IS_ERR(p->base))
>  		return PTR_ERR(p->base);
> 
> -	ret = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff,
> -						    &res, &io_base);
> +	ret = pci_parse_request_of_pci_ranges(dev, &host->windows, NULL);
>  	if (ret)
>  		return ret;
> 
> -	ret = devm_request_pci_bus_resources(dev, &res);
> -	if (ret)
> -		return ret;
> -
> -	/* Get the I/O and memory ranges from DT */
> -	resource_list_for_each_entry(win, &res) {
> -		switch (resource_type(win->res)) {
> -		case IORESOURCE_IO:
> -			io = win->res;
> -			io->name = "Gemini PCI I/O";
> -			if (!faraday_res_to_memcfg(io->start - win->offset,
> -						   resource_size(io), &val)) {
> -				/* setup I/O space size */
> -				writel(val, p->base + PCI_IOSIZE);
> -			} else {
> -				dev_err(dev, "illegal IO mem size\n");
> -				return -EINVAL;
> -			}
> -			ret = devm_pci_remap_iospace(dev, io, io_base);
> -			if (ret) {
> -				dev_warn(dev, "error %d: failed to map resource %pR\n",
> -					 ret, io);
> -				continue;
> -			}
> -			break;
> -		case IORESOURCE_MEM:
> -			mem = win->res;
> -			mem->name = "Gemini PCI MEM";
> -			break;
> -		case IORESOURCE_BUS:
> -			break;
> -		default:
> -			break;
> +	win = resource_list_get_entry_of_type(&host->windows, IORESOURCE_IO);
> +	if (win) {
> +		io = win->res;
> +		if (!faraday_res_to_memcfg(io->start - win->offset,
> +					   resource_size(io), &val)) {
> +			/* setup I/O space size */
> +			writel(val, p->base + PCI_IOSIZE);
> +		} else {
> +			dev_err(dev, "illegal IO mem size\n");
> +			return -EINVAL;
>  		}
>  	}
> 
> @@ -569,7 +542,6 @@ static int faraday_pci_probe(struct platform_device *pdev)
>  	if (ret)
>  		return ret;
> 
> -	list_splice_init(&res, &host->windows);
>  	ret = pci_scan_root_bus_bridge(host);
>  	if (ret) {
>  		dev_err(dev, "failed to scan host: %d\n", ret);
> @@ -581,7 +553,6 @@ static int faraday_pci_probe(struct platform_device *pdev)
> 
>  	pci_bus_assign_resources(p->bus);
>  	pci_bus_add_devices(p->bus);
> -	pci_free_resource_list(&res);
> 
>  	return 0;
>  }
> --
> 2.20.1
