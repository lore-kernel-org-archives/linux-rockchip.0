Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85FC4C54FC6
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Sep 2024 01:53:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e9foM1g+OxpM8lglLEyWy8de3cs7Tu7y98+NCtq3lCI=; b=i94DMN/14eJoGt
	evxvMcuTNwRxDujyVQKLy+WqK6mENg9YT+Xb27skPPr+g2C8szZ5Ve7+1eb/muoWzEjg+rRIIJMUw
	P+r8aTS9E9qWo5f5PM8LRf5LINEna4mpEM1cfLBPP8i4IHh1jSh3W3HMf9G21T+7OZtA4nbDhAmzH
	nfn8k8gdrA4qx0wcHN72tmjZcmhaS9Ia9oceA294Kb0+atwifECka20X86ToWdw1XNZKOa4n+OoNT
	RMV2yGE6ndFyhwImspCgfp8JWBTTEVKz/rJCh7vxx25DB2xBVU91U97yVFgcdXlypyuBocbjNDAQm
	Wcj7v6SgUXZPix4CpRKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skwGJ-0000000ChxD-0EeW;
	Mon, 02 Sep 2024 01:53:47 +0000
Received: from mgamail.intel.com ([192.198.163.8])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skwDq-0000000ChEq-34dM;
	Mon, 02 Sep 2024 01:51:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1725241874; x=1756777874;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=HTJQcN0FE2N5DQLr1jAt6JXd6rKNx9aVQY3dPFxGnc4=;
  b=hX50AjA1/yxKdY4gKUGsUq+GlsaEssl3kECaA/6JfiTDgi2326xMj4od
   56y7SsxXoXFl63BRWHmD2bu6unJ1HyI4JxBU1eXGqI+Rv27bmjWhXm8AU
   X/LFt4CWZCHxIr61kQXuY+83J1GDEWBsuGtEfHoVvgod6Pk/yC2BDKo6G
   XzUX97Z8+ZBszvLTQeoHNrE3dfZkCW3AolOTWYfHqJhPZ7MM5HLd72F3N
   gcAFYIwJl5PWHamuowe0vtQ/epK2Hu9PQr3F8six/oxkvcJ5nlaHhPRFo
   rif5MbNml2uujIpy+QNsN+Y9Qc0xIZyniJkjUlNq6dC2K33ZGcmws1ScZ
   A==;
X-CSE-ConnectionGUID: RhKcqaiTRDamrIOZ87kbZQ==
X-CSE-MsgGUID: GKMdz60FTdSJoOgWmkDA5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11182"; a="41307686"
X-IronPort-AV: E=Sophos;i="6.10,194,1719903600"; 
   d="scan'208";a="41307686"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Sep 2024 18:51:14 -0700
X-CSE-ConnectionGUID: Nl7Pj8i9TO6XqEwIgHlq0Q==
X-CSE-MsgGUID: +vkijvTkTzO3htP32F9nBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,194,1719903600"; 
   d="scan'208";a="64817664"
Received: from allen-box.sh.intel.com ([10.239.159.127])
  by orviesa006.jf.intel.com with ESMTP; 01 Sep 2024 18:51:08 -0700
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
	Jason Gunthorpe <jgg@nvidia.com>,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH v2 2/3] drm/rockchip: Use iommu_paging_domain_alloc()
Date: Mon,  2 Sep 2024 09:46:59 +0800
Message-Id: <20240902014700.66095-3-baolu.lu@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240902014700.66095-1-baolu.lu@linux.intel.com>
References: <20240902014700.66095-1-baolu.lu@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240901_185114_815966_6AD36155 
X-CRM114-Status: GOOD (  11.79  )
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
Acked-by: Andy Yan <andyshrk@163.com>
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
