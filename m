Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BB01CD128A
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Apr 2024 00:59:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AZe3sWl/OegKsM8JuKxgbfrBn7YuTCWjrrqgQpZE1M8=; b=n5jCcQRJWsDbSL
	reVai95PtHbxb1Jx23yL710zinjo7C0Ckxt7OZfLpgMuaBdqVvBF+kI/LPRfHV2WMoyUAMW/deLCs
	HBzB5pootJiVhZIoDfj8epgQZMRYCjO+9P1OmcUVN254CRsL0Jmj1vBZSy9Cskr82/jaz9aT7Rxh8
	g12N+aUHL9YDoVLVw6S/MKwAqoXl8oXYwbCexxOsZkhYeM06dp8jboZbNeojJsyBtRrzVHkbhKSCP
	MGGsTLqRLBV/IzuCyrPTcNoDJJHeg/sfGF0+2HDmMXam4IZaN/piYALMxzIz0X/gI3GxyVmqaeGo9
	/suFRFcv07NYJWKyMt5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsBRZ-00000000pk2-2nzW;
	Thu, 04 Apr 2024 00:59:05 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174] helo=mx0b-0016f401.pphosted.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsBRW-00000000pjb-0ACu
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Apr 2024 00:59:03 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
	by mx0a-0016f401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 433KwHmY025088;
	Wed, 3 Apr 2024 17:58:19 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-transfer-encoding:in-reply-to; s=pfpt0220;
	 bh=mEz3A0cFZLO3onQWAKZpQFFgP9D767dhafoyZkTOCQ4=; b=F6fuBFB3hkdU
	hSnUatMqU08RjlunuB1Kmkz7laPp8UHNL8cMK1rvQZzjFByFH/yxRwlI9VqKVAA+
	as18etdXEOgRSaY2hWPuywuYrPhNItb1W5K4l8cXB08gUeyF1rrDkyl9/qmaYHCE
	uJW1gQ/YbPkxVpA7iE1A5GWX3PgbOlrYjCBPTR5KwINBDECmFAcTzgkilXE0yBCd
	iBvx8O/PqnHc7W0TsZm288RAc+XSp66lbZ6f1qQwLbeK+nNF6bJs7iYy9RsvuyWM
	3YbFbFoSV4S+rHef2lnTdmLfwRTt6PC5A5M471i5yfhDoLGdga+g/JAQuK2yE86s
	BZnYSW8Gqg==
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-0016f401.pphosted.com (PPS) with ESMTPS id 3x9em4gk88-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 03 Apr 2024 17:58:19 -0700 (PDT)
Received: from m0045849.ppops.net (m0045849.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.24/8.17.1.24) with ESMTP id 4340wINl007682;
	Wed, 3 Apr 2024 17:58:18 -0700
Received: from dc6wp-exch02.marvell.com ([4.21.29.225])
	by mx0a-0016f401.pphosted.com (PPS) with ESMTPS id 3x9em4gk83-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 03 Apr 2024 17:58:18 -0700 (PDT)
Received: from DC6WP-EXCH02.marvell.com (10.76.176.209) by
 DC6WP-EXCH02.marvell.com (10.76.176.209) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.4; Wed, 3 Apr 2024 17:58:17 -0700
Received: from maili.marvell.com (10.69.176.80) by DC6WP-EXCH02.marvell.com
 (10.76.176.209) with Microsoft SMTP Server id 15.2.1544.4 via Frontend
 Transport; Wed, 3 Apr 2024 17:58:17 -0700
Received: from hyd1403.caveonetworks.com (unknown [10.29.37.84])
	by maili.marvell.com (Postfix) with ESMTP id DC6583F706F;
	Wed,  3 Apr 2024 17:58:04 -0700 (PDT)
Date: Thu, 4 Apr 2024 06:28:03 +0530
From: Linu Cherian <lcherian@marvell.com>
To: Pasha Tatashin <pasha.tatashin@soleen.com>
CC: <akpm@linux-foundation.org>, <alim.akhtar@samsung.com>,
        <alyssa@rosenzweig.io>, <asahi@lists.linux.dev>,
        <baolu.lu@linux.intel.com>, <bhelgaas@google.com>,
        <cgroups@vger.kernel.org>, <corbet@lwn.net>, <david@redhat.com>,
        <dwmw2@infradead.org>, <hannes@cmpxchg.org>, <heiko@sntech.de>,
        <iommu@lists.linux.dev>, <jernej.skrabec@gmail.com>,
        <jonathanh@nvidia.com>, <joro@8bytes.org>,
        <krzysztof.kozlowski@linaro.org>, <linux-doc@vger.kernel.org>,
        <linux-fsdevel@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-mm@kvack.org>, <linux-rockchip@lists.infradead.org>,
        <linux-samsung-soc@vger.kernel.org>, <linux-sunxi@lists.linux.dev>,
        <linux-tegra@vger.kernel.org>, <lizefan.x@bytedance.com>,
        <marcan@marcan.st>, <mhiramat@kernel.org>, <m.szyprowski@samsung.com>,
        <paulmck@kernel.org>, <rdunlap@infradead.org>, <robin.murphy@arm.com>,
        <samuel@sholland.org>, <suravee.suthikulpanit@amd.com>,
        <sven@svenpeter.dev>, <thierry.reding@gmail.com>, <tj@kernel.org>,
        <tomas.mudrunka@gmail.com>, <vdumpa@nvidia.com>, <wens@csie.org>,
        <will@kernel.org>, <yu-cheng.yu@intel.com>, <rientjes@google.com>,
        <bagasdotme@gmail.com>, <mkoutny@suse.com>
Subject: Re: [PATCH v5 00/11] IOMMU memory observability
Message-ID: <20240404005803.GA102637@hyd1403.caveonetworks.com>
References: <20240222173942.1481394-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240222173942.1481394-1-pasha.tatashin@soleen.com>
X-Proofpoint-ORIG-GUID: kzH1frYTGGUfUioN4mjeRs5C7L-Xm_vN
X-Proofpoint-GUID: s6kXEc2yc7_K9P5CbGLReHonYF_ihsoo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-03_26,2024-04-03_01,2023-05-22_02
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_175902_098353_8BDEDC5F 
X-CRM114-Status: GOOD (  28.45  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2024-02-22 at 23:09:26, Pasha Tatashin (pasha.tatashin@soleen.com) wrote:
> ----------------------------------------------------------------------
> Changelog
> ----------------------------------------------------------------------
> v5:
> - Synced with v6.8-rc5
> - Added: Acked-by: Marek Szyprowski <m.szyprowski@samsung.com>
> - Added: Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>
> - Addressed review comments from Robin Murphy:
>   Updated the header comment in iommu-pages.h
>   Removed __iommu_alloc_pages_node(), invoke
>   iommu_alloc_pages_node directly.
>   Removed unused: __iommu_alloc_page_node()
>   Removed __iommu_free_page()
>   Renamed: iommu_free_pages_list() -> iommu_put_pages_list()
>   Added missing iommu_put_pages_list() to dma-iommu.c in
>   iommu/dma: use iommu_put_pages_list() to releae freelist
> =

> v4:
> - Synced with v6.8-rc3
> - Updated commit log for "iommu: account IOMMU allocated memory" as
>   suggested by Michal Koutn=FD
> - Added more Acked-bys David Rientjes and Thierry Reding
> - Added Tested-by Bagas Sanjaya.
> =

> v3:
> - Sync with v6.7-rc7
> - Addressed comments from David Rientjes: s/pages/page/, added
>   unlikely() into the branches, expanded comment for
>   iommu_free_pages_list().
> - Added Acked-bys: David Rientjes
> =

> v2:
> - Added Reviewed-by Janne Grunau
> - Sync with 6.7.0-rc3
> - Separated form the series patches:
> vhost-vdpa: account iommu allocations
> https://lore.kernel.org/all/20231130200447.2319543-1-pasha.tatashin@solee=
n.com
> vfio: account iommu allocations
> https://lore.kernel.org/all/20231130200900.2320829-1-pasha.tatashin@solee=
n.com
> as suggested by Jason Gunthorpe
> - Fixed SPARC build issue detected by kernel test robot
> - Drop the following patches as they do account iommu page tables:
> iommu/dma: use page allocation function provided by iommu-pages.h
> iommu/fsl: use page allocation function provided by iommu-pages.h
> iommu/iommufd: use page allocation function provided by iommu-pages.h
> as suggested by Robin Murphy. These patches are not related to IOMMU
> page tables. We might need to do a separate work to support DMA
> observability.
> - Remove support iommu/io-pgtable-arm-v7s as the 2nd level pages are
> under a page size, thanks Robin Murphy for pointing this out.
> =

> ----------------------------------------------------------------------
> Description
> ----------------------------------------------------------------------
> IOMMU subsystem may contain state that is in gigabytes. Majority of that
> state is iommu page tables. Yet, there is currently, no way to observe
> how much memory is actually used by the iommu subsystem.
> =

> This patch series solves this problem by adding both observability to
> all pages that are allocated by IOMMU, and also accountability, so
> admins can limit the amount if via cgroups.
> =

> The system-wide observability is using /proc/meminfo:
> SecPageTables:    438176 kB
> =

> Contains IOMMU and KVM memory.

Can you please clarify what does KVM memory refers to here ?
Does it mean the VFIO map / virtio-iommu invoked ones for a guest VM?  =


> =

> Per-node observability:
> /sys/devices/system/node/nodeN/meminfo
> Node N SecPageTables:    422204 kB
> =

> Contains IOMMU and KVM memory in the given NUMA node.
> =

> Per-node IOMMU only observability:
> /sys/devices/system/node/nodeN/vmstat
> nr_iommu_pages 105555
> =

> Contains number of pages IOMMU allocated in the given node.
> =

> Accountability: using sec_pagetables cgroup-v2 memory.stat entry.
> =

> With the change, iova_stress[1] stops as limit is reached:
> =

> $ ./iova_stress
> iova space:     0T      free memory:   497G
> iova space:     1T      free memory:   495G
> iova space:     2T      free memory:   493G
> iova space:     3T      free memory:   491G
> =

> stops as limit is reached.
> =

> This series encorporates suggestions that came from the discussion
> at LPC [2].
> ----------------------------------------------------------------------
> [1] https://github.com/soleen/iova_stress
> [2] https://lpc.events/event/17/contributions/1466
> ----------------------------------------------------------------------
> Previous versions
> v1: https://lore.kernel.org/all/20231128204938.1453583-1-pasha.tatashin@s=
oleen.com
> v2: https://lore.kernel.org/linux-mm/20231130201504.2322355-1-pasha.tatas=
hin@soleen.com
> v3: https://lore.kernel.org/all/20231226200205.562565-1-pasha.tatashin@so=
leen.com
> v4: https://lore.kernel.org/all/20240207174102.1486130-1-pasha.tatashin@s=
oleen.com
> ----------------------------------------------------------------------
> =

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
> =

>  Documentation/admin-guide/cgroup-v2.rst |   2 +-
>  Documentation/filesystems/proc.rst      |   4 +-
>  drivers/iommu/amd/amd_iommu.h           |   8 -
>  drivers/iommu/amd/init.c                |  91 ++++++------
>  drivers/iommu/amd/io_pgtable.c          |  13 +-
>  drivers/iommu/amd/io_pgtable_v2.c       |  20 +--
>  drivers/iommu/amd/iommu.c               |  13 +-
>  drivers/iommu/dma-iommu.c               |   7 +-
>  drivers/iommu/exynos-iommu.c            |  14 +-
>  drivers/iommu/intel/dmar.c              |  16 +-
>  drivers/iommu/intel/iommu.c             |  47 ++----
>  drivers/iommu/intel/iommu.h             |   2 -
>  drivers/iommu/intel/irq_remapping.c     |  16 +-
>  drivers/iommu/intel/pasid.c             |  18 +--
>  drivers/iommu/intel/svm.c               |  11 +-
>  drivers/iommu/io-pgtable-arm.c          |  15 +-
>  drivers/iommu/io-pgtable-dart.c         |  37 ++---
>  drivers/iommu/iommu-pages.h             | 186 ++++++++++++++++++++++++
>  drivers/iommu/rockchip-iommu.c          |  14 +-
>  drivers/iommu/sun50i-iommu.c            |   7 +-
>  drivers/iommu/tegra-smmu.c              |  18 ++-
>  include/linux/mmzone.h                  |   5 +-
>  mm/vmstat.c                             |   3 +
>  23 files changed, 361 insertions(+), 206 deletions(-)
>  create mode 100644 drivers/iommu/iommu-pages.h
> =

> -- =

> 2.44.0.rc0.258.g7320e95886-goog
> =


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
