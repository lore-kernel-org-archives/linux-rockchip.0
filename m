Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24821C4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Apr 2024 10:36:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BqxdVK2Qyl3mfTOw0M/a06wjrGqzsYpI/EghsauJRwU=; b=eFTQYLK5z26uIG
	i81diK8F0kdisL+lFAA/4qbpqxyzqX4+ZgV0AFdTWzmRahCg43Mab9L5+gcLIcS0/SwYjZt05guFH
	5cxy4p0Zg/9EjQTNPzwW+1meHeW8Xu/h0I/61acNmCcspJpgVywA5mA/RY4C+J1EqnjXU62L6JiuJ
	NDCG2YmetWPDkwMgF4RQKI70wokWxyLs1H7QE6ysPAlrQanfWwGXGdc6q3JyjQDR52OTjfzIObmko
	O6cCwHM+Us33nsuISFWCOWgRwmHEoAF7NDbD1Zygzo00X/Pl85tInVbw2JRMkgCmOP/ISQ8X8gUet
	LS2/1J3XekY1I5FOavPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzwSQ-00000007rBc-1bqR;
	Thu, 25 Apr 2024 10:36:02 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzwSM-00000007rAK-2uTX;
	Thu, 25 Apr 2024 10:35:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C87EE1007;
	Thu, 25 Apr 2024 03:36:23 -0700 (PDT)
Received: from [10.1.196.40] (e121345-lin.cambridge.arm.com [10.1.196.40])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 91E6E3F64C;
	Thu, 25 Apr 2024 03:35:54 -0700 (PDT)
Message-ID: <473f2b61-9015-481a-b231-b642f6c7be41@arm.com>
Date: Thu, 25 Apr 2024 11:35:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] iommu/rockchip: Add missing check for
 of_find_device_by_node
To: Chen Ni <nichen@iscas.ac.cn>, joro@8bytes.org, will@kernel.org,
 heiko@sntech.de, jeffy.chen@rock-chips.com
Cc: iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240425091813.965003-1-nichen@iscas.ac.cn>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <20240425091813.965003-1-nichen@iscas.ac.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_033558_812617_61FC6CF5 
X-CRM114-Status: GOOD (  16.07  )
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

On 25/04/2024 10:18 am, Chen Ni wrote:
> Add check for the return value of of_find_device_by_node() and return
> the error if it fails in order to avoid NULL pointer dereference.

How would it return NULL?

Or to put it another way, if a device has somehow vanished without 
unbinding its driver or unregistering the iommu_ops through which this 
is called, then the kernel state is clearly so broken that crashing is 
probably the safest thing to do. Furthermore if we couldn't assume we 
have the right device here then we also couldn't assume that its drvdata 
points to the right thing either, so we'd be rather stuck.

Thanks,
Robin.

> Fixes: 5fd577c3eac3 ("iommu/rockchip: Use OF_IOMMU to attach devices automatically")
> Signed-off-by: Chen Ni <nichen@iscas.ac.cn>
> ---
>   drivers/iommu/rockchip-iommu.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
> index 4b369419b32c..1225c1df6ef6 100644
> --- a/drivers/iommu/rockchip-iommu.c
> +++ b/drivers/iommu/rockchip-iommu.c
> @@ -1152,6 +1152,8 @@ static int rk_iommu_of_xlate(struct device *dev,
>   		return -ENOMEM;
>   
>   	iommu_dev = of_find_device_by_node(args->np);
> +	if (!iommu_dev)
> +		return -ENODEV;
>   
>   	data->iommu = platform_get_drvdata(iommu_dev);
>   	data->iommu->domain = &rk_identity_domain;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
