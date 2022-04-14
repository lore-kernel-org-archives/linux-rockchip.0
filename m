Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CF39C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Apr 2022 20:37:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zXceG7OJZssJPmJRTqHOD1bzMaGzVsMMzEQ8ZggNaYA=; b=XaMDIyoiqbgmZKuo2G2fsGPhX8
	ljFLIckUnetrUuupNMfKod4bt52tGF6Rx5j8LvAlE1p3k8OvFgYRMqv3qs4d4HCsol1/BK/r7agRd
	hY2F2PNe/TTso1ezMALTBcj0iqlvOMmlJ/CrpMb28aY6VlgI6fPpKHEZ7l4f2dfA7fokyDIMGDSxS
	+NtVDeBsN0FphMevfTUi5ip3C0nJ9yGVP3YfftBA+fpzGucaxch1BOFJHTZ+4XRoSALGX2h7zrXPD
	F4qIZn+ogUOX9mG63i1eSdwqMUTJMrpqmbJh4npz+4tuWR6+U8BWYnB7h+SVxq+49cOLUOP4X6raF
	2ur4o2UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nf6D4-007Dko-Bl; Thu, 14 Apr 2022 20:36:58 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nf6Cr-007Df5-JP; Thu, 14 Apr 2022 20:36:47 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 23FED61ED8;
 Thu, 14 Apr 2022 20:36:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 573B5C385A1;
 Thu, 14 Apr 2022 20:36:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649968599;
 bh=0YOUcX1s+MakPztIpP6ZGkf5l+r7N3LY6huJ438u3gE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=SFX8IfO7A6lIiz20UEEOHyavGrH//NtmZf0Ki54L0u4FBuu5DKoqH/kehrkh27AVX
 98xok0tBD6AEAas5XX5Sgpdyk3twGgLijE02NDR2v592aVnwgTy8aLP4QqtXdA15KC
 ERLxPe/ELkNJTC9Aa1SSSNi++YTHjPlHClLG4IGlEi6yA/MowGfDalYMPsFKSgv2UN
 3/cTPrR5UFZqvgC5UVZZRD5n5EB9vOisR22/6vFU+N+R2/TAKkdsArjAvMuzD8kZaW
 7b8YMnA/FL511ONoM+vvpFI2BCIFUY1YdTeS2wzh9+QjsZCGiaFgIVFBJYYyZFVGg/
 ElBSRk35oOUsA==
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <maz@kernel.org>)
 id 1nf6Ci-004Phs-Sn; Thu, 14 Apr 2022 21:36:36 +0100
MIME-Version: 1.0
Date: Thu, 14 Apr 2022 21:36:36 +0100
From: Marc Zyngier <maz@kernel.org>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring
 <robh@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/4] PCI: dwc: rockchip: add legacy interrupt support
In-Reply-To: <20220413133731.242870-3-pgwipeout@gmail.com>
References: <20220413133731.242870-1-pgwipeout@gmail.com>
 <20220413133731.242870-3-pgwipeout@gmail.com>
User-Agent: Roundcube Webmail/1.4.13
Message-ID: <c493261cef27714181a523545dab6d0e@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: pgwipeout@gmail.com, lorenzo.pieralisi@arm.com,
 robh@kernel.org, kw@linux.com, bhelgaas@google.com, heiko@sntech.de,
 linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220414_133645_771085_47C161F2 
X-CRM114-Status: GOOD (  29.62  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2022-04-13 14:37, Peter Geis wrote:
> The legacy interrupts on the rk356x pcie controller are handled by a
> single muxed interrupt. Add irq domain support to the pcie-dw-rockchip
> driver to support the virtual domain.
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
>  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 123 +++++++++++++++++-
>  1 file changed, 121 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> index c9b341e55cbb..a8b1dc03d3cc 100644
> --- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> @@ -10,9 +10,12 @@
> 
>  #include <linux/clk.h>
>  #include <linux/gpio/consumer.h>
> +#include <linux/irqchip/chained_irq.h>
> +#include <linux/irqdomain.h>
>  #include <linux/mfd/syscon.h>
>  #include <linux/module.h>
>  #include <linux/of_device.h>
> +#include <linux/of_irq.h>
>  #include <linux/phy/phy.h>
>  #include <linux/platform_device.h>
>  #include <linux/regmap.h>
> @@ -36,10 +39,13 @@
>  #define PCIE_LINKUP			(PCIE_SMLH_LINKUP | PCIE_RDLH_LINKUP)
>  #define PCIE_L0S_ENTRY			0x11
>  #define PCIE_CLIENT_GENERAL_CONTROL	0x0
> +#define PCIE_CLIENT_INTR_STATUS_LEGACY	0x8
> +#define PCIE_CLIENT_INTR_MASK_LEGACY	0x1c
>  #define PCIE_CLIENT_GENERAL_DEBUG	0x104
> -#define PCIE_CLIENT_HOT_RESET_CTRL      0x180
> +#define PCIE_CLIENT_HOT_RESET_CTRL	0x180
>  #define PCIE_CLIENT_LTSSM_STATUS	0x300
> -#define PCIE_LTSSM_ENABLE_ENHANCE       BIT(4)
> +#define PCIE_LEGACY_INT_ENABLE		GENMASK(3, 0)
> +#define PCIE_LTSSM_ENABLE_ENHANCE	BIT(4)
>  #define PCIE_LTSSM_STATUS_MASK		GENMASK(5, 0)
> 
>  struct rockchip_pcie {
> @@ -51,6 +57,8 @@ struct rockchip_pcie {
>  	struct reset_control		*rst;
>  	struct gpio_desc		*rst_gpio;
>  	struct regulator                *vpcie3v3;
> +	struct irq_domain		*irq_domain;
> +	raw_spinlock_t			irq_lock;
>  };
> 
>  static int rockchip_pcie_readl_apb(struct rockchip_pcie *rockchip,
> @@ -65,6 +73,105 @@ static void rockchip_pcie_writel_apb(struct
> rockchip_pcie *rockchip,
>  	writel_relaxed(val, rockchip->apb_base + reg);
>  }
> 
> +static void rockchip_pcie_legacy_int_handler(struct irq_desc *desc)
> +{
> +	struct irq_chip *chip = irq_desc_get_chip(desc);
> +	struct rockchip_pcie *rockchip = irq_desc_get_handler_data(desc);
> +	struct device *dev = rockchip->pci.dev;
> +	u32 reg;
> +	u32 hwirq;
> +	u32 virq;
> +
> +	chained_irq_enter(chip, desc);
> +
> +	reg = rockchip_pcie_readl_apb(rockchip, 
> PCIE_CLIENT_INTR_STATUS_LEGACY);
> +
> +	while (reg) {
> +		hwirq = ffs(reg) - 1;
> +		reg &= ~BIT(hwirq);

The whole construct would be better served by for_each_set_bit().

> +
> +		virq = irq_find_mapping(rockchip->irq_domain, hwirq);
> +		if (virq)
> +			generic_handle_irq(virq);

Please replace this with generic_handle_domain_irq().

> +		else
> +			dev_err(dev, "unexpected IRQ, INT%d\n", hwirq);

This hardly serves any purpose. At best, this is a debug statement.
At worse, this is a DoS. In any case, please remove it.

> +	}
> +
> +	chained_irq_exit(chip, desc);
> +}
> +
> +static void rockchip_intx_mask(struct irq_data *data)
> +{
> +	struct rockchip_pcie *rockchip = irq_data_get_irq_chip_data(data);
> +	unsigned long flags;
> +	u32 val;
> +
> +	/* disable legacy interrupts */
> +	raw_spin_lock_irqsave(&rockchip->irq_lock, flags);
> +	val = HIWORD_UPDATE_BIT(PCIE_LEGACY_INT_ENABLE);
> +	val |= PCIE_LEGACY_INT_ENABLE;
> +	rockchip_pcie_writel_apb(rockchip, val, 
> PCIE_CLIENT_INTR_MASK_LEGACY);
> +	raw_spin_unlock_irqrestore(&rockchip->irq_lock, flags);
> +};
> +
> +static void rockchip_intx_unmask(struct irq_data *data)
> +{
> +	struct rockchip_pcie *rockchip = irq_data_get_irq_chip_data(data);
> +	unsigned long flags;
> +	u32 val;
> +
> +	/* enable legacy interrupts */
> +	raw_spin_lock_irqsave(&rockchip->irq_lock, flags);
> +	val = HIWORD_UPDATE_BIT(PCIE_LEGACY_INT_ENABLE);
> +	val &= ~PCIE_LEGACY_INT_ENABLE;
> +	rockchip_pcie_writel_apb(rockchip, val, 
> PCIE_CLIENT_INTR_MASK_LEGACY);
> +	raw_spin_unlock_irqrestore(&rockchip->irq_lock, flags);
> +};
> +
> +static struct irq_chip rockchip_intx_irq_chip = {
> +	.flags			= IRQCHIP_SKIP_SET_WAKE | IRQCHIP_MASK_ON_SUSPEND,
> +	.irq_mask		= rockchip_intx_mask,
> +	.irq_unmask		= rockchip_intx_unmask,
> +	.name			= "INTx",

For consistency, please place 'name' at the top, and 'flags' at the end.

> +};
> +
> +static int rockchip_pcie_intx_map(struct irq_domain *domain, unsigned 
> int irq,
> +				  irq_hw_number_t hwirq)
> +{
> +	irq_set_chip_and_handler(irq, &rockchip_intx_irq_chip, 
> handle_simple_irq);

Why isn't this a *level* handler, as per the PCI spec?

> +	irq_set_chip_data(irq, domain->host_data);
> +
> +	return 0;
> +}
> +
> +static const struct irq_domain_ops intx_domain_ops = {
> +	.map = rockchip_pcie_intx_map,
> +};
> +
> +static int rockchip_pcie_init_irq_domain(struct rockchip_pcie 
> *rockchip)
> +{
> +	struct device *dev = rockchip->pci.dev;
> +	struct device_node *intc;
> +
> +	raw_spin_lock_init(&rockchip->irq_lock);
> +
> +	intc = of_get_child_by_name(dev->of_node, 
> "legacy-interrupt-controller");
> +	if (!intc) {
> +		dev_err(dev, "missing child interrupt-controller node\n");
> +		return -EINVAL;
> +	}
> +
> +	rockchip->irq_domain = irq_domain_add_linear(intc, PCI_NUM_INTX,
> +						    &intx_domain_ops, rockchip);
> +	of_node_put(intc);
> +	if (!rockchip->irq_domain) {
> +		dev_err(dev, "failed to get a INTx IRQ domain\n");
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
>  static void rockchip_pcie_enable_ltssm(struct rockchip_pcie *rockchip)
>  {
>  	rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_ENABLE_LTSSM,
> @@ -111,7 +218,19 @@ static int rockchip_pcie_host_init(struct 
> pcie_port *pp)
>  {
>  	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
>  	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
> +	struct device *dev = rockchip->pci.dev;
>  	u32 val = HIWORD_UPDATE_BIT(PCIE_LTSSM_ENABLE_ENHANCE);
> +	int irq, ret;
> +
> +	irq = of_irq_get_byname(dev->of_node, "legacy");
> +	if (irq < 0)
> +		return irq;
> +
> +	irq_set_chained_handler_and_data(irq,
> rockchip_pcie_legacy_int_handler, rockchip);
> +

Installing the handler before the domain is instantiated is
unlikely to end well if you have a pending interrupt...

> +	ret = rockchip_pcie_init_irq_domain(rockchip);
> +	if (ret < 0)
> +		dev_err(dev, "failed to init irq domain\n");
> 
>  	/* LTSSM enable control mode */
>  	rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_HOT_RESET_CTRL);

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
