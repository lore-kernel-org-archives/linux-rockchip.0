Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC2BFC77B61
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Apr 2023 09:51:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kURft8n2UVrfBW8H2FJIHQHz7oFieTV1+ChG2lLEW5g=; b=palCcXaT5L6yp0
	hrzrngXDfecFIddkfHsncyOO0FYdNVFEMaM00/tDwIcJmRJaQ15DoEeWuqcUzJ0qzReuerabllG3Y
	PKEmbACzhVEbRwWH5iFMc/AI1QK+5vOJ9dM7LzchzQqQ3xL1y2BIStOP1ifkgBrfu4XqzZRjXHywn
	Ix/d6LO6aAjkbwiHmHMKAJe9njQLXowLjcVKAx2iRqysCzgIpLwdbAlNqaNZaq6HqoNWhbqHVfX1K
	0tgFTVIgMKjnoCpuet8AqY0BE8201LQGmWQ2fAj3nn4ZK2uw44RZZNzZTtPz5ElI9a6i7MMUJWuIc
	xfb1eGxnI3xdjaLxbRHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmtbt-005gZi-1W;
	Thu, 13 Apr 2023 09:51:21 +0000
Received: from mail.8bytes.org ([2a01:238:42d9:3f00:e505:6202:4f0c:f051])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmtbp-005gY9-0r;
	Thu, 13 Apr 2023 09:51:18 +0000
Received: from 8bytes.org (p200300c27714bc0086ad4f9d2505dd0d.dip0.t-ipconnect.de [IPv6:2003:c2:7714:bc00:86ad:4f9d:2505:dd0d])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.8bytes.org (Postfix) with ESMTPSA id 71441243D2F;
	Thu, 13 Apr 2023 11:51:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=8bytes.org;
	s=default; t=1681379475;
	bh=hfCTNO7CbDHuy5gEZDfgwcU5fyZr8N4+slArZivW3lA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ID/i916x2CZalvNc5f/R6aW8D4x6NJ8nK+/pvuDo6z1OQ6IfGBLDQE3J3V4qprtBi
	 Mo0C6jKS5Mx4BzBtIVmjw6rkQ46iZhO2tzfPr1yzXIG4d1/WC3RF9L1XHCBnXuv5JJ
	 aeNuF50dxQtO7RTIALOV6sH3HPrq7tuMvIV8ujFECRQroYCmCrrF5jrT/i7IEnZqcB
	 XfqUvoT6LWLR2ip/W2NtFTnaLjoI6zxSAmU2V4OjcTyceHTxicIoVYoEuxoRJFSv6d
	 oUvh00qZWZi23XMtaLWojo/ceFIfrLvMl3ElVMG6hSvWq2wqlt6z2xTz7+SBbkWpIN
	 /2mVr58koQU/w==
Date: Thu, 13 Apr 2023 11:51:14 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Steven Price <steven.price@arm.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Jason Gunthorpe <jgg@ziepe.ca>,
	Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
	iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	John Keeping <john@metanate.com>
Subject: Re: [PATCH v4] iommu/rockchip: Add missing set_platform_dma_ops
 callback
Message-ID: <ZDfQkmiPaNalNx2W@8bytes.org>
References: <20230331095154.2671129-1-steven.price@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230331095154.2671129-1-steven.price@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230413_025117_449785_B2562FBF 
X-CRM114-Status: GOOD (  11.97  )
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

On Fri, Mar 31, 2023 at 10:51:54AM +0100, Steven Price wrote:
> Similar to exynos, we need a set_platform_dma_ops() callback for proper
> operation on ARM 32 bit after recent changes in the IOMMU framework
> (detach ops removal). But also the use of a NULL domain is confusing.
> 
> Rework the code to add support for IOMMU_DOMAIN_IDENTITY and a singleton
> rk_identity_domain which is assigned to domain when using an identity
> mapping rather than "detaching". This makes the code easier to reason about.
> 
> Signed-off-by: Steven Price <steven.price@arm.com>
> ---
> Changes since v3[1]:
> 
>  * Added a dummy free callback to rk_identity_ops.
> 
> [1] https://lore.kernel.org/r/20230330144604.2431436-1-steven.price%40arm.com
> 
>  drivers/iommu/rockchip-iommu.c | 61 ++++++++++++++++++++++++++--------
>  1 file changed, 47 insertions(+), 14 deletions(-)

Applied, thanks.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
