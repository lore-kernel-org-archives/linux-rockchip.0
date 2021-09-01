Return-Path: <SRS0=SdcM=NX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1F4AC4320E
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Sep 2021 17:55:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C01E861090
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Sep 2021 17:55:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C01E861090
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rosenzweig.io
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A3558vfnM49P0gW0GNk/9mPOYHYNCDCUe1nkK4G4gdI=; b=cDUdo+CU4M4cbR
	UqSahZUOnHUXg+ohDCgNqjT0BrID9nt9WQjW+3aztOVCqj5R6JUQ9qTMYO03gTcw6LoTqCOxz8vLn
	zCBwGLg39hqVJ5HmSgAN0vyuNc9Kcm/CeSpFeyMrio5iXHMk4bj01nBSiCn4c7ML2Mz82LHXWMxeh
	TBxY5uRjCdLYgCD45esPa/PNwU8sbh34B29H8W/ClIy2ych/rwlt4dkt77NojihGNgwN/DOiiudsy
	gNm7RDhBhfyG5ajkhe3xI/xzzrlP58gxZwrETlUg8A4Bt6sde04kXY7axTC/QCjEKxc92mJ6WaDM/
	imUTnDHLEptLcXxRJKGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mLUSc-006sb0-2s; Wed, 01 Sep 2021 17:55:42 +0000
Received: from rosenzweig.io ([138.197.143.207])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mLUSG-006sVH-87; Wed, 01 Sep 2021 17:55:21 +0000
From: Alyssa Rosenzweig <alyssa@rosenzweig.io>
To: dri-devel@lists.freedesktop.org
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
 Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Abhinav Kumar <abhinavk@codeaurora.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Lee Jones <lee.jones@linaro.org>, Stephen Boyd <swboyd@chromium.org>,
 Kalyan Thota <kalyan_t@codeaurora.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Alyssa Rosenzweig <alyssa@rosenzweig.io>,
 linux-rockchip@lists.infradead.org
Subject: [PATCH 4/5] drm/rockchip: Use common drm_fixed_16_16 helper
Date: Wed,  1 Sep 2021 13:54:30 -0400
Message-Id: <20210901175431.14060-4-alyssa@rosenzweig.io>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210901175431.14060-1-alyssa@rosenzweig.io>
References: <20210901175431.14060-1-alyssa@rosenzweig.io>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210901_105520_375002_A8070890 
X-CRM114-Status: GOOD (  11.00  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Replace our open-coded FRAC_16_16 with the common drm_fixed_16_16
helper to reduce code duplication between drivers.

Signed-off-by: Alyssa Rosenzweig <alyssa@rosenzweig.io>
Cc: linux-rockchip@lists.infradead.org
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 9 +++++----
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h | 1 -
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index ba9e14da41b4..9428fcba400f 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -29,6 +29,7 @@
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_self_refresh_helper.h>
 #include <drm/drm_vblank.h>
+#include <drm/drm_fixed.h>
 
 #ifdef CONFIG_DRM_ANALOGIX_DP
 #include <drm/bridge/analogix_dp.h>
@@ -789,9 +790,9 @@ static int vop_plane_atomic_check(struct drm_plane *plane,
 	struct vop_win *vop_win = to_vop_win(plane);
 	const struct vop_win_data *win = vop_win->data;
 	int ret;
-	int min_scale = win->phy->scl ? FRAC_16_16(1, 8) :
+	int min_scale = win->phy->scl ? drm_fixed_16_16(1, 8) :
 					DRM_PLANE_HELPER_NO_SCALING;
-	int max_scale = win->phy->scl ? FRAC_16_16(8, 1) :
+	int max_scale = win->phy->scl ? drm_fixed_16_16(8, 1) :
 					DRM_PLANE_HELPER_NO_SCALING;
 
 	if (!crtc || WARN_ON(!fb))
@@ -1037,9 +1038,9 @@ static int vop_plane_atomic_async_check(struct drm_plane *plane,
 										 plane);
 	struct vop_win *vop_win = to_vop_win(plane);
 	const struct vop_win_data *win = vop_win->data;
-	int min_scale = win->phy->scl ? FRAC_16_16(1, 8) :
+	int min_scale = win->phy->scl ? drm_fixed_16_16(1, 8) :
 					DRM_PLANE_HELPER_NO_SCALING;
-	int max_scale = win->phy->scl ? FRAC_16_16(8, 1) :
+	int max_scale = win->phy->scl ? drm_fixed_16_16(8, 1) :
 					DRM_PLANE_HELPER_NO_SCALING;
 	struct drm_crtc_state *crtc_state;
 
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
index 857d97cdc67c..cada12e653cc 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
@@ -335,7 +335,6 @@ enum vop_pol {
 	DEN_NEGATIVE   = 2
 };
 
-#define FRAC_16_16(mult, div)    (((mult) << 16) / (div))
 #define SCL_FT_DEFAULT_FIXPOINT_SHIFT	12
 #define SCL_MAX_VSKIPLINES		4
 #define MIN_SCL_FT_AFTER_VSKIP		1
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
