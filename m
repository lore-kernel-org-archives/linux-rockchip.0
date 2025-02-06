Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E18E6C02196
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Feb 2025 05:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H6Alw3hAm/vAOcB2JQt9ZY1S3muUnODvd5MJo4O35sU=; b=Dy5iKrd7HlrsyS
	08FGLxlxkCy7VLnnEZPBEIGP3kYDhDcXQnDBwgY3Xaspo5Q+S1DNG9i+P6jytzq1xBvnxuZ1BVWbn
	ci2hcdFdILihptJc3LmBjpSsvst8BZDhc/EA3H0y6cg+eBX+/xIFkPjj3gFIn0oGCmvwRNyXJIl3t
	qYL3bqsavKpEL24DV4SJmTMMQYPUFzVh3okwKM1UMKPdWBMi+2XBDaJ7hdu1NnMYBs50JQnLkaBQj
	+AtTC1p4uDWXaVHk52KjGvWOqCkL5rNqKeoe9wHb8Ord23dvEVTKbHvSgSVRdxR8wWcDCuJ1js+nQ
	7D3sfLVcXX1BuRv417Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfup4-00000005K0G-0vSu;
	Thu, 06 Feb 2025 05:53:10 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfup0-00000005JyV-3DVh
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Feb 2025 05:53:08 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-21ddab8800bso8017295ad.3
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Feb 2025 21:53:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738821186; x=1739425986; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=U5ldcxqakXbm8AP3lHPyZs0Noc32OWjVSFhOYUYpAno=;
        b=0Mo/hnrRL9Gva56NBKALw640MJLrMj/l2ptBc8G+TkoyMxQ8tYpGk5wyXk/hFNGxYS
         PBTlmmL4enYAqaJ3lbqcNp5VrXTf/3qOPzFbHlA0+Cjh3R/omiGenpK/BoeC6mBohq9j
         E7voT5pDTzyieH31GvzPSB0Fv+wLtRTHO7mnp7PtUVI+d70+pF+UJTao0xzMHRLXJSE/
         Nn3JDPJ8jK9GtZnszhVoA65p+BlQLAu+1VTwVTSXvOPNeXCEeJuRDPJ1GCPfnpxI2Oft
         hL4nDM/gP8MyLnKWAlHUI67Nk6kIo3NIXrPXHMvkYo9rTsSmXlwHboHPo2DUpesAHpUi
         Musw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738821186; x=1739425986;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U5ldcxqakXbm8AP3lHPyZs0Noc32OWjVSFhOYUYpAno=;
        b=K31ahTwWQsTdtkfvE+kXqnLf0sURbn1tH02PpVz4gA86Cy0yCrK20hiAYpt62cfi0r
         ycuDBLSAlNuoxeUQn//ltk441m9PWgW9SrCiUt/Pa+F1jF6Nc5vCeai0jGJ4iLN8iLlq
         iP4hMeIgeLZEBdx5xz4K3TV3BsCQLiXB6BDHFnacv9rEFfAi3AsZP6qgatJ74EOgi//5
         PphsJ7DfxGogRiR9Pvwb9FqkShBeFAUwQ3mbvg9uysQTTtLQ8yDTnAwsdGLYKWyeaq1J
         0vN6qLbuFfPX9o64ELGhJrtKkT27LOX5amH1Mx5ya29mcx5QEpkk41oO0Pxe1Jx1/S1w
         1Akg==
X-Forwarded-Encrypted: i=1; AJvYcCXKqF3qaeGU8Ad4cbU1QyUV2pf4G1gmpzSi0dPXOudoEV/FkOxXCeVCsXaw7XbCCprnlJOfVbfoedkyN9WLbQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzLloyglGIicU8ksfF+stnP2EsIvY7SiKn2LFARV0oRKLmsDOOu
	qjhhKSUtluqjOuY+e5hlQxvELQGFDaEPOBISB9RDLtb1NB9weKedXh+D8KVlLX4=
X-Gm-Gg: ASbGncuXntBGDkcpyqAGJ59dz79aLWXmoNG3QjhVk6W/AZXObrDQfoAg+se5Am/pZzU
	LVw2W3a/FwjQOAQk7Pv///cIdgWLC3UsjHkWiL3jnzybmXdk7NhEtRnL6JCNDMcbXAprn6Ut8IB
	hCDAv+OYJ1E61NAiWKsAZ+lh5GrjVIALzLvkByJv/s8BZMuq15Fl+Q4vhHC9+GrWSLQ9mVOidJY
	gojPWkY2cF0H4DXSEY6LPv2pSQRCSbcpAYfqtmBZpFA7XCWUbb3liuCE66MXn2ybsPUWtDMinns
	BqK+2q9onjug2wcrY98YODZExtBo1sC31Q==
X-Google-Smtp-Source: AGHT+IGCr9xd2Dhw5KUTmjMsz2hIPxrdWNp4ze88e5FpvAsB5Znxk1UOOvf/vmpixanfPva87r8KEw==
X-Received: by 2002:a17:902:c403:b0:21f:35fd:1b6a with SMTP id d9443c01a7336-21f35fd2116mr20176495ad.51.1738821185899;
        Wed, 05 Feb 2025 21:53:05 -0800 (PST)
Received: from tjeznach.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21f3687c746sm3841885ad.180.2025.02.05.21.53.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2025 21:53:05 -0800 (PST)
Date: Wed, 5 Feb 2025 21:53:02 -0800
From: Tomasz Jeznach <tjeznach@rivosinc.com>
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
	Krishna Reddy <vdumpa@nvidia.com>, Chen-Yu Tsai <wens@csie.org>,
	Will Deacon <will@kernel.org>, Bagas Sanjaya <bagasdotme@gmail.com>,
	Joerg Roedel <jroedel@suse.de>,
	Pasha Tatashin <pasha.tatashin@soleen.com>, patches@lists.linux.dev,
	David Rientjes <rientjes@google.com>,
	Matthew Wilcox <willy@infradead.org>
Subject: Re: [PATCH 09/19] iommu/riscv: Convert to use struct iommu_pages_list
Message-ID: <Z6ROPsbXHYlQ0TgF@tjeznach.ba.rivosinc.com>
References: <0-v1-416f64558c7c+2a5-iommu_pages_jgg@nvidia.com>
 <9-v1-416f64558c7c+2a5-iommu_pages_jgg@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9-v1-416f64558c7c+2a5-iommu_pages_jgg@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250205_215306_798939_E67E1B19 
X-CRM114-Status: GOOD (  20.49  )
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

On Tue, Feb 04, 2025 at 02:34:50PM -0400, Jason Gunthorpe wrote:
> Change the internal freelist to use struct iommu_pages_list.
> 
> riscv uses this page list to free page table levels that are replaced
> with leaf ptes.
> 
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> ---
>  drivers/iommu/riscv/iommu.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/iommu/riscv/iommu.c b/drivers/iommu/riscv/iommu.c
> index 6e7df7273426da..549bd8d0615d75 100644
> --- a/drivers/iommu/riscv/iommu.c
> +++ b/drivers/iommu/riscv/iommu.c
> @@ -1085,7 +1085,8 @@ static void riscv_iommu_iotlb_sync(struct iommu_domain *iommu_domain,
>  #define _io_pte_entry(pn, prot)	((_PAGE_PFN_MASK & ((pn) << _PAGE_PFN_SHIFT)) | (prot))
>  
>  static void riscv_iommu_pte_free(struct riscv_iommu_domain *domain,
> -				 unsigned long pte, struct list_head *freelist)
> +				 unsigned long pte,
> +				 struct iommu_pages_list *freelist)
>  {
>  	unsigned long *ptr;
>  	int i;
> @@ -1103,7 +1104,7 @@ static void riscv_iommu_pte_free(struct riscv_iommu_domain *domain,
>  	}
>  
>  	if (freelist)
> -		list_add_tail(&virt_to_page(ptr)->lru, freelist);
> +		iommu_pages_list_add(freelist, ptr);
>  	else
>  		iommu_free_page(ptr);
>  }
> @@ -1192,7 +1193,7 @@ static int riscv_iommu_map_pages(struct iommu_domain *iommu_domain,
>  	unsigned long *ptr;
>  	unsigned long pte, old, pte_prot;
>  	int rc = 0;
> -	LIST_HEAD(freelist);
> +	struct iommu_pages_list freelist = IOMMU_PAGES_LIST_INIT(freelist);
>  
>  	if (!(prot & IOMMU_WRITE))
>  		pte_prot = _PAGE_BASE | _PAGE_READ;
> @@ -1223,7 +1224,7 @@ static int riscv_iommu_map_pages(struct iommu_domain *iommu_domain,
>  
>  	*mapped = size;
>  
> -	if (!list_empty(&freelist)) {
> +	if (!iommu_pages_list_empty(&freelist)) {
>  		/*
>  		 * In 1.0 spec version, the smallest scope we can use to
>  		 * invalidate all levels of page table (i.e. leaf and non-leaf)
> -- 
> 2.43.0
> 

Reviewed-by: Tomasz Jeznach <tjeznach@rivosinc.com>

Thanks,
- Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
