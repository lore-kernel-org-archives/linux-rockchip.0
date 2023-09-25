Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 309D7CE7A89
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Sep 2023 09:53:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0fcTR3gGdClPLotcPv+hoobqhJ7QWFvy6X834TrcqDE=; b=ZGPTlunv0kBEDQ
	qXxnCcteZ0TE8RZv9NCjqshfPTZX/s7x4h6DKQzIpNpUtqL0s61hIypTy672ntBQXzDi5Lj1L/Hnm
	//iGsSpXLsY5ZG0x8xO9xolF4jZIp7lr9EQP9NZDwGD/Zk0JyV099MWlRYwWF/pJihBwlz7uDOrzv
	/m1X/diAUtTbchr0M8OjqkhXrL2Bkg/1QeTcam2KoI82XV2HxgdywBVVU0agNHxQJqbhBzxgE3eyE
	z8/T+No1ukySLeqEuJWMMigbkjp0qv/OW27WG19TNH5H9RliomzOIMn2yj6xKjTx69dG+WqhluATg
	kBy5jFXkGEtsRQlFU3Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qkiHO-00DtOG-3C;
	Mon, 25 Sep 2023 09:53:26 +0000
Received: from mail.8bytes.org ([85.214.250.239])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qkiHL-00DtNX-2E;
	Mon, 25 Sep 2023 09:53:25 +0000
Received: from 8bytes.org (pd9fe9df8.dip0.t-ipconnect.de [217.254.157.248])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.8bytes.org (Postfix) with ESMTPSA id 570451A1EA9;
	Mon, 25 Sep 2023 11:53:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=8bytes.org;
	s=default; t=1695635602;
	bh=iPcKxDgh7uKZSeXFS4UZzWRTdid6JKONVfiiv0MiYUc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FNn2ZSuFZ10pkhmA9CcEJ+VPx9LmV+ml9gXpZuasmDVx7GcpqOnsSIR9cTBl5Nxjo
	 eKAvHbL4VOu4rFaPhAajyxJxYVqTN40yHUwJzi30fWH8zOmwIBPZkkJCX9Jn6HHHdb
	 XckvBZ++gEIYVeOJcMnsu7HqkmPev9bblw1SoRIj0taoq+CrTd7cggcqL55Ju+Q3oE
	 JLZWLdCQM1fmTb5RGZ5Ah9nmCPHPczfz4MSegkThaYKrpJV3yDCydkUYvNOXqI+net
	 ylp37ayhM+EL81UJwGwathmQhH38pSCya+CoOsPb7ulxfGNAYbZyfH5+2HOoeEEh2X
	 pbKAC6DTnIhPA==
Date: Mon, 25 Sep 2023 11:53:21 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: Baolin Wang <baolin.wang@linux.alibaba.com>,
	Heiko Stuebner <heiko@sntech.de>, iommu@lists.linux.dev,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev,
	Orson Zhai <orsonzhai@gmail.com>,
	Robin Murphy <robin.murphy@arm.com>,
	Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai <wens@csie.org>,
	Will Deacon <will@kernel.org>, Chunyan Zhang <zhang.lyra@gmail.com>,
	Lu Baolu <baolu.lu@linux.intel.com>,
	Kevin Tian <kevin.tian@intel.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [PATCH 0/7] Introduce generic_single_device_group()
Message-ID: <ZRFYkYXUXFOpvk_T@8bytes.org>
References: <0-v1-c869a95191f2+5e8-iommu_single_grp_jgg@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0-v1-c869a95191f2+5e8-iommu_single_grp_jgg@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230925_025323_951002_A6044D20 
X-CRM114-Status: UNSURE (   5.84  )
X-CRM114-Notice: Please train this message.
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

On Tue, Aug 22, 2023 at 01:15:55PM -0300, Jason Gunthorpe wrote:
> Jason Gunthorpe (7):
>   iommu: Remove useless group refcounting
>   iommu: Add generic_single_device_group()
>   iommu/sun50i: Convert to generic_single_device_group()
>   iommu/sprd: Convert to generic_single_device_group()
>   iommu/rockchip: Convert to generic_single_device_group()
>   iommu/ipmmu-vmsa: Convert to generic_single_device_group()
>   iommu/omap: Convert to generic_single_device_group()

Applied on-top of the default-domain patch-set, thanks.

It caused some conflicts, but those were easy to resolve.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
