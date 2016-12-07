From: Bjorn Helgaas <helgaas-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH v3 3/3] PCI: rockchip: Add system PM support
Date: Wed, 7 Dec 2016 15:46:53 -0600
Message-ID: <20161207214653.GF22129@bhelgaas-glaptop.roam.corp.google.com>
References: <1479952462-194300-1-git-send-email-shawn.lin@rock-chips.com>
 <1479952462-194300-3-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1479952462-194300-3-git-send-email-shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: Wenrui Li <wenrui.li-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Bjorn Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Shawn,

On Thu, Nov 24, 2016 at 09:54:22AM +0800, Shawn Lin wrote:
> This patch adds system PM support for Rockchip's RC.
> For pre S3, the EP is configured into D3 state which guarantees
> the link state should be in L1. So we could send PME_Turn_Off message
> to the EP and wait for its ACK to make the link state into L2 or L3
> without the aux-supply. This could help save more power which I think
> should be very important for mobile devices.
> 
> As note that there is a 5s timeout for RC to wait for the PMA_ACK
> aftering send PME_Turn_Off. Technically it should depends on the
> hierarchy of devices but seems PCIe core framework doesn't handle the
> L2/3 for S3 at all. So that means we should presume to set a default
> value for PME_ACK. From the bug report[1], we could find a statment that
> Microsoft Windows versions typically wait for 5 seconds. So we are prone
> to take 5s for this timeout here.
> 
> [1] https://lists.launchpad.net/kernel-packages/msg123315.html
> Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> 
> Reviewed-by: Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>

> @@ -1196,8 +1207,96 @@ static int rockchip_cfg_atu(struct rockchip_pcie *rockchip)
>  		}
>  	}
>  
> +	/* assign message regions */
> +	rockchip_pcie_prog_ob_atu(rockchip, reg_no + 1 + offset,
> +				  AXI_WRAPPER_NOR_MSG,
> +				  20 - 1, 0, 0);
> +	if (rockchip->msg_region)
> +		goto out;
> +
> +	rockchip->msg_region = devm_ioremap(rockchip->dev,
> +					    rockchip->mem_bus_addr +
> +					    ((reg_no + offset) << 20),
> +					    SZ_1M);
> +	if (!rockchip->msg_region)
> +		err = -ENOMEM;

I don't really like this strategy of "if msg_region is already mapped,
skip it; otherwise map it."  The ioremap() looks like something that
should be done at probe-time and does not need to be re-done at
resume-time.

Bjorn
