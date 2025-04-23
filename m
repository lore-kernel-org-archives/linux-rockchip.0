Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B61ADC369D3
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Apr 2025 17:44:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w7/j2Di45LAneV4+1Lusk8Y1v7wx5gZpikSCHDApZ98=; b=Ntb6o2N0VBWixw
	SPZRZpJhKB2Fi8qdO1PNlo5eWsh4EpzCCMdTBeHKbIu+cZ6bUfu7pcAEDMWk8Wou/up3j07+F2qSr
	fwSu4G+Y41CtH2GcAnwbFy3HGTmWTfD/keTWDrEM6w1T24CNtZLiQXRTf5olnANlhJGO1oEI/E/hH
	KT8mxltsEjgKMw9nPpbOyZbJMFXU6S7nT23sZjJizBFreOmKZ20MzzZcViqPzwnvWr9ED0MgVIksA
	KrBuAoap7yBFBUW2xsAk3R9FDdQ/DMMohKqfxyPwItKMekoODEj7R/zP+FajCfI4hiposgEldweJR
	EG8pCV2TEYoZKuKpPC0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7e93-0000000BOTk-3ccx;
	Wed, 23 Apr 2025 17:44:25 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7dD3-0000000BAwH-2jcF;
	Wed, 23 Apr 2025 16:44:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id BD2B549F8D;
	Wed, 23 Apr 2025 16:44:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E43FC4CEE2;
	Wed, 23 Apr 2025 16:44:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745426669;
	bh=FX/Vo6MgthKdRTi+CWkqnrzMpTD/YHg19LlWfAknldU=;
	h=From:To:Cc:Subject:Date:From;
	b=TLIO7yB9lKAb3xtqbawTI9uuH7U0buTQA287nqui8dXH5EcJZs9zQXzSUbb8PzWsy
	 RNWcexpB7kcsIemNT+mZa97uo1GZoNa2eSlZ2NWj7v4fwrY36cwTuRpIT4Sjj1X3wP
	 3HReIrVK6ck+ajc+V5gaae3eGR3NaAvgowNSm+upyMYOAyBfr2bchU8L3G9JXwFXZ6
	 bK/Sq1HnGegVngE9Vt7g9vVxQpKsyBo3Uv/3hLahw2M1asmtUDdHtP35QZf1rglrQb
	 5Qr9PrQSF/fZz87dmlYQwcYyUv1Wl/6vHDHO7nAzbLQfgLQ1X7HwSmx0r6AQyj/0p+
	 LBc9aJbWay+Gw==
From: Arnd Bergmann <arnd@kernel.org>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Douglas Anderson <dianders@chromium.org>,
	Damon Ding <damon.ding@rock-chips.com>
Subject: [PATCH] drm/rockchip: add CONFIG_OF dependency
Date: Wed, 23 Apr 2025 18:44:16 +0200
Message-Id: <20250423164422.2793634-1-arnd@kernel.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250423_094429_721797_7DA20F2A 
X-CRM114-Status: UNSURE (   9.37  )
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
Cc: Arnd Bergmann <arnd@arndb.de>, Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko.stuebner@cherry.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Arnd Bergmann <arnd@arndb.de>

DRM_DISPLAY_DP_AUX_BUS cannot be selected when CONFIG_OF is disabled:

WARNING: unmet direct dependencies detected for DRM_DISPLAY_DP_AUX_BUS
  Depends on [n]: HAS_IOMEM [=y] && DRM [=y] && OF [=n]
  Selected by [y]:
  - DRM_ROCKCHIP [=y] && HAS_IOMEM [=y] && DRM [=y] && ROCKCHIP_IOMMU [=y] && ROCKCHIP_ANALOGIX_DP [=y]

Rockchip platforms all depend on OF anyway, so add the dependency here
for compile testing.

Fixes: d7b4936b2bc0 ("drm/rockchip: analogix_dp: Add support to get panel from the DP AUX bus")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/gpu/drm/rockchip/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
index caa251f91dd8..6b9f43c05148 100644
--- a/drivers/gpu/drm/rockchip/Kconfig
+++ b/drivers/gpu/drm/rockchip/Kconfig
@@ -2,6 +2,7 @@
 config DRM_ROCKCHIP
 	tristate "DRM Support for Rockchip"
 	depends on DRM && ROCKCHIP_IOMMU
+	depends on OF
 	select DRM_CLIENT_SELECTION
 	select DRM_GEM_DMA_HELPER
 	select DRM_KMS_HELPER
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
