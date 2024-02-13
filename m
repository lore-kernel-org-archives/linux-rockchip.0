Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42CAFC4829A
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Feb 2024 13:12:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nKaZPzwpZ+OCmEskLwfLAgHR5atbo6DinhjzDoG3JME=; b=rvikKeFdW1+lQQ
	ispF9tAdBfcVx51HLz3EXnScsBNRU6CPP4B93B1pNLTnwF2+PsSnVwpCHnsc9wnFjO9GHEqm//BQ0
	iO4I8myP2XUOekqERZhEi1MvRm2qmFA6W0KZnX6XvJCBC/970vyAnf+ajnEf4zUgjWWoWeKerz4TE
	5wqvLPFuULGCtvo2H3NBdxju/rGqdpU0wLHXvUWmTHz8ZWSDTzSZ8htort1f6DJ+qSLWJBL4e7wgV
	UJqEFhyRas6o4y/I7lrzNA9daUfTRUpv/l4xzhrdInRBKyLUPrds5gnGcq1NMMAxeVZJ72fOU0xUV
	1ygOxkPeX57oRi8aobSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZsaL-00000009IWN-1AHa;
	Tue, 13 Feb 2024 13:12:29 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZsaI-00000009IUr-1QxP
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Feb 2024 13:12:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 4190CCE1BA4;
	Tue, 13 Feb 2024 13:12:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E8FFC433C7;
	Tue, 13 Feb 2024 13:12:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707829942;
	bh=0xP8I+Qej1cBpPDnNiDZJmh7/DqD49joD1ERj3DvfKk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lCIC4VOmOV8x0JsCqVrhzsGXz5txq4HxyFPJQRNTQh3KKT2Il8RF8+xeahTD5vCl5
	 Kektsz/mfJ/JF35E4m5MMed5MRfMr6AfYG18l3OHogPx0QMHtC27U91R9ksMBhJ7LC
	 QrvfK3L/7OQ2iqeglywl+CEqt2Kk1nqFfANGVdzwrbq09GCHd1PFvhMsW+yndJN2EI
	 7AKa7uQuypabSxDDmx7RIiGt05YBvnxfcDyb7e4cAzPNfO0Its8Aro6czQ6i5gQbBA
	 2KpPkjnKmYQ164gn/9NIeHWvTjE9mVJFzcMrCxOJS/SnPSYLIExFrgWV58G9p+7QNg
	 Scf3fQWeQ5fiA==
Date: Tue, 13 Feb 2024 13:12:11 +0000
From: Will Deacon <will@kernel.org>
To: Pasha Tatashin <pasha.tatashin@soleen.com>
Cc: akpm@linux-foundation.org, alim.akhtar@samsung.com,
	alyssa@rosenzweig.io, asahi@lists.linux.dev,
	baolu.lu@linux.intel.com, bhelgaas@google.com,
	cgroups@vger.kernel.org, corbet@lwn.net, david@redhat.com,
	dwmw2@infradead.org, hannes@cmpxchg.org, heiko@sntech.de,
	iommu@lists.linux.dev, jernej.skrabec@gmail.com,
	jonathanh@nvidia.com, joro@8bytes.org,
	krzysztof.kozlowski@linaro.org, linux-doc@vger.kernel.org,
	linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-mm@kvack.org, linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev,
	linux-tegra@vger.kernel.org, lizefan.x@bytedance.com,
	marcan@marcan.st, mhiramat@kernel.org, m.szyprowski@samsung.com,
	paulmck@kernel.org, rdunlap@infradead.org, robin.murphy@arm.com,
	samuel@sholland.org, suravee.suthikulpanit@amd.com,
	sven@svenpeter.dev, thierry.reding@gmail.com, tj@kernel.org,
	tomas.mudrunka@gmail.com, vdumpa@nvidia.com, wens@csie.org,
	yu-cheng.yu@intel.com, rientjes@google.com
Subject: Re: [PATCH v3 10/10] iommu: account IOMMU allocated memory
Message-ID: <20240213131210.GA28926@willie-the-truck>
References: <20231226200205.562565-1-pasha.tatashin@soleen.com>
 <20231226200205.562565-11-pasha.tatashin@soleen.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231226200205.562565-11-pasha.tatashin@soleen.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_051226_756538_70E0A1F5 
X-CRM114-Status: GOOD (  18.34  )
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

Hi Pasha,

On Tue, Dec 26, 2023 at 08:02:05PM +0000, Pasha Tatashin wrote:
> In order to be able to limit the amount of memory that is allocated
> by IOMMU subsystem, the memory must be accounted.
> 
> Account IOMMU as part of the secondary pagetables as it was discussed
> at LPC.
> 
> The value of SecPageTables now contains mmeory allocation by IOMMU
> and KVM.
> 
> Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>
> ---
>  Documentation/admin-guide/cgroup-v2.rst | 2 +-
>  Documentation/filesystems/proc.rst      | 4 ++--
>  drivers/iommu/iommu-pages.h             | 2 ++
>  include/linux/mmzone.h                  | 2 +-
>  4 files changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/admin-guide/cgroup-v2.rst b/Documentation/admin-guide/cgroup-v2.rst
> index 3f85254f3cef..e004e05a7cde 100644
> --- a/Documentation/admin-guide/cgroup-v2.rst
> +++ b/Documentation/admin-guide/cgroup-v2.rst
> @@ -1418,7 +1418,7 @@ PAGE_SIZE multiple when read back.
>  	  sec_pagetables
>  		Amount of memory allocated for secondary page tables,
>  		this currently includes KVM mmu allocations on x86
> -		and arm64.
> +		and arm64 and IOMMU page tables.
>  
>  	  percpu (npn)
>  		Amount of memory used for storing per-cpu kernel
> diff --git a/Documentation/filesystems/proc.rst b/Documentation/filesystems/proc.rst
> index 49ef12df631b..86f137a9b66b 100644
> --- a/Documentation/filesystems/proc.rst
> +++ b/Documentation/filesystems/proc.rst
> @@ -1110,8 +1110,8 @@ KernelStack
>  PageTables
>                Memory consumed by userspace page tables
>  SecPageTables
> -              Memory consumed by secondary page tables, this currently
> -              currently includes KVM mmu allocations on x86 and arm64.
> +              Memory consumed by secondary page tables, this currently includes
> +              KVM mmu and IOMMU allocations on x86 and arm64.

While I can see the value in this for IOMMU mappings managed by VFIO,
doesn't this end up conflating that with the normal case of DMA domains?
For systems that e.g. rely on an IOMMU for functional host DMA, it seems
wrong to subject that to accounting constraints.

Will

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
