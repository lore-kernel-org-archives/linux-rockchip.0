Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24577C46CD2
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Dec 2023 21:49:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HJeG/+JUPreWwUEWd7qYp5+X/AFmDBIFsUKklvfa5jc=; b=J/Ey5+p2LAqy+g
	ALhQryDqlhJ52ysMEXwPMKahMHEDhUXvhTvV1ulxZ+N57h/8wgeViV3afo99osmcvxyMw46Bknmc9
	rTp0p0mMtHChMF9bWeCG2BQr6T3Q1+ILlDy+VAyxKO6YCOLgQ0Ats46PIAXHnHAl2047kVUrxg0qM
	16LSiGUyXZrd2wDff4GQKWRyTN0dOqv0cgyYeDEIUGyotY4Aw9Co0ZGjg5uxmRNI3tqJuNBDs6eoB
	evT6x5Gj3OI2bgoTAECXWOlJ8ukqv98bBrYIJkyM9SneJSRqMNUOOJvn5I2zSu/Pl0ZSPXGhNLSfT
	VhksrxRb6q82S5/6Dxiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHWLx-009vVR-21;
	Sun, 24 Dec 2023 21:49:45 +0000
Received: from mail-il1-x12b.google.com ([2607:f8b0:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHWLu-009vUY-0Y
	for linux-rockchip@lists.infradead.org;
	Sun, 24 Dec 2023 21:49:44 +0000
Received: by mail-il1-x12b.google.com with SMTP id e9e14a558f8ab-36000a26f8aso27225ab.0
        for <linux-rockchip@lists.infradead.org>; Sun, 24 Dec 2023 13:49:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1703454581; x=1704059381; darn=lists.infradead.org;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=O0HiuPkhATpCWAkLMW05BPxTgagJyPS45hssBqZfyJY=;
        b=xrzPicOedZF0ByOVCDJo7/FREg5aEbY6NPgaK4yaalCxr/Mqrn68Wu2d/wh5jYoFrc
         JsdqRUu7W7OkjRVrGSjliEBogo5oXB8hm7vEG+xNyNhikf0a9EU6MfeMC2dBiR6A7zo9
         40A6fMmkHdm810TAJkGOvoIm+PLwPXd+MxVp1KaElSE67WyANPAcKLg/fapKmRcNYC65
         h2UWCes8FACrNlH12R6v7o+AUFmtTcbFq2ke5yCVMzzB24ygoZGxcQ0TlCmNsIQF5n4t
         tEHr89pIKv86hIdOz065UGUPttG5+p0QlDLZXGeyqqS3EW/N9jeiKooy0745Dt4jD6Uz
         9i8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703454581; x=1704059381;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O0HiuPkhATpCWAkLMW05BPxTgagJyPS45hssBqZfyJY=;
        b=Z19OJAyrjqI8dmlYHDgt8OGolhV2qIX3QkWFJgQPgH84TGhnOVZnF6wFt7Ax6D5sSG
         LYvCzC3VuACnIZZXkxw4x6RQyP8kSPRnP/ZxTKiz97duigqam8jeIuQIMvN7P4EsljTe
         aTs/Frw1UC5siR5Lyt8IiQikB1gILjfzNqoj3BQuFj5I80eXyWqtsVoEuixTefQhhtSp
         TOxCgRnk9P/oVlBl1iNOZKLFjTFzqJXM+/y/zg0YejH7HUeJP2D5R6XbDgR1xs2tAWbx
         vdnxE6lloYVfU9GQQIMKS7k4ykJ84i9zmqhTe5o0KFh9F+JiCd2IEd/7rejyCmSMVkwq
         uS/A==
X-Gm-Message-State: AOJu0YyOPiqpgffmBS//WEtCDadD8L7AYujDbT4sSTkTUX6p71BCCals
	jQlprZcT+0kKZErLCGgxiEaof/gclyGs
X-Google-Smtp-Source: AGHT+IHO1o4MpTmRsY4pG5iPw80zAps+6fJHAueY55ciRhpJtDvuIlpvxAKJ08/tY4qG55yyTyBfTQ==
X-Received: by 2002:a05:6e02:3001:b0:35f:b200:2fb5 with SMTP id bd1-20020a056e02300100b0035fb2002fb5mr495955ilb.11.1703454581205;
        Sun, 24 Dec 2023 13:49:41 -0800 (PST)
Received: from [2620:0:1008:15:c723:e11e:854b:ac88] ([2620:0:1008:15:c723:e11e:854b:ac88])
        by smtp.gmail.com with ESMTPSA id l18-20020a62be12000000b006ce95e37a40sm6824858pff.111.2023.12.24.13.49.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Dec 2023 13:49:40 -0800 (PST)
Date: Sun, 24 Dec 2023 13:49:39 -0800 (PST)
From: David Rientjes <rientjes@google.com>
To: Pasha Tatashin <pasha.tatashin@soleen.com>
cc: akpm@linux-foundation.org, alim.akhtar@samsung.com, alyssa@rosenzweig.io, 
    asahi@lists.linux.dev, baolu.lu@linux.intel.com, bhelgaas@google.com, 
    cgroups@vger.kernel.org, corbet@lwn.net, david@redhat.com, 
    dwmw2@infradead.org, hannes@cmpxchg.org, heiko@sntech.de, 
    iommu@lists.linux.dev, jernej.skrabec@gmail.com, jonathanh@nvidia.com, 
    joro@8bytes.org, krzysztof.kozlowski@linaro.org, linux-doc@vger.kernel.org, 
    linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
    linux-mm@kvack.org, linux-rockchip@lists.infradead.org, 
    linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev, 
    linux-tegra@vger.kernel.org, lizefan.x@bytedance.com, marcan@marcan.st, 
    mhiramat@kernel.org, m.szyprowski@samsung.com, paulmck@kernel.org, 
    rdunlap@infradead.org, robin.murphy@arm.com, samuel@sholland.org, 
    suravee.suthikulpanit@amd.com, sven@svenpeter.dev, 
    thierry.reding@gmail.com, tj@kernel.org, tomas.mudrunka@gmail.com, 
    vdumpa@nvidia.com, wens@csie.org, will@kernel.org, yu-cheng.yu@intel.com
Subject: Re: [PATCH v2 00/10] IOMMU memory observability
In-Reply-To: <20231130201504.2322355-1-pasha.tatashin@soleen.com>
Message-ID: <2913539c-68f1-5597-df64-99a884a60e0a@google.com>
References: <20231130201504.2322355-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231224_134942_453727_3CC95B83 
X-CRM114-Status: GOOD (  24.16  )
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

On Thu, 30 Nov 2023, Pasha Tatashin wrote:

> IOMMU subsystem may contain state that is in gigabytes. Majority of that
> state is iommu page tables. Yet, there is currently, no way to observe
> how much memory is actually used by the iommu subsystem.
> 
> This patch series solves this problem by adding both observability to
> all pages that are allocated by IOMMU, and also accountability, so
> admins can limit the amount if via cgroups.
> 
> The system-wide observability is using /proc/meminfo:
> SecPageTables:    438176 kB
> 
> Contains IOMMU and KVM memory.
> 
> Per-node observability:
> /sys/devices/system/node/nodeN/meminfo
> Node N SecPageTables:    422204 kB
> 
> Contains IOMMU and KVM memory memory in the given NUMA node.
> 
> Per-node IOMMU only observability:
> /sys/devices/system/node/nodeN/vmstat
> nr_iommu_pages 105555
> 
> Contains number of pages IOMMU allocated in the given node.
> 
> Accountability: using sec_pagetables cgroup-v2 memory.stat entry.
> 
> With the change, iova_stress[1] stops as limit is reached:
> 
> # ./iova_stress
> iova space:     0T      free memory:   497G
> iova space:     1T      free memory:   495G
> iova space:     2T      free memory:   493G
> iova space:     3T      free memory:   491G
> 
> stops as limit is reached.
> 

I think this is *very* useful to provide visibility into a significant 
amount of memory that we currently cannot observe on a host.  It can help 
to uncover bugs and shed light onto a particularly large amount of memory 
that would otherwise be mysterious.

Joerg, Will, Robin, I think this series would go through the 
git://git.kernel.org/pub/scm/linux/kernel/git/joro/iommu.git tree since it 
depends on a common framework for all other IOMMU implementations to then 
use?

Any concerns about this patch series?  It would be very useful for us to 
create visibility into this memory.


Pasha: any chance of adding a selftest that can be run that will test the 
value of nr_iommu_pages?  I could imagine in the future that a bug could 
be introduced where either an allocation or free is done through 
alloc_pages() directly and its paired alloc/free function now results in a 
leak or underflow.

> This series encorporates suggestions that came from the discussion
> at LPC [2].
> ----------------------------------------------------------------------
> [1] https://github.com/soleen/iova_stress
> [2] https://lpc.events/event/17/contributions/1466
> ----------------------------------------------------------------------
> Previous versions
> v1: https://lore.kernel.org/all/20231128204938.1453583-1-pasha.tatashin@soleen.com
> ----------------------------------------------------------------------
> 
> Pasha Tatashin (10):
>   iommu/vt-d: add wrapper functions for page allocations
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
> 
>  Documentation/admin-guide/cgroup-v2.rst |   2 +-
>  Documentation/filesystems/proc.rst      |   4 +-
>  drivers/iommu/amd/amd_iommu.h           |   8 -
>  drivers/iommu/amd/init.c                |  91 +++++-----
>  drivers/iommu/amd/io_pgtable.c          |  13 +-
>  drivers/iommu/amd/io_pgtable_v2.c       |  20 +-
>  drivers/iommu/amd/iommu.c               |  13 +-
>  drivers/iommu/exynos-iommu.c            |  14 +-
>  drivers/iommu/intel/dmar.c              |  10 +-
>  drivers/iommu/intel/iommu.c             |  47 ++---
>  drivers/iommu/intel/iommu.h             |   2 -
>  drivers/iommu/intel/irq_remapping.c     |  10 +-
>  drivers/iommu/intel/pasid.c             |  12 +-
>  drivers/iommu/intel/svm.c               |   7 +-
>  drivers/iommu/io-pgtable-arm.c          |   7 +-
>  drivers/iommu/io-pgtable-dart.c         |  37 ++--
>  drivers/iommu/iommu-pages.h             | 231 ++++++++++++++++++++++++
>  drivers/iommu/rockchip-iommu.c          |  14 +-
>  drivers/iommu/sun50i-iommu.c            |   7 +-
>  drivers/iommu/tegra-smmu.c              |  18 +-
>  include/linux/mmzone.h                  |   5 +-
>  mm/vmstat.c                             |   3 +
>  22 files changed, 390 insertions(+), 185 deletions(-)
>  create mode 100644 drivers/iommu/iommu-pages.h
> 
> -- 
> 2.43.0.rc2.451.g8631bc7472-goog
> 
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
