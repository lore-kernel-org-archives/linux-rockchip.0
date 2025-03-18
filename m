Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0238C35FF8
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Mar 2025 10:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vprtb36LYqSkcjhzc9bPfjxUvgTIzu5iW6L0KCzjqJY=; b=WJuiDadWxySoHi
	dEBlRe0Qq1/GnVrT0UR9mw+H4MiTrDYbd5XgBYzcGrAqvQQFFA6M3MHqNB1ZltJ42lPkR5l0vvJ0o
	NTzvQIvOOZTLYqe5HoxTu8dg/PFN1lvv1T4eiWSdMrH/4O6pwXD6JwgCdSN68jHtfjXSWQ66ca3pp
	RsO+ZvHfPys0KGwiFSDsC6u3PIoWVSqFUwbVskQKUBsjcUo8mPl4I3FB93VmqCNslGcyKRuaJGxqy
	Og7YjfFPLPpbVDGjsYm87YI/T/+Gt3g/hiLE6C2A8CiznvapFUDVz2Ye0y2Tuxom+h/YstMG2pE88
	e/4PGvy4O4A7k1NQMXyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuUUW-00000005ayK-2PiE;
	Tue, 18 Mar 2025 10:48:12 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuUSo-00000005afl-2Nvx
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Mar 2025 10:46:28 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-438d9c391fcso44735e9.0
        for <linux-rockchip@lists.infradead.org>; Tue, 18 Mar 2025 03:46:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1742294784; x=1742899584; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/+Q9jlO5xuM+dGNN5vOy/zKLThOd0aux5Q2kg9METOQ=;
        b=h63DCl6CvrryGG5zjP56K0D+yOK//+KV6h8hTjVaIs3V9ZQxRrly30A1u4JEeOESzf
         vfYLNrc42VW+HEydq3YkBte5ZPNQsihQUtEG9kEEmUtBN6fwNN+5nKYDqLn964sY1fTA
         CSmCegkia5oOgIsV1nEJI8UEkXFpcxGhVYqkbKP+hOxD1aBA9wGSisk4e1TjHu44pTvr
         cFpTjK8vdMsqXOgwEpdWl58XqZG1Kh2JKD0UEPquYzd1mKu4ohct2n5yrPSIkg+4p658
         50iWG66zxmWxwQ0bKSWx1XvP1w1fG5uzFddbf8mijWVyHrzZ9LGDL4p7olPZXP+Vk292
         Lqlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742294784; x=1742899584;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/+Q9jlO5xuM+dGNN5vOy/zKLThOd0aux5Q2kg9METOQ=;
        b=AYKJWpHZy73HpDxbvyhREsNIGMPQGHxjRmPj52XXy9LOcr5WY6BnucO7WHCTkJmAx3
         RWbZ52UlzuT6LhvUzuTFiKoS3RyzseUEkL0ccsbSVn5Vq9dU+Kc2i730rDHlx5gLma0+
         xuKaIDkCXWyIcR9rU5LmMNL9v3oPT7ObUJY1OQ5VUao+htgpU3qpmCPoWJtc4psHo6QQ
         H8G6ISJ4p/dhfd8F+SLg+v+WU5hFdgUj3hXgN2hBFQeAIP5k6CJWwYgIjjZpuWDG2Etl
         FJu+raKJu72ZY5ZDbvaCZJPmQatZtJNrAzoUPexv+cRN/CoHunKRPirua8mPIG6VizdO
         xG8A==
X-Forwarded-Encrypted: i=1; AJvYcCVSYACT2AYX5OOSNJ+bC+Ybg8woyLR1j4klSlTGoFFDEtfMYqEAEdmFWnbkf7GgoQwIZUiUEvnnSiwBpmtPmA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxjVWdXjwAjdJ4zl5UBZsEoJJlqZmeAQSOtH5PQU6fHvteowa9N
	7sQcUOwbBjikrLe1kBtg8YGAGYgDlXPMCT1Hut2km8vmBJiJ6JKbdBn3svsEyg==
X-Gm-Gg: ASbGncsur8DXPa6ntDeaCGn9rIL+AKljDfe/WXk8oV3ZHH2KzI13cj7VZpdQYyhvMyb
	870Vocix3pJaSN0qq9t7O8Cca01L8wLZVJqRt1DSmMEmMr4Hvp97y34iI8Jfg73xHB8rqe1ZCpd
	aWY8BWmO7z1XZo6SNVD8iB6/SSsC0GRMG/d0vAVqtMxnY+RTRgI3iePcEADMqYUBF/M8nVsV3K8
	wioahcpVLaWhvYkSNhas5OJnp+xAsEsBDnf+8XkP5wDXdGldAX19TmR2qsqMyFYTCcqP0NoEKo1
	0Dpl1Xsl31qugmztEXYrzR2xBQo1Lt1LbQvbSUxBWZs7UIMO48wj26UTsVEQbOdcL62xoIJcN/B
	Wgcj1
X-Google-Smtp-Source: AGHT+IHJJJKc86lCeSfkPHpB/CtXXs0Prp3Nz9+7FXSfTlHmKZ30/6jEnzkR0iwoq3j3jwsYbn5hfA==
X-Received: by 2002:a05:600c:1d20:b0:439:4a76:c246 with SMTP id 5b1f17b1804b1-43d3e14f871mr474575e9.6.1742294783884;
        Tue, 18 Mar 2025 03:46:23 -0700 (PDT)
Received: from google.com (88.140.78.34.bc.googleusercontent.com. [34.78.140.88])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d1ffbcf00sm129988595e9.10.2025.03.18.03.46.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Mar 2025 03:46:23 -0700 (PDT)
Date: Tue, 18 Mar 2025 10:46:18 +0000
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
Subject: Re: [PATCH v3 20/23] iommu: Update various drivers to pass in lg2sz
 instead of order to iommu pages
Message-ID: <Z9lO-viudk9YGakl@google.com>
References: <0-v3-e797f4dc6918+93057-iommu_pages_jgg@nvidia.com>
 <20-v3-e797f4dc6918+93057-iommu_pages_jgg@nvidia.com>
 <Z9GFFBvUFg7a9WEg@google.com>
 <20250317133500.GC9311@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250317133500.GC9311@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_034626_616848_B19AFE8D 
X-CRM114-Status: GOOD (  23.65  )
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

On Mon, Mar 17, 2025 at 10:35:00AM -0300, Jason Gunthorpe wrote:
> On Wed, Mar 12, 2025 at 12:59:00PM +0000, Mostafa Saleh wrote:
> > > --- a/drivers/iommu/io-pgtable-arm.c
> > > +++ b/drivers/iommu/io-pgtable-arm.c
> > > @@ -263,14 +263,13 @@ static void *__arm_lpae_alloc_pages(size_t size, gfp_t gfp,
> > >  				    void *cookie)
> > >  {
> > >  	struct device *dev = cfg->iommu_dev;
> > > -	int order = get_order(size);
> > >  	dma_addr_t dma;
> > >  	void *pages;
> > >  
> > >  	if (cfg->alloc)
> > >  		pages = cfg->alloc(cookie, size, gfp);
> > >  	else
> > > -		pages = iommu_alloc_pages_node(dev_to_node(dev), gfp, order);
> > > +		pages = iommu_alloc_pages_node_sz(dev_to_node(dev), gfp, size);
> > 
> > Although, the current implementation of iommu_alloc_pages_node_sz() would round
> > the size to order, but this is not correct according to the API definition
> > "The returned allocation is round_up_pow_two(size) big, and is physically aligned
> > to its size."
> 
> Yes.. The current implementation is limited to full PAGE_SIZE only,
> the documentation imagines a future where it is not. Drivers should
> ideally not assume the PAGE_SIZE limit during this conversion.
> 
> > I'd say we can align the size or use min with 64 bytes before calling the
> > function would be enough (or change the API to state that allocations
> > are rounded to order)
> 
> OK, like this:
> 
> 	if (cfg->alloc) {
> 		pages = cfg->alloc(cookie, size, gfp);
> 	} else {
> 		/*
> 		 * For very small starting-level translation tables the HW
> 		 * requires a minimum alignment of at least 64 to cover all
> 		 * cases.
> 		 */
> 		pages = iommu_alloc_pages_node_sz(dev_to_node(dev), gfp,
> 						  max(size, 64));
> 	}

Yes, that looks good.

Thanks,
Mostafa

> 
> Thanks,
> Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
