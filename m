Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4216C6FD1D
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Mar 2023 15:27:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sjhy+bxlqXS2S4YXRmA2jQjG+PxHH6RiF8xRB3uJd5s=; b=CvLbmzDxiaEmWR
	RZ4r2oiGj9ODUfitJWzHfaUiukVc19f2fkGkRP15b9u07aHgQ+GUqzzHBVACAqVG9wOJO2S6GQfJF
	DDmXbOaDhnfCUFj5YmX8O06ioorud/yU0rrgpnRgjxD7m8M2SFiUgaoVSiGd8Cd+oSOmtWHV0TDG6
	u+ckhr0tjf+DJqSdVwKJa0hIo9Vl9t2b+C3JFaXia2EOGgQT7qMcGqjnRUZOSG6GdqIzw152djD/l
	UAJWqsJ2I8v4umjJUz9GnvBwnoiRoIgsGVUS5Mn+rQYUCIhadLCeY2/R58Q2ClAnV3cOqzJ5Q9bhZ
	4AOqsPRSEBY+09ZGBc/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgokQ-00BVmx-37;
	Mon, 27 Mar 2023 15:27:02 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgokN-00BVlZ-1r
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Mar 2023 15:27:01 +0000
Received: by mail-pj1-x1034.google.com with SMTP id x15so8005449pjk.2
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Mar 2023 08:26:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1679930817;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Odb92SQ0FVvs57ZcM9A8PJotl9bKl4RHOoMbk3dA3D4=;
        b=e0Y1bQb3FmaTSC2GM9EK+o91pCalJmsio+SSS2HeFxcRwBTaSGbGYRRwhVaIUzHSpk
         PaZabU6yLU1iUGDfpEABRxiqFXC0dPyQ+1uBK5T+siCRQBa4cYRnL3c+WQnSmQOhbX5A
         oPskDLRfQL7IYrcgPLYNq2DHHUlV/t7wHVf7XoCjQT/g9oL6JyfxZaSo5Yr2qzawi42N
         sKPhpVgjdKtrlY/vVyFCrlmZpRO1puDQ3ACYlxKJqzWRCDk20lhxcZNwZbylD0ZCFudN
         j+Cvjcy77Vwu3NtPwunPnZYVlNyFKwIpuuDmz6SfsSSYTKp949kVkPrDevY16dOhvIb4
         OC9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679930817;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Odb92SQ0FVvs57ZcM9A8PJotl9bKl4RHOoMbk3dA3D4=;
        b=gFEVvmKvctbR2jwvZB9eA9piDZmTivHef3crvZgyxz4XOC1Q9PxiZuR3nQZYFrnHPR
         XaSJXQMXq5K07DBqO0+cbmS4sKmPiVFE2UO6obKVOJ08ohMRmwqdKr0qz9pqgPWwOpI+
         JFTot13Emq7egu1U+d9bWltKCrCdWYZPyXyvHWw2XFHh4YF6DPClKmyG9ApOZuztb1uy
         WdYJHTz6PkB5CND9jDJSy/JK/PTEH1q/dEb8c/MSHGo8pKPhrI2etXZYFcczVGGxjx1/
         d4odpd15wPulUfTYcZA2fUxkXu6YX8FrrgEG9UqdxPw10GejxztuLrJCpBime9grwqmd
         rnOg==
X-Gm-Message-State: AAQBX9dFiw4/g7U8lZkaxR0JD8MP1c6OetLz5Zuuc6LOnPKif+1XgltI
	/R/RyD5fcsLQrn6MvGiW/3gsOQ==
X-Google-Smtp-Source: AKy350Z+cfTmght/h3mZN4yZCxLnNcQHz+khJqLqwwNJtRrzbffWTQd88JWx2oKkmUIhTFGvZmmgNg==
X-Received: by 2002:a17:903:120a:b0:19e:7d67:84e6 with SMTP id l10-20020a170903120a00b0019e7d6784e6mr13850465plh.0.1679930817447;
        Mon, 27 Mar 2023 08:26:57 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-68-25-194.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.68.25.194])
        by smtp.gmail.com with ESMTPSA id iw4-20020a170903044400b0019a97a4324dsm19509745plb.5.2023.03.27.08.26.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Mar 2023 08:26:56 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1pgokJ-003AkL-Bc;
	Mon, 27 Mar 2023 12:26:55 -0300
Date: Mon, 27 Mar 2023 12:26:55 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: John Keeping <john@metanate.com>
Cc: Steven Price <steven.price@arm.com>, Heiko Stuebner <heiko@sntech.de>,
	Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>, iommu@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] iommu/rockchip: Add missing set_platform_dma_ops
 callback
Message-ID: <ZCG1v9hRybc/951e@ziepe.ca>
References: <20230324111127.221640-1-steven.price@arm.com>
 <ZCGpmHUWyZVaeIIx@donbot>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZCGpmHUWyZVaeIIx@donbot>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_082659_827921_5B05D9A6 
X-CRM114-Status: GOOD (  22.99  )
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

On Mon, Mar 27, 2023 at 03:35:04PM +0100, John Keeping wrote:
> On Fri, Mar 24, 2023 at 11:11:27AM +0000, Steven Price wrote:
> > Similar to exynos, we need a set_platform_dma_ops() callback for proper
> > operation on ARM 32 bit after recent changes in the IOMMU framework
> > (detach ops removal). But also the use of a NULL domain is confusing.
> > 
> > Rework the code to have a singleton rk_identity_domain which is assigned
> > to domain when using an identity mapping rather than "detaching". This
> > makes the code easier to reason about.
> > 
> > Signed-off-by: Steven Price <steven.price@arm.com>
> > ---
> > Changes since v1[1]:
> > 
> >  * Reworked the code to avoid a NULL domain, instead a singleton
> >    rk_identity_domain is used instead. The 'detach' language is no
> >    longer used.
> > 
> > [1] https://lore.kernel.org/r/20230315164152.333251-1-steven.price%40arm.com
> > 
> >  drivers/iommu/rockchip-iommu.c | 50 ++++++++++++++++++++++++++--------
> >  1 file changed, 39 insertions(+), 11 deletions(-)
> > 
> > diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
> > index f30db22ea5d7..437541004994 100644
> > --- a/drivers/iommu/rockchip-iommu.c
> > +++ b/drivers/iommu/rockchip-iommu.c
> [snip]
> > +static struct iommu_domain rk_identity_domain = {
> > +	.type = IOMMU_DOMAIN_IDENTITY,
> > +	.ops = &rk_identity_ops,
> > +};
> > +
> > +#ifdef CONFIG_ARM
> 
> Is this #ifdef needed?  I can't see anything ARM-specific about this
> function or .set_platform_dma_ops.

set_platform_dma_ops is never called on ARM64.

> Not shown in the patch are the pm_runtime hooks.  Do they need to
> change like this?

Most likely yes

Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
