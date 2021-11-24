Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD992C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Nov 2021 10:36:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=frYLOwtLZKEAteLti4A9n5gOQmbkhnYEb6zXPhJ1ks4=; b=j0mNNDunlhootL
	ybggKJQcV0Kf91u82BBI9pNiplqATWhGC6scSaH3nIMhGm+1l5284xXap0guLzR47LAZz397debwu
	OiC5YkLozF3VN/kMYUUAR/UtAucnrrk37Nvqi39yzqLB/n3y8zCRLbRE1wGWksqOm7Zsm4OBjVU8g
	q7GdDeBGQ9bSl7CMoAkSXuBPpEF0fGuSss5rt/HngonpgdHaNLLA3cQeWC5f5maM1s4HXs8ADZW1K
	GKd07xuU4tuqDXlD5m+fzY1nkSnY1novvirVbcGy0olK6x7hwNX9ElMjeXFQ1qZqVpRyi14F/EF/O
	2Mrg1rSSO5K1L5nfr8cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mppdC-004UwC-1Y; Wed, 24 Nov 2021 10:36:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mppcz-004Uu2-T3; Wed, 24 Nov 2021 10:35:51 +0000
Received: from ip5f5b2004.dynamic.kabel-deutschland.de ([95.91.32.4]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mppcu-0004vP-Bj; Wed, 24 Nov 2021 11:35:44 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 Alex Bee <knaerzche@gmail.com>
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Alex Bee <knaerzche@gmail.com>
Subject: Re: [PATCH] iommu/rockchip: Fix PAGE_DESC_HI_MASKs for RK3568
Date: Wed, 24 Nov 2021 11:35:43 +0100
Message-ID: <2895944.ZOkXcVNkQQ@diego>
In-Reply-To: <20211124021325.858139-1-knaerzche@gmail.com>
References: <20211124021325.858139-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211124_023549_977273_7A5AEE23 
X-CRM114-Status: GOOD (  23.87  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Am Mittwoch, 24. November 2021, 03:13:25 CET schrieb Alex Bee:
> With the submission of iommu driver for RK3568 a subtle bug was
> introduced: PAGE_DESC_HI_MASK1 and PAGE_DESC_HI_MASK2 have to be
> the other way arround - that leads to random errors, especially when
> addresses beyond 32 bit are used.
> 
> Fix it.
> 
> Fixes: c55356c534aa ("iommu: rockchip: Add support for iommu v2")
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> ---
> 
> I've found this bug, when testing the recent VOP2 submission, which is
> the first perpherial which uses iommu for RK356x. I could use it on my
> quartz64 8GB board only, when limiting the available memory to less 4GB.
> 
> This patch fixes it.
> 
>  drivers/iommu/rockchip-iommu.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
> index 5cb260820eda..7f23ad61c094 100644
> --- a/drivers/iommu/rockchip-iommu.c
> +++ b/drivers/iommu/rockchip-iommu.c
> @@ -200,8 +200,8 @@ static inline phys_addr_t rk_dte_pt_address(u32 dte)
>  #define DTE_HI_MASK2	GENMASK(7, 4)
>  #define DTE_HI_SHIFT1	24 /* shift bit 8 to bit 32 */
>  #define DTE_HI_SHIFT2	32 /* shift bit 4 to bit 36 */
> -#define PAGE_DESC_HI_MASK1	GENMASK_ULL(39, 36)
> -#define PAGE_DESC_HI_MASK2	GENMASK_ULL(35, 32)
> +#define PAGE_DESC_HI_MASK1	GENMASK_ULL(35, 32)
> +#define PAGE_DESC_HI_MASK2	GENMASK_ULL(39, 36)

With this change the PAGE_DESC_HI_MASK* now match the other
constants above them in what bits they access, so

Reviewed-by: Heiko Stuebner <heiko@sntech.de>





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
