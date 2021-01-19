Return-Path: <SRS0=wbav=GW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15CAEC433DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Jan 2021 19:48:13 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8C3EF2310B
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Jan 2021 19:48:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8C3EF2310B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6mZLcOrKRLGgVoMSobU/mki0Kbdy+9c7uWX5/M2JE8M=; b=ykb2OQdRZkPjxVi1BBgIgnJAd
	NbC20iVS6E9nf7pCEJnFP5WyBEdFNBW7rn5OsFYA+6kU5fwU0SuuMt4eMNl5SDQpTMpKHndH/vSgJ
	SG0vae/2GKdAfJ/fBEpOGRQjJcQ5EmPUldbbZPSB6fmqQqsKcyXIWV6uHQoooEP2KxS4wGwOiyFFy
	DpbSaXs2F4kRfGrYWsB/cicS0jkZ0IEYrKFhDrVWGe1RUWQs4/xgkRJcDSzikbRYh2PYplQQTvnbh
	kXu5yghudHTkbai2Cc3DXTJr7rAzI3yq0YE/38otdUeShZglvT1ByxBd0DvOyf5P+E3JB2eOUg13s
	NM+pT9euw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l1wz0-0005i7-7s; Tue, 19 Jan 2021 19:48:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1wyy-0005hf-38
 for linux-rockchip@lists.infradead.org; Tue, 19 Jan 2021 19:48:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E7A49D6E;
 Tue, 19 Jan 2021 11:47:59 -0800 (PST)
Received: from [10.57.39.58] (unknown [10.57.39.58])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E12EC3F719;
 Tue, 19 Jan 2021 11:47:58 -0800 (PST)
Subject: Re: [PATCH 1/3] PCI: dwc: Skip allocating own MSI domain if using
 external MSI domain
To: Simon Xue <xxm@rock-chips.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
References: <20210118091739.247040-1-xxm@rock-chips.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <e17fcf83-18f1-c2c4-3a0c-a68e74138e15@arm.com>
Date: Tue, 19 Jan 2021 19:47:57 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210118091739.247040-1-xxm@rock-chips.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210119_144804_189658_06826AB3 
X-CRM114-Status: GOOD (  22.14  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-pci@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>,
 linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2021-01-18 09:17, Simon Xue wrote:
> From: Shawn Lin <shawn.lin@rock-chips.com>
> 
> On some platform, external MSI domain is using instead of the one
> created by designware driver. For instance, if using GIC-V3-ITS
> as a MSI domain, we only need set msi-map in the devicetree but
> never need any bit in the designware driver to handle MSI stuff.
> So skip allocating its own MSI domain for that case.

How is this different from the existing pp->has_msi_ctrl? AFAICS, 
dw_pcie_host_init() won't call dw_pcie_allocate_domains() anyway if an 
external MSI controller is present.

Robin.

> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> Signed-off-by: Simon Xue <xxm@rock-chips.com>
> ---
>   drivers/pci/controller/dwc/pcie-designware-host.c | 10 +++++++++-
>   drivers/pci/controller/dwc/pcie-designware.h      |  1 +
>   2 files changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
> index 8a84c005f32b..d9d93cab970a 100644
> --- a/drivers/pci/controller/dwc/pcie-designware-host.c
> +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
> @@ -235,6 +235,10 @@ int dw_pcie_allocate_domains(struct pcie_port *pp)
>   	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
>   	struct fwnode_handle *fwnode = of_node_to_fwnode(pci->dev->of_node);
>   
> +	/* Rely on the external MSI domain */
> +	if (pp->msi_ext)
> +		return 0;
> +
>   	pp->irq_domain = irq_domain_create_linear(fwnode, pp->num_vectors,
>   					       &dw_pcie_msi_domain_ops, pp);
>   	if (!pp->irq_domain) {
> @@ -258,6 +262,9 @@ int dw_pcie_allocate_domains(struct pcie_port *pp)
>   
>   static void dw_pcie_free_msi(struct pcie_port *pp)
>   {
> +	if (pp->msi_ext)
> +		return;
> +
>   	if (pp->msi_irq) {
>   		irq_set_chained_handler(pp->msi_irq, NULL);
>   		irq_set_handler_data(pp->msi_irq, NULL);
> @@ -359,7 +366,8 @@ int dw_pcie_host_init(struct pcie_port *pp)
>   	if (pci->link_gen < 1)
>   		pci->link_gen = of_pci_get_max_link_speed(np);
>   
> -	if (pci_msi_enabled()) {
> +	if (pci_msi_enabled() &&
> +	    !pp->msi_ext) {
>   		pp->has_msi_ctrl = !(pp->ops->msi_host_init ||
>   				     of_property_read_bool(np, "msi-parent") ||
>   				     of_property_read_bool(np, "msi-map"));
> diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
> index 0207840756c4..cf3b0664302a 100644
> --- a/drivers/pci/controller/dwc/pcie-designware.h
> +++ b/drivers/pci/controller/dwc/pcie-designware.h
> @@ -195,6 +195,7 @@ struct pcie_port {
>   	u32			irq_mask[MAX_MSI_CTRLS];
>   	struct pci_host_bridge  *bridge;
>   	raw_spinlock_t		lock;
> +	int			msi_ext;
>   	DECLARE_BITMAP(msi_irq_in_use, MAX_MSI_IRQS);
>   };
>   
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
