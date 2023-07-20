Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F4AFEB64DC
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jul 2023 09:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DJuwn4PJrsismDFmvz/xNlvSBjTlflHhSLz0puViw1A=; b=VdkDXNjXNde3/u
	uAJ4VrDTYSubiRHwfYiozwohu21pZ0aBob9Nu593wniuCaYcx6Nc0CAEty2pCw6ZmeJUYbUt4udFp
	Cjh4KzZsbgH9w7RUryHJaBE7TspN68QtDNyxtynpsqjWmxaBD+H2bntVcFrpZUWqa5eOf0Ii1dBW4
	KOIWlTJe6qan9MkHVWB3Zm3NSzBv3P2HEPrVk9dKY3yiPifoHV71HpTRlLrJrd9+Yo87tAiUOdB4C
	AEs5o+zlZeONgZO+OhGtjiQnZmCvJJI1IYexwkEnV3s9mU9rLfQ8CLMXujTaGGpKcZQL9hw5T9/DF
	R5aTsjj+40UZ+fEBSJ2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qMQNz-00AcCH-2J;
	Thu, 20 Jul 2023 09:55:51 +0000
Received: from mga06b.intel.com ([134.134.136.31] helo=mga06.intel.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qMQNw-00AcA9-0e;
	Thu, 20 Jul 2023 09:55:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1689846948; x=1721382948;
  h=message-id:date:mime-version:cc:subject:to:references:
   from:in-reply-to:content-transfer-encoding;
  bh=exBOpl1Ubj/aUVKReDg2pFkUeY2g+echAWrj39l6FvA=;
  b=C+oew/Zv6MC1d3TagraFsITAgw2Qp8F7fUMYHqyl1c4xJ175xe41sOMn
   5CGf0iSH9Xh1zVUkQB4mjEll0xzjKounZeDtYKtPGz//OJjQLFYjIXOG7
   jcKmx+QGF0K2wF3T0BwAxMwB2tptLAMQbxOaRomrXZ2U7DTeFMbI5T4IM
   CXQOGYnLcup+5kIXzVG7hj6qgfTkUQ35n4Hi5C7JFpXwYihmAFjM3ANl+
   QhTg3Emo4KKyqcfbF7fMR4WEuWh0d31khYQXPEfn2jCIwAQ94LO8dcnS4
   LYsoSXKF3DOKGEJzdfyKVaSErBsNYPa0Q2PzguNq8QG4abXNZoieoAgSr
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="430456924"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; 
   d="scan'208";a="430456924"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Jul 2023 02:55:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="724329491"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; 
   d="scan'208";a="724329491"
Received: from kechengh-mobl.gar.corp.intel.com (HELO [10.252.191.109]) ([10.252.191.109])
  by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Jul 2023 02:55:40 -0700
Message-ID: <a64b95e8-435d-0659-449a-74a64a659fa7@linux.intel.com>
Date: Thu, 20 Jul 2023 17:55:36 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Cc: baolu.lu@linux.intel.com, Alex Williamson <alex.williamson@redhat.com>
Subject: Re: [PATCH 09/10] iommu: Complete the locking for dev->iommu_group
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
References: <9-v1-3c8177327a47+256-iommu_group_locking_jgg@nvidia.com>
From: Baolu Lu <baolu.lu@linux.intel.com>
In-Reply-To: <9-v1-3c8177327a47+256-iommu_group_locking_jgg@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230720_025548_277621_CC38323E 
X-CRM114-Status: GOOD (  21.67  )
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
> Revise the locking for dev->iommu_group so that it has three safe ways to
> access it:
> 
>   - It is read by a probe'd device driver. So long as a device driver is
>     probed the dev->iommu_group will be guaranteed stable without further
>     locking.
> 
>   - Read under the device_lock(), this primarily protects against
>     parallel probe of the same device, and parallel probe/remove
> 
>   - Read/Write under the global dev_iommu_group_lock. This is used during
>     probe time discovery of groups. Device drivers will scan unlocked
>     portions of the device tree to locate an already existing group. These
>     scans can access the dev->iommu_group under the global lock to single
>     thread determining and installing the group. This ensures that groups
>     are reliably formed.
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
> Signed-off-by: Jason Gunthorpe<jgg@nvidia.com>

Reviewed-by: Lu Baolu <baolu.lu@linux.intel.com>

Best regards,
baolu

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
