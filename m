Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F9CDC54FC6
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Sep 2024 01:52:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FSpfzaV7/9WMrbeaOTWjoT59l4cdDi0EZBEW+P2c+iQ=; b=KEuT3ei/W/bJct
	csWRn5EBwtsJvr6DnTraB6Jjy/e3EkmGrpY9f/9s7sTiQJlQCouzjDVei1/Xr7xZSj5TYvJJkVnXx
	GXHf1jPCBiKsoHSh/aDBmKKdEbePJjuc/BNwCG/tGcs+K0vAPCEhX6xfFncWnWKctdY3kBaHazO4/
	20HsFBZ9AVQRgRBFt/APEK7dhTe+LthiYzbPVOqljk3bYG1KvuY7Unib4OLOFLzDfjm46wCFKDU+t
	QY9hs73tWJ13LYRJfFv1etfhl5hTFfynU6711rTP25qTQS7yR+PpTif5qzqdINTkDjszw9tDPq7Vb
	Gm2sT/JMUaRylbnzclIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skwFR-0000000Chlz-2N0W;
	Mon, 02 Sep 2024 01:52:53 +0000
Received: from mgamail.intel.com ([192.198.163.8])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skwDk-0000000ChEq-0v2y;
	Mon, 02 Sep 2024 01:51:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1725241868; x=1756777868;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=GbpYXxZBS+r4Y0EiK3BFmXVZKaFfLeJ2IAlI0t0Upno=;
  b=hf2Qp0ichCOfBGXIdRA6b50c934tMWiBcJzp0/le5HlfxQGVbw/mS2Gc
   267fb3n374cvunbd3uUrryv5oB5OOJfRnwpZMCvIhgcpqk8rX0xVmLH4F
   xbyNzgkbwQgm0Q7wx+fA1H8LTnOY0VuiPbDZOS0+A/jEyP4SvCN5Gd2m5
   M1u0VN+M/X7+aQU70aIsDAciH4e2ojXC99ft9MvBwQtoGswvrwy9+a7/s
   JmNp1lkNLK88lcbxQBznoPtX6fML9iy4EKDbxeTm9OblCKxv40+dw+APL
   PNbIfYrWq7fv1t1nPXnLWd+Y8sTW2z77NRI6yIoo56RHhzuhx0tmfPYaZ
   w==;
X-CSE-ConnectionGUID: mKzCbSV/R8aJFU0vR6WMXQ==
X-CSE-MsgGUID: WjcSuG4tS4SMUqslQlbwtw==
X-IronPort-AV: E=McAfee;i="6700,10204,11182"; a="41307668"
X-IronPort-AV: E=Sophos;i="6.10,194,1719903600"; 
   d="scan'208";a="41307668"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Sep 2024 18:51:08 -0700
X-CSE-ConnectionGUID: ZzqqnVAJSDev//9APFczuA==
X-CSE-MsgGUID: afJR3rigT1S94bedyrPJ5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,194,1719903600"; 
   d="scan'208";a="64817644"
Received: from allen-box.sh.intel.com ([10.239.159.127])
  by orviesa006.jf.intel.com with ESMTP; 01 Sep 2024 18:51:01 -0700
From: Lu Baolu <baolu.lu@linux.intel.com>
To: Karol Herbst <kherbst@redhat.com>,
	Lyude Paul <lyude@redhat.com>,
	Danilo Krummrich <dakr@redhat.com>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Sandy Huang <hjc@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Mikko Perttunen <mperttunen@nvidia.com>,
	Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Jason Gunthorpe <jgg@ziepe.ca>,
	Kevin Tian <kevin.tian@intel.com>
Cc: dri-devel@lists.freedesktop.org,
	nouveau@lists.freedesktop.org,
	linux-tegra@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-media@vger.kernel.org,
	iommu@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Lu Baolu <baolu.lu@linux.intel.com>
Subject: [PATCH v2 1/3] drm/nouveau/tegra: Use iommu_paging_domain_alloc()
Date: Mon,  2 Sep 2024 09:46:58 +0800
Message-Id: <20240902014700.66095-2-baolu.lu@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240902014700.66095-1-baolu.lu@linux.intel.com>
References: <20240902014700.66095-1-baolu.lu@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240901_185108_291573_8720BE7E 
X-CRM114-Status: GOOD (  11.15  )
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

In nvkm_device_tegra_probe_iommu(), a paging domain is allocated for @dev
and attached to it on success. Use iommu_paging_domain_alloc() to make it
explicit.

Signed-off-by: Lu Baolu <baolu.lu@linux.intel.com>
---
 drivers/gpu/drm/nouveau/nvkm/engine/device/tegra.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/nouveau/nvkm/engine/device/tegra.c b/drivers/gpu/drm/nouveau/nvkm/engine/device/tegra.c
index 87caa4a72921..763c4c2925f9 100644
--- a/drivers/gpu/drm/nouveau/nvkm/engine/device/tegra.c
+++ b/drivers/gpu/drm/nouveau/nvkm/engine/device/tegra.c
@@ -120,8 +120,8 @@ nvkm_device_tegra_probe_iommu(struct nvkm_device_tegra *tdev)
 	mutex_init(&tdev->iommu.mutex);
 
 	if (device_iommu_mapped(dev)) {
-		tdev->iommu.domain = iommu_domain_alloc(&platform_bus_type);
-		if (!tdev->iommu.domain)
+		tdev->iommu.domain = iommu_paging_domain_alloc(dev);
+		if (IS_ERR(tdev->iommu.domain))
 			goto error;
 
 		/*
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
