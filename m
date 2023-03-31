Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BF3FC761A6
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Mar 2023 21:49:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V2xViv8SVZ20x3M8jXHu34Le4uXGjCmT6BBkn13TDiY=; b=i2PIMHdqY52yRE
	T/LrPV6hHxzSBXNowppBPcegpLOLvjMnkGUqku/02btMbiAUMg0codHGvIm3p9kGavMxje7r4t0Up
	4uCRPHSDt0A5KwkaT2cEdB1BX3tsyeiTK5U8uthfmknYq/bqtuLA0mWLQML4o7yxd8pU0uhT5yKQd
	e2Pohut+6MbNzYnyXIA2f6md3WkrgXbheRETTeb9ktPRPS7a9csXqb+U1xlyP1VlMklfd6wBoB2lu
	XwQOi0e2SENNBIhxXNRdOj3IiYkxSy3KgoCyTtBBaUwzLeyzipPb8+Hk2Lc54sjaXOR+KweUGcrh6
	hSvnF1FyEsiNsgpPJTDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piMcm-008yiF-22;
	Fri, 31 Mar 2023 21:49:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piMcj-008yfF-0q;
	Fri, 31 Mar 2023 21:49:30 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1piMcK-0006Di-Gz; Fri, 31 Mar 2023 23:49:04 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Joerg Roedel <joro@8bytes.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Steven Price <steven.price@arm.com>
Cc: Steven Price <steven.price@arm.com>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, iommu@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, John Keeping <john@metanate.com>
Subject:  Re: [PATCH v4] iommu/rockchip: Add missing set_platform_dma_ops callback
Date: Fri, 31 Mar 2023 23:49:03 +0200
Message-ID: <2077066.bB369e8A3T@diego>
In-Reply-To: <20230331095154.2671129-1-steven.price@arm.com>
References: <20230331095154.2671129-1-steven.price@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_144929_312003_3A5E84E9 
X-CRM114-Status: GOOD (  11.90  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Freitag, 31. M=E4rz 2023, 11:51:54 CEST schrieb Steven Price:
> Similar to exynos, we need a set_platform_dma_ops() callback for proper
> operation on ARM 32 bit after recent changes in the IOMMU framework
> (detach ops removal). But also the use of a NULL domain is confusing.
> =

> Rework the code to add support for IOMMU_DOMAIN_IDENTITY and a singleton
> rk_identity_domain which is assigned to domain when using an identity
> mapping rather than "detaching". This makes the code easier to reason abo=
ut.
> =

> Signed-off-by: Steven Price <steven.price@arm.com>

My knowledge of IOMMU magic is not that deep. Nevertheless I do believe
to mostly understand the change and the splats on my rk3288-pinky are gone
now with this patch:

Acked-by: Heiko Stuebner <heiko@sntech.de>
Tested-by: Heiko Stuebner <heiko@sntech.de>





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
