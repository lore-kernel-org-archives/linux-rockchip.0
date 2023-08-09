Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5598BEB64DD
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Aug 2023 12:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Cc:References:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+yqHIVwBVGEY0hwf5nA8RARob09VqkdqutWADJM9q+o=; b=02OhHG4VgF0TlF
	uR/86q8+wIqe7Hh3WPstCfsKmmSh3uNH2hwB0vIvJi0j+L/ytpag0unkqcMsD2dpOntP8Jw+iroDF
	t7YJHdCdVoyV/97fs8Bl6RcuTBJrbPvryf139FOkQ9X6beKVTenXVG1iAZIswmlxQuHt1yxhnIkh+
	5I6kAcsLrK0FPkyjHMPfLWEad1pkb+ljsryxZxEYLjm9stzypSe5qwPyhsbeCCtCQWsrIwJ6vAMej
	tlRMPJ/Xj1Axl6NyjYA2s0xS/2UIavrI7sx3+XPyHnoBcBqCRjfbJrQQvmp5HUOuEeCqSkV3raMA8
	TkbpkajKa3anD2JsY1mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qTijH-004wUh-1z;
	Wed, 09 Aug 2023 12:55:59 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qTijD-004wT9-1w;
	Wed, 09 Aug 2023 12:55:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0312F6335A;
	Wed,  9 Aug 2023 12:55:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87560C433C8;
	Wed,  9 Aug 2023 12:55:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691585754;
	bh=0TGWljw2l6/eB/viyhym3AwywMruS5XC4iJu1jmzqZc=;
	h=Date:Subject:To:References:Cc:From:In-Reply-To:From;
	b=AAqI6mguPx7dJ3F2ck7FwGBHB01OfbEsMcEX2pL/sw95I28WavHzg/p6SBg+mjQGK
	 l8MBfS+j9EVkG7PmYN2aIwl59leDKKEHY3t9HOB87OuXdOVIxSwTHY2sUv1Y3MzCwA
	 DTBJAXrt4mdwcfmxh05LmbGyWamD9p8tFW/t5pNOqsmVc4QOWou3GH3opqX+IvGB+O
	 XqTW8fK0Mq4jn3n7LWnEI15p7NKh/e8317BEK1//RMuUDH001nyllPoJk9YylLjTjH
	 UrLdWL5M3ZPbTQoTIT5/7wJLPDYT/xrv61GdVHiY9208nMSRbYeziH6shPSegaoAVg
	 QynX9dlWA2t/A==
Message-ID: <47692e15-3b3d-4d42-91dc-a1bd0f436039@kernel.org>
Date: Wed, 9 Aug 2023 14:55:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 9/10] iommu: Complete the locking for dev->iommu_group
Content-Language: en-US
To: Jason Gunthorpe <jgg@nvidia.com>
References: <9-v2-b0417f84403e+11f-iommu_group_locking_jgg@nvidia.com>
Cc: Joerg Roedel <joro@8bytes.org>, Robin Murphy <robin.murphy@arm.com>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Orson Zhai <orsonzhai@gmail.com>, Chunyan Zhang <zhang.lyra@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, Will Deacon <will@kernel.org>,
 Baolin Wang <baolin.wang@linux.alibaba.com>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 iommu@lists.linux.dev, linux-sunxi@lists.linux.dev,
 Alex Williamson <alex.williamson@redhat.com>,
 Samuel Holland <samuel@sholland.org>, Heiko Stuebner <heiko@sntech.de>
From: Konrad Dybcio <konradybcio@kernel.org>
In-Reply-To: <9-v2-b0417f84403e+11f-iommu_group_locking_jgg@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230809_055555_723263_B96561DD 
X-CRM114-Status: GOOD (  24.75  )
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



On 31.07.2023 19:50, Jason Gunthorpe wrote:
> Revise the locking for dev->iommu_group so that it has three safe ways to
> access it:
> 
>  - It is read by a probe'd device driver. So long as a device driver is
>    probed the dev->iommu_group will be guaranteed stable without further
>    locking.
> 
>  - Read under the device_lock(), this primarily protects against
>    parallel probe of the same device, and parallel probe/remove
> 
>  - Read/Write under the global dev_iommu_group_lock. This is used during
>    probe time discovery of groups. Device drivers will scan unlocked
>    portions of the device tree to locate an already existing group. These
>    scans can access the dev->iommu_group under the global lock to single
>    thread determining and installing the group. This ensures that groups
>    are reliably formed.
> 
> Narrow the scope of the global dev_iommu_group_lock to be only during the
> dev->iommu_group setup, and not for the entire probing.
> 
> Prior patches removed the various races inherent to the probe process by
> consolidating all the work under the group->mutex. In this configuration
> it is fine if two devices race to the group_device step of a new
> iommu_group, the group->mutex locking will ensure the group_device and
> domain setup part remains properly ordered.
> 
> Add the missing locking on the remove paths. For iommu_deinit_device() it
> is necessary to hold the dev_iommu_group_lock due to possible races during
> probe error unwind.
> 
> Fully lock the iommu_group_add/remove_device() path so we can use lockdep
> assertions. Other than lockdep this is redundant, VFIO no-iommu doesn't
> use group clustering.
> 
> For iommu_release_device() it is redundant, as we expect no external
> references to the struct device by this point, but it is harmless so
> add the missing lock to allow lockdep assertions to work.
> 
> This resolves the remarks of the comment in __iommu_probe_device().
> 
> Reviewed-by: Lu Baolu <baolu.lu@linux.intel.com>
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> Reviewed-by: Kevin Tian <kevin.tian@intel.com>
> ---
Hello, this patch breaks booting on at least one Qualcomm platform using
the SMMUv2 driver w/ qcom impl. The board hangs right after SMMU probe.

Reverting it makes the platform boot again.

Konrad

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
