Return-Path: <SRS0=cphG=MV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1E5B6C4338F
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Jul 2021 16:13:31 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C62E4604DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Jul 2021 16:13:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C62E4604DB
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ke5q7S1sFRfqq2oRqFqE7CLwxYZqhlfH73x27F80a8o=; b=SCYG+aiupetJsn
	6vYryC33qB38KfRjzyYyEBUIjcGqIaIhyzBYQwMSB6LSRPf5zRP6ofeXQCq7qacj08yvfOHohizlP
	GbxH/j+UDHkGmTQzOt0Lf9ZbkLPCjErQ1a37LvgvBIDUwCczBQd3O7E10iIyI7cjLYA0r1yudYb6K
	ofV7Gr6U2IHy13Q5Of21Re0/1T70kofc1ZQ0BjbX0WduDnLMIoZH7iL6Vfb7ei0cu36m/IpM02dFk
	pwA2n6sYZOGn/b0+nm20/ae3HIxFx1BWj94luXZH8A9J9rOc8Er78B/scpdL3BbzcemnYlQZnztTY
	ytOSlkFDI2YJ63/5c57w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m98f0-0050Fn-Ud; Thu, 29 Jul 2021 16:13:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m98aa-004y70-IB; Thu, 29 Jul 2021 16:08:54 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m98aN-0004AD-4y; Thu, 29 Jul 2021 18:08:39 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, joro@8bytes.org,
 will@kernel.org, robh+dt@kernel.org, xxm@rock-chips.com, robin.murphy@arm.com,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Cc: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH v7 3/4] iommu: rockchip: Add internal ops to handle
 variants
Date: Thu, 29 Jul 2021 18:08:38 +0200
Message-ID: <3544194.oiGErgHkdL@diego>
In-Reply-To: <c6175f3d-a324-9fb5-bd39-cfe0447ee5e7@collabora.com>
References: <20210525121551.606240-1-benjamin.gaignard@collabora.com>
 <20210525121551.606240-4-benjamin.gaignard@collabora.com>
 <c6175f3d-a324-9fb5-bd39-cfe0447ee5e7@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210729_090852_739242_77CB37C8 
X-CRM114-Status: GOOD (  26.18  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Dafna,

Am Donnerstag, 29. Juli 2021, 17:59:26 CEST schrieb Dafna Hirschfeld:
> On 25.05.21 14:15, Benjamin Gaignard wrote:
> > @@ -879,7 +895,7 @@ static int rk_iommu_enable(struct rk_iommu *iommu)
> >   
> >   	for (i = 0; i < iommu->num_mmu; i++) {
> >   		rk_iommu_write(iommu->bases[i], RK_MMU_DTE_ADDR,
> > -			       rk_domain->dt_dma);
> > +			       rk_ops->dma_addr_dte(rk_domain->dt_dma));
> 
> Hi,
> This is not related to that patch, I was wondring why are all mmu devices initialized
> with the same dt_dma?
> I see for example that the isp0_mmu in rk3399.dtsi has two resources. Can't each resource
> be initialized with different dt_dma and this way there are two dt tables instead of the two mmus pointing
> to the same dt table.

maybe
git log -1 cd6438c5f8446691afa4829fe1a9d7b656204f11

"iommu/rockchip: Reconstruct to support multi slaves
    
There are some IPs, such as video encoder/decoder, contains 2 slave iommus,
one for reading and the other for writing. They share the same irq and
clock with master.
    
This patch reconstructs to support this case by making them share the same
Page Directory, Page Tables and even the register operations.
That means every instruction to the reading MMU registers would be
duplicated to the writing MMU and vice versa."


Heiko


> 
> Thanks,
> Dafna
> 
> >   		rk_iommu_base_command(iommu->bases[i], RK_MMU_CMD_ZAP_CACHE);
> >   		rk_iommu_write(iommu->bases[i], RK_MMU_INT_MASK, RK_MMU_IRQ_MASK);
> >   	}
> > @@ -1037,7 +1053,7 @@ static void rk_iommu_domain_free(struct iommu_domain *domain)
> >   	for (i = 0; i < NUM_DT_ENTRIES; i++) {
> >   		u32 dte = rk_domain->dt[i];
> >   		if (rk_dte_is_pt_valid(dte)) {
> > -			phys_addr_t pt_phys = rk_dte_pt_address(dte);
> > +			phys_addr_t pt_phys = rk_ops->pt_address(dte);
> >   			u32 *page_table = phys_to_virt(pt_phys);
> >   			dma_unmap_single(dma_dev, pt_phys,
> >   					 SPAGE_SIZE, DMA_TO_DEVICE);
> > @@ -1127,6 +1143,7 @@ static int rk_iommu_probe(struct platform_device *pdev)
> >   	struct device *dev = &pdev->dev;
> >   	struct rk_iommu *iommu;
> >   	struct resource *res;
> > +	const struct rk_iommu_ops *ops;
> >   	int num_res = pdev->num_resources;
> >   	int err, i;
> >   
> > @@ -1138,6 +1155,17 @@ static int rk_iommu_probe(struct platform_device *pdev)
> >   	iommu->dev = dev;
> >   	iommu->num_mmu = 0;
> >   
> > +	ops = of_device_get_match_data(dev);
> > +	if (!rk_ops)
> > +		rk_ops = ops;
> > +
> > +	/*
> > +	 * That should not happen unless different versions of the
> > +	 * hardware block are embedded the same SoC
> > +	 */
> > +	if (WARN_ON(rk_ops != ops))
> > +		return -EINVAL;
> > +
> >   	iommu->bases = devm_kcalloc(dev, num_res, sizeof(*iommu->bases),
> >   				    GFP_KERNEL);
> >   	if (!iommu->bases)
> > @@ -1226,6 +1254,8 @@ static int rk_iommu_probe(struct platform_device *pdev)
> >   		}
> >   	}
> >   
> > +	dma_set_mask_and_coherent(dev, rk_ops->dma_bit_mask);
> > +
> >   	return 0;
> >   err_remove_sysfs:
> >   	iommu_device_sysfs_remove(&iommu->iommu);
> > @@ -1277,8 +1307,20 @@ static const struct dev_pm_ops rk_iommu_pm_ops = {
> >   				pm_runtime_force_resume)
> >   };
> >   
> > +static struct rk_iommu_ops iommu_data_ops_v1 = {
> > +	.pt_address = &rk_dte_pt_address,
> > +	.mk_dtentries = &rk_mk_dte,
> > +	.mk_ptentries = &rk_mk_pte,
> > +	.dte_addr_phys = &rk_dte_addr_phys,
> > +	.dma_addr_dte = &rk_dma_addr_dte,
> > +	.dma_bit_mask = DMA_BIT_MASK(32),
> > +};
> > +
> > +
> >   static const struct of_device_id rk_iommu_dt_ids[] = {
> > -	{ .compatible = "rockchip,iommu" },
> > +	{	.compatible = "rockchip,iommu",
> > +		.data = &iommu_data_ops_v1,
> > +	},
> >   	{ /* sentinel */ }
> >   };
> >   
> > 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
