Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B7A2C2D0CD
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 May 2025 16:35:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yO0Gr6/kkuHkNT/EPcmRiOs0qZ/saCKUaUUO6w5uLK4=; b=OYH6zqBftu5g+L
	k4IRHTf5xsN4HvPq7s3+vdgVUwbEc2+HOX5WejXnBk4ZQWYLChwGCxKhgxB0R9p4cCCOBoHlraRwK
	7pS5q/efZNxR/gO3rzHxJPK4nJ7vmAnIboBix52Riqy35C8IYiI4+C0b7GypVCoRv94EmvnO4eDZ3
	doR+5Ft4CTNarWCsYgMnm/qJh8nzH5ngFazJaW49khPaN2uWIuQdN0dMCaFhfM0taHd8RJE+3hHSS
	9ZDkh52EHdcRYZgmLtQV23l7yQB/7yQDMJeDfYMYMdtoMpdOgQFdtGd8Cg3afzmpHQUA6F8gg4BV7
	lSSdzFWjYyq0rJpQJYWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFbYM-00000001HMP-3XHC;
	Thu, 15 May 2025 16:35:26 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFbWK-00000001H1f-14IR;
	Thu, 15 May 2025 16:33:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 41760614BD;
	Thu, 15 May 2025 16:33:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1AD5EC4CEE7;
	Thu, 15 May 2025 16:33:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747326799;
	bh=kKPojMJd9kqH6u8NArAZ+Lui+uo9ndwDNquYyy93G0k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ESjhprCJouXAhjQr0dZG6SyTXibttfDkEXUZ8Ep+z+gy7A2IEg74Pih3DzIhR92mQ
	 Wg1fRLZ7AahHltL5KOdUISnA+OaOb/NOKa//4TXRGsVv+rtItX6BET9OvhMNCVjW8U
	 De/WmZChNK1Me4d3LxDTawHPD0qDmGXiVYicOpf6dOYdfucJiAUxulmuYxUjdIzoNg
	 rv5OilXcNBVStDgu4CYEBWfv8QrLAI7K0VbMfOL+gk/FQ5MrHdl540MrndCpVvuVnX
	 7099wIC/Jq/PwBwkwpUYCjiluxA04ZhHxA2VwN2NdOyoYvtGtPBJorxsEY9l/w9orN
	 6Z7TkSd+Kro/w==
Date: Thu, 15 May 2025 17:33:07 +0100
From: Will Deacon <will@kernel.org>
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: Alexandre Ghiti <alex@ghiti.fr>, Alim Akhtar <alim.akhtar@samsung.com>,
	Alyssa Rosenzweig <alyssa@rosenzweig.io>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Albert Ou <aou@eecs.berkeley.edu>, asahi@lists.linux.dev,
	Baolin Wang <baolin.wang@linux.alibaba.com>,
	Lu Baolu <baolu.lu@linux.intel.com>,
	David Woodhouse <dwmw2@infradead.org>,
	Gerald Schaefer <gerald.schaefer@linux.ibm.com>,
	Heiko Stuebner <heiko@sntech.de>, iommu@lists.linux.dev,
	Janne Grunau <j@jannau.net>,
	Jean-Philippe Brucker <jean-philippe@linaro.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Joerg Roedel <joro@8bytes.org>, Kevin Tian <kevin.tian@intel.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-mediatek@lists.infradead.org, linux-riscv@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-s390@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev,
	linux-tegra@vger.kernel.org,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Matthew Rosato <mjrosato@linux.ibm.com>,
	Neal Gompa <neal@gompa.dev>, Orson Zhai <orsonzhai@gmail.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Rob Clark <robdclark@gmail.com>,
	Robin Murphy <robin.murphy@arm.com>,
	Samuel Holland <samuel@sholland.org>,
	Niklas Schnelle <schnelle@linux.ibm.com>,
	Sven Peter <sven@svenpeter.dev>,
	Thierry Reding <thierry.reding@gmail.com>,
	Tomasz Jeznach <tjeznach@rivosinc.com>,
	Krishna Reddy <vdumpa@nvidia.com>, virtualization@lists.linux.dev,
	Chen-Yu Tsai <wens@csie.org>, Yong Wu <yong.wu@mediatek.com>,
	Chunyan Zhang <zhang.lyra@gmail.com>, patches@lists.linux.dev
Subject: Re: [PATCH 0/7] Remove ops.pgsize_bitmap
Message-ID: <20250515163307.GA12396@willie-the-truck>
References: <0-v1-7c5282b0c334+2db-iommu_rm_ops_pgsize_jgg@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0-v1-7c5282b0c334+2db-iommu_rm_ops_pgsize_jgg@nvidia.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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

On Tue, Apr 29, 2025 at 11:34:10AM -0300, Jason Gunthorpe wrote:
> Now that all drivers are using domain_alloc_paging() and dev is never
> NULL, we can have all drivers correctly set domain.pgsize_bitmap during
> their allocation function.
> 
> There are a few oddities that have accumulated here over past changes:
> 
>  - Some drivers always set domain.pgsize_bitmap during their
>    domain_alloc_paging() call but still provide a value in ops. This is dead
>    code, delete it.
> 
>  - Some drivers calculate a system global pgsize_bitmap in the ops, but
>    it is now trivial to use the per-instance value instead. In several
>    cases this is dead code, delete it. This also allows
>    constifying the ops in these drivers as a hardening measure
> 
>  - Some drivers have a fixed pgsize_bitmap, put it next to setting up the
>    geometry in their domain_alloc_paging() functions.
> 
>  - Finally a few drivers still use ops because they have a delayed
>    finalize operation. Set the constant pgsize_bitmap in the
>    domain_alloc_paging().
> 
> Then remove ops.pgsize_bitmap.
> 
> This is based on iommu next, and must go after the virtio
> domain_alloc_paging() conversion.
> 
> Jason Gunthorpe (7):
>   iommu/arm-smmu-v3: Remove iommu_ops pgsize_bitmap
>   iommu/arm-smmu: Remove iommu_ops pgsize_bitmap

These two SMMU changes look correct to me:

Acked-by: Will Deacon <will@kernel.org>

Please yell if you'd like me to pick them up separately from the rest
of the series.

Will

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
