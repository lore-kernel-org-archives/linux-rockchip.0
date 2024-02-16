Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42A3AC48260
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Feb 2024 17:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6F/cyCbLMP6e9EkdeLK8lKxHokWxEYCgBJqOrPxPSBo=; b=15bpM6XvSPVMMG
	mXpba2j7wEz3B/D4EM1JLIV2GMVVzlhzCwnDW04iNBb+XC9GuuxVFCIZkXaD0BjWpFeHxR5JCp6yt
	nb1XBJxSCFWmbQmfAkNbyJTuMCrojydvkpmeR8bRTQ1rPU3BxUMvyoE+uNU7mmY4GjvHml1FyCmgg
	rsrfIkC+/6H+obKtSVuxYj16b43N1aK6ub1kaJDaA6wIdZRlRLfbGfC3eUrtgDSZFqd0aRhdZK4KT
	JWMyVtKy9VaByHvlzmGpKQt8GiHGHtVkc6Ep3d0loaTKvuKF1luw1al0Ywi7QJQ42vWx9RdK0G9zE
	ffCQc1BBJZwu/hrl4ikw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rb2TS-00000003G9T-21Q5;
	Fri, 16 Feb 2024 17:58:10 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rb2TP-00000003G8M-33b6
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Feb 2024 17:58:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 5603BCE2920;
	Fri, 16 Feb 2024 17:58:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53326C433C7;
	Fri, 16 Feb 2024 17:57:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708106283;
	bh=y2z4Q/0wnbBdLLtyxBXxt5K2cw4Zk8wNIb/HNMYSK+w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nT6IeXcB5A43SSuF9BwUjII4ilTrRHMPvyzAnUo1omQItjPLdK1yI1D9r6AZeDJjT
	 Lwec75FjdfHRyDok4qKpynzHaY+jVireNBdMEX/3sIKAUUpmIhEG7WzhREkQiExlla
	 CgQQTgxXPyDIS10jW64uzXwfZpoYlaicR7QgPuL2AkSdV1armgqhtJ8YVi3RmIUsAl
	 Q2sDUO4AfPf2tDL7JF+EOIX5LDDCQbncjtrRPNNl7ClDtX9p0Tr4GtgrGyYSwu7tru
	 dgGCbrO+S2RC7zBGm+KqHvQrvfNlefg2300BnAO27KjDWBt5rkFi4I/om5XiQtrGtZ
	 +tSr/4cauSzEg==
Date: Fri, 16 Feb 2024 17:57:52 +0000
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
Message-ID: <20240216175752.GB2374@willie-the-truck>
References: <20231226200205.562565-1-pasha.tatashin@soleen.com>
 <20231226200205.562565-11-pasha.tatashin@soleen.com>
 <20240213131210.GA28926@willie-the-truck>
 <CA+CK2bB4Z+z8tocO79AdsAy+gmN_4aVHgFUsm_gYLUJ2zV1A6A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+CK2bB4Z+z8tocO79AdsAy+gmN_4aVHgFUsm_gYLUJ2zV1A6A@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_095807_959872_0D03B6EC 
X-CRM114-Status: GOOD (  17.19  )
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

On Tue, Feb 13, 2024 at 10:44:53AM -0500, Pasha Tatashin wrote:
> > >  SecPageTables
> > > -              Memory consumed by secondary page tables, this currently
> > > -              currently includes KVM mmu allocations on x86 and arm64.
> > > +              Memory consumed by secondary page tables, this currently includes
> > > +              KVM mmu and IOMMU allocations on x86 and arm64.
> 
> Hi Will,
> 
> > While I can see the value in this for IOMMU mappings managed by VFIO,
> > doesn't this end up conflating that with the normal case of DMA domains?
> > For systems that e.g. rely on an IOMMU for functional host DMA, it seems
> > wrong to subject that to accounting constraints.
> 
> The accounting constraints are only applicable when GFP_KERNEL_ACCOUNT
> is passed to the iommu mapping functions. We do that from the vfio,
> iommufd, and vhost. Without this flag, the memory useage is reported
> in /proc/meminfo as part of  SecPageTables field, but not constrained
> in cgroup.

Thanks, Pasha, that explanation makes sense. I still find it bizarre to
include IOMMU allocations from the DMA API in SecPageTables though, and
I worry that it will confuse people who are using that metric as a way
to get a feeling for how much memory is being used by KVM's secondary
page-tables. As an extreme example, having a non-zero SecPageTables count
without KVM even compiled in is pretty bizarre.

Will

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
