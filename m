Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BE34CA101E
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Sep 2024 12:33:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x3LzIG2r2P3y7KvVWTkDYIMxaeCo4wW12Zn6g7R+WGE=; b=jxTdwzFFrzvilW
	Up9p9zd8KHUn/46P3z5GupAjDKAA7wQl9b4p7F6sjTNxUjIacSr1wzaKoluMvboZF0by9m7eSNymH
	4ZbQYg2eGV0Tje4RINejAzOjLZgdVOWcb3sQKTpk/8SqOIm3nlnkqZy2nIUCysIpWZVHgper37+LI
	n0wqPtAwhgLsjdOHOzqzRl8935FxGCLMOE7wgKsoGJUt9EXmJhsooE3B7+lwuxwkhP/KN8HRCklwc
	Nfccedgp2dcWf6vPPzjGdRvzffcymomJAOgxVNFbe8Ze5MD00k1Avo2iFkCBVPvagsD1TJlfqmFB1
	j+DlqkeFjbqg3zS0dyzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skjlR-0000000BcvP-4A3I;
	Sun, 01 Sep 2024 12:33:05 +0000
Received: from mgamail.intel.com ([192.198.163.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skjXB-0000000BXNl-095p;
	Sun, 01 Sep 2024 12:18:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1725193101; x=1756729101;
  h=message-id:date:mime-version:cc:subject:to:references:
   from:in-reply-to:content-transfer-encoding;
  bh=7/QB0KtM8B4HpCGa2zOGQwulKoPIrKDzA21NTiK6nDQ=;
  b=mfuRtzq11QB+5UiJCDtP94j8IYE8BY704pchQAc8f29qmSI1JQ1B0M/e
   EiHk/6Wg+0i78/m85xIszDvmKh2Dn1uhR/vvCcBILj4yR3lgqePVWBukT
   5bH4zrylgndL2qaA47WNb+vvyEc9LUW3gqXXj3+TU5TaT3kMli814EvEK
   3EfOvxi+wd2JSc/UXPcPKtW+eZAjg5urDEVLyxQ4OLMFUNgZWCCYEqx5K
   01/66T1c4w56IW6nq4wjfSUbTtJL7Yf33pw6axdZmBQpc3sAPqQ5c2CRF
   5EcR7jFbKwZlOBWqpUdGz//nqkdk2bOcfQSGXPc3528oTxXhvkPS/nRmR
   Q==;
X-CSE-ConnectionGUID: tV7LeM3wQcKo5AqSG9Hbjg==
X-CSE-MsgGUID: 0EkTfVZlREyCKKnGZRVVqw==
X-IronPort-AV: E=McAfee;i="6700,10204,11181"; a="27655072"
X-IronPort-AV: E=Sophos;i="6.10,193,1719903600"; 
   d="scan'208";a="27655072"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Sep 2024 05:18:21 -0700
X-CSE-ConnectionGUID: g8VwmCVNS2+7h8Z4f5k2qg==
X-CSE-MsgGUID: AfsLNis4Qr+b2Wrpi+N8nQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,193,1719903600"; 
   d="scan'208";a="64699177"
Received: from blu2-mobl.ccr.corp.intel.com (HELO [10.124.240.228]) ([10.124.240.228])
  by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Sep 2024 05:18:14 -0700
Message-ID: <fd0257de-ce1a-40f3-a0b6-2f0c7dcee896@linux.intel.com>
Date: Sun, 1 Sep 2024 20:18:11 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: baolu.lu@linux.intel.com, Karol Herbst <kherbst@redhat.com>,
 Lyude Paul <lyude@redhat.com>, Danilo Krummrich <dakr@redhat.com>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Jonathan Hunter <jonathanh@nvidia.com>, Sandy Huang <hjc@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Mikko Perttunen <mperttunen@nvidia.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>,
 dri-devel@lists.freedesktop.org, nouveau@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org,
 iommu@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] drm/tegra: Remove call to iommu_domain_alloc()
To: Thierry Reding <thierry.reding@gmail.com>
References: <20240812071034.9443-1-baolu.lu@linux.intel.com>
 <20240812071034.9443-3-baolu.lu@linux.intel.com>
 <qyvyd2ftebjlgmzyayfvxsqa64c4wgx7keix3a6eexdspbvawy@a5ffnm5h5tgp>
Content-Language: en-US
From: Baolu Lu <baolu.lu@linux.intel.com>
In-Reply-To: <qyvyd2ftebjlgmzyayfvxsqa64c4wgx7keix3a6eexdspbvawy@a5ffnm5h5tgp>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240901_051821_151462_8CFDD2E2 
X-CRM114-Status: GOOD (  21.41  )
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

On 2024/8/28 23:27, Thierry Reding wrote:
> On Mon, Aug 12, 2024 at 03:10:34PM GMT, Lu Baolu wrote:
>> Commit <17de3f5fdd35> ("iommu: Retire bus ops") removes iommu ops from
>> the bus structure. The iommu subsystem no longer relies on bus for
>> operations. So iommu_domain_alloc() interface is no longer relevant.
>>
>> Normally, iommu_paging_domain_alloc() could be a replacement for
>> iommu_domain_alloc() if the caller has the right device for IOMMU API
>> use. Unfortunately, this is not the case for this driver.
>>
>> Iterate the devices on the platform bus and find a suitable device
>> whose device DMA is translated by an IOMMU. Then use this device to
>> allocate an iommu domain. The iommu subsystem prevents domains
>> allocated by one iommu driver from being attached to devices managed
>> by any different iommu driver.
>>
>> Signed-off-by: Lu Baolu<baolu.lu@linux.intel.com>
>> Link:https://lore.kernel.org/r/20240610085555.88197-20-baolu.lu@linux.intel.com
>> ---
>>   drivers/gpu/drm/tegra/drm.c | 34 +++++++++++++++++++++++++---------
>>   1 file changed, 25 insertions(+), 9 deletions(-)
> Actually I think we can just do something like this:
> 
> --- >8 ---
> diff --git a/drivers/gpu/drm/tegra/drm.c b/drivers/gpu/drm/tegra/drm.c
> index d9f0728c3afd..d35e411d536b 100644
> --- a/drivers/gpu/drm/tegra/drm.c
> +++ b/drivers/gpu/drm/tegra/drm.c
> @@ -1150,7 +1150,7 @@ static int host1x_drm_probe(struct host1x_device *dev)
>   	}
>   
>   	if (host1x_drm_wants_iommu(dev) && iommu_present(&platform_bus_type)) {
> -		tegra->domain = iommu_domain_alloc(&platform_bus_type);
> +		tegra->domain = iommu_paging_domain_alloc(dev->dev.parent);
>   		if (!tegra->domain) {
>   			err = -ENOMEM;
>   			goto free;
> --- >8 ---
> 
> That refers to the physical device that the host1x_device virtual device
> was instantiated from and is a common parent to all physical devices
> that are part of the virtual device.

Yes, this is really what we want. I will update the patch series later.

Thanks,
baolu

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
