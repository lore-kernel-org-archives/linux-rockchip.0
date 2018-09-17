From: Lorenzo Pieralisi <lorenzo.pieralisi-5wv7dgnIgG8@public.gmane.org>
Subject: Re: [PATCH] PCI: rockchip: Remove redundant "valid device" check
Date: Mon, 17 Sep 2018 15:47:34 +0100
Message-ID: <20180917144734.GF7239@e107981-ln.cambridge.arm.com>
References: <20171215202935.157396.74423.stgit@bhelgaas-glaptop.roam.corp.google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20171215202935.157396.74423.stgit-1RhO1Y9PlrlHTL0Zs8A6p5iNqAH0jzoTYJqu5kTmcBRl57MIdRCFDg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Bjorn Helgaas <helgaas-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Fri, Dec 15, 2017 at 02:29:35PM -0600, Bjorn Helgaas wrote:
> From: Bjorn Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
> 
> In rockchip_pcie_valid_device(), we do the exact same test twice:
> 
>   if (bus->number == rockchip->root_bus_nr && dev > 0)
>     return 0;
>   if (bus->number == rockchip->root_bus_nr && dev > 0)
>     return 0;
> 
> We only need to do it once, so remove one of them.
> 
> Signed-off-by: Bjorn Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
> ---
>  drivers/pci/host/pcie-rockchip.c |    4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/drivers/pci/host/pcie-rockchip.c b/drivers/pci/host/pcie-rockchip.c
> index 9051c6c8fea4..dd9c7ea69e0b 100644
> --- a/drivers/pci/host/pcie-rockchip.c
> +++ b/drivers/pci/host/pcie-rockchip.c
> @@ -293,10 +293,6 @@ static void rockchip_pcie_update_txcredit_mui(struct rockchip_pcie *rockchip)
>  static int rockchip_pcie_valid_device(struct rockchip_pcie *rockchip,
>  				      struct pci_bus *bus, int dev)
>  {
> -	/* access only one slot on each root port */
> -	if (bus->number == rockchip->root_bus_nr && dev > 0)
> -		return 0;
> -
>  	/*
>  	 * do not read more than one device on the bus directly attached
>  	 * to RC's downstream side.
> 

Hi Bjorn,

this patch slipped through the cracks but I do not think it is right.

The point here is filtering both the host bridge access side (ie check
for dev > 0) AND the RC downstream side, it is two different busses.

Perhaps the check can be written in a more concise way (squash them in
one single conditional) but I think the current logic is correct,
AFAICS.

I would drop it from the PCI patch queue.

Thanks,
Lorenzo
