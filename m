Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B5E7EB64DD
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jul 2023 06:40:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iQ1LXHm1UskaL8HBsBtpDsRPMhxK8z6qGPn2tLG1jB0=; b=xtBUrHZ/92c3rb
	8GpEslywSJA7Pf27Id9nDSyPMFSojksPUrH3zD6kuw1gfo66MU2ohfhb1u8H4R0Ohh5w8IIOiDBUX
	KCo8/gxyqPQsqItJ76wGSgSmrQdSs5bvLtx5O6oYA81Ly2gs5DhkXzpaCwO0XraI1KxshdqULp3k/
	sn19xiWklRVdFyblcEXfvm+cMhRDc/w9B6VbO8F5L9dALJzGGOqi39rhEvHehx7iHtVNmlIzGPCxh
	W1VNJWDS8zUhK4HStVqCPm3WNT37mmruLnMalrl48HRRDnohTRh4982z6+TD2MdPbHAa9JmYE0xnR
	jZZNEKZn8vHAvgRhGmUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qMNKM-009yAu-13;
	Thu, 20 Jul 2023 06:39:54 +0000
Received: from mga09.intel.com ([134.134.136.24])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qMNKJ-009y8y-27;
	Thu, 20 Jul 2023 06:39:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1689835191; x=1721371191;
  h=message-id:date:mime-version:cc:subject:to:references:
   from:in-reply-to:content-transfer-encoding;
  bh=Q2420lO/67HLept/Ynkd6CkJPfVmitWqJ8oLR0JwEpg=;
  b=kG0tsA27ZQPQec0Ge6Ft0Wp4yalYjxpV+HyORpu4XPhVewV2tQo1/XjJ
   4CtyM414DmbKgkF9tuSJA8whdh6BeAn+evq8g3p10SHA9WFH4CZ81bsG9
   ooZ5CXbFGBgiUnSmZbsFPOt1r5YKVque97bJgzYNi3VYuT8LA0hTQ4Fkr
   b5qMC2trAdWdE19jwmlsXVLVw0Ex5I1BxoqgEClqgpEwdQuOQ0ICgf2Z5
   /PO/LBXj4xVSDIkcR26MoA+MVTRfSwtfZUosg9Us3/mwu/mbZ81E0Y8aD
   V79HhdqcsdrcfqJHRWJa4FC6ogIkU16CluTvb8T9od0IIWo2P6HOPyM6v
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="369302168"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; 
   d="scan'208";a="369302168"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Jul 2023 23:33:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="701510991"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; 
   d="scan'208";a="701510991"
Received: from blu2-mobl.ccr.corp.intel.com (HELO [10.252.191.114]) ([10.252.191.114])
  by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Jul 2023 23:33:04 -0700
Message-ID: <ea1d5d22-cf91-de8c-5d31-0959765a56b8@linux.intel.com>
Date: Thu, 20 Jul 2023 14:33:00 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Cc: baolu.lu@linux.intel.com, Alex Williamson <alex.williamson@redhat.com>
Subject: Re: [PATCH 02/10] iommu: Add a lockdep assertion for remaining
 dev->iommu_group reads
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
References: <2-v1-3c8177327a47+256-iommu_group_locking_jgg@nvidia.com>
From: Baolu Lu <baolu.lu@linux.intel.com>
In-Reply-To: <2-v1-3c8177327a47+256-iommu_group_locking_jgg@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230719_233951_741342_9A7089EE 
X-CRM114-Status: GOOD (  11.43  )
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
> The remaining reads are all in functions called under ops->device_group.
> 
> Broadly these functions are walking around the device tree (eg going up
> the PCI bus tree) and are trying to de-duplicate group allocations
> according to their logic.
> 
> Since these functions don't hold any particular per-device locks their
> reads to dev->iommu_group are being locked by the caller's
> iommu_probe_device_lock, and this explains why iommu_probe_device_lock
> needs to be a global lock.
> 
> Rename iommu_probe_device_lock to dev_iommu_group_lock, make it local to
> the module and annotate all the device_group helpers with
> iommu_group_get_locked() that includes a lockdep to indicate that they are
> special.
> 
> Signed-off-by: Jason Gunthorpe<jgg@nvidia.com>

Reviewed-by: Lu Baolu <baolu.lu@linux.intel.com>

Best regards,
baolu

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
