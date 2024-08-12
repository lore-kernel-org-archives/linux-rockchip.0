Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E2C7C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Aug 2024 07:15:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+eG+R+1WT7IngDK92dPRfLJ9K6/vHiX/MKm/Ua9E6VI=; b=lCKVEFOTgSNDFv
	r0OLJ6nKMkJsOIm7E6jNRdFH3E+LHrEaegCZW3H58+qTOLMi6m11FO9uzsDZ9FnERIoEvxqeu9sBx
	/YveGGkTiE3pVUVplrnW50Y4YZlH/V7XnIMXB5zgAT/VY/DwtFSpY3aEeHr46rs0gyXoVhPLxBJJn
	B5NPsoNKQGCsM2CJPUVm53Z6mbw5sELYRe8RWAIld/0TiV5nv4lpFfmQZVrWQIQqUjLMVrVELz5an
	x9C6qSn5CrS3gxvBh3jZwdhhL245PRuF/gSv+mPSQr0CHd1Z7lXueVVDEWuFvDaaP5D6ALI2s9840
	wIEsgGeSuRVIjmFyGerQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdPGl-0000000H7xR-2woF;
	Mon, 12 Aug 2024 07:15:07 +0000
Received: from mgamail.intel.com ([192.198.163.14])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdPFs-0000000H7fP-3gph;
	Mon, 12 Aug 2024 07:14:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1723446853; x=1754982853;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=2W/be8VISRZC7fVoJ9VGu3iMrIsNaD0YF4i34a1dFE4=;
  b=R56Zd5iGKYcoDTzZpVbxZJRuAhRSHaMpGDDN01Na6WgPSaRoYAPmvlQZ
   hp1gmqFluhh4EgSio8eXNYSy0eViq1dCJVVZtI1/nRcdgSCj0PI7nxfSx
   OWGm8F0FXJ75cFLdtgPYzAYBFMqpA/tchRfDGGFrFFZnNVbUz8ls+SYqj
   F3k/pLWMgXCUgMAqF3i9p9nNTl8LM+NcK7daxTQVcmjceXMF6sFe8LzQT
   DClw8M4qlW6sWjY8xiy9fsyf2HuvMym+CdxLsX3I5fQsVCwq1jdzO2285
   RWUtZRlRu1z5bbCRpTIKQSMYYPGiw7YGyujqKBTzZzbFK/t6NsBil4tY4
   A==;
X-CSE-ConnectionGUID: sYV1Eh00SBGcl2sZiZY2VQ==
X-CSE-MsgGUID: pE2C/0BqRPm3Z67TMLVYUQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11161"; a="21711543"
X-IronPort-AV: E=Sophos;i="6.09,282,1716274800"; 
   d="scan'208";a="21711543"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Aug 2024 00:14:11 -0700
X-CSE-ConnectionGUID: OLEmc47wRB6veAq2mjcdLw==
X-CSE-MsgGUID: r/FxCR4NT760l1EVOg/r5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,282,1716274800"; 
   d="scan'208";a="57823793"
Received: from allen-box.sh.intel.com ([10.239.159.127])
  by fmviesa007.fm.intel.com with ESMTP; 12 Aug 2024 00:14:06 -0700
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
Subject: [PATCH 1/3] drm/nouveau/tegra: Use iommu_paging_domain_alloc()
Date: Mon, 12 Aug 2024 15:10:32 +0800
Message-Id: <20240812071034.9443-1-baolu.lu@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_001412_962717_2283A593 
X-CRM114-Status: GOOD (  10.13  )
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
Link: https://lore.kernel.org/r/20240610085555.88197-7-baolu.lu@linux.intel.com
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
