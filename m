Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03554EB64DD
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jul 2023 14:18:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OvADdNaR3crCXJG4ebEpSJecDgJzKlOGTURk65QA9mU=; b=oyU/9phpROPXwE
	vXCJQenQwRFA4ysQWSIRBnxokoWRzWl8JEX+vC9hS8g4lNxPRoa1YhIRXy+bQIZCp6PeO1wuJhiyf
	n+2oqLkZwe4EBnhTzVmT+x9E+IP9I4V8AYGzs7Pvp57Izx1KJUndtX2yS6K/iQ2wXgfUaK8qMNxln
	6LQiziMHjGnUB0Bl+sn2J4JXuYNuVswO+/Pada8g/h+pNi7bqiJIPW0I3tLKZhai+EaDuZ1H4+uCV
	GMwxQtLf8LQzkVZZTgrMITPg7pkMBhP01hMl3sWaCzP6kyY7kNVieDUTO5XQJgJ2mdH3ios/0J6fc
	dFG4inqtpBqVCuAtEhDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qMUUB-00BMoY-1p;
	Thu, 20 Jul 2023 14:18:31 +0000
Received: from mga09.intel.com ([134.134.136.24])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qMUU8-00BMnQ-1D;
	Thu, 20 Jul 2023 14:18:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1689862708; x=1721398708;
  h=message-id:date:mime-version:cc:subject:to:references:
   from:in-reply-to:content-transfer-encoding;
  bh=BFG+lxSO1zBFfL9o8M5wrEKd1L4tJiPtfHsH/2e/ZoQ=;
  b=ivdWZPDRfj2LDHbw5IiIckVVrwK+kBM9otGgQnmqOJ9ZtTxV+nYpDHzw
   tI6mq0xM6eNSkxRxKXafHIOwZbvUheqFD/hIn2Hv8jR6zCo4cKK9tbZjy
   cWLnQL/Nq9Xcv5a8XHxy3FLtMSzTDMKx5Vbuv6+GqFR1nkmoHMbrKEw8j
   /z2vqqNrQI9xd6dqZ5DI5vgYKRTZtaq8F0YLWbtWBzJ59mqcndpf+HIE1
   uxYUe2rhmzg6E/uTOdc+O5VG6pDinfdxe4vWsIkzkcHAQa7dXzawY9CBf
   4q0k2cT/XTvgz2/BBfOrd4NS6STU9By/Ov4OaQxf909WM6LhAwZ0K5Vjo
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="369414759"
X-IronPort-AV: E=Sophos;i="6.01,219,1684825200"; 
   d="scan'208";a="369414759"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Jul 2023 07:02:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="674703327"
X-IronPort-AV: E=Sophos;i="6.01,219,1684825200"; 
   d="scan'208";a="674703327"
Received: from hli37-mobl.amr.corp.intel.com (HELO [10.252.191.120]) ([10.252.191.120])
  by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Jul 2023 07:01:58 -0700
Message-ID: <c98c37bb-57c5-faec-1d17-730f3ceb2b21@linux.intel.com>
Date: Thu, 20 Jul 2023 22:01:54 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Cc: baolu.lu@linux.intel.com, Baolin Wang <baolin.wang@linux.alibaba.com>,
 David Woodhouse <dwmw2@infradead.org>, Heiko Stuebner <heiko@sntech.de>,
 iommu@lists.linux.dev, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Joerg Roedel <joro@8bytes.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev,
 Orson Zhai <orsonzhai@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai <wens@csie.org>,
 Will Deacon <will@kernel.org>, Chunyan Zhang <zhang.lyra@gmail.com>,
 Alex Williamson <alex.williamson@redhat.com>
Subject: Re: [PATCH 03/10] iommu: Add generic_single_device_group()
To: Jason Gunthorpe <jgg@nvidia.com>
References: <3-v1-3c8177327a47+256-iommu_group_locking_jgg@nvidia.com>
 <32eadc5b-bb39-5bb1-f124-44feead97ce9@linux.intel.com>
 <ZLkiu7IyimCckiFs@nvidia.com>
Content-Language: en-US
From: Baolu Lu <baolu.lu@linux.intel.com>
In-Reply-To: <ZLkiu7IyimCckiFs@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230720_071828_548416_B34911CF 
X-CRM114-Status: GOOD (  18.95  )
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

On 2023/7/20 20:04, Jason Gunthorpe wrote:
> On Thu, Jul 20, 2023 at 03:39:27PM +0800, Baolu Lu wrote:
>> On 2023/7/19 3:05, Jason Gunthorpe wrote:
>>> This implements the common pattern seen in drivers of a single
>>> iommu_group for the entire iommu driver. Implement this in core code
>>> so the drivers that want this can select it from their ops.
>>>
>>> Signed-off-by: Jason Gunthorpe<jgg@nvidia.com>
>>> ---
>>>    drivers/iommu/iommu.c | 25 +++++++++++++++++++++++++
>>>    include/linux/iommu.h |  3 +++
>>>    2 files changed, 28 insertions(+)
>>>
>>> diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
>>> index 9e41ad4e3219b6..1e0c5d9a0370fb 100644
>>> --- a/drivers/iommu/iommu.c
>>> +++ b/drivers/iommu/iommu.c
>>> @@ -289,6 +289,9 @@ void iommu_device_unregister(struct iommu_device *iommu)
>>>    	spin_lock(&iommu_device_lock);
>>>    	list_del(&iommu->list);
>>>    	spin_unlock(&iommu_device_lock);
>>> +
>>> +	/* Pairs with the alloc in generic_single_device_group() */
>>> +	iommu_group_put(iommu->singleton_group);
>>>    }
>>>    EXPORT_SYMBOL_GPL(iommu_device_unregister);
>>> @@ -1595,6 +1598,28 @@ struct iommu_group *generic_device_group(struct device *dev)
>>>    }
>>>    EXPORT_SYMBOL_GPL(generic_device_group);
>>> +/*
>>> + * Generic device_group call-back function. It just allocates one
>>> + * iommu-group per iommu driver.
>>> + */
>>> +struct iommu_group *generic_single_device_group(struct device *dev)
>>> +{
>>> +	struct iommu_device *iommu = dev->iommu->iommu_dev;
>>> +
>>> +	lockdep_assert_held(&dev_iommu_group_lock);
>>> +
>>> +	if (!iommu->singleton_group) {
>>> +		struct iommu_group *group;
>>> +
>>> +		group = iommu_group_alloc();
>>> +		if (IS_ERR(group))
>>> +			return group;
>>> +		iommu->singleton_group = group;
>>> +	}
>>> +	return iommu_group_ref_get(iommu->singleton_group);
>>> +}
>>> +EXPORT_SYMBOL_GPL(generic_single_device_group);
>> When allocating the singleton group for the first time, the group's
>> refcount is taken twice.
> Yes, that is correct.
> 
> The refcount from alloc belongs to iommu->singleton_group and the
> pair'd put is here:
> 
> @@ -289,6 +289,9 @@ void iommu_device_unregister(struct iommu_device *iommu)
>   	spin_lock(&iommu_device_lock);
>   	list_del(&iommu->list);
>   	spin_unlock(&iommu_device_lock);
> +
> +	/* Pairs with the alloc in generic_single_device_group() */
> +	iommu_group_put(iommu->singleton_group);
>   }
> 
> The refcount from iommu_group_ref_get() belongs to the caller and the
> caller must have a paired put.

Oh, yes! The extra reference counter is paired with above put.

Thanks for the explanation.

Then, another small comment:

iommu->singleton_group will be freed with above put, right? Do you need
to set iommu->singleton_group to NULL? Given that iommu_device is not
freed here.

Best regards,
baolu


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
