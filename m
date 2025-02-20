Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F999C021B1
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Feb 2025 19:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yY0xaz9qUzTlf2pJS1ujRiDcSpBZrzEk8X+s4uofLHs=; b=HVn6EdXJeetrsQ
	QIgTsqLLlhFz4LBc5bwV/yqbrU0rpS+rFpfiNOUwP/ZnHgFDI0CoAENpPwPCXE8+fJLv6ALJRMkG6
	3hU8kXAYYoxX9WhyMkvU9PsBPAJ0pbei1zZcGmsXIoTyPvZsaPPPoYzO6Fqd4qCPKvDaoDmFEc2CT
	2fcxasQgfc7KlGf/LAeyhkEEupBj0vUOM9IEN2KZ8ph7RDTladZiryy/8GXJ/K6quz6nuO35LJEci
	gDe+4TrnYb7JViQ6kIQD78IOrj57fCzLEV47ORdprXH9BPrafnsmZNQeN5GTyi2eqbttZHHWcE/jE
	MNnqZ4iMI6fQSZ7lIzRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlCKy-00000002d1v-3qXc;
	Thu, 20 Feb 2025 19:35:56 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlCKv-00000002czE-3Mso
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Feb 2025 19:35:55 +0000
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-2210d92292eso38628275ad.1
        for <linux-rockchip@lists.infradead.org>; Thu, 20 Feb 2025 11:35:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1740080152; x=1740684952; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2bN/NPVn1vKfJddb+/MWowQ/DYT7KXXiFwwxB/L9OIQ=;
        b=phkHUGHpmNi6EAti1FZolmPgoOj6+IYkHoWDq6bgm+TVXxhbRmKghUSU0ZN9MgDszc
         gjaW0PttvvLwb5SU9sZGPoVSydezmxodMoLUnPE+ZF/c08LaueDG/GSwoNm0Ay5GouQQ
         O+TAu++Gw8+5Ys4t3ILn3X/GwR/CLoqOYgRHQjn5h3r9EsmpkVx5jV1Zm206yxphAOZL
         jE7KHbrlUHdiOGE+WnbExigwXB/z+Q4/nLkCFCvxnPZ0D8R7+l/5CupWP1NmLaM7UrR+
         igLHE77ibqCIEvVoAsnZwt127nofKnFA7IZ9NSeIMdL20z84vo9L4fv9TSICzdOWL8YQ
         0kJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740080152; x=1740684952;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2bN/NPVn1vKfJddb+/MWowQ/DYT7KXXiFwwxB/L9OIQ=;
        b=UPZxqj6D/U97xGay14VO0mXv9xA6qug8tdFmro0ZHMkPph+yjp/IAySJejxmWG5yeq
         +rnQNM751vRe2Nqwmj/O4bUf6tV6ohUBh6ZPicOcanC/rVswwEHdjuDo/AizAWSDa0CU
         C/6TRhFvRorYURSwFZeQqh0MEonBneinO52utPxQxFULlEoYEITOyYwTNjSfqqA3RNBN
         huCIxds4NfQw/nggBQ6FhJHA6A29xllEkUr1cxhiVnmDJGrSbkFyd1T95EMcXRfHyZ8W
         IBaQFas50V2//1E3GLLkDHT3HmV57gWBsU6MYsAmZ2eEVoWBBZ+sSwSXOuA+8zqPHl3y
         iLDw==
X-Forwarded-Encrypted: i=1; AJvYcCUOtPrK4MZmFvAlb12YmhDgzxEAcvX8WZY1aJqnDrrkGimyQxlLA/dSoh63ABus1ie4Mg9n54BuquAUpI232w==@lists.infradead.org
X-Gm-Message-State: AOJu0YwJd5Wq0auU2WfY4HhNhiobVIjdAYJz7jAC8t66sMgp9/pxg6wi
	LUqFs6WrDVD1Ihlc2SE6Ua7s4h/s7vpUWSPaDgU4rSVki/IG4+Jlu7m9BEdnt0E=
X-Gm-Gg: ASbGncsTNeM7K6L2ffYVdJ2dFuvKGq0Tkh3h4AlVv3XWoT0eH21h5FTIJ6zqcn1n1jz
	4gNhCM1zzTyppQPlNeJJse5fPJvq4tsWLxyHomdhQ0cxVAIS+Ch6k4WWO0Ct9JFqbHTSQ5WwPkY
	M422OjmHr6HbTZmPFMp6iTHlLjFNsnPBHg4dvKugcMicfQZ9QE3xW/K1sspZp/Wzij4XdHdnFcQ
	y9FFN3QD88PdYsA6hIH3uTKYN5El4Wg23+IzY7KthNY6og09yjfgozH6GMp6DzirY66R7m80nV0
	ihwcohVAcnD2LqAWyty2vwvT4pAbalukDg==
X-Google-Smtp-Source: AGHT+IFLUZkJqTzzZT+I/M3yqbHhvCV9FHZfFsSF+/uPg4tVfA/GlpswgR4SI57hCH58PcrddckVtQ==
X-Received: by 2002:a17:902:db07:b0:216:73f0:ef63 with SMTP id d9443c01a7336-2219fff4377mr5157465ad.49.1740080152564;
        Thu, 20 Feb 2025 11:35:52 -0800 (PST)
Received: from tjeznach.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-220d545c9bbsm123012805ad.127.2025.02.20.11.35.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2025 11:35:52 -0800 (PST)
Date: Thu, 20 Feb 2025 11:35:49 -0800
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
Subject: Re: [PATCH v2 19/23] iommu/riscv: Update to use
 iommu_alloc_pages_node_lg2()
Message-ID: <Z7eEFagK3xugrkKH@tjeznach.ba.rivosinc.com>
References: <0-v2-545d29711869+a76b5-iommu_pages_jgg@nvidia.com>
 <19-v2-545d29711869+a76b5-iommu_pages_jgg@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <19-v2-545d29711869+a76b5-iommu_pages_jgg@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_113553_887861_3BFB6EB3 
X-CRM114-Status: GOOD (  20.48  )
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

On Fri, Feb 14, 2025 at 01:07:52PM -0400, Jason Gunthorpe wrote:
> One part of RISCV already has a computed size, however the queue
> allocation must be aligned to 4k. The other objects are 4k by spec.
> 
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> ---
>  drivers/iommu/riscv/iommu.c | 15 ++++++++-------
>  1 file changed, 8 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/iommu/riscv/iommu.c b/drivers/iommu/riscv/iommu.c
> index 2750f2e6e01a2b..8835c82f118db4 100644
> --- a/drivers/iommu/riscv/iommu.c
> +++ b/drivers/iommu/riscv/iommu.c
> @@ -65,13 +65,14 @@ static int riscv_iommu_devres_pages_match(struct device *dev, void *res, void *p
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
> +	addr = iommu_alloc_pages_node_sz(dev_to_node(iommu->dev),
> +					 GFP_KERNEL_ACCOUNT, size);
>  	if (unlikely(!addr))
>  		return NULL;
>  
> @@ -161,9 +162,9 @@ static int riscv_iommu_queue_alloc(struct riscv_iommu_device *iommu,
>  	} else {
>  		do {
>  			const size_t queue_size = entry_size << (logsz + 1);
> -			const int order = get_order(queue_size);
>  
> -			queue->base = riscv_iommu_get_pages(iommu, order);
> +			queue->base = riscv_iommu_get_pages(
> +				iommu, max(queue_size, SZ_4K));
>  			queue->phys = __pa(queue->base);
>  		} while (!queue->base && logsz-- > 0);
>  	}
> @@ -618,7 +619,7 @@ static struct riscv_iommu_dc *riscv_iommu_get_dc(struct riscv_iommu_device *iomm
>  				break;
>  			}
>  
> -			ptr = riscv_iommu_get_pages(iommu, 0);
> +			ptr = riscv_iommu_get_pages(iommu, SZ_4K);
>  			if (!ptr)
>  				return NULL;
>  
> @@ -698,7 +699,7 @@ static int riscv_iommu_iodir_alloc(struct riscv_iommu_device *iommu)
>  	}
>  
>  	if (!iommu->ddt_root) {
> -		iommu->ddt_root = riscv_iommu_get_pages(iommu, 0);
> +		iommu->ddt_root = riscv_iommu_get_pages(iommu, SZ_4K);
>  		iommu->ddt_phys = __pa(iommu->ddt_root);
>  	}
>  
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
