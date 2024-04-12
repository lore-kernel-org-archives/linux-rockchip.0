Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86582C4345F
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Apr 2024 10:10:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5VGy6qbLA4ht7BWxrn8Q62wbxujwYbHcbtFdMk7Uajs=; b=gC+QaQrNpiOkBf
	/3NMGrWyyZHkATE+TTaNlP8wRO0xsIYo4Sw53S1hFV03PdvXIo0HcYxXozTus0jPnpaDq0bRIqCeG
	9Ss9zAVtRg1+NKShlknXVTpmDxjh9sRUOCwiZVDBX06/ZhWd8M/wzPcVF242RHxI0rjveQ7VTbrwW
	CSVMD6Asw0Yk6m3E81Xvi6FzZjf/7YoyUEB/1TL3Ej3yEt7o6CtgtDbI8Bv92HmdAzRe6fGmXNjQO
	lvphCCvRZP7mHpWcs/GeeY9l95taBTdljo30rEKlxc8+YtEVdwGLXFAunI04kGxt5EYIokOWyDuO5
	34kjvHkWpGa4rRISQpow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvDrS-0000000GavT-0300;
	Fri, 12 Apr 2024 10:10:22 +0000
Received: from mail.8bytes.org ([2a01:238:42d9:3f00:e505:6202:4f0c:f051])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvDrO-0000000Gau0-44Se
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Apr 2024 10:10:20 +0000
Received: from 8bytes.org (p4ffe0bdf.dip0.t-ipconnect.de [79.254.11.223])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.8bytes.org (Postfix) with ESMTPSA id 51047281A38;
	Fri, 12 Apr 2024 12:10:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=8bytes.org;
	s=default; t=1712916616;
	bh=E+iVkylCqaTgNVotthxWDOOoCqml/4nGJOpaARXTjK0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LuZbLWJPGCLZJPltogQTsk4oQ9NTj4Tsj7ifX4XmlHt9dm9BjBk7wNSRnJEGBBLX0
	 RR1K295opyq8KNseqPbA6/RWBABghoCfLVi53gLBIUssvvge/FC7qptmqVDcplhzTo
	 XuBmaDg9QBQ/vnZqdaxAREDkzJpp0Wy4QVBWKVDHOT7296ofu/w9sV3sUJl9A78VIT
	 Q8HYmCNyUOwMBct7Se9mdxxPDMr4hl0kzCGipNnFTmrP6p8lRL075rML4+cOeADLWK
	 3bfKf9EbMlshGtJnw/aGnFdGxYsmOkfVQGWHlFj/MJ94e75Lh2o+bnyCKL3btAMYV6
	 t2ODbB7AbBEpQ==
Date: Fri, 12 Apr 2024 12:10:14 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Pasha Tatashin <pasha.tatashin@soleen.com>
Cc: akpm@linux-foundation.org, alim.akhtar@samsung.com,
	alyssa@rosenzweig.io, asahi@lists.linux.dev,
	baolu.lu@linux.intel.com, bhelgaas@google.com,
	cgroups@vger.kernel.org, corbet@lwn.net, david@redhat.com,
	dwmw2@infradead.org, hannes@cmpxchg.org, heiko@sntech.de,
	iommu@lists.linux.dev, jernej.skrabec@gmail.com,
	jonathanh@nvidia.com, krzysztof.kozlowski@linaro.org,
	linux-doc@vger.kernel.org, linux-fsdevel@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-mm@kvack.org,
	linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev,
	linux-tegra@vger.kernel.org, lizefan.x@bytedance.com,
	marcan@marcan.st, mhiramat@kernel.org, m.szyprowski@samsung.com,
	paulmck@kernel.org, rdunlap@infradead.org, robin.murphy@arm.com,
	samuel@sholland.org, suravee.suthikulpanit@amd.com,
	sven@svenpeter.dev, thierry.reding@gmail.com, tj@kernel.org,
	tomas.mudrunka@gmail.com, vdumpa@nvidia.com, wens@csie.org,
	will@kernel.org, yu-cheng.yu@intel.com, rientjes@google.com,
	bagasdotme@gmail.com, mkoutny@suse.com
Subject: Re: [PATCH v5 00/11] IOMMU memory observability
Message-ID: <ZhkIhtTCWg6bgl1o@8bytes.org>
References: <20240222173942.1481394-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240222173942.1481394-1-pasha.tatashin@soleen.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_031019_426198_19841E6F 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
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

Pasha,

On Thu, Feb 22, 2024 at 05:39:26PM +0000, Pasha Tatashin wrote:
> Pasha Tatashin (11):
>   iommu/vt-d: add wrapper functions for page allocations
>   iommu/dma: use iommu_put_pages_list() to releae freelist
>   iommu/amd: use page allocation function provided by iommu-pages.h
>   iommu/io-pgtable-arm: use page allocation function provided by
>     iommu-pages.h
>   iommu/io-pgtable-dart: use page allocation function provided by
>     iommu-pages.h
>   iommu/exynos: use page allocation function provided by iommu-pages.h
>   iommu/rockchip: use page allocation function provided by iommu-pages.h
>   iommu/sun50i: use page allocation function provided by iommu-pages.h
>   iommu/tegra-smmu: use page allocation function provided by
>     iommu-pages.h
>   iommu: observability of the IOMMU allocations
>   iommu: account IOMMU allocated memory

Some problems with this:

  1. I get DKIM failures when downloading this patch-set with b4, can
     you please send them via a mailserver with working DKIM?

  2. They don't apply to v6.9-rc3. Please rebase to that version and
     are-send.

Thanks,

	Joerg

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
