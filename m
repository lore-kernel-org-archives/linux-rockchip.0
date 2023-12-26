Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0D20C46CD3
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Dec 2023 21:15:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=brw7izN87QKe27U7LxB4WngDZdnGL5LZmrUmM0Jy1Vo=; b=GUwfniuphBfGUJ
	T04DoYVzzHcJtrkh+H6P5h2dcGIv8bZarTAWqPdFIUYUsdGtfMH9qJ9BlzcqmcsJt5BQSH7SolF38
	tTLF4sElWco+EDbGIJpua3DTD467/rtjMEcnXGv/TCwdsA/IOYNYohZ5yJbO7spvKIMLedlGpyea1
	rS4xXoY8u8WAEsYz4XNmF8eDXJPWc9xSgum4Sk+uJ9cFldV+TzLXY/KNkLPKeYbBa09fMdEjpEA9j
	lvvZjpDLY96+29x3aGAXN2LHPZs79g2TXZu09AwouPICAFSiHlYSxz8HCI069r9YHDT7CrgwB0eQJ
	jay6zF/UX+hGArI99Q6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rIEly-00DYDu-0o;
	Tue, 26 Dec 2023 21:15:34 +0000
Received: from mail-qv1-xf2e.google.com ([2607:f8b0:4864:20::f2e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rIDcv-00DTtK-2A
	for linux-rockchip@lists.infradead.org;
	Tue, 26 Dec 2023 20:02:12 +0000
Received: by mail-qv1-xf2e.google.com with SMTP id 6a1803df08f44-67fe0210665so16404916d6.1
        for <linux-rockchip@lists.infradead.org>; Tue, 26 Dec 2023 12:02:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1703620928; x=1704225728; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=O3PECSz7M6LwJTPdrkLY+55pPQo2vTN8jkKqtc7LNKw=;
        b=aTEjK3ePZoEW/ZewiYfAiXAoWwtfsJfBtyBnVUgfoICI+RYA9Uy+J7Ix4C+nzCR4NW
         2xNVJHH/p8l8lM31KSnqt+/2nCzyha+gEYFIRqKEwjUI0yUkVDuaBJ0IUEqMBuIZI3D3
         e6/4nIH83kPiOYjuxvq4dF7Cc6/ey32j2+aDznUVUFGcXYz1aq8R3SApu2j0BLEgOVaa
         0160qPe9UPPZXmlN8mHNstX5gt/yCiyXTAIiHIwNxqW8xVU3/U5VpYX4kF57IlTir9Um
         V6eRuNeh9Gf3uIkWBZhStdjNBIEP/YXhXQhIdIbHkSHHidkDOM5N4aJy6Fim2mk+8C7n
         7qRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703620928; x=1704225728;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O3PECSz7M6LwJTPdrkLY+55pPQo2vTN8jkKqtc7LNKw=;
        b=Ts4bEx5C64DCcjaPUPSS5nVkvIBWrVBVJrh8L7GaD6kYoat3bfoWS5v3ZHX3oFWIi4
         7tm+GTmd7i6WnPHu5ThdP7sIfPYv7rsmhMhNcAe7RlQcnk+ftrV+k5HFQi70v3YjwFGj
         lv6B6ZEj0gGoXkoMuBi2W+rGlAoP2p6j+c4dAobUuYP2sYLBO6UXWZFdq5XApHUN0D/l
         yO4b7tP/Kt1vnwgISCX6UbvQhleJ6H0z0G5dNnakxs7EgpzohAqsLi+wLX/2RbBnsdGh
         DdORqE2lobGXuhQ5Pcc2DI+W0hgf8ecNE3O6SyGnaUyZdUxymy4R0k5APwP0ym/tBjpV
         BcUg==
X-Gm-Message-State: AOJu0YwIQN+sq8+jhItyAq4zUHUHmrgneztP2lSA75Mo8rit/xsFJlFF
	qEPvSgIeqmyCN+iNAD3AeI+AtAs65H0rMQ==
X-Google-Smtp-Source: AGHT+IEQhfs2w29Y4oEHKMdn2lx6fbgiHsN/7DqKMKEEg4mMRcO6NOtJWlf/527QYsbumDRKw7qTlA==
X-Received: by 2002:a05:6214:769:b0:67f:3d0e:783f with SMTP id f9-20020a056214076900b0067f3d0e783fmr13773008qvz.54.1703620928161;
        Tue, 26 Dec 2023 12:02:08 -0800 (PST)
Received: from soleen.c.googlers.com.com (55.87.194.35.bc.googleusercontent.com. [35.194.87.55])
        by smtp.gmail.com with ESMTPSA id t5-20020a0cf985000000b0067f696f412esm4894539qvn.112.2023.12.26.12.02.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Dec 2023 12:02:07 -0800 (PST)
From: Pasha Tatashin <pasha.tatashin@soleen.com>
To: akpm@linux-foundation.org,
	alim.akhtar@samsung.com,
	alyssa@rosenzweig.io,
	asahi@lists.linux.dev,
	baolu.lu@linux.intel.com,
	bhelgaas@google.com,
	cgroups@vger.kernel.org,
	corbet@lwn.net,
	david@redhat.com,
	dwmw2@infradead.org,
	hannes@cmpxchg.org,
	heiko@sntech.de,
	iommu@lists.linux.dev,
	jernej.skrabec@gmail.com,
	jonathanh@nvidia.com,
	joro@8bytes.org,
	krzysztof.kozlowski@linaro.org,
	linux-doc@vger.kernel.org,
	linux-fsdevel@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mm@kvack.org,
	linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-sunxi@lists.linux.dev,
	linux-tegra@vger.kernel.org,
	lizefan.x@bytedance.com,
	marcan@marcan.st,
	mhiramat@kernel.org,
	m.szyprowski@samsung.com,
	pasha.tatashin@soleen.com,
	paulmck@kernel.org,
	rdunlap@infradead.org,
	robin.murphy@arm.com,
	samuel@sholland.org,
	suravee.suthikulpanit@amd.com,
	sven@svenpeter.dev,
	thierry.reding@gmail.com,
	tj@kernel.org,
	tomas.mudrunka@gmail.com,
	vdumpa@nvidia.com,
	wens@csie.org,
	will@kernel.org,
	yu-cheng.yu@intel.com,
	rientjes@google.com
Subject: [PATCH v3 00/10] IOMMU memory observability
Date: Tue, 26 Dec 2023 20:01:55 +0000
Message-ID: <20231226200205.562565-1-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231226_120209_972314_765F1609 
X-CRM114-Status: GOOD (  15.78  )
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

----------------------------------------------------------------------
Changelog
----------------------------------------------------------------------
v3:
- Sync with v6.7-rc7
- Addressed comments from David Rientjes: s/pages/page/, added unlikely() into
  the branches, expanded comment for iommu_free_pages_list().
- Added Acked-bys: David Rientjes

v2:
- Added Reviewed-by Janne Grunau
- Sync with 6.7.0-rc3, 3b47bc037bd44f142ac09848e8d3ecccc726be99
- Separated form the series patches:
vhost-vdpa: account iommu allocations
https://lore.kernel.org/all/20231130200447.2319543-1-pasha.tatashin@soleen.com
vfio: account iommu allocations
https://lore.kernel.org/all/20231130200900.2320829-1-pasha.tatashin@soleen.com
as suggested by Jason Gunthorpe
- Fixed SPARC build issue detected by kernel test robot
- Drop the following patches as they do account iommu page tables:
iommu/dma: use page allocation function provided by iommu-pages.h
iommu/fsl: use page allocation function provided by iommu-pages.h
iommu/iommufd: use page allocation function provided by iommu-pages.h
as suggested by Robin Murphy. These patches are not related to IOMMU
page tables. We might need to do a separate work to support DMA
observability.
- Remove support iommu/io-pgtable-arm-v7s as the 2nd level pages are
under a page size, thanks Robin Murphy for pointing this out.

----------------------------------------------------------------------
Description
----------------------------------------------------------------------
IOMMU subsystem may contain state that is in gigabytes. Majority of that
state is iommu page tables. Yet, there is currently, no way to observe
how much memory is actually used by the iommu subsystem.

This patch series solves this problem by adding both observability to
all pages that are allocated by IOMMU, and also accountability, so
admins can limit the amount if via cgroups.

The system-wide observability is using /proc/meminfo:
SecPageTables:    438176 kB

Contains IOMMU and KVM memory.

Per-node observability:
/sys/devices/system/node/nodeN/meminfo
Node N SecPageTables:    422204 kB

Contains IOMMU and KVM memory memory in the given NUMA node.

Per-node IOMMU only observability:
/sys/devices/system/node/nodeN/vmstat
nr_iommu_pages 105555

Contains number of pages IOMMU allocated in the given node.

Accountability: using sec_pagetables cgroup-v2 memory.stat entry.

With the change, iova_stress[1] stops as limit is reached:

# ./iova_stress
iova space:     0T      free memory:   497G
iova space:     1T      free memory:   495G
iova space:     2T      free memory:   493G
iova space:     3T      free memory:   491G

stops as limit is reached.

This series encorporates suggestions that came from the discussion
at LPC [2].
----------------------------------------------------------------------
[1] https://github.com/soleen/iova_stress
[2] https://lpc.events/event/17/contributions/1466
----------------------------------------------------------------------
Previous versions
v1: https://lore.kernel.org/all/20231128204938.1453583-1-pasha.tatashin@soleen.com
v2: https://lore.kernel.org/linux-mm/20231130201504.2322355-1-pasha.tatashin@soleen.com
----------------------------------------------------------------------

Pasha Tatashin (10):
  iommu/vt-d: add wrapper functions for page allocations
  iommu/amd: use page allocation function provided by iommu-pages.h
  iommu/io-pgtable-arm: use page allocation function provided by
    iommu-pages.h
  iommu/io-pgtable-dart: use page allocation function provided by
    iommu-pages.h
  iommu/exynos: use page allocation function provided by iommu-pages.h
  iommu/rockchip: use page allocation function provided by iommu-pages.h
  iommu/sun50i: use page allocation function provided by iommu-pages.h
  iommu/tegra-smmu: use page allocation function provided by
    iommu-pages.h
  iommu: observability of the IOMMU allocations
  iommu: account IOMMU allocated memory

 Documentation/admin-guide/cgroup-v2.rst |   2 +-
 Documentation/filesystems/proc.rst      |   4 +-
 drivers/iommu/amd/amd_iommu.h           |   8 -
 drivers/iommu/amd/init.c                |  91 +++++----
 drivers/iommu/amd/io_pgtable.c          |  13 +-
 drivers/iommu/amd/io_pgtable_v2.c       |  20 +-
 drivers/iommu/amd/iommu.c               |  13 +-
 drivers/iommu/exynos-iommu.c            |  14 +-
 drivers/iommu/intel/dmar.c              |  10 +-
 drivers/iommu/intel/iommu.c             |  47 ++---
 drivers/iommu/intel/iommu.h             |   2 -
 drivers/iommu/intel/irq_remapping.c     |  10 +-
 drivers/iommu/intel/pasid.c             |  12 +-
 drivers/iommu/intel/svm.c               |   7 +-
 drivers/iommu/io-pgtable-arm.c          |   7 +-
 drivers/iommu/io-pgtable-dart.c         |  37 ++--
 drivers/iommu/iommu-pages.h             | 236 ++++++++++++++++++++++++
 drivers/iommu/rockchip-iommu.c          |  14 +-
 drivers/iommu/sun50i-iommu.c            |   7 +-
 drivers/iommu/tegra-smmu.c              |  18 +-
 include/linux/mmzone.h                  |   5 +-
 mm/vmstat.c                             |   3 +
 22 files changed, 395 insertions(+), 185 deletions(-)
 create mode 100644 drivers/iommu/iommu-pages.h

-- 
2.43.0.472.g3155946c3a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
