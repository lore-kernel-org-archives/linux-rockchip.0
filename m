From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: Re: [PATCH] PCI: rockchip: fix bitwise operations on status and
 ROCKCHIP_PCIE_EP_CMD_STATUS_IS
Date: Mon, 15 Apr 2019 11:03:01 +0100
Message-ID: <20190415100301.GA12127@red-moon>
References: <20190330150910.9389-1-colin.king@canonical.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20190330150910.9389-1-colin.king@canonical.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Colin King <colin.king@canonical.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

On Sat, Mar 30, 2019 at 03:09:10PM +0000, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> Currently the bitwise operations on the u16 variable 'status' with
> the setting ROCKCHIP_PCIE_EP_CMD_STATUS_IS are incorrect because
> ROCKCHIP_PCIE_EP_CMD_STATUS_IS is 1UL<<19 which is wider than the
> u16 variable.  Fix this by making status a u32.  (Not tested).
> 
> Fixes: cf590b078391 ("PCI: rockchip: Add EP driver for Rockchip PCIe controller")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  drivers/pci/controller/pcie-rockchip-ep.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied to pci/rockchip for v5.2, thanks.

Lorenzo

> diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
> index a5d799e2dff2..d743b0a48988 100644
> --- a/drivers/pci/controller/pcie-rockchip-ep.c
> +++ b/drivers/pci/controller/pcie-rockchip-ep.c
> @@ -350,7 +350,7 @@ static void rockchip_pcie_ep_assert_intx(struct rockchip_pcie_ep *ep, u8 fn,
>  	struct rockchip_pcie *rockchip = &ep->rockchip;
>  	u32 r = ep->max_regions - 1;
>  	u32 offset;
> -	u16 status;
> +	u32 status;
>  	u8 msg_code;
>  
>  	if (unlikely(ep->irq_pci_addr != ROCKCHIP_PCIE_EP_PCI_LEGACY_IRQ_ADDR ||
> -- 
> 2.20.1
> 
