Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48DD8C6FD1C
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Mar 2023 13:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c+xuk9e6mlDPrMqzQImn3GR0pQ3EsuMlBYDK5SEsk6E=; b=uQCVr2DWiXH4oc
	/Kfp+6Ze00f98n4xKA6gyRJGLaF+0yHfy5LlkWas5ljO7iva3c5O487SGTxV6Jv0RdUpm8W7cEDIE
	Wse1uj+2C2moC6VKa/3uMTHNp8xSUI2e32gK8K9/asVhwJ0W7AHGliztv+NdrIRCR7obYQc1tZXDl
	cloNObueVL3pWi0v6By64DY3WvOHesbImdRaSi9zxWMHfuD1nOL2J/qZ8Hlr69G4s7sgRXiUkE4Td
	HzgtoNPs7QnB2tMPAd/uM+ao+1AtqoVrgoK/O3hnJJ+j24VQXjTSj+ewphKUBQSoMcdHES2ka6xom
	mOrTT9INn+lByBgJbwRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfhHb-004SQ4-0t;
	Fri, 24 Mar 2023 13:16:39 +0000
Received: from mga14.intel.com ([192.55.52.115])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfhHW-004SOw-2n;
	Fri, 24 Mar 2023 13:16:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1679663794; x=1711199794;
  h=message-id:date:mime-version:cc:subject:to:references:
   from:in-reply-to:content-transfer-encoding;
  bh=GDZg2mRuA1og/+FYECT/suAKTGeLw7ZZtMrYY5CS7do=;
  b=QiMTro6vUi1LIHY7ChQsefMAu+in2j61Ih1mi6mQTlZmzyKVywn3YJBL
   jJM6SmqrD0BlOwixfXgSLBXvdkThF40/MVMgflnqzK+lb7v2xWEyGo9fy
   iP62RvwoZ+MqMoxVbR1u0nrMTN9/zw9XS9n0eKh3CHPiaa86WCcvJt7Of
   G4dqHCFKaEr4xRDXmHJClwb77pUmm+6WhweVatIDZJjyw6ohFXULW4qiU
   ZQxflAiXQ1sPo6J5Ff5KLWyt253yNPOF4LViYqN0MwlMZFvVuwEJcGtTT
   72ck2QajNrFwGifTPzvxCEYh/OSaX+CjGYy3XhWMsZkFEYz3b6eSIZ9DY
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10659"; a="339800373"
X-IronPort-AV: E=Sophos;i="5.98,288,1673942400"; 
   d="scan'208";a="339800373"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Mar 2023 06:16:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10659"; a="928657058"
X-IronPort-AV: E=Sophos;i="5.98,288,1673942400"; 
   d="scan'208";a="928657058"
Received: from blu2-mobl.ccr.corp.intel.com (HELO [10.254.215.177]) ([10.254.215.177])
  by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Mar 2023 06:16:26 -0700
Message-ID: <8fda817c-98e7-1988-325d-52d09f3e61a8@linux.intel.com>
Date: Fri, 24 Mar 2023 21:16:24 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Cc: baolu.lu@linux.intel.com, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, iommu@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] iommu/rockchip: Add missing set_platform_dma_ops
 callback
To: Steven Price <steven.price@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Joerg Roedel <joro@8bytes.org>, Jason Gunthorpe <jgg@ziepe.ca>
References: <20230324111127.221640-1-steven.price@arm.com>
Content-Language: en-US
From: Baolu Lu <baolu.lu@linux.intel.com>
In-Reply-To: <20230324111127.221640-1-steven.price@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_061634_940932_3DF3015D 
X-CRM114-Status: GOOD (  20.61  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2023/3/24 19:11, Steven Price wrote:
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
>   * Reworked the code to avoid a NULL domain, instead a singleton
>     rk_identity_domain is used instead. The 'detach' language is no
>     longer used.
> 
> [1] https://lore.kernel.org/r/20230315164152.333251-1-steven.price%40arm.com
> 
>   drivers/iommu/rockchip-iommu.c | 50 ++++++++++++++++++++++++++--------
>   1 file changed, 39 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
> index f30db22ea5d7..437541004994 100644
> --- a/drivers/iommu/rockchip-iommu.c
> +++ b/drivers/iommu/rockchip-iommu.c
> @@ -124,6 +124,7 @@ struct rk_iommudata {
>   
>   static struct device *dma_dev;
>   static const struct rk_iommu_ops *rk_ops;
> +static struct iommu_domain rk_identity_domain;
>   
>   static inline void rk_table_flush(struct rk_iommu_domain *dom, dma_addr_t dma,
>   				  unsigned int count)
> @@ -980,26 +981,27 @@ static int rk_iommu_enable(struct rk_iommu *iommu)
>   	return ret;
>   }
>   
> -static void rk_iommu_detach_device(struct iommu_domain *domain,
> -				   struct device *dev)
> +static int rk_iommu_identity_attach(struct iommu_domain *identity_domain,
> +				    struct device *dev)
>   {
>   	struct rk_iommu *iommu;
> -	struct rk_iommu_domain *rk_domain = to_rk_domain(domain);
> +	struct rk_iommu_domain *rk_domain;
>   	unsigned long flags;
>   	int ret;
>   
>   	/* Allow 'virtual devices' (eg drm) to detach from domain */
>   	iommu = rk_iommu_from_dev(dev);
>   	if (!iommu)
> -		return;
> +		return -ENODEV;
> +
> +	rk_domain = to_rk_domain(iommu->domain);
>   
>   	dev_dbg(dev, "Detaching from iommu domain\n");
>   
> -	/* iommu already detached */
> -	if (iommu->domain != domain)
> -		return;
> +	if (iommu->domain == identity_domain)
> +		return 0;
>   
> -	iommu->domain = NULL;
> +	iommu->domain = identity_domain;

Where did identity_domain come from? Is it rk_identity_domain?

Best regards,
baolu

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
