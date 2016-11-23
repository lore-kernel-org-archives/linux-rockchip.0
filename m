From: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH v2 3/3] PCI: rockchip: Add system PM support
Date: Tue, 22 Nov 2016 21:06:42 -0800
Message-ID: <20161123050642.GC28948@google.com>
References: <1479874515-65872-1-git-send-email-shawn.lin@rock-chips.com>
 <1479874515-65872-3-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-pci-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1479874515-65872-3-git-send-email-shawn.lin@rock-chips.com>
Sender: linux-pci-owner@vger.kernel.org
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, Wenrui Li <wenrui.li@rock-chips.com>, Jeffy Chen <jeffy.chen@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Shawn,

On Wed, Nov 23, 2016 at 12:15:15PM +0800, Shawn Lin wrote:
> This patch adds system PM support for Rockchip's RC.
> For pre S3, the EP is configured into D3 state which guarantees
> the link state should be in L1. So we could send PME_Turn_Off message
> to the EP and wait for its ACK to make the link state into L2 or L3
> without the aux-supply. This could help save more power which I think
> should be very important for mobile devices.
> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> 
> ---
> 
> Changes in v2:
> - Wrap the 'x' in parentheses
> - add msg regison mapped support
> - enable int for err case in suspend_noirq
> 
>  drivers/pci/host/pcie-rockchip.c | 102 +++++++++++++++++++++++++++++++++++++++
>  1 file changed, 102 insertions(+)
> 
> diff --git a/drivers/pci/host/pcie-rockchip.c b/drivers/pci/host/pcie-rockchip.c
> index 457401d..f2828a8 100644
> --- a/drivers/pci/host/pcie-rockchip.c
> +++ b/drivers/pci/host/pcie-rockchip.c

[...]

> @@ -1196,8 +1207,91 @@ static int rockchip_cfg_atu(struct rockchip_pcie *rockchip)
>  		}
>  	}
>  
> +	/* assign message regions */
> +	rockchip_pcie_prog_ob_atu(rockchip, reg_no + 1 + offset,
> +				  AXI_WRAPPER_NOR_MSG,
> +				  20 - 1, 0, 0);
> +	if (!rockchip->msg_region)
> +		rockchip->msg_region = devm_ioremap(rockchip->dev,
> +						    rockchip->mem_bus_addr +
> +						    ((reg_no + offset) << 20),
> +						    SZ_1M);

You still forgot to check for devm_ioremap() failures. Should probably
have:

		if (!rockchip->msg_region)
			return -ENOMEM;

in there.

Otherwise (and maybe with the "why 5 seconds" answer noted in the commit
message?):

Reviewed-by: Brian Norris <briannorris@chromium.org>

on all 3 patches.

> +
>  	return err;
>  }

[...]

Thanks,
Brian
