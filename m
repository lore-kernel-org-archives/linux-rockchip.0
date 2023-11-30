Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6FADC46CA3
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Nov 2023 21:16:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+JCZGsM5F8VSldiiu4UNi+0WISrVBldzwktEKGs+B6s=; b=FUEHfyg5HmE3hl
	+Fz9YzjDgq+bvwI4CxHBXvfR7BFwwuMfo+4lvq0fXmuRYkxFKbimGj+IwVPWArPhM2hxrijVcr6Gu
	qGalO0MTqpJI10VOe4UoOUhTqxcv0ofLnweOwmBQtnHS8+VNu5GIgzNl3MzCizX5A/3AItD4ot3S9
	e2Ieinn/f/mDZRPljhN4LjyATkHR+D6KVgSxFGX8d7IAH6vqJBqUjRqX7BSdjR99ucZ2nmozfs4UB
	iVdFKB7j0Kh82HkPWjA8vdaxVmIOMr2wq6nZ+q7hO1zKYMPlKYSo7SbRGmXyKHJCZwg/yNxeujsF1
	wNwiXNekcmullY8gLx5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8oOQ-00BvYh-0v;
	Thu, 30 Nov 2023 21:16:18 +0000
Received: from mail-qv1-xf36.google.com ([2607:f8b0:4864:20::f36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8nRF-00BoVs-1k
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Nov 2023 20:15:12 +0000
Received: by mail-qv1-xf36.google.com with SMTP id 6a1803df08f44-67a894ccb4eso4343196d6.3
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Nov 2023 12:15:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1701375308; x=1701980108; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=X5AMqGJYt6SEyyaxLyp7JmYGeHIyK2cLcP93CB0xsAo=;
        b=DRFCI0K8t2D2R0BxGm/knqfO13N5fOneP9rNw8em7nMHWfcy60bu9Y3lmdx3aVAQJi
         VWzAUOZEKkU8zeoKFsDjabSHTmOp0W5OQpe+7agDzWktRSDNdb9/39+hVJelPgRAdzkB
         1AanRBCR/7p/EH1PsuwRCtHWJPnCO+XVnJJO6NRmhckyJNSm/+geTvIEBU75r+AY5rrW
         sCJcUMEaDFMciss/WaJAx4micgFDy9ayEeJHTsTpvTX3Vl+fSuW7V6yR1xysy2B4BG3g
         iLbtxeiBLcGSlldS73t5s/zdjEDpTN0l8mK0k7lkeZuaitvVqWy9HlOsB27j31rKXRXd
         zW4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701375308; x=1701980108;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X5AMqGJYt6SEyyaxLyp7JmYGeHIyK2cLcP93CB0xsAo=;
        b=cBunBIYGHWyyffAB1ATAb0HUMKyMLRpw9FWo4hNkhNqv+HtRp6+RogdhWLBaMctmCB
         g0H4XX4Ohj7hKBH/jOSWSGcqYR+QLrfHXUnsikhvbsotvrN2Vo/cnchhhMvz/PndQvO9
         Q0UP7sIxqMuP15itqZTDlxneXapx8MKJtAnQ8bUNYrQ1VWmQYiAvirFS62pGhOF+mMGM
         2CEr7fp5S0QJs241w3OGxtF9dEpsfAvkTx1+jg/s5Kok6KywjZmZ7G6Nui1qyFN6Bzj3
         4VR1RUzuk2RiAQj7r7Pc/SCeCGv/apMG0IGBeJTXHtgdAlBRPoyhtSvcqf8NT+HJ9LLu
         q4WQ==
X-Gm-Message-State: AOJu0YzJ72BlrrKi1qgvQ68nnk8QB8VlGUsP3paB08KzxW8reDWIHGgg
	SYUT7I4MdakhKgmgy6H5kzQkjA==
X-Google-Smtp-Source: AGHT+IEJXctu9WcvSzFXt39rV8QEM3y7T1pFE0WiGQYLYtGfkA61KyCWh7Z0c00L3koHxXYwUBpejQ==
X-Received: by 2002:ad4:41c8:0:b0:67a:45e5:4aed with SMTP id a8-20020ad441c8000000b0067a45e54aedmr13542036qvq.21.1701375307954;
        Thu, 30 Nov 2023 12:15:07 -0800 (PST)
Received: from soleen.c.googlers.com.com (55.87.194.35.bc.googleusercontent.com. [35.194.87.55])
        by smtp.gmail.com with ESMTPSA id e1-20020a0cb441000000b0067a35608186sm795252qvf.28.2023.11.30.12.15.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 12:15:07 -0800 (PST)
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
	yu-cheng.yu@intel.com
Subject: [PATCH v2 00/10] IOMMU memory observability
Date: Thu, 30 Nov 2023 20:14:54 +0000
Message-ID: <20231130201504.2322355-1-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.43.0.rc2.451.g8631bc7472-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_121509_595693_C7813FFA 
X-CRM114-Status: GOOD (  15.52  )
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

From: Pasha Tatashin <tatashin@google.com>

----------------------------------------------------------------------
Changelog
----------------------------------------------------------------------
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
 drivers/iommu/amd/init.c                |  91 +++++-----
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
 drivers/iommu/iommu-pages.h             | 231 ++++++++++++++++++++++++
 drivers/iommu/rockchip-iommu.c          |  14 +-
 drivers/iommu/sun50i-iommu.c            |   7 +-
 drivers/iommu/tegra-smmu.c              |  18 +-
 include/linux/mmzone.h                  |   5 +-
 mm/vmstat.c                             |   3 +
 22 files changed, 390 insertions(+), 185 deletions(-)
 create mode 100644 drivers/iommu/iommu-pages.h

-- 
2.43.0.rc2.451.g8631bc7472-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
