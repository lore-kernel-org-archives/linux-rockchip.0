Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96F6FC28B28
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Mar 2025 12:45:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wV/SzxJ37lM7eDbTpu219hW+RbTcfjdYDvoRCL2+fFs=; b=b6KRrznnLf0211
	UtlOkNPM9tTRQFaBy5Vy7mVIJ0Ziv/ITld/FHQx3qu4XSDpVMtyjbJF5iBhmq61OEGx6ZRBfTUpj0
	ZpEoafz/nZDCJKs3LMlCLUK1v86luuHbvJ4ho65dFCVDJxm3cmDhX1KJjOwZ79LtWc7aTRGECaZud
	VjWtZ9QKS0z4LycqSXT3xyzdmwSZLJ8hmRc1YR/BN8nZvuDzY1Aa6c8CG6e4UgJhPAe0wDsAiYTu0
	Sbq1U++l8LS6bnyOBeMN6npjPhVVwfLwZWTtA0s1AD9SKf/5B5GqicVvkkxi0rs/kYzU1Ud5y8M3n
	M5rLn6kD/aBeqe5d5IAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsLSQ-00000008RZZ-0tRc;
	Wed, 12 Mar 2025 12:45:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsKUa-00000008Ijs-0uHL
	for linux-rockchip@bombadil.infradead.org;
	Wed, 12 Mar 2025 11:43:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=/DRboL7iXAangnAe10zAw/fnPXaxzgNmenGuCjK+wlo=; b=oGhoweT0F60ChhiXzCE2sHn237
	ISmbDJLimVlBjbU0bMitIIlteEA4YBR3nwsok5ENAY00zuKB3mH5SmWSC2s3d8n+QWSljONXu7cOm
	wakBxInxQuactUvAv8p8i60w1/mtejS+MtmtSL9oBJ9k/KuOfWb+DzJGG65JHvHY8ACBY7BRVJU6Z
	RSqgQd5fs8NXglLL4eWwKRVYH2ggOqLWRGfqItCbath+y9vzWCo76RIzs7wwJF6sRAtlhiSYstSxO
	lJL7LSZjmH6PB+kANWMA3TZDB79Dly/rXJpNaeAQEojUx0m80ebblzZW1+Su8jfrCN+kY3l+xBD10
	henJz9wA==;
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsKUV-00000002Maw-23Ly
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Mar 2025 11:43:18 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-43cf3192d8bso39045e9.1
        for <linux-rockchip@lists.infradead.org>; Wed, 12 Mar 2025 04:43:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1741779792; x=1742384592; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/DRboL7iXAangnAe10zAw/fnPXaxzgNmenGuCjK+wlo=;
        b=PgBZ5seaugSIcUEK1q/Ie4Fx5PDrP9IW/4dzxSnOTcs6nmlvXaXVPG605DjeXW2Sff
         8+LlMwj2DU2+oYdlFltwy3mAmRtw1x05belBl6RRahVB6jSCzgNwdHI9WBIEEEZD0LAz
         GrHEeoExMuT6hu8wpeOMb7D2+/kukGqATtWsFWTWYRgonMtIDBYBbGoSJo8x45Fy/pd6
         W7ZTKGYRy2hltkhiYeTNs1IGOvNPz3dEEGcVUdAdAGHSr3KkKGX6ScADWXv8aY8uO2e3
         jFNgszgLnz2OYEetmS9uWZl7Kw5FXV5YevQdQEH5E4bSHvTKvWTTjCDD0bDlmrKhiZKR
         B59w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741779792; x=1742384592;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/DRboL7iXAangnAe10zAw/fnPXaxzgNmenGuCjK+wlo=;
        b=QKy16zKLfR1Aak6RUq51OshHo+P4ay+qNC1EU0NB3SRmRrJpARyc6XBaf2KJrZk1kS
         I1edUnsko6cEyd3shSjUIMTmMaMzyG3l+DVxt6C0JS6rzYX41M51HQUfC1wCmUeSTKnq
         Z3TvepAgv+9Byi+PsIFZQxHVtESHywhgqj2sehcUIEh0F+d0IAhFKfjVHvlQwPenBsDG
         JtMEzO5MUm5G8VQwgVQOH3ztentCzRI5KnMj5xvPYUKTmTQnF8tYbtM971hgfybFxOW5
         XEqZrFUlcucdFu8F9HAgVDs3WdLAfcNoz/7deA/zYlp8YtSkUBud+cp4a9ZPgkfXT3CA
         0UAg==
X-Forwarded-Encrypted: i=1; AJvYcCXRpJe5w/9F0h/mf6bf6pP69NugM6/68d5iSb4cdZmBbn+SN6z9EONhmtoK2DlcY7a5c0aiz7pm4X3hDBtvSw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw6OqqXpLmKP/Vzo9B5GYPFtab1rbGLHzlSD68bKB5+D7b+XgCa
	1oLBDZzWtLciKiHEOYz6VIav5xYz4AbxUKYmBpb74VK6vusEJe1Q3dJtSRv0nw==
X-Gm-Gg: ASbGncv+sNq8sxEL6zUgr33WXMc7qIg2xNrYYWcgy953myFDWY/32cBcMtrhSMXJEBx
	kUIMaCwSX8muohNBt62l0ynjoW1onP+AgdfbGqvNsWohRmN6oYvQ9MEHJ3XXZS/4ajoOOpjkd9b
	kgF8anTjzeiUFW9t8T5e28kk9YNN1u1Kqlqwl0FcRLszLyRTjGTwDE0ucn7324aeuj4YLS12lV9
	Og6ezoeU2bUlMclj6o0DyOg8Kx447qEGMFpnlbfLz6wAs2ARInbZCn917aWh9h9TssV5NHJTOVc
	qL6MQzit9LB6qAkLQBJjYZR+r0fu5Rqko6QAxR+9KMzhftmOOE/ARA3rJ3HLd8Z94RK1U+du6np
	MZWoK
X-Google-Smtp-Source: AGHT+IGAlRZ9FGEpVbzn9/E/l/2Ksb4Pgfv6rI6D7I3wU6Ogl1uoOZwLKHkEYMZpOjmtLPXmOnf3OA==
X-Received: by 2002:a7b:c8d1:0:b0:439:8d84:32ff with SMTP id 5b1f17b1804b1-43d0a5e40ccmr994365e9.3.1741779792013;
        Wed, 12 Mar 2025 04:43:12 -0700 (PDT)
Received: from google.com (88.140.78.34.bc.googleusercontent.com. [34.78.140.88])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d0a72ea88sm18970735e9.7.2025.03.12.04.43.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Mar 2025 04:43:11 -0700 (PDT)
Date: Wed, 12 Mar 2025 11:43:07 +0000
From: Mostafa Saleh <smostafa@google.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: Alim Akhtar <alim.akhtar@samsung.com>,
	Alyssa Rosenzweig <alyssa@rosenzweig.io>,
	Albert Ou <aou@eecs.berkeley.edu>, asahi@lists.linux.dev,
	Lu Baolu <baolu.lu@linux.intel.com>,
	David Woodhouse <dwmw2@infradead.org>,
	Heiko Stuebner <heiko@sntech.de>, iommu@lists.linux.dev,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Joerg Roedel <joro@8bytes.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-riscv@lists.infradead.org, linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev,
	linux-tegra@vger.kernel.org,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Hector Martin <marcan@marcan.st>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Robin Murphy <robin.murphy@arm.com>,
	Samuel Holland <samuel@sholland.org>,
	Suravee Suthikulpanit <suravee.suthikulpanit@amd.com>,
	Sven Peter <sven@svenpeter.dev>,
	Thierry Reding <thierry.reding@gmail.com>,
	Tomasz Jeznach <tjeznach@rivosinc.com>,
	Krishna Reddy <vdumpa@nvidia.com>, Chen-Yu Tsai <wens@csie.org>,
	Will Deacon <will@kernel.org>, Bagas Sanjaya <bagasdotme@gmail.com>,
	Joerg Roedel <jroedel@suse.de>,
	Pasha Tatashin <pasha.tatashin@soleen.com>, patches@lists.linux.dev,
	David Rientjes <rientjes@google.com>,
	Matthew Wilcox <willy@infradead.org>
Subject: Re: [PATCH v3 03/23] iommu/pages: Remove
 __iommu_alloc_pages()/__iommu_free_pages()
Message-ID: <Z9FzS-AzZNzYhrou@google.com>
References: <0-v3-e797f4dc6918+93057-iommu_pages_jgg@nvidia.com>
 <3-v3-e797f4dc6918+93057-iommu_pages_jgg@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3-v3-e797f4dc6918+93057-iommu_pages_jgg@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_114315_552325_81ADA0D6 
X-CRM114-Status: GOOD (  22.55  )
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

On Tue, Feb 25, 2025 at 03:39:20PM -0400, Jason Gunthorpe wrote:
> These were only used by tegra-smmu and leaked the struct page out of the
> API. Delete them since tega-smmu has been converted to the other APIs.
> 
> In the process flatten the call tree so we have fewer one line functions
> calling other one line functions.. iommu_alloc_pages_node() is the real
> allocator and everything else can just call it directly.
> 
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
Reviewed-by: Mostafa Saleh <smostafa@google.com>

> ---
>  drivers/iommu/iommu-pages.h | 49 ++++++-------------------------------
>  1 file changed, 7 insertions(+), 42 deletions(-)
> 
> diff --git a/drivers/iommu/iommu-pages.h b/drivers/iommu/iommu-pages.h
> index 82ebf00330811c..0ca2437989a0e1 100644
> --- a/drivers/iommu/iommu-pages.h
> +++ b/drivers/iommu/iommu-pages.h
> @@ -46,40 +46,6 @@ static inline void __iommu_free_account(struct page *page, int order)
>  	mod_lruvec_page_state(page, NR_SECONDARY_PAGETABLE, -pgcnt);
>  }
>  
> -/**
> - * __iommu_alloc_pages - allocate a zeroed page of a given order.
> - * @gfp: buddy allocator flags
> - * @order: page order
> - *
> - * returns the head struct page of the allocated page.
> - */
> -static inline struct page *__iommu_alloc_pages(gfp_t gfp, int order)
> -{
> -	struct page *page;
> -
> -	page = alloc_pages(gfp | __GFP_ZERO, order);
> -	if (unlikely(!page))
> -		return NULL;
> -
> -	__iommu_alloc_account(page, order);
> -
> -	return page;
> -}
> -
> -/**
> - * __iommu_free_pages - free page of a given order
> - * @page: head struct page of the page
> - * @order: page order
> - */
> -static inline void __iommu_free_pages(struct page *page, int order)
> -{
> -	if (!page)
> -		return;
> -
> -	__iommu_free_account(page, order);
> -	__free_pages(page, order);
> -}
> -
>  /**
>   * iommu_alloc_pages_node - allocate a zeroed page of a given order from
>   * specific NUMA node.
> @@ -110,12 +76,7 @@ static inline void *iommu_alloc_pages_node(int nid, gfp_t gfp, int order)
>   */
>  static inline void *iommu_alloc_pages(gfp_t gfp, int order)
>  {
> -	struct page *page = __iommu_alloc_pages(gfp, order);
> -
> -	if (unlikely(!page))
> -		return NULL;
> -
> -	return page_address(page);
> +	return iommu_alloc_pages_node(numa_node_id(), gfp, order);
>  }
>  
>  /**
> @@ -138,7 +99,7 @@ static inline void *iommu_alloc_page_node(int nid, gfp_t gfp)
>   */
>  static inline void *iommu_alloc_page(gfp_t gfp)
>  {
> -	return iommu_alloc_pages(gfp, 0);
> +	return iommu_alloc_pages_node(numa_node_id(), gfp, 0);
>  }
>  
>  /**
> @@ -148,10 +109,14 @@ static inline void *iommu_alloc_page(gfp_t gfp)
>   */
>  static inline void iommu_free_pages(void *virt, int order)
>  {
> +	struct page *page;
> +
>  	if (!virt)
>  		return;
>  
> -	__iommu_free_pages(virt_to_page(virt), order);
> +	page = virt_to_page(virt);
> +	__iommu_free_account(page, order);
> +	__free_pages(page, order);
>  }
>  
>  /**
> -- 
> 2.43.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
