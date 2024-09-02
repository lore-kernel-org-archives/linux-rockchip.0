Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8611C54FC6
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Sep 2024 01:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9wJs4o6m6pvjzJTlc+QxvHpp1fQYAsCRyyRNEcY8LX4=; b=y/PB/rrNc3wxL1
	OB6rhKyzmjPGInUUMP8E41IfJIQpwDnEf7qnKeV1S4dv6fsOuFE/ftRKDwugb/csZwno5HIHbkHCI
	7zs5p7AHvGX/ixSo9Blpyqzbe30kYrhwdDZnryYWscpxU9jaOt+8Z5yNFTcVRSIkblbJHDyWILfL4
	xlDxvwJMFn+Zac36nrm2HK8CUI5J2ydpVaCFiMLWy9nHQLYl5RzE+fV2FAewq4SYul1vWAJMfYF63
	vsB6BuEYFXGKmbwg3rgzC9lubs35ApDd5EZiJ3zmo5dOTPUSvHO2D72BWAZaRlSZnjsJtKtj8anrL
	ESq8jfAUSQJG+T9sN37Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skwH9-0000000Ci6V-3mHl;
	Mon, 02 Sep 2024 01:54:39 +0000
Received: from mgamail.intel.com ([192.198.163.8])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skwDx-0000000ChO7-34zr;
	Mon, 02 Sep 2024 01:51:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1725241881; x=1756777881;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=eNOviPAyOZhMOAzv2QCrEMyisdMbFcDCq2iEBrdz3QQ=;
  b=a2qhPCqymG5uS3xjrGfXogCU228VfFHaDMDmUXokoLPnGr69QjWnpX1N
   xEapCxXRACKVS27nUhmqu5I/bJ4jSuWWXKJsuBsO+MRLD9Idqq7UlQSAE
   S2M9gaheyXIXxmGSYl8I+HND1emYiOsETuzzekLrB5wJqbLPdE1v0DPZ+
   iAP3r0zmN1oA6AD18k/XAKuoOqjp+taC2GjBWXB2O3JQr14Z1DlVs1BER
   6WBTm+euJFP7T9+3Cj5WucYyZdqI+Z6J8ay0tIz52EjbvSt5cpNqqXCj8
   H2GTD6151fTnYC/801o8Jjn4H1DHciIl50GdW+kL3cd4vq5rg+rv7sjE8
   w==;
X-CSE-ConnectionGUID: Na5bXVO1RRy7yAyLJvRDgg==
X-CSE-MsgGUID: x253zL23S2O7Ljq/q2gPTA==
X-IronPort-AV: E=McAfee;i="6700,10204,11182"; a="41307705"
X-IronPort-AV: E=Sophos;i="6.10,194,1719903600"; 
   d="scan'208";a="41307705"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Sep 2024 18:51:21 -0700
X-CSE-ConnectionGUID: 29OEIk5/RfmpO23cXnBNZA==
X-CSE-MsgGUID: ON9C07fzS3iCg+btlHUEUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,194,1719903600"; 
   d="scan'208";a="64817693"
Received: from allen-box.sh.intel.com ([10.239.159.127])
  by orviesa006.jf.intel.com with ESMTP; 01 Sep 2024 18:51:15 -0700
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
Subject: [PATCH v2 3/3] drm/tegra: Use iommu_paging_domain_alloc()
Date: Mon,  2 Sep 2024 09:47:00 +0800
Message-Id: <20240902014700.66095-4-baolu.lu@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240902014700.66095-1-baolu.lu@linux.intel.com>
References: <20240902014700.66095-1-baolu.lu@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240901_185121_807672_EDD27994 
X-CRM114-Status: GOOD (  13.54  )
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

Commit <17de3f5fdd35> ("iommu: Retire bus ops") removes iommu ops from
the bus structure. The iommu subsystem no longer relies on bus for
operations. So iommu_domain_alloc() interface is no longer relevant.

Replace iommu_domain_alloc() with iommu_paging_domain_alloc() which takes
the physical device from which the host1x_device virtual device was
instantiated. This physical device is a common parent to all physical
devices that are part of the virtual device.

Suggested-by: Thierry Reding <thierry.reding@gmail.com>
Signed-off-by: Lu Baolu <baolu.lu@linux.intel.com>
---
 drivers/gpu/drm/tegra/drm.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/tegra/drm.c b/drivers/gpu/drm/tegra/drm.c
index 03d1c76aec2d..d79c76a287f2 100644
--- a/drivers/gpu/drm/tegra/drm.c
+++ b/drivers/gpu/drm/tegra/drm.c
@@ -1135,6 +1135,7 @@ static bool host1x_drm_wants_iommu(struct host1x_device *dev)
 
 static int host1x_drm_probe(struct host1x_device *dev)
 {
+	struct device *dma_dev = dev->dev.parent;
 	struct tegra_drm *tegra;
 	struct drm_device *drm;
 	int err;
@@ -1149,8 +1150,8 @@ static int host1x_drm_probe(struct host1x_device *dev)
 		goto put;
 	}
 
-	if (host1x_drm_wants_iommu(dev) && iommu_present(&platform_bus_type)) {
-		tegra->domain = iommu_domain_alloc(&platform_bus_type);
+	if (host1x_drm_wants_iommu(dev) && device_iommu_mapped(dma_dev)) {
+		tegra->domain = iommu_paging_domain_alloc(dma_dev);
 		if (!tegra->domain) {
 			err = -ENOMEM;
 			goto free;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
