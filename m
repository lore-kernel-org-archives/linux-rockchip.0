Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B84AC76195
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Mar 2023 14:35:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Uf/5HWi8eybxylWtkFcG20s0OEOt95GDGhCbULMurg=; b=qeePzSu2oxV+2Y
	eTXG5YnCnstH4DXcXbltYnhttKDUxjhUn/aSuK5X3dJCVq8+Xs+kK8dfpIKAJzBviNJMr4SycSjz1
	hkd7OdIu3m8BUY/kNsvgvTVyaFwGibEadtyKD6DfnaquqZ3wDn3dds4hQli4bCes4Lpb+/mHZ6Ft9
	ihiEVje7jURfm7vt88NfW2OYE8Gbi/GBAYw/FpaQypyb/KlS5h7o1meQs3VoHnfXMNX1PBFC0z8ef
	w7n3Iw5HxZ5kYmLJgfuTDpb4p/gwXtkKTPHE7JNqwK1tFMlqJ4ITOqb3VApiVBv7pJhEL6R6a5VwU
	t/y4z5t+S1LrDLkKPoGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgnwf-00BL1Z-2s;
	Mon, 27 Mar 2023 14:35:37 +0000
Received: from [2001:8b0:1628:5005::111] (helo=metanate.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgnwb-00BKzz-37;
	Mon, 27 Mar 2023 14:35:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=metanate.com; s=stronger; h=In-Reply-To:Content-Type:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description; bh=TQEVb06h33yxhmY3vu7gB3cHE9jPWdXlacdCPPkILAc=; b=IwhJp
	YsIGR9unG81YdDeSnR/hdUO6PGgiMyenAT4ayTFuFiZR5n8fDLQ6iRze6QZR9WL2/eenMWYXV20le
	V+nIYlDCY3SuwUb+qszBvqR2wLHP2/HeRUQDF28DtnChs7upds7rIoWfzoQFX9I8Eq1bzWarXRGgV
	tBVJ5luBiyukT2IMGQOIffFfHd4qlfJzmdgHUstZlgu+/vLz4BH3W8wUzy2hDzw3dSJmCfZGaw+Nc
	FZnJ2uTLCIMgXHpg2kLO8D9SvQgLRRoPicS5D127FQodRFfVfLfcpQojf4jp8VH8h+D2AVeyzSEyP
	duZxbP19lR4hhQf7awKT3mZVmOHVQ==;
Received: from [81.174.171.191] (helo=donbot)
	by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <john@metanate.com>)
	id 1pgnw8-00031z-WD;
	Mon, 27 Mar 2023 15:35:06 +0100
Date: Mon, 27 Mar 2023 15:35:04 +0100
From: John Keeping <john@metanate.com>
To: Steven Price <steven.price@arm.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Joerg Roedel <joro@8bytes.org>,
	Jason Gunthorpe <jgg@ziepe.ca>, Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>, iommu@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] iommu/rockchip: Add missing set_platform_dma_ops
 callback
Message-ID: <ZCGpmHUWyZVaeIIx@donbot>
References: <20230324111127.221640-1-steven.price@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230324111127.221640-1-steven.price@arm.com>
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_073534_002798_8E36BBB0 
X-CRM114-Status: GOOD (  21.35  )
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

On Fri, Mar 24, 2023 at 11:11:27AM +0000, Steven Price wrote:
> Similar to exynos, we need a set_platform_dma_ops() callback for proper
> operation on ARM 32 bit after recent changes in the IOMMU framework
> (detach ops removal). But also the use of a NULL domain is confusing.
> 
> Rework the code to have a singleton rk_identity_domain which is assigned
> to domain when using an identity mapping rather than "detaching". This
> makes the code easier to reason about.
> 
> Signed-off-by: Steven Price <steven.price@arm.com>
> ---
> Changes since v1[1]:
> 
>  * Reworked the code to avoid a NULL domain, instead a singleton
>    rk_identity_domain is used instead. The 'detach' language is no
>    longer used.
> 
> [1] https://lore.kernel.org/r/20230315164152.333251-1-steven.price%40arm.com
> 
>  drivers/iommu/rockchip-iommu.c | 50 ++++++++++++++++++++++++++--------
>  1 file changed, 39 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
> index f30db22ea5d7..437541004994 100644
> --- a/drivers/iommu/rockchip-iommu.c
> +++ b/drivers/iommu/rockchip-iommu.c
[snip]
> +static struct iommu_domain rk_identity_domain = {
> +	.type = IOMMU_DOMAIN_IDENTITY,
> +	.ops = &rk_identity_ops,
> +};
> +
> +#ifdef CONFIG_ARM

Is this #ifdef needed?  I can't see anything ARM-specific about this
function or .set_platform_dma_ops.

> +static void rk_iommu_set_platform_dma(struct device *dev)
> +{
> +	WARN_ON(rk_iommu_identity_attach(&rk_identity_domain, dev));
>  }
> +#endif

Not shown in the patch are the pm_runtime hooks.  Do they need to
change like this?

 static int __maybe_unused rk_iommu_suspend(struct device *dev)
 {
 	struct rk_iommu *iommu = dev_get_drvdata(dev);
 
-	if (!iommu->domain)
+	if (iommu->domain == &rk_identity_domain)
 		return 0;
 
 	rk_iommu_disable(iommu);
 	return 0;
 }
 
 static int __maybe_unused rk_iommu_resume(struct device *dev)
 {
 	struct rk_iommu *iommu = dev_get_drvdata(dev);
 
-	if (!iommu->domain)
+	if (iommu->domain == &rk_identity_domain)
 		return 0;
 
 	return rk_iommu_enable(iommu);
 }

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
