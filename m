Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19BA1EB64DA
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jul 2023 07:39:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M0nQN/CXMhJwzbS2mxXbQLtvEQwjSdmMEJhrusTrNHg=; b=Dp0uIp6EyibQBG
	u7YY1/6a6Km1qjDkf0Qa9melhOq5q0aP6JNEqTl7QPZPfCLPrf9mB8r7SSnTkB9+qfvy8dA3iprwn
	d/F4vqhhx5iijz2BLaC+j5lTIBuIwLZUvqK4c/2c47qsDexLsUy8B6be3uNDjxoDJgrT1+Md7cYdv
	Z7rpxOYX+RFhxnmPfzn86Bjee0Bero8tfaUyQEOPj/75OiuYG6TIn6rHhlZ5oEnsCuSc8b2tP6+HS
	w7qkZi2XXCvn2dHohDyvZzA0J2H1NsDHZ05VwDspd+fbYr20h4cUnHUJvul43RuAX9nA1hrPBJMVl
	97hRByP594Hsm0N77Ojw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qMOGD-00A99D-2j;
	Thu, 20 Jul 2023 07:39:41 +0000
Received: from mga04.intel.com ([192.55.52.120])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qMOGA-00A97y-2q;
	Thu, 20 Jul 2023 07:39:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1689838778; x=1721374778;
  h=message-id:date:mime-version:cc:subject:to:references:
   from:in-reply-to:content-transfer-encoding;
  bh=u/CMXF3lu6xbOAoxteln+cW6/SG/tWj+VRYeOVr9Ja0=;
  b=AVcW8CFF4ez05Bik+Z1RoE3kBEWM6cCRbPf5DfbyNAdo0sBPBXMFGq89
   asWPg1+o8SRHVnr36gKEoLS0UO9wPrXIuj5FhiH2fvH92S9IPgTQ2Ilu6
   HZdDCGH/eaBFMrxM8hzcZm5k8NLrtWssHaCXGykCB/wN9JY4UyO4pHSaU
   r90rNCYHW0X8uJRCBeBuTNb7tT+wMohCpk2J/63bCi3N1Q5Y7QtFau+i7
   liCwQlfhltiXxQRx/O/Y7l9r7K65VWA8znEDkowTxeT9IS2uaNeZS+h+/
   gPrpIuoHagRiD+ZP4xuivuU7OrKsg3PgTwnNyeQ26oqw4zCI39wkZNheq
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="365544997"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; 
   d="scan'208";a="365544997"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Jul 2023 00:39:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="1055044515"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; 
   d="scan'208";a="1055044515"
Received: from blu2-mobl.ccr.corp.intel.com (HELO [10.252.191.114]) ([10.252.191.114])
  by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Jul 2023 00:39:31 -0700
Message-ID: <32eadc5b-bb39-5bb1-f124-44feead97ce9@linux.intel.com>
Date: Thu, 20 Jul 2023 15:39:27 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Cc: baolu.lu@linux.intel.com, Alex Williamson <alex.williamson@redhat.com>
Subject: Re: [PATCH 03/10] iommu: Add generic_single_device_group()
Content-Language: en-US
To: Jason Gunthorpe <jgg@nvidia.com>,
 Baolin Wang <baolin.wang@linux.alibaba.com>,
 David Woodhouse <dwmw2@infradead.org>, Heiko Stuebner <heiko@sntech.de>,
 iommu@lists.linux.dev, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Joerg Roedel <joro@8bytes.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev,
 Orson Zhai <orsonzhai@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai <wens@csie.org>,
 Will Deacon <will@kernel.org>, Chunyan Zhang <zhang.lyra@gmail.com>
References: <3-v1-3c8177327a47+256-iommu_group_locking_jgg@nvidia.com>
From: Baolu Lu <baolu.lu@linux.intel.com>
In-Reply-To: <3-v1-3c8177327a47+256-iommu_group_locking_jgg@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230720_003938_966828_68836507 
X-CRM114-Status: GOOD (  25.82  )
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

On 2023/7/19 3:05, Jason Gunthorpe wrote:
> This implements the common pattern seen in drivers of a single
> iommu_group for the entire iommu driver. Implement this in core code
> so the drivers that want this can select it from their ops.
> 
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> ---
>   drivers/iommu/iommu.c | 25 +++++++++++++++++++++++++
>   include/linux/iommu.h |  3 +++
>   2 files changed, 28 insertions(+)
> 
> diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
> index 9e41ad4e3219b6..1e0c5d9a0370fb 100644
> --- a/drivers/iommu/iommu.c
> +++ b/drivers/iommu/iommu.c
> @@ -289,6 +289,9 @@ void iommu_device_unregister(struct iommu_device *iommu)
>   	spin_lock(&iommu_device_lock);
>   	list_del(&iommu->list);
>   	spin_unlock(&iommu_device_lock);
> +
> +	/* Pairs with the alloc in generic_single_device_group() */
> +	iommu_group_put(iommu->singleton_group);
>   }
>   EXPORT_SYMBOL_GPL(iommu_device_unregister);
>   
> @@ -1595,6 +1598,28 @@ struct iommu_group *generic_device_group(struct device *dev)
>   }
>   EXPORT_SYMBOL_GPL(generic_device_group);
>   
> +/*
> + * Generic device_group call-back function. It just allocates one
> + * iommu-group per iommu driver.
> + */
> +struct iommu_group *generic_single_device_group(struct device *dev)
> +{
> +	struct iommu_device *iommu = dev->iommu->iommu_dev;
> +
> +	lockdep_assert_held(&dev_iommu_group_lock);
> +
> +	if (!iommu->singleton_group) {
> +		struct iommu_group *group;
> +
> +		group = iommu_group_alloc();
> +		if (IS_ERR(group))
> +			return group;
> +		iommu->singleton_group = group;
> +	}
> +	return iommu_group_ref_get(iommu->singleton_group);
> +}
> +EXPORT_SYMBOL_GPL(generic_single_device_group);

When allocating the singleton group for the first time, the group's
refcount is taken twice. This can cause memory leaks even after calling
iommu_device_unregister(). Perhaps it can be adjusted as follows?

struct iommu_group *generic_single_device_group(struct device *dev)
{
         struct iommu_device *iommu = dev->iommu->iommu_dev;
         struct iommu_group *group;

         lockdep_assert_held(&dev_iommu_group_lock);

         if (iommu->singleton_group)
                 return iommu_group_ref_get(iommu->singleton_group);

         group = iommu_group_alloc();
         if (!IS_ERR(group))
                 iommu->singleton_group = group;

         return group;
}

> +
>   /*
>    * Use standard PCI bus topology, isolation features, and DMA alias quirks
>    * to find or create an IOMMU group for a device.
> diff --git a/include/linux/iommu.h b/include/linux/iommu.h
> index b1dcb1b9b17040..f1e18e81fca78b 100644
> --- a/include/linux/iommu.h
> +++ b/include/linux/iommu.h
> @@ -361,6 +361,7 @@ struct iommu_domain_ops {
>    * @list: Used by the iommu-core to keep a list of registered iommus
>    * @ops: iommu-ops for talking to this iommu
>    * @dev: struct device for sysfs handling
> + * @singleton_group: Used internally for drivers that have only one group
>    * @max_pasids: number of supported PASIDs
>    */
>   struct iommu_device {
> @@ -368,6 +369,7 @@ struct iommu_device {
>   	const struct iommu_ops *ops;
>   	struct fwnode_handle *fwnode;
>   	struct device *dev;
> +	struct iommu_group *singleton_group;
>   	u32 max_pasids;
>   };
>   
> @@ -640,6 +642,7 @@ extern struct iommu_group *pci_device_group(struct device *dev);
>   extern struct iommu_group *generic_device_group(struct device *dev);
>   /* FSL-MC device grouping function */
>   struct iommu_group *fsl_mc_device_group(struct device *dev);
> +extern struct iommu_group *generic_single_device_group(struct device *dev);

"extern" is not necessary.

>   
>   /**
>    * struct iommu_fwspec - per-device IOMMU instance data

Best regards,
baolu

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
