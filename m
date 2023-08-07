Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEC04C001B0
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Aug 2023 12:54:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l6IeDa3YBt9yoKw0ptYnhELrIYIGWsrboKWpPVattaY=; b=iLIBSC4jKdO7Ag
	y6bXRMTODS7Qc93UIa5Xgfe0+Yiuo3Gx9xpGX5DavOf5OSMhaUwRmxViwpVbEKUKfPHlbzdoOi709
	fYOeasZASO0cX9l5EMsBCrlkd4KvFxz3Ai4k9JrykZC2mY0xoddQqQF5J/kqHXOA75UajagNINC1z
	7GKc37sYMW3FQeARqatJQhR77x+6MBfud/vNyeYgIr29Nuk0zHgWCS/C0av7pjfouuPlmMcqqRqBl
	IFK2vbIiMZgd3dkBB5lwloExmtk9gF0jf3ptGFiCGcWOKaz3/fquJi1OuhHqKuke7+68OsHBZbaym
	vnicp0yk7D4rX27hbc9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qSzkh-00HHOQ-0z;
	Mon, 07 Aug 2023 12:54:27 +0000
Received: from mail.8bytes.org ([85.214.250.239])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qSzke-00HHNV-0i;
	Mon, 07 Aug 2023 12:54:25 +0000
Received: from 8bytes.org (pd9fe94eb.dip0.t-ipconnect.de [217.254.148.235])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.8bytes.org (Postfix) with ESMTPSA id 25DD82802BA;
	Mon,  7 Aug 2023 14:54:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=8bytes.org;
	s=default; t=1691412862;
	bh=RCZynHVqfbeOZx3jI34/l35dFAKb3CMwoa3BIreKS+c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DGr8F9B0aS0Et/yMiDok+a8BBdIJfQJn8IvZaZMcTGkw+80JeIT0I+QJZShTmdlSh
	 8tG7+BVV/DRwccyatKUTqLDtDIs9X3QPYTXREWYPmi28Kb9d001zxoJdww1erlf4U/
	 A8GVyxh+0LEVblFHoVEubpXv8e/o7mHiTeZpKpcd7LoZWXdb7mycb7IjKyY05tyKTz
	 XEotNQ/1tcFFJ+G6x5Ps9Nv/XP7gFoDomSt/QgrD/obEehtDBpki3mNuHDKSr9ogSI
	 QP1Z3xiAKhzAlgmyVImuMYK0LWNeKdXleI9W0R2jkS4KXKNiMA8W9ZNqNnq3NPpWtI
	 kXrWS4M4fQofA==
Date: Mon, 7 Aug 2023 14:54:20 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: Baolin Wang <baolin.wang@linux.alibaba.com>,
	David Woodhouse <dwmw2@infradead.org>,
	Heiko Stuebner <heiko@sntech.de>, iommu@lists.linux.dev,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev,
	Orson Zhai <orsonzhai@gmail.com>,
	Robin Murphy <robin.murphy@arm.com>,
	Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai <wens@csie.org>,
	Will Deacon <will@kernel.org>, Chunyan Zhang <zhang.lyra@gmail.com>,
	Alex Williamson <alex.williamson@redhat.com>,
	Lu Baolu <baolu.lu@linux.intel.com>
Subject: Re: [PATCH v2 00/10] Refine the locking for dev->iommu_group
Message-ID: <ZNDpfCoeFxA56ZlU@8bytes.org>
References: <0-v2-b0417f84403e+11f-iommu_group_locking_jgg@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0-v2-b0417f84403e+11f-iommu_group_locking_jgg@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230807_055424_485235_979D8299 
X-CRM114-Status: GOOD (  10.57  )
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

On Mon, Jul 31, 2023 at 02:50:23PM -0300, Jason Gunthorpe wrote:
> Jason Gunthorpe (10):
>   iommu: Remove useless group refcounting
>   iommu: Add a lockdep assertion for remaining dev->iommu_group reads
>   iommu: Add generic_single_device_group()
>   iommu/sun50i: Convert to generic_single_device_group()
>   iommu/sprd: Convert to generic_single_device_group()
>   iommu/rockchip: Convert to generic_single_device_group()
>   iommu/ipmmu-vmsa: Convert to generic_single_device_group()
>   iommu/omap: Convert to generic_single_device_group()
>   iommu: Complete the locking for dev->iommu_group
>   iommu/intel: Fix missing locking for show_device_domain_translation()
> 
>  drivers/iommu/intel/debugfs.c  |  34 ++++----
>  drivers/iommu/iommu.c          | 155 +++++++++++++++++++++------------
>  drivers/iommu/ipmmu-vmsa.c     |  22 ++---
>  drivers/iommu/omap-iommu.c     |  30 +------
>  drivers/iommu/omap-iommu.h     |   2 +-
>  drivers/iommu/rockchip-iommu.c |  22 +----
>  drivers/iommu/sprd-iommu.c     |  24 +----
>  drivers/iommu/sun50i-iommu.c   |  29 ++----
>  include/linux/iommu.h          |   3 +
>  9 files changed, 138 insertions(+), 183 deletions(-)

Applied, thanks for the nice cleanup!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
