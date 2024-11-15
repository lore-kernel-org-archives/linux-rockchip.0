Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2353DD68BDA
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Nov 2024 23:03:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=wbynNg+q7S+LwfQ+5j+cvjlGqwZUkGaYgnc3pVEeXRQ=; b=yKiE+Uw/bZPoC+
	sx8Rq8rDx8dJ71O8R/dgHIBce2gt/QsRVzRlBrZ4PiMtqCN2d4a7IbWEanHthS4OP5n25gg7NOVGD
	G+xXVOEZR2tKBjIDGfiPntCYzxzG36+gA79BMXvPvPblcpMana3LrbEnbDYXQAbJxYu7z+cuLAsnO
	y7/Qf0sMNpYkvCnwxgLbm0KTxzjNFVTaaPmPTk7CdEFGrJQM9be1/W9BIZbOWp2famB1Uyf7Zvalx
	ig+DeM0LGoR1cttfIKSlZpbl/hEpl/nFUO6HzopKGuuPxwzx5w/LcnNYAeQgy4n/AStweP9dleys1
	GT4JuVdpbL+7YIbg9WdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tC5LZ-00000004V84-3XXp;
	Fri, 15 Nov 2024 23:03:25 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tC5LX-00000004V6x-44ww
	for linux-rockchip@lists.infradead.org;
	Fri, 15 Nov 2024 23:03:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id CE58FA41E99;
	Fri, 15 Nov 2024 23:01:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 356A6C4CECF;
	Fri, 15 Nov 2024 23:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731711802;
	bh=1abEaMeNqs1nTcC6Bnle0nei4JVk7xvxjpBydnAXGF8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=gtUXvgCINF0mTjtnXygOjJEhez+Lbm0zTpv5BjzZQjI4GHmFz2+ArFQJPIBiPna5x
	 GYN9jHfNUZc9aeJUXvFZLjFOwoTkgIZb9XedMW/Jezgqjhi9H4g/YGe26PVls09/og
	 VzDJS/0t5pxFTc9qTxN95zEZddLbpfAaQJvdTBVXwTk1B+vwxRCX7l0vzsFXD0lHic
	 NVDHtrJmor+3AH8AggZvpRHEJCbrcHHosGhEx+PzPWETP2/xXGrYdYXkEsK5lI78pJ
	 g1l2/i6WcA+6VwQuSAMRTa2wqSCfFiobr3413WnwyY6sEqjtdJYw1yOCzKVTpjOoVu
	 Py32d5Ertc0MQ==
Date: Fri, 15 Nov 2024 17:03:19 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v5 12/14] PCI: rockchip-ep: Improve link training
Message-ID: <20241115230319.GA2065576@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241017015849.190271-13-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241115_150324_137566_8EA33121 
X-CRM114-Status: GOOD (  35.69  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Oct 17, 2024 at 10:58:47AM +0900, Damien Le Moal wrote:
> The Rockchip RK3399 TRM V1.3 Part2, Section 17.5.8.1.2, step 7,
> describes the endpoint mode link training process clearly and states
> that:
>   Insure link training completion and success by observing link_st field
>   in PCIe Client BASIC_STATUS1 register change to 2'b11. If both side
>   support PCIe Gen2 speed, re-train can be Initiated by asserting the
>   Retrain Link field in Link Control and Status Register. The software
>   should insure the BASIC_STATUS0[negotiated_speed] changes to "1", that
>   indicates re-train to Gen2 successfully.

Since this only adds code and doesn't change existing code, I assume
this hardware doesn't automatically train to gen2 without this new
software assistance?

So the effect of this change is to use gen2 speed when supported by
both partners, when previously we only got gen1?

> This procedure is very similar to what is done for the root-port mode
> in rockchip_pcie_host_init_port().
> 
> Implement this link training procedure for the endpoint mode as well.
> Given that the RK3399 SoC does not have an interrupt signaling link
> status changes, training is implemented as a delayed work which is
> rescheduled until the link training completes or the endpoint controller
> is stopped. The link training work is first scheduled in
> rockchip_pcie_ep_start() when the endpoint function is started. Link
> training completion is signaled to the function using pci_epc_linkup().
> Accordingly, the linkup_notifier field of the rockchip pci_epc_features
> structure is changed to true.
> 
> Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
> ---
>  drivers/pci/controller/pcie-rockchip-ep.c | 82 ++++++++++++++++++++++-
>  drivers/pci/controller/pcie-rockchip.h    | 11 +++
>  2 files changed, 92 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
> index 2f7709ba1cac..43480706b8f4 100644
> --- a/drivers/pci/controller/pcie-rockchip-ep.c
> +++ b/drivers/pci/controller/pcie-rockchip-ep.c
> @@ -10,12 +10,14 @@
>  
>  #include <linux/configfs.h>
>  #include <linux/delay.h>
> +#include <linux/iopoll.h>
>  #include <linux/kernel.h>
>  #include <linux/of.h>
>  #include <linux/pci-epc.h>
>  #include <linux/platform_device.h>
>  #include <linux/pci-epf.h>
>  #include <linux/sizes.h>
> +#include <linux/workqueue.h>
>  
>  #include "pcie-rockchip.h"
>  
> @@ -48,6 +50,7 @@ struct rockchip_pcie_ep {
>  	u64			irq_pci_addr;
>  	u8			irq_pci_fn;
>  	u8			irq_pending;
> +	struct delayed_work	link_training;
>  };
>  
>  static void rockchip_pcie_clear_ep_ob_atu(struct rockchip_pcie *rockchip,
> @@ -470,6 +473,8 @@ static int rockchip_pcie_ep_start(struct pci_epc *epc)
>  			    PCIE_CLIENT_CONF_ENABLE,
>  			    PCIE_CLIENT_CONFIG);
>  
> +	schedule_delayed_work(&ep->link_training, 0);
> +
>  	return 0;
>  }
>  
> @@ -478,6 +483,8 @@ static void rockchip_pcie_ep_stop(struct pci_epc *epc)
>  	struct rockchip_pcie_ep *ep = epc_get_drvdata(epc);
>  	struct rockchip_pcie *rockchip = &ep->rockchip;
>  
> +	cancel_delayed_work_sync(&ep->link_training);
> +
>  	/* Stop link training and disable configuration */
>  	rockchip_pcie_write(rockchip,
>  			    PCIE_CLIENT_CONF_DISABLE |
> @@ -485,8 +492,80 @@ static void rockchip_pcie_ep_stop(struct pci_epc *epc)
>  			    PCIE_CLIENT_CONFIG);
>  }
>  
> +static void rockchip_pcie_ep_retrain_link(struct rockchip_pcie *rockchip)
> +{
> +	u32 status;
> +
> +	status = rockchip_pcie_read(rockchip, PCIE_EP_CONFIG_LCS);
> +	status |= PCI_EXP_LNKCTL_RL;
> +	rockchip_pcie_write(rockchip, status, PCIE_EP_CONFIG_LCS);
> +}
> +
> +static bool rockchip_pcie_ep_link_up(struct rockchip_pcie *rockchip)
> +{
> +	u32 val = rockchip_pcie_read(rockchip, PCIE_CLIENT_BASIC_STATUS1);
> +
> +	return PCIE_LINK_UP(val);
> +}
> +
> +static void rockchip_pcie_ep_link_training(struct work_struct *work)
> +{
> +	struct rockchip_pcie_ep *ep =
> +		container_of(work, struct rockchip_pcie_ep, link_training.work);
> +	struct rockchip_pcie *rockchip = &ep->rockchip;
> +	struct device *dev = rockchip->dev;
> +	u32 val;
> +	int ret;
> +
> +	/* Enable Gen1 training and wait for its completion */
> +	ret = readl_poll_timeout(rockchip->apb_base + PCIE_CORE_CTRL,
> +				 val, PCIE_LINK_TRAINING_DONE(val), 50,
> +				 LINK_TRAIN_TIMEOUT);
> +	if (ret)
> +		goto again;
> +
> +	/* Make sure that the link is up */
> +	ret = readl_poll_timeout(rockchip->apb_base + PCIE_CLIENT_BASIC_STATUS1,
> +				 val, PCIE_LINK_UP(val), 50,
> +				 LINK_TRAIN_TIMEOUT);
> +	if (ret)
> +		goto again;
> +
> +	/*
> +	 * Check the current speed: if gen2 speed was requested and we are not
> +	 * at gen2 speed yet, retrain again for gen2.
> +	 */
> +	val = rockchip_pcie_read(rockchip, PCIE_CORE_CTRL);
> +	if (!PCIE_LINK_IS_GEN2(val) && rockchip->link_gen == 2) {
> +		/* Enable retrain for gen2 */
> +		rockchip_pcie_ep_retrain_link(rockchip);
> +		readl_poll_timeout(rockchip->apb_base + PCIE_CORE_CTRL,
> +				   val, PCIE_LINK_IS_GEN2(val), 50,
> +				   LINK_TRAIN_TIMEOUT);
> +	}
> +
> +	/* Check again that the link is up */
> +	if (!rockchip_pcie_ep_link_up(rockchip))
> +		goto again;
> +
> +	val = rockchip_pcie_read(rockchip, PCIE_CLIENT_BASIC_STATUS0);
> +	dev_info(dev,
> +		 "Link UP (Negotiated speed: %sGT/s, width: x%lu)\n",
> +		 (val & PCIE_CLIENT_NEG_LINK_SPEED) ? "5" : "2.5",
> +		 ((val & PCIE_CLIENT_NEG_LINK_WIDTH_MASK) >>
> +		  PCIE_CLIENT_NEG_LINK_WIDTH_SHIFT) << 1);
> +
> +	/* Notify the function */
> +	pci_epc_linkup(ep->epc);
> +
> +	return;
> +
> +again:
> +	schedule_delayed_work(&ep->link_training, msecs_to_jiffies(5));
> +}
> +
>  static const struct pci_epc_features rockchip_pcie_epc_features = {
> -	.linkup_notifier = false,
> +	.linkup_notifier = true,
>  	.msi_capable = true,
>  	.msix_capable = false,
>  	.align = ROCKCHIP_PCIE_AT_SIZE_ALIGN,
> @@ -644,6 +723,7 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
>  	rockchip = &ep->rockchip;
>  	rockchip->is_rc = false;
>  	rockchip->dev = dev;
> +	INIT_DELAYED_WORK(&ep->link_training, rockchip_pcie_ep_link_training);
>  
>  	epc = devm_pci_epc_create(dev, &rockchip_pcie_epc_ops);
>  	if (IS_ERR(epc)) {
> diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
> index 0263f158ee8d..24796176f658 100644
> --- a/drivers/pci/controller/pcie-rockchip.h
> +++ b/drivers/pci/controller/pcie-rockchip.h
> @@ -26,6 +26,7 @@
>  #define MAX_LANE_NUM			4
>  #define MAX_REGION_LIMIT		32
>  #define MIN_EP_APERTURE			28
> +#define LINK_TRAIN_TIMEOUT		(500 * USEC_PER_MSEC)
>  
>  #define PCIE_CLIENT_BASE		0x0
>  #define PCIE_CLIENT_CONFIG		(PCIE_CLIENT_BASE + 0x00)
> @@ -50,6 +51,10 @@
>  #define   PCIE_CLIENT_DEBUG_LTSSM_MASK		GENMASK(5, 0)
>  #define   PCIE_CLIENT_DEBUG_LTSSM_L1		0x18
>  #define   PCIE_CLIENT_DEBUG_LTSSM_L2		0x19
> +#define PCIE_CLIENT_BASIC_STATUS0	(PCIE_CLIENT_BASE + 0x44)
> +#define   PCIE_CLIENT_NEG_LINK_WIDTH_MASK	GENMASK(7, 6)
> +#define   PCIE_CLIENT_NEG_LINK_WIDTH_SHIFT	6
> +#define   PCIE_CLIENT_NEG_LINK_SPEED		BIT(5)
>  #define PCIE_CLIENT_BASIC_STATUS1	(PCIE_CLIENT_BASE + 0x48)
>  #define   PCIE_CLIENT_LINK_STATUS_UP		0x00300000
>  #define   PCIE_CLIENT_LINK_STATUS_MASK		0x00300000
> @@ -87,6 +92,8 @@
>  
>  #define PCIE_CORE_CTRL_MGMT_BASE	0x900000
>  #define PCIE_CORE_CTRL			(PCIE_CORE_CTRL_MGMT_BASE + 0x000)
> +#define   PCIE_CORE_PL_CONF_LS_MASK		0x00000001
> +#define   PCIE_CORE_PL_CONF_LS_READY		0x00000001
>  #define   PCIE_CORE_PL_CONF_SPEED_5G		0x00000008
>  #define   PCIE_CORE_PL_CONF_SPEED_MASK		0x00000018
>  #define   PCIE_CORE_PL_CONF_LANE_MASK		0x00000006
> @@ -144,6 +151,7 @@
>  #define PCIE_RC_CONFIG_BASE		0xa00000
>  #define PCIE_EP_CONFIG_BASE		0xa00000
>  #define PCIE_EP_CONFIG_DID_VID		(PCIE_EP_CONFIG_BASE + 0x00)
> +#define PCIE_EP_CONFIG_LCS		(PCIE_EP_CONFIG_BASE + 0xd0)
>  #define PCIE_RC_CONFIG_RID_CCR		(PCIE_RC_CONFIG_BASE + 0x08)
>  #define PCIE_RC_CONFIG_DCR		(PCIE_RC_CONFIG_BASE + 0xc4)
>  #define   PCIE_RC_CONFIG_DCR_CSPL_SHIFT		18
> @@ -155,6 +163,7 @@
>  #define PCIE_RC_CONFIG_LINK_CAP		(PCIE_RC_CONFIG_BASE + 0xcc)
>  #define   PCIE_RC_CONFIG_LINK_CAP_L0S		BIT(10)
>  #define PCIE_RC_CONFIG_LCS		(PCIE_RC_CONFIG_BASE + 0xd0)
> +#define PCIE_EP_CONFIG_LCS		(PCIE_EP_CONFIG_BASE + 0xd0)
>  #define PCIE_RC_CONFIG_L1_SUBSTATE_CTRL2 (PCIE_RC_CONFIG_BASE + 0x90c)
>  #define PCIE_RC_CONFIG_THP_CAP		(PCIE_RC_CONFIG_BASE + 0x274)
>  #define   PCIE_RC_CONFIG_THP_CAP_NEXT_MASK	GENMASK(31, 20)
> @@ -192,6 +201,8 @@
>  #define ROCKCHIP_VENDOR_ID			0x1d87
>  #define PCIE_LINK_IS_L2(x) \
>  	(((x) & PCIE_CLIENT_DEBUG_LTSSM_MASK) == PCIE_CLIENT_DEBUG_LTSSM_L2)
> +#define PCIE_LINK_TRAINING_DONE(x) \
> +	(((x) & PCIE_CORE_PL_CONF_LS_MASK) == PCIE_CORE_PL_CONF_LS_READY)
>  #define PCIE_LINK_UP(x) \
>  	(((x) & PCIE_CLIENT_LINK_STATUS_MASK) == PCIE_CLIENT_LINK_STATUS_UP)
>  #define PCIE_LINK_IS_GEN2(x) \
> -- 
> 2.47.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
