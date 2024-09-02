Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7DDCCA101E
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Sep 2024 01:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u1+cx7nM5qkDCzahMq2bnYlIrY9XhtoVyJvEBfTagVY=; b=UHxZWVNMGaNK3m
	fslaeVz1/eK+7hfMYX1Iak+6acRn5+bn9WBg3ypcR9Qh1CdLsAw70e+ce8Vu2jfvhi0Aq/On9Rr9B
	aqWqystysz1mLtcDdiMhMCCInHOCCgF6p34yjRiLW1mc0gjjpKa0C/1OqUMO0B39j6bwSKFu+E7tm
	eu0g/CEAE4ygGUwEAmQsD4nspo8WP7474HG+CYEpSjMFcjsaa0u1EpMW6IXG3p7yGTJhaeNQU1eFi
	9gqsZBwMyT36g4feqf3pRKJmknErIyaygtzpZt+jDmUhD2bxN9MycC/kulH8jkgKtTgRTfWF/jLwU
	jg89+YhY145WP9ogt1aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skwEb-0000000ChZI-0lhE;
	Mon, 02 Sep 2024 01:52:01 +0000
Received: from mgamail.intel.com ([192.198.163.8])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skwDf-0000000ChEq-3D68;
	Mon, 02 Sep 2024 01:51:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1725241863; x=1756777863;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=aBpacNPMohRcwSsOR11sSC5U39gBhwta0pqjN6fSZyw=;
  b=dUoPApqn81mj36O+4LACZwoMUxUi/Hb0HAaS0H6O1Mc/3VaNtKqRTcwt
   0ASlX2IC9QYuyOVMRaPWp3Os+UJGfd07vV6GxI3SI4PUNH2sEFjf2wGnM
   o51tDMRh2kLARZlUwh8WC029XHOy/ZIBbhqjTXHeEnO6nVM+Dohp98Pdb
   5+fvSokRFy79BPVjX1a2jT4Uat9rPhsuobSYqzgizCL9PQVfSv5sK38G6
   ly5FTPx4P+/++h2hTwWsXrLkfZ5OQnuJ52bMdaIrKTQAD9VFcoBk4+tFp
   DhrntiJhgp6N8QJwYJpzMGt+rif33G8dUbZZNjMA9lNOi6koHcyS24YsE
   g==;
X-CSE-ConnectionGUID: l0Z+QDrwTk29gbQZNtnsCA==
X-CSE-MsgGUID: p08PoZsOSOibmMFf73momg==
X-IronPort-AV: E=McAfee;i="6700,10204,11182"; a="41307651"
X-IronPort-AV: E=Sophos;i="6.10,194,1719903600"; 
   d="scan'208";a="41307651"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Sep 2024 18:51:01 -0700
X-CSE-ConnectionGUID: IRhh+f7nQQCcc3lrV/qkew==
X-CSE-MsgGUID: V2HiG/ObQqC4xEN2WrNWAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,194,1719903600"; 
   d="scan'208";a="64817612"
Received: from allen-box.sh.intel.com ([10.239.159.127])
  by orviesa006.jf.intel.com with ESMTP; 01 Sep 2024 18:50:55 -0700
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
Subject: [PATCH v2 0/3] drm: Use iommu_paging_domain_alloc()
Date: Mon,  2 Sep 2024 09:46:57 +0800
Message-Id: <20240902014700.66095-1-baolu.lu@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240901_185103_834209_4D6D5D6A 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
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

A new helper named iommu_paging_domain_alloc() was introduced in the
iommu subsystem as a replacement of iommu_domain_alloc(). This helper
relies on the device for IOMMU API use instead of the bus.

The replacement work started from this series:

https://lore.kernel.org/linux-iommu/20240610085555.88197-1-baolu.lu@linux.intel.com/

Several patches have already been merged into the mainline kernel, but
we've decided to route all remaining ones through the subsystem tree.

Change log:
v2:
 - Patch 3/3: use dev->dev.parent as the input for
   iommu_paging_domain_alloc(), suggested by Thierry Reding.
   https://lore.kernel.org/linux-iommu/qyvyd2ftebjlgmzyayfvxsqa64c4wgx7keix3a6eexdspbvawy@a5ffnm5h5tgp/

v1:
 - https://lore.kernel.org/linux-iommu/20240812071034.9443-1-baolu.lu@linux.intel.com/

Lu Baolu (3):
  drm/nouveau/tegra: Use iommu_paging_domain_alloc()
  drm/rockchip: Use iommu_paging_domain_alloc()
  drm/tegra: Use iommu_paging_domain_alloc()

 drivers/gpu/drm/nouveau/nvkm/engine/device/tegra.c |  4 ++--
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c        | 10 +++++++---
 drivers/gpu/drm/tegra/drm.c                        |  5 +++--
 3 files changed, 12 insertions(+), 7 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
