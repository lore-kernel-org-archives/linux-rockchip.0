Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB73FC02196
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Feb 2025 05:30:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/IftDcPk5urEhgsp4qf6BtD0pdYClkBNzcqX+9qO3lM=; b=sGXi/B55rkaPMb
	BFVHartukWg3jIVlVhkgoNsgqJRHk3D+TmB+Qe/SFiv+sCyUszsPJA2Bm8vTPRV0F8QJ1tijeGorl
	nE2NwY5tJ2krjoTACQTR1kzCkfO4b3k85hvyyx8KNtljnkLD+k27Qy+SAsot/nc5KMl8vPM6AqT05
	DxPettzyAms4iC0YTRAwjKrevRrxmM6rkPuAQEYByEWd8G8CWqtbwG7LUjkIf6BZ4INWuUhs4CS1m
	Hh5q3f8YiZqESmqLQWGn5s5fdbBG14s/qEdcPAnVxzV+KFYJVKpWs8VfTCYWsuFCzU9QipGED2Otc
	j0EPl2ADlDOI3mHXh2ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfuSs-00000005H6J-0GoQ;
	Thu, 06 Feb 2025 05:30:14 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfuSo-00000005H4Y-2NnJ
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Feb 2025 05:30:12 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-2163dc5155fso10121205ad.0
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Feb 2025 21:30:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738819809; x=1739424609; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=pRoJEJRUPVObRh6bcpNHZcCJSeUoo6qbmkVpHeNteUs=;
        b=f2iTzNMd0r6J4YutlIZtEDWZSGE2qg113t7f6X3UusRvz1uWmGC94/KraHhR8rIJ5m
         dEZQiGrDqSBWAJqdxIs3O3cpTm5bIC4XmM+858a5XlZsyN85qBDZYDH8B2PCQJBS4gZw
         O42PBxnzQaxh0/NXJYsGo8z/5oWaAsTepLi2v4Qq2GGhQTJkyaTRTHMhL3xW/Op7I8ss
         wYXcK6+D/gYJBSfxK/LIDPSpE83Q7t5D3IMnYXmKIVbrWyLPbNfkqLi9tyySvG9qd2yR
         NoOEBo9AuPttJI6oaBN+gTTfuLyHRDNlZ4PJ24for5dGplCu23AdOd3vtjfX0aHlG+R9
         3I2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738819809; x=1739424609;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pRoJEJRUPVObRh6bcpNHZcCJSeUoo6qbmkVpHeNteUs=;
        b=gnQzWNn+AQ+ReYhsq4FS2w9NVXpbZmIGsCKdzRKSq5+PSPP8nTFhRd1ygUai2c8pEq
         7HPybyfk4Msyf/imeq36jNJ0V6KfieKsdv/Yjm7zeJlwKOqGVSCH+eQWmI5NeDZIe8mm
         z7jZcxyP7mH7rldPYQR2xNFRKh7O7bY9cSL4YHQXIU7y1dl6GE8RPK+aOYZcZmbOzgha
         cvdCpXXTz91qAhZtQValxplt0mrREP9Uj3j78jpbDE/4h5bvgc03c9w7A7te9Aor/JJF
         D3N3Wko/ScofN4TqJeSvkEFA7/uMaaIyP5tdFMdvOaFu/lyDRVphw85ehJmnxMHX1VmQ
         sULg==
X-Forwarded-Encrypted: i=1; AJvYcCXzrzMDU3DaXb4Q/vdKaWt3nnkuvh/7dugu2iD5qSNd4msP6LlXJsQ9aLox5bu7Rtpuc3FNi4anQL2x6yz1oA==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywc1UE/CJvBBPz0bQHMZ9HH/N0/Qzs02cHC9ezkcSDf1K3yNTN2
	lVKzzt1692PMYEetr660bdKjDJJuAmJStvu+7koKnH4BtzjTCH3OccCC0e7haP4=
X-Gm-Gg: ASbGncuccwBLtSmY4m3i+jBo57cKg/vt0KRb2CcSpdIUlOpXLeOxB8jnQ1lboQc8KlI
	fu1s/DyN/reAn4TZyt6EKRhZV8L0Mwl2c/i0AJFx5gPbGoLphsfNPAl19pEg64rm4Ih1GDsEpQK
	CyrTXbkKo9QGsgRqVy6qg+REYkmo2qhkm66UsN2KvKJgdpFe+/vDWQVPP5pQ8mPgbJ8eMsRVUEZ
	BGa22RPuIln9Z2lW8/XmpADerLgS32AZSN1P1npgLlauB0xDOO3u3ZJP0tLzyTjticP6ZDPCrT4
	BhgK+lDUP3w2+9IWamYasPnEGiglwyNDgQ==
X-Google-Smtp-Source: AGHT+IE1tNZkBLKVThcpOUcjJPjEE6LeUB5SuPAtY9c/ZHJbnXa2ZNVKpzCci8Lb0vwwFKWpOtSe+Q==
X-Received: by 2002:a17:902:d28b:b0:216:410d:4c53 with SMTP id d9443c01a7336-21f17ebba71mr74788475ad.41.1738819809035;
        Wed, 05 Feb 2025 21:30:09 -0800 (PST)
Received: from tjeznach.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21f3653c997sm3459215ad.78.2025.02.05.21.30.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2025 21:30:08 -0800 (PST)
Date: Wed, 5 Feb 2025 21:30:05 -0800
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
Subject: Re: [PATCH 17/19] iommu/riscv: Update to use
 iommu_alloc_pages_node_lg2()
Message-ID: <Z6RI3ftJTrm3UxoO@tjeznach.ba.rivosinc.com>
References: <0-v1-416f64558c7c+2a5-iommu_pages_jgg@nvidia.com>
 <17-v1-416f64558c7c+2a5-iommu_pages_jgg@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <17-v1-416f64558c7c+2a5-iommu_pages_jgg@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250205_213010_882048_F1734012 
X-CRM114-Status: GOOD (  21.66  )
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

On Tue, Feb 04, 2025 at 02:34:58PM -0400, Jason Gunthorpe wrote:
> One part of RISCV already has a computed size, the other part seems to use
> PAGE_SIZE (which is probably SZ_4K?). Convert the call.
> 
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> ---
>  drivers/iommu/riscv/iommu.c | 15 ++++++++-------
>  1 file changed, 8 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/iommu/riscv/iommu.c b/drivers/iommu/riscv/iommu.c
> index 549bd8d0615d75..b7cee3d651b179 100644
> --- a/drivers/iommu/riscv/iommu.c
> +++ b/drivers/iommu/riscv/iommu.c
> @@ -65,13 +65,15 @@ static int riscv_iommu_devres_pages_match(struct device *dev, void *res, void *p
>  	return devres->addr == target->addr;
>  }
>  
> -static void *riscv_iommu_get_pages(struct riscv_iommu_device *iommu, int order)
> +static void *riscv_iommu_get_pages(struct riscv_iommu_device *iommu,
> +				   unsigned int size)
>  {
>  	struct riscv_iommu_devres *devres;
>  	void *addr;
>  
> -	addr = iommu_alloc_pages_node(dev_to_node(iommu->dev),
> -				      GFP_KERNEL_ACCOUNT, order);
> +	addr = iommu_alloc_pages_node_lg2(dev_to_node(iommu->dev),
> +					  GFP_KERNEL_ACCOUNT,
> +					  order_base_2(size));
>  	if (unlikely(!addr))
>  		return NULL;
>  
> @@ -161,9 +163,8 @@ static int riscv_iommu_queue_alloc(struct riscv_iommu_device *iommu,
>  	} else {
>  		do {
>  			const size_t queue_size = entry_size << (logsz + 1);
> -			const int order = get_order(queue_size);
>  
> -			queue->base = riscv_iommu_get_pages(iommu, order);
> +			queue->base = riscv_iommu_get_pages(iommu, queue_size);
>  			queue->phys = __pa(queue->base);

All allocations must be 4k aligned, including sub-page allocs.

Note from IOMMU/RISC-V spec:

"If the command-queue has 256 or fewer entries then the base address of the
queue is always aligned to 4-KiB."

I can't find this to be guaranteed with new allocation API.

>  		} while (!queue->base && logsz-- > 0);
>  	}
> @@ -618,7 +619,7 @@ static struct riscv_iommu_dc *riscv_iommu_get_dc(struct riscv_iommu_device *iomm
>  				break;
>  			}
>  
> -			ptr = riscv_iommu_get_pages(iommu, 0);
> +			ptr = riscv_iommu_get_pages(iommu, PAGE_SIZE);
>  			if (!ptr)
>  				return NULL;
>  
> @@ -698,7 +699,7 @@ static int riscv_iommu_iodir_alloc(struct riscv_iommu_device *iommu)
>  	}
>  
>  	if (!iommu->ddt_root) {
> -		iommu->ddt_root = riscv_iommu_get_pages(iommu, 0);
> +		iommu->ddt_root = riscv_iommu_get_pages(iommu, PAGE_SIZE);
>  		iommu->ddt_phys = __pa(iommu->ddt_root);
>  	}
>  
> -- 
> 2.43.0
> 

best,
- Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
