Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D45F3C02199
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Feb 2025 17:55:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dO+d6NVl32q4nV9fO+cBG9atKrJxlRkzBOEz+2IhwKk=; b=tGGd6tDR7P7RhA
	rZ4guj1FDDRACtCOvNjr4Px8cSXUUff9vkVpguJoPt10Kk+cdWEZiVQQOZQsnmVUcolvrJDwEJzjo
	qXXyzTeoE7OlJZGDYzmySS/Fp9NoDyFnzkJ1yYHCGOfeZ1i+FYqhRXWOYw0qeeGG8Ro8rqt5M0L5d
	Ty3dBUl7ZIWZOdOrfUQOxEgVqpMlO1jwBUeWnEvc/aOC5R6fGywTB59Z1DvROmI5AnzRHjLZwpFET
	RKgYMSWqCl6EDlkWo+g8rvq/abl5u2WKbE3GNcD3nG+852TfceLBiyoBPxqLF6c2sWlVeqEIYTXy5
	wDWtAK9JpZunE92MzmFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tg66U-000000073gw-2II0;
	Thu, 06 Feb 2025 17:55:54 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tg656-000000073O4-0ibz
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Feb 2025 17:54:29 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-21f200014f1so18119945ad.2
        for <linux-rockchip@lists.infradead.org>; Thu, 06 Feb 2025 09:54:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738864467; x=1739469267; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2Mn+sK8nChOIpeYLnv6IHwIsGNBT4gzyG/mIRD8yp0k=;
        b=fdIP9j/U6JiM1FaxmDWsn4cKPxef2k+nmAnWy/M4LPDZcqxw0QMQAgw2hrPAfVN4b8
         FCNKhg9JzASYazczM3NiqwM9MOPwXGnM7gWgAg42lFLuesaVO3julEznfR2wHpCynSD8
         gVyidPEiIAsQ75BY70e40L9kzmxduvWUXx5WTv1tAU/cpeSx8Nv/TfnWl1vNeHSansFs
         /Ag3dSC7wsvXA+6dkbOSIQ7S1+RAM8TD526ReWSJxLGuXcClHa6GGYuBbpeYF1SLJ5uV
         0YQX59RMSpDc4O7ftrUL+Nl+Uuwi+2koWOnX1zlJS/f6vV8UzJDYyp7DtjzIqEC/iqcE
         jYqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738864467; x=1739469267;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2Mn+sK8nChOIpeYLnv6IHwIsGNBT4gzyG/mIRD8yp0k=;
        b=B9YJF0RPAxIR/oabxNslAP3YXp2t+97yUvNDsAxAPDJjKP+66C636zFiF6f261SAdg
         QjswjtGsmnCOXmkVpDvNWBAiH7CZ/oWIl6vjpA4UbD9opAt9bvfCDVGV0g+GuIToD6LA
         8c2a2lB8IZJHwA7V2iutyUwCXF/LvRz2RlDKBQEHc+xATTggzlgzD7HfN+gkWSLxWxgw
         V+r8inz00S344qcrGfnOlxyRwMUGkGo5VtlnTZtsVAZqdKvSCOnMClP72iRJsuFQK/vO
         1kDIDn6Ae4TFxA8jau2FQRHb9SRB7mHQvfZBVfrvAwBtyWhlHlDS30QtygIrO9Nri25P
         6OFA==
X-Forwarded-Encrypted: i=1; AJvYcCXMGcaoswJWviZWb8lL4pCpQR6w1OJe2GRwI2PyGZ0lcAt3+F0QFE+KcLqzpRiz7UURjmjmqCt+CUknkyYgDA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzONFPPx3/+ldCRulEyE9psPnYA5iLo8tvQVtwQBJeYnAklQZ/S
	7rYBKD9aB93NuVgirV5C1jqGxnggqlZnnXWngHVqpWjMGseChNoFTojgaGtmKUY=
X-Gm-Gg: ASbGncvDr53oLIGjtIrdUlAhZ731xj5sT5Yr8JFwMLAqiqEu43zYgyHbVosXdBLb48F
	zv9k+z2g/MzlDgW2/1vCXD2fymM1jZjAEGxlDQNojwi68MbuA8rEL4BkwVXoBVccTuJDUI8g1sx
	65GDWVhdfjAXHph3uDoM1dM5SU6cmZoBq7Fu9fMJh+U9AMTaCuxDDKL9sWcVozboA5qSm5s13JP
	GMBw7byV+H85xtTZGFfedwUfDzKtSvVLlaPtlyNaGshzNSajndF+ALtA0Jt6eJz0Z+oUQ9t9R+w
	r3EeD8S7LPDHPuugVELquMOI8ytsylMgRQ==
X-Google-Smtp-Source: AGHT+IEz4awpqkJi/c9nNKxcLNj0HJ/bkNdjww1eQVi1trMS3Hp0zWEssHNhp45gp9A4Jt7vw68l1Q==
X-Received: by 2002:a05:6a00:882:b0:725:c8ea:b320 with SMTP id d2e1a72fcca58-7305d498d3amr215704b3a.14.1738864467255;
        Thu, 06 Feb 2025 09:54:27 -0800 (PST)
Received: from tjeznach.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73048adb10csm1636427b3a.66.2025.02.06.09.54.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2025 09:54:26 -0800 (PST)
Date: Thu, 6 Feb 2025 09:54:24 -0800
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
Message-ID: <Z6T3UCK1FI44pg7z@tjeznach.ba.rivosinc.com>
References: <0-v1-416f64558c7c+2a5-iommu_pages_jgg@nvidia.com>
 <17-v1-416f64558c7c+2a5-iommu_pages_jgg@nvidia.com>
 <Z6RI3ftJTrm3UxoO@tjeznach.ba.rivosinc.com>
 <20250206131721.GF2960738@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250206131721.GF2960738@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250206_095428_303063_90DF5413 
X-CRM114-Status: GOOD (  16.69  )
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

On Thu, Feb 06, 2025 at 09:17:21AM -0400, Jason Gunthorpe wrote:
> On Wed, Feb 05, 2025 at 09:30:05PM -0800, Tomasz Jeznach wrote:
> > > @@ -161,9 +163,8 @@ static int riscv_iommu_queue_alloc(struct riscv_iommu_device *iommu,
> > >  	} else {
> > >  		do {
> > >  			const size_t queue_size = entry_size << (logsz + 1);
> > > -			const int order = get_order(queue_size);
> > >  
> > > -			queue->base = riscv_iommu_get_pages(iommu, order);
> > > +			queue->base = riscv_iommu_get_pages(iommu, queue_size);
> > >  			queue->phys = __pa(queue->base);
> > 
> > All allocations must be 4k aligned, including sub-page allocs.
> 
> Oh weird, so it requires 4k alignment but the HW can refuse to support
> a 4k queue length?
> 

Spec allows that. Also, hardware accepts only physical page number (so far PAGE_SIZE == 4K
for riscv) of the base address, ignoring page offset.

> I changed it to this:
> 
> +                       queue->base = riscv_iommu_get_pages(
> +                               iommu, max(queue_size, SZ_4K));
> 

LGTM

> > >  		} while (!queue->base && logsz-- > 0);
> > >  	}
> > > @@ -618,7 +619,7 @@ static struct riscv_iommu_dc *riscv_iommu_get_dc(struct riscv_iommu_device *iomm
> > >  				break;
> > >  			}
> > >  
> > > -			ptr = riscv_iommu_get_pages(iommu, 0);
> > > +			ptr = riscv_iommu_get_pages(iommu, PAGE_SIZE);
> > >  			if (!ptr)
> > >  				return NULL;
> > >  
> > > @@ -698,7 +699,7 @@ static int riscv_iommu_iodir_alloc(struct riscv_iommu_device *iommu)
> > >  	}
> > >  
> > >  	if (!iommu->ddt_root) {
> > > -		iommu->ddt_root = riscv_iommu_get_pages(iommu, 0);
> > > +		iommu->ddt_root = riscv_iommu_get_pages(iommu, PAGE_SIZE);
> > >  		iommu->ddt_phys = __pa(iommu->ddt_root);
> > >  	}
> 
> Should these be SZ_4K as well or PAGE_SIZE?
> 

SZ_4K. For now iommu/risc-v hardware always assumes PAGE_SIZE == 4K.

> Thanks,
> Jason

Thanks,
- Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
