Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 192DDC4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 22:01:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8at8XsYrgQ5aj6EBpFylv0XkRCgWfVVeb4N2jxHFSEk=; b=VotUkVluQgqkGI
	JwqZ2+Wn997uc4wkbldXKhNlLUDud4x8t62HnfUeafuAHycqnhLf9kHDvBYhPR35P3IeriFh5VI5s
	N2Kk21yGpfHCkQczyzpKllqn3YPTojAHuZO3oWXhxXSgp6dKjH/b4nzDm/Gq6Cz/fjl/TY+KmHXlj
	HOb3f7EF3FtTazlujVTU3G92+m6O/LrMTX+Kf1qO/wiPOX8kw37vJX5UzwvQCX6yDqPYQtdv38Oxu
	0I3MDqgUrqgRH9ORted6zuBcidYBAwUTr9JN4oOHi/+tkDntyKNRhRguNGLtWpGRvkhLWONWdHXYT
	kJV7N4LGcg0YAGAXHRKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r868b-006RoF-1h;
	Tue, 28 Nov 2023 22:01:01 +0000
Received: from mail-qk1-x72c.google.com ([2607:f8b0:4864:20::72c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r851b-006Hq4-2a
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Nov 2023 20:49:45 +0000
Received: by mail-qk1-x72c.google.com with SMTP id af79cd13be357-77dbdc184fdso16914585a.1
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Nov 2023 12:49:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1701204581; x=1701809381; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=FsBQ1c03W+bPyqjQatoY3AtDcRPwnaylyTF2JWK/6Qg=;
        b=hFaddus7hl9qPNZ9HVNCSz8cZ6eUxvlzsl1d9f+Jxm39Y8Rg1JUhGRYhfUSWfB8M7o
         00xBKvRREHiYqr4R1AvVs8Tv/KHylVBvgSB+dKlE58RJW8s1RWyyQxnZUH6GVzxO1ZTM
         q2sGbXTD90NaXMfzgpA5LGTQ/Drw+8AQADCVLpooyZNKFznwxk0YS0B13iEt5NT4ZuLW
         wA3OyHkMT//xRzWxXSk6LHf46mm69lm7DdSrlgxo/yTJNOoH1Pe1z020Z8GRevP5tOWF
         iU/Lr1SZBSzB+SOpYJXQNCCC6GPlabNP9tqVLSyuqQzflTJlM05YTz8r3fWM8pV/vByS
         jZpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701204581; x=1701809381;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FsBQ1c03W+bPyqjQatoY3AtDcRPwnaylyTF2JWK/6Qg=;
        b=OxI1azHf2bjk/hIojrXT90oPTydElimeKKq6XTeuV/W5NW305+1MVa2Nr75ALFBLZW
         qLKepC0NFA8ktRm+6HUbf9PuYeK0f/X1UpHg4URJrHHOc5s+Wc0er5j/OCfqEUOPEf+q
         TmNNCliWasN9W1R3sUIQ/Tav88GsmKe9w0TWeawgsr1mLdaLaVBDlcpHGt4yiepWj7b+
         g7DmZ4rNWoY/2hKHyBS2gRJy/ugmLjqWHjxuwznG3UJkbRq/8aAIFVvrLhi75XbHOdD1
         JcbmxZYP1gau+duGXrgcHY/XGa7OfiYOTWf9QMNUXlHfQaQB0fTjY6le2qi+KjV2iVak
         Jm9g==
X-Gm-Message-State: AOJu0Yy/WDmCR852TNSA/Z6ebNmyMsGSqIRsN0XtvK+7yfAFY2dhPLeb
	q3VfQ9EyAVCZ/5tZY91wqdNG1g==
X-Google-Smtp-Source: AGHT+IEGKj81OhPPfZGrAMOrKOsHXDo+wy0whZdL8ikR2KmUyXglOYylmfrRjMDC83oWuy4vndr7lg==
X-Received: by 2002:a05:620a:1452:b0:77d:c593:f63c with SMTP id i18-20020a05620a145200b0077dc593f63cmr2543824qkl.24.1701204581121;
        Tue, 28 Nov 2023 12:49:41 -0800 (PST)
Received: from soleen.c.googlers.com.com (55.87.194.35.bc.googleusercontent.com. [35.194.87.55])
        by smtp.gmail.com with ESMTPSA id d11-20020a0cfe8b000000b0067a56b6adfesm1056863qvs.71.2023.11.28.12.49.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 12:49:40 -0800 (PST)
From: Pasha Tatashin <pasha.tatashin@soleen.com>
To: akpm@linux-foundation.org,
	alex.williamson@redhat.com,
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
	jasowang@redhat.com,
	jernej.skrabec@gmail.com,
	jgg@ziepe.ca,
	jonathanh@nvidia.com,
	joro@8bytes.org,
	kevin.tian@intel.com,
	krzysztof.kozlowski@linaro.org,
	kvm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
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
	mst@redhat.com,
	m.szyprowski@samsung.com,
	netdev@vger.kernel.org,
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
	virtualization@lists.linux.dev,
	wens@csie.org,
	will@kernel.org,
	yu-cheng.yu@intel.com
Subject: [PATCH 00/16] IOMMU memory observability
Date: Tue, 28 Nov 2023 20:49:22 +0000
Message-ID: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.43.0.rc2.451.g8631bc7472-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_124943_954465_2D9E4B74 
X-CRM114-Status: GOOD (  12.30  )
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

[1] https://github.com/soleen/iova_stress
[2] https://lpc.events/event/17/contributions/1466

Pasha Tatashin (16):
  iommu/vt-d: add wrapper functions for page allocations
  iommu/amd: use page allocation function provided by iommu-pages.h
  iommu/io-pgtable-arm: use page allocation function provided by
    iommu-pages.h
  iommu/io-pgtable-dart: use page allocation function provided by
    iommu-pages.h
  iommu/io-pgtable-arm-v7s: use page allocation function provided by
    iommu-pages.h
  iommu/dma: use page allocation function provided by iommu-pages.h
  iommu/exynos: use page allocation function provided by iommu-pages.h
  iommu/fsl: use page allocation function provided by iommu-pages.h
  iommu/iommufd: use page allocation function provided by iommu-pages.h
  iommu/rockchip: use page allocation function provided by iommu-pages.h
  iommu/sun50i: use page allocation function provided by iommu-pages.h
  iommu/tegra-smmu: use page allocation function provided by
    iommu-pages.h
  iommu: observability of the IOMMU allocations
  iommu: account IOMMU allocated memory
  vhost-vdpa: account iommu allocations
  vfio: account iommu allocations

 Documentation/admin-guide/cgroup-v2.rst |   2 +-
 Documentation/filesystems/proc.rst      |   4 +-
 drivers/iommu/amd/amd_iommu.h           |   8 -
 drivers/iommu/amd/init.c                |  91 +++++-----
 drivers/iommu/amd/io_pgtable.c          |  13 +-
 drivers/iommu/amd/io_pgtable_v2.c       |  20 +-
 drivers/iommu/amd/iommu.c               |  13 +-
 drivers/iommu/dma-iommu.c               |   8 +-
 drivers/iommu/exynos-iommu.c            |  14 +-
 drivers/iommu/fsl_pamu.c                |   5 +-
 drivers/iommu/intel/dmar.c              |  10 +-
 drivers/iommu/intel/iommu.c             |  47 ++---
 drivers/iommu/intel/iommu.h             |   2 -
 drivers/iommu/intel/irq_remapping.c     |  10 +-
 drivers/iommu/intel/pasid.c             |  12 +-
 drivers/iommu/intel/svm.c               |   7 +-
 drivers/iommu/io-pgtable-arm-v7s.c      |   9 +-
 drivers/iommu/io-pgtable-arm.c          |   7 +-
 drivers/iommu/io-pgtable-dart.c         |  37 ++--
 drivers/iommu/iommu-pages.h             | 231 ++++++++++++++++++++++++
 drivers/iommu/iommufd/iova_bitmap.c     |   6 +-
 drivers/iommu/rockchip-iommu.c          |  14 +-
 drivers/iommu/sun50i-iommu.c            |   7 +-
 drivers/iommu/tegra-smmu.c              |  18 +-
 drivers/vfio/vfio_iommu_type1.c         |   8 +-
 drivers/vhost/vdpa.c                    |   3 +-
 include/linux/mmzone.h                  |   5 +-
 mm/vmstat.c                             |   3 +
 28 files changed, 415 insertions(+), 199 deletions(-)
 create mode 100644 drivers/iommu/iommu-pages.h

-- 
2.43.0.rc2.451.g8631bc7472-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
