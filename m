Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E339EB64D9
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Jul 2023 02:05:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kzCyc3vwvKy2ka8UnqfMQfXO68lMZJ/2HU3l9E55/H0=; b=DhnKVtz5TQnQn3
	hPCBeZPrQxKjPNjtwz5/XljNi5sv1i8QvOgBCxhnUlSPDf89J/OwL4scx/KCwSRS0IixL13+ZWKdB
	neuyR1nAmpZrG9yU2jlvqHhrAGyxRkH2W0oINuRfdYaVXUZHepsDx855fzWZKdUU5evhlE2nyCqaF
	0+7JVeMzrt4iCXkkoxSRffxE1WDAnqfq2dLeK5OWpQBlwM6LHk6YkMsPJJ20srhQ/++MQfaHOvxVS
	so6BIhtZsoyAHldzTn8RbvOppLh+RavVfaCBWwFSySxwaX3VIWl+3PpsWn7c/Sr1QPt0x6MHiFPsH
	vOcFyCLVMfrfbx1R3MfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qG8we-0092mQ-33;
	Mon, 03 Jul 2023 02:05:40 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qG8wb-0092ln-28;
	Mon, 03 Jul 2023 02:05:39 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 77CAD60CEC;
	Mon,  3 Jul 2023 02:05:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64B1BC433C8;
	Mon,  3 Jul 2023 02:05:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688349933;
	bh=6Vt/sBkrXdrxTQKVsUKGftN2YBxZb9Pi00xquCrBohc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=LjCUwi5skzJas/FE30Uw3LTmmxaKFtanu5Q4CdiA49GglOROpD0KWawmPcK/U4jNN
	 JS8ST9+me3IWMG5rrqvv0w6A3PRik9TAMkaRw7GNTQiJ+5wDcJjU7CF/9D6BJjIVhH
	 ekW8hR0sTSKZ6ZmZD9ru3O7LGE3mDymTQk+K9dOzGl3go/NdZzM85W2cMSzdu0uwJF
	 TlPQJtZoiuy0kSOpGr+E5E92Dxx0Cyz+kFt4zPdHBy9Lcm+AUpBb+W6f6bwTTxwoe1
	 DGrhyfGMbhZijPjzMC3JOVUdIbIRcCYrty3HlFavgHMT4cmZIdz9QTHsriKTh1x262
	 HSfUi7zOdkttw==
Message-ID: <3e49476e-ee18-bfb8-ae1a-3a55a3d13f88@kernel.org>
Date: Mon, 3 Jul 2023 11:05:30 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH] PCI: rockchip: Use 64-bit mask on MSI 64-bit PCI address
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>, alberto.dassatti@heig.vd.ch
Cc: Dan Carpenter <dan.carpenter@linaro.org>, stable@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20230630131753.1549685-1-rick.wertenbroek@gmail.com>
Content-Language: en-US
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20230630131753.1549685-1-rick.wertenbroek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230702_190537_798887_2D4295F4 
X-CRM114-Status: GOOD (  23.06  )
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

On 6/30/23 22:17, Rick Wertenbroek wrote:
> A 32-bit mask was used on the 64-bit PCI address used for mapping MSIs.
> This would result in the upper 32 bits being unintentionally zeroed and
> MSIs getting mapped to incorrect PCI addresses if the address had any
> of the upper bits set.
> 
> Replace 32-bit mask by appropriate 64-bit mask and rename 32-bit mask
> for clarity.
> 
> Fixes: dc73ed0f1b8b ("PCI: rockchip: Fix window mapping and address translation for endpoint")
> Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> Closes: https://lore.kernel.org/linux-pci/8d19e5b7-8fa0-44a4-90e2-9bb06f5eb694@moroto.mountain/
> Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
> Cc: stable@vger.kernel.org
> ---
>  drivers/pci/controller/pcie-rockchip-ep.c | 12 ++++++------
>  drivers/pci/controller/pcie-rockchip.h    |  6 +++---
>  2 files changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
> index 0af0e965fb57..313face6a87f 100644
> --- a/drivers/pci/controller/pcie-rockchip-ep.c
> +++ b/drivers/pci/controller/pcie-rockchip-ep.c
> @@ -354,7 +354,7 @@ static int rockchip_pcie_ep_send_msi_irq(struct rockchip_pcie_ep *ep, u8 fn,
>  	struct rockchip_pcie *rockchip = &ep->rockchip;
>  	u32 flags, mme, data, data_mask;
>  	u8 msi_count;
> -	u64 pci_addr;
> +	u64 pci_addr, pci_addr_mask = GENMASK(63, 8);

I think you can simplify all this with only the change to the definition of
PCIE_ADDR_MASK macro. Applying a 64 bits mask for low bits to a 32-bits variable
is OK and should not generate any complaints from the compiler.
Also, that "8" in the GENMASK can be replaced by MIN_AXI_ADDR_BITS_PASSED.
So:

#define PCIE_ADDR_MASK	GENMASK(63, MIN_AXI_ADDR_BITS_PASSED)

Would fix everything I think.

If it does not, I would prefer you define a macro for that GENMASK(63, 8) mask
instead of using a variable on stack. That would be more efficient code wise,
removing a memory access.

>  	u32 r;
>  
>  	/* Check MSI enable bit */
> @@ -391,18 +391,18 @@ static int rockchip_pcie_ep_send_msi_irq(struct rockchip_pcie_ep *ep, u8 fn,
>  				       PCI_MSI_ADDRESS_LO);
>  
>  	/* Set the outbound region if needed. */
> -	if (unlikely(ep->irq_pci_addr != (pci_addr & PCIE_ADDR_MASK) ||
> +	if (unlikely(ep->irq_pci_addr != (pci_addr & pci_addr_mask) ||
>  		     ep->irq_pci_fn != fn)) {
>  		r = rockchip_ob_region(ep->irq_phys_addr);
>  		rockchip_pcie_prog_ep_ob_atu(rockchip, fn, r,
>  					     ep->irq_phys_addr,
> -					     pci_addr & PCIE_ADDR_MASK,
> -					     ~PCIE_ADDR_MASK + 1);
> -		ep->irq_pci_addr = (pci_addr & PCIE_ADDR_MASK);
> +					     pci_addr & pci_addr_mask,
> +					     ~pci_addr_mask + 1);
> +		ep->irq_pci_addr = (pci_addr & pci_addr_mask);
>  		ep->irq_pci_fn = fn;
>  	}
>  
> -	writew(data, ep->irq_cpu_addr + (pci_addr & ~PCIE_ADDR_MASK));
> +	writew(data, ep->irq_cpu_addr + (pci_addr & ~pci_addr_mask));
>  	return 0;
>  }
>  
> diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
> index fe0333778fd9..2d7b05f07b7e 100644
> --- a/drivers/pci/controller/pcie-rockchip.h
> +++ b/drivers/pci/controller/pcie-rockchip.h
> @@ -158,11 +158,11 @@
>  #define PCIE_RC_CONFIG_THP_CAP		(PCIE_RC_CONFIG_BASE + 0x274)
>  #define   PCIE_RC_CONFIG_THP_CAP_NEXT_MASK	GENMASK(31, 20)
>  
> -#define PCIE_ADDR_MASK			0xffffff00
> +#define PCIE_LO_ADDR_MASK		GENMASK(31, 8)
>  #define PCIE_CORE_AXI_CONF_BASE		0xc00000
>  #define PCIE_CORE_OB_REGION_ADDR0	(PCIE_CORE_AXI_CONF_BASE + 0x0)
>  #define   PCIE_CORE_OB_REGION_ADDR0_NUM_BITS	0x3f
> -#define   PCIE_CORE_OB_REGION_ADDR0_LO_ADDR	PCIE_ADDR_MASK
> +#define   PCIE_CORE_OB_REGION_ADDR0_LO_ADDR	PCIE_LO_ADDR_MASK
>  #define PCIE_CORE_OB_REGION_ADDR1	(PCIE_CORE_AXI_CONF_BASE + 0x4)
>  #define PCIE_CORE_OB_REGION_DESC0	(PCIE_CORE_AXI_CONF_BASE + 0x8)
>  #define PCIE_CORE_OB_REGION_DESC1	(PCIE_CORE_AXI_CONF_BASE + 0xc)
> @@ -170,7 +170,7 @@
>  #define PCIE_CORE_AXI_INBOUND_BASE	0xc00800
>  #define PCIE_RP_IB_ADDR0		(PCIE_CORE_AXI_INBOUND_BASE + 0x0)
>  #define   PCIE_CORE_IB_REGION_ADDR0_NUM_BITS	0x3f
> -#define   PCIE_CORE_IB_REGION_ADDR0_LO_ADDR	PCIE_ADDR_MASK
> +#define   PCIE_CORE_IB_REGION_ADDR0_LO_ADDR	PCIE_LO_ADDR_MASK
>  #define PCIE_RP_IB_ADDR1		(PCIE_CORE_AXI_INBOUND_BASE + 0x4)
>  
>  /* Size of one AXI Region (not Region 0) */

-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
