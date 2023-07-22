Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7751EB64DA
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Jul 2023 14:02:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SlQYoX+MBqtqvvMZxRB/97lKaJlM8MTFgj5wA8nz7QU=; b=uZjyyeg50cq39x
	T44+QRAZWx8NcIEn+VZgSJZ7MReV/yJi7yTlPZ7NY2Aelj3otk77BuMsrOhkvzeJe1DP4R0ccI9jC
	SUNoRfpI2+lKBhrtbQ+2DNcqL8pf3cWwLjiA6T+uavsmIIZEukyhAjdkdQPHpbc+TOpUrgeq82wpx
	OHjIs2KeoK3iX+u2BQtvUUF5EQzAGmeanjXDep9qnMphtdpY9Yt17baMhfGnk+kkvN1oPdT9HDa5f
	BqBkbsvgbBBWL9Dgx/tKDTFiNPjRLdNphG0C/UfaciNNpenlwDOxPXePkEXVqgOVyW/qnNpzJ7cLu
	2hoOWzAIkdG+weM24QVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qNDBS-00Gp2l-1a;
	Sat, 22 Jul 2023 14:02:10 +0000
Received: from mga01.intel.com ([192.55.52.88])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qNDBP-00Gp1Z-23;
	Sat, 22 Jul 2023 14:02:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1690034527; x=1721570527;
  h=message-id:date:mime-version:cc:subject:to:references:
   from:in-reply-to:content-transfer-encoding;
  bh=SqJ+O+atMOXabuGL4Lbq05LADBIKGyitXrMQM1qr5Ho=;
  b=kbQRsmlwzH0Ll4MJ0JkO5wP3pcW1l3VP2xhPTML9wYBdtiYz2rWwGurC
   VWjUi/Ky2UuxsxqWmgv3AgCQ7udZ5R9mN6ejB1/nuXgp75LJ3ajB1Pk7C
   hxD/jB7b492ANxE4Vu8n5LJaGtzAtJsgK/rtJKyKIWR+HZ+TKREe7yu32
   QcwIwILtzZAhWv1jh53SZspu6+FT4oQxV8boLUEsj0iXFTb8/zJEci6y7
   t9+zLKS+1hWMLhClfq+9f3DXvYwo4Ep2/0N1iacOtplbj0Gi/JEDVxQUZ
   0WcuNYiDrXC0YABPjARZ0G9WmpYHBylEh1IyzdyPSGU09bUA454KFJ988
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10779"; a="398090055"
X-IronPort-AV: E=Sophos;i="6.01,224,1684825200"; 
   d="scan'208";a="398090055"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Jul 2023 07:02:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10779"; a="760278822"
X-IronPort-AV: E=Sophos;i="6.01,224,1684825200"; 
   d="scan'208";a="760278822"
Received: from blu2-mobl.ccr.corp.intel.com (HELO [10.249.173.108]) ([10.249.173.108])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Jul 2023 07:02:02 -0700
Message-ID: <218edab7-ea1f-8629-4270-046e8b7c7fcc@linux.intel.com>
Date: Sat, 22 Jul 2023 22:02:00 +0800
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
X-CRM114-CacheID: sfid-20230722_070207_684372_1D363635 
X-CRM114-Status: GOOD (  11.30  )
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
> Signed-off-by: Jason Gunthorpe<jgg@nvidia.com>
> ---
>   drivers/iommu/iommu.c | 25 +++++++++++++++++++++++++
>   include/linux/iommu.h |  3 +++
>   2 files changed, 28 insertions(+)

Reviewed-by: Lu Baolu <baolu.lu@linux.intel.com>

Best regards,
baolu

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
