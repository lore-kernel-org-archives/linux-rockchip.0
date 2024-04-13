Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 305B9C4345F
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Apr 2024 01:34:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oph3v6sXOYUey039TtSeyk6glOootlhBsPmp/gmZ2nM=; b=S8ROYUC6WVOJ7n
	ewwIBWnP34UnLsCQCFJCQ8xBmTFANnJ4jQrf/lGPetXCChjwb9TvlzbPsoTFNSZLFbBrvPkGWw581
	1glZaJvGPgU2ZltBUHWWwBCDeunWK3NUNTJgVoN02oRIFmCwU01p07Onf/vQTuFv0R2LmYW2yw5Xd
	YU1W+c+h3LdFLX7M/BM61Ttqjge1E0PAoTa30idodpUPq9IUted5+XDgUoDmOFBU/pL8Sy2guJ/Ld
	Q+9UAnfH3e/sJKAcL4zjBeh1MOeb9gh+vO8JQYlSfFiF2q1jRPgws1+nkeHck69VBIEt9Lm1VEXkY
	ng1TEAMoYwHyr3ml+aIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvSHM-00000001yTr-0Vh6;
	Sat, 13 Apr 2024 01:34:04 +0000
Received: from mail-qk1-x734.google.com ([2607:f8b0:4864:20::734])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvRCy-00000001nhS-0rla
	for linux-rockchip@lists.infradead.org;
	Sat, 13 Apr 2024 00:25:34 +0000
Received: by mail-qk1-x734.google.com with SMTP id af79cd13be357-78ebcfcd3abso93281685a.1
        for <linux-rockchip@lists.infradead.org>; Fri, 12 Apr 2024 17:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen-com.20230601.gappssmtp.com; s=20230601; t=1712967925; x=1713572725; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=dxPD9e5Q1st8MCbV2NGQC2VF5/nUXXzMpKHuTELQ6SM=;
        b=oOc0Lj+gmdJf+QNlSJhunLxcrgzPQ8UAUgu1HLMyoZueOX13Oj+0pCtTlCwtcz8KYY
         BfS2FpQQO7Vv9GAVvsU2HIqHlxLpGF0x2YfjG1GIivru7KCORZIfoFUqnDYlJEQ8FRMQ
         7WS3QDVCOAxHQ0oKtcAQ51TRtQD+dx1HCDtTGjgxCVnVja7r1QEIAr5jpBjI9/LPLHY9
         IJGDPEjJJWlv3O67x8jIjLYxLj3f8XlIExJzAGtLgPOv5iB5RNcyj3wjnW/xGmLeICDc
         2D9GQxw+7aSEPE0jQivQptH+LlJlp0r8Ko+D034GRVCfG6Ch+fmjjU2/TbceD4/jgjmh
         33Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712967925; x=1713572725;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dxPD9e5Q1st8MCbV2NGQC2VF5/nUXXzMpKHuTELQ6SM=;
        b=K0/MWqILE/Zuqo1eSLXx2zi6QCxMCUqxAX8g6Fo36TYdWY6BU5pIRhC+v2EsmY1UhX
         8lgsgyiYYcmJeAox/haggrHZwxDRUKKNapsk3Xch10KsNmCDiAyjhbmd77LmvIjWf1Z/
         HAI1sHrmIN/XnhTZibni5QPvIHLR0oUoE8RbB5TgQuiBPZTGaO5AjuYqnPgSBq3DAbm0
         YrMwWNOMhXCoo3PoLwhjmI+1hcXODLW2Ps0j7fPAxFZiiMwqz7xc1bul5tQyaX+Y2B9w
         r49vC7/p/N9gMhApBGz/c5RGEuWYwFjPmo2DYRY1kbOJKfXUJLbtAxPRiPA23c2l9kc1
         aZJw==
X-Forwarded-Encrypted: i=1; AJvYcCWnIdOXVnw5KIQsVraFD1jDRAZkh5nS0gXG4gC4csYwQj3OPEMqPsm2sMWk9/OtltIXX1aRsm8+fGgKgrzH8E9vJT8nMaGmg2x7efskPTpP/hS9
X-Gm-Message-State: AOJu0YwoVgnP0n7hBFksmnYgjRuQFNctjyCXL/G+kJ2bw6DuaXp3WMEs
	r98PJR/doOfL2bLBdLVVlzisqjmpJsqdqzoHijwAnEjhXvyJv/SWDd0aRqMz0io=
X-Google-Smtp-Source: AGHT+IF7Vr8g4aGey5MWA+q3W7MDwSCWGzrkZkaE7zDxFxXJB774VSRb4A04gmHX15xeQKDoOQC1aA==
X-Received: by 2002:a05:620a:c90:b0:78d:39ef:c1e4 with SMTP id q16-20020a05620a0c9000b0078d39efc1e4mr4239836qki.24.1712967925336;
        Fri, 12 Apr 2024 17:25:25 -0700 (PDT)
Received: from soleen.c.googlers.com.com (128.174.85.34.bc.googleusercontent.com. [34.85.174.128])
        by smtp.gmail.com with ESMTPSA id wl25-20020a05620a57d900b0078d5fece9a6sm3053490qkn.101.2024.04.12.17.25.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Apr 2024 17:25:25 -0700 (PDT)
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
	rientjes@google.com,
	bagasdotme@gmail.com,
	mkoutny@suse.com
Subject: [PATCH v6 00/11] IOMMU memory observability
Date: Sat, 13 Apr 2024 00:25:11 +0000
Message-ID: <20240413002522.1101315-1-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.44.0.683.g7961c838ac-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_172529_398944_4CE6A454 
X-CRM114-Status: GOOD (  10.72  )
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
v6:
- Added Acked-bys
- fixed minor spelling error
- Synced with Linus master branch (8f2c057754b25075aa3da132cd4fd4478cdab854)

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

Contains IOMMU and KVM memory in the given NUMA node.

Per-node IOMMU only observability:
/sys/devices/system/node/nodeN/vmstat
nr_iommu_pages 105555

Contains number of pages IOMMU allocated in the given node.

Accountability: using sec_pagetables cgroup-v2 memory.stat entry.

With the change, iova_stress[1] stops as limit is reached:

$ ./iova_stress
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
v3: https://lore.kernel.org/all/20231226200205.562565-1-pasha.tatashin@soleen.com
v4: https://lore.kernel.org/all/20240207174102.1486130-1-pasha.tatashin@soleen.com
v5: https://lore.kernel.org/all/20240222173942.1481394-1-pasha.tatashin@soleen.com
----------------------------------------------------------------------

Pasha Tatashin (11):
  iommu/vt-d: add wrapper functions for page allocations
  iommu/dma: use iommu_put_pages_list() to releae freelist
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
 drivers/iommu/amd/init.c                |  91 ++++++------
 drivers/iommu/amd/io_pgtable.c          |  13 +-
 drivers/iommu/amd/io_pgtable_v2.c       |  18 +--
 drivers/iommu/amd/iommu.c               |  11 +-
 drivers/iommu/dma-iommu.c               |   7 +-
 drivers/iommu/exynos-iommu.c            |  14 +-
 drivers/iommu/intel/dmar.c              |  16 +-
 drivers/iommu/intel/iommu.c             |  47 ++----
 drivers/iommu/intel/iommu.h             |   2 -
 drivers/iommu/intel/irq_remapping.c     |  16 +-
 drivers/iommu/intel/pasid.c             |  18 +--
 drivers/iommu/intel/svm.c               |  11 +-
 drivers/iommu/io-pgtable-arm.c          |  15 +-
 drivers/iommu/io-pgtable-dart.c         |  37 ++---
 drivers/iommu/iommu-pages.h             | 186 ++++++++++++++++++++++++
 drivers/iommu/rockchip-iommu.c          |  14 +-
 drivers/iommu/sun50i-iommu.c            |   7 +-
 drivers/iommu/tegra-smmu.c              |  18 ++-
 include/linux/mmzone.h                  |   5 +-
 mm/vmstat.c                             |   3 +
 23 files changed, 359 insertions(+), 204 deletions(-)
 create mode 100644 drivers/iommu/iommu-pages.h

-- 
2.44.0.683.g7961c838ac-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
