Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32469C531DC
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Aug 2024 07:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YabhYIfdPv6Ldp7Slqj17+pLiEAg/w3zCbuSnRsDzAA=; b=ImpPGpWfHYA6Qc
	kWElp+4bXzH1oger1gxXaHrLwSpv6PJxR/Guv7HrzIGqH+rg094MGDE9ZH6F4fQWL8Ng7PsEhs3DT
	EcnU8Pafnb4f1W1ddh5CuEKkYXmq/20ii83LzqNqHFi6hZVE6rv5x/SUDoSxZP0sQFpP9GfKRDKXi
	K9zUpYSLSfqm02GE4U31q0XhTSJUCSqLHXMs+zlnehByuUAz2JN5R/kvJOi2vbFQzqJgtHK2yg4vR
	h02hqcrrJsSFpsEC3mzqLe9QM5miKgn7XNKozIMAcS/Zdzw4hTtiKohW4gFGF/8CIXraXwuyRuaBf
	+A7fadJV0PEHtvuX+i4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdPHK-0000000H84H-2kO2;
	Mon, 12 Aug 2024 07:15:42 +0000
Received: from mgamail.intel.com ([192.198.163.14])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdPFx-0000000H7fP-2Inp;
	Mon, 12 Aug 2024 07:14:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1723446857; x=1754982857;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=ugPZI6M1TvdJVOqkCaWpsQPcKmLp14vmdPpzyb0jTXA=;
  b=fEtQoajwEwEBBPvt9JNuAolVRFSpRZBXjBQtobHiiJMGmykqBBmUb8Ji
   dUU3DlKZQYsKoEJHFTQyVSvaht0chuDNuvzNN3B88gQUgJcxlxUdy6TVV
   YHdMElkJ7mOzoQP6Q3llcwXsnRzEKRrUj1mN2ACfSbzpMYyN5cJSC/KN0
   VOGMYLlDrrzsrsY4Pi5ZKteK54Hkd8t/fmIaNH9OspWjL60ZMFpWyqhVw
   5OanrckripR/V6eOnc6LepHYkxgIkfpPY0QXkpH/BJfWxmKXVrQYUZxKD
   utlqtTCuEJnw1/nYH6PtBeP1YJVPJmnv3qGieZIC2AfdNRh07ZRupPGXx
   g==;
X-CSE-ConnectionGUID: s3fXfpOkT4WH2LyMQycLuA==
X-CSE-MsgGUID: CoH0823SRsGzjgEqC7sSOw==
X-IronPort-AV: E=McAfee;i="6700,10204,11161"; a="21711570"
X-IronPort-AV: E=Sophos;i="6.09,282,1716274800"; 
   d="scan'208";a="21711570"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Aug 2024 00:14:17 -0700
X-CSE-ConnectionGUID: 20gV+VxOTN66vkWjO4j+TA==
X-CSE-MsgGUID: j+8tsWuwRpO5z66lvcz4BQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,282,1716274800"; 
   d="scan'208";a="57823816"
Received: from allen-box.sh.intel.com ([10.239.159.127])
  by fmviesa007.fm.intel.com with ESMTP; 12 Aug 2024 00:14:11 -0700
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
	Lu Baolu <baolu.lu@linux.intel.com>,
	Jason Gunthorpe <jgg@nvidia.com>
Subject: [PATCH 2/3] drm/rockchip: Use iommu_paging_domain_alloc()
Date: Mon, 12 Aug 2024 15:10:33 +0800
Message-Id: <20240812071034.9443-2-baolu.lu@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240812071034.9443-1-baolu.lu@linux.intel.com>
References: <20240812071034.9443-1-baolu.lu@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_001417_618786_CC5F27E2 
X-CRM114-Status: GOOD (  11.36  )
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

Commit <421be3ee36a4> ("drm/rockchip: Refactor IOMMU initialisation") has
refactored rockchip_drm_init_iommu() to pass a device that the domain is
allocated for. Replace iommu_domain_alloc() with
iommu_paging_domain_alloc() to retire the former.

Signed-off-by: Lu Baolu <baolu.lu@linux.intel.com>
Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>
Link: https://lore.kernel.org/r/20240610085555.88197-19-baolu.lu@linux.intel.com
---
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
index 44d769d9234d..11e5d10de4d7 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
@@ -103,13 +103,17 @@ static int rockchip_drm_init_iommu(struct drm_device *drm_dev)
 	struct rockchip_drm_private *private = drm_dev->dev_private;
 	struct iommu_domain_geometry *geometry;
 	u64 start, end;
+	int ret;
 
 	if (IS_ERR_OR_NULL(private->iommu_dev))
 		return 0;
 
-	private->domain = iommu_domain_alloc(private->iommu_dev->bus);
-	if (!private->domain)
-		return -ENOMEM;
+	private->domain = iommu_paging_domain_alloc(private->iommu_dev);
+	if (IS_ERR(private->domain)) {
+		ret = PTR_ERR(private->domain);
+		private->domain = NULL;
+		return ret;
+	}
 
 	geometry = &private->domain->geometry;
 	start = geometry->aperture_start;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
