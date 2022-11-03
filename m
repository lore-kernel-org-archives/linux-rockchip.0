Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93975C433FE
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Nov 2022 14:52:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YHz+7qkNlpGtCgf65YcDuFo69CG3S0nssJ4Srxo/nSs=; b=Wv/j4SJHSYdxst
	W+lm597xxTU9PoaUh0LzbUMHQkzvrcVdhSQ6AMAKlx5DLvJglZvdEDunhh3DfwScAvJCvJiBV0K4P
	E16KBkbp7NF3ttcjKpM/8WfcXKGRp89V1RyLbe6tXTTx2lIUC5XC29K64ZyTLQ110XidNi0zKYpQ4
	HHtRULbNn+3Oh/0xiTGksIaypw96I6x+OkZM24rNvJpCESeqyjcNY4cueJtRD1luwk9fBKi/GKjgQ
	MtUK3uCsaO5GWVF82Qbqs7vDni1gLp0FjsaSu/TKhPAbaeftxD0VWNRUtYXtz6wcILrEN0GUyyqds
	v+KbhAe7K0wWa6auKHWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqbZy-0009zT-KH; Thu, 03 Nov 2022 14:52:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqbZm-0009tB-7B; Thu, 03 Nov 2022 14:52:16 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oqbZd-0006qR-Fy; Thu, 03 Nov 2022 15:52:05 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Michael Riesch <michael.riesch@wolfvision.net>
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Simon Xue <xxm@rock-chips.com>, Michael Riesch <michael.riesch@wolfvision.net>
Subject: Re: [PATCH] iommu/rockchip: fix permission bits in page table entries v2
Date: Thu, 03 Nov 2022 15:52:04 +0100
Message-ID: <4780234.31r3eYUQgx@diego>
In-Reply-To: <20221102063553.2464161-1-michael.riesch@wolfvision.net>
References: <20221102063553.2464161-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221103_075214_299065_A0D2F012 
X-CRM114-Status: GOOD (  21.62  )
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

Am Mittwoch, 2. November 2022, 07:35:53 CET schrieb Michael Riesch:
> As pointed out in the corresponding downstream fix [0], the permission bits
> of the page table entries are compatible between v1 and v2 of the IOMMU.
> This is in contrast to the current mainline code that incorrectly assumes
> that the read and write permission bits are switched. Fix the permission
> bits by reusing the v1 bit defines.
> 
> [0] https://github.com/rockchip-linux/kernel/commit/e3bc123a2260145e34b57454da3db0edd117eb8e
> 
> Fixes: c55356c534aa ("iommu: rockchip: Add support for iommu v2")
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  drivers/iommu/rockchip-iommu.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
> index a3fc59b814ab..a68eadd64f38 100644
> --- a/drivers/iommu/rockchip-iommu.c
> +++ b/drivers/iommu/rockchip-iommu.c
> @@ -280,19 +280,17 @@ static u32 rk_mk_pte(phys_addr_t page, int prot)
>   *  11:9 - Page address bit 34:32
>   *   8:4 - Page address bit 39:35
>   *     3 - Security
> - *     2 - Readable
> - *     1 - Writable
> + *     2 - Writable
> + *     1 - Readable
>   *     0 - 1 if Page @ Page address is valid
>   */
> -#define RK_PTE_PAGE_READABLE_V2      BIT(2)
> -#define RK_PTE_PAGE_WRITABLE_V2      BIT(1)
>  
>  static u32 rk_mk_pte_v2(phys_addr_t page, int prot)
>  {
>  	u32 flags = 0;
>  
> -	flags |= (prot & IOMMU_READ) ? RK_PTE_PAGE_READABLE_V2 : 0;
> -	flags |= (prot & IOMMU_WRITE) ? RK_PTE_PAGE_WRITABLE_V2 : 0;
> +	flags |= (prot & IOMMU_READ) ? RK_PTE_PAGE_READABLE : 0;
> +	flags |= (prot & IOMMU_WRITE) ? RK_PTE_PAGE_WRITABLE : 0;
>  
>  	return rk_mk_dte_v2(page) | flags;
>  }
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
