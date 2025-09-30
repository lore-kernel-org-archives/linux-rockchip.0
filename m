Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23EC7CCA46F
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Sep 2025 09:15:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IVu0qQfRfRiV/S1zAplMBnBvsjrL6/TUEqx1/WBNb5M=; b=l+W5mZHurcDbEq
	sPAoyU1hv4P1g6sOP6c5OaFU6LgwNeHUEMhOc/MsK1LAZVS9pmO9MHjj8m0AiAQu6rBrQOZxuiG2C
	1vR2tT7LTG9bXgX6xouPgQzXR6KLl4kBz7De10DPsFL64kANc2sucv0LcqiHu+GIDtkE/64zBIK7c
	FARYChGc8vUqqimRKB5edToL2en3inPvs8EFwTrEl6DudRmeqkrk32kvRGM6V2sjNrD8QW4713Vll
	RdJc6Ys3GPr7pIayrMzHWz6OnkAeaYkOirqGVX8ywYxVHprbgB85fLB80w6HuhJmFtohhWFaKiux2
	akphltJgEEpv0xMCRhoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3WSO-00000004m1E-0ipg;
	Tue, 30 Sep 2025 09:15:36 +0000
Received: from mail-m3272.qiye.163.com ([220.197.32.72])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3WRk-00000004lTj-2RiL;
	Tue, 30 Sep 2025 09:15:10 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 249404049;
	Tue, 30 Sep 2025 17:14:51 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	rfoss@kernel.org
Cc: Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	inki.dae@samsung.com,
	sw0312.kim@samsung.com,
	kyungmin.park@samsung.com,
	krzk@kernel.org,
	alim.akhtar@samsung.com,
	jingoohan1@gmail.com,
	p.zabel@pengutronix.de,
	hjc@rock-chips.com,
	heiko@sntech.de,
	andy.yan@rock-chips.com,
	dmitry.baryshkov@oss.qualcomm.com,
	dianders@chromium.org,
	m.szyprowski@samsung.com,
	luca.ceresoli@bootlin.com,
	jani.nikula@intel.com,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Damon Ding <damon.ding@rock-chips.com>
Subject: [PATCH v6 11/18] drm/display: bridge_connector: Ensure last bridge determines EDID/modes detection capabilities
Date: Tue, 30 Sep 2025 17:09:13 +0800
Message-Id: <20250930090920.131094-12-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250930090920.131094-1-damon.ding@rock-chips.com>
References: <20250930090920.131094-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-HM-Tid: 0a9999e738b603a3kunmd96de74a43bdd1
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGRoYHVZLQktPGRhMS0sdQk1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=A1qWc0i+xYTSki78pkGC4SDC/XRq+V6lvD4cpxcrT81OI8AogAcNVhY/y/eETl6by2m7B3p2M4D5gDioPBlNcqq3+diUWfM9uVQ82OXmIaWE7s1SR9uFk7rkoAzhr0Riw8YIEKhi3SpFRnLN6BRVG+sUTv+GqCb/60sQ/BakkZA=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=cgZ8iYegH0RyoNGR+NMR1IvyawzYxfOsjdOYF5cuO9c=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250930_021456_867738_B4CC27FB 
X-CRM114-Status: GOOD (  11.19  )
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

When multiple bridges are present, EDID detection capability
(DRM_BRIDGE_OP_EDID) takes precedence over modes detection
(DRM_BRIDGE_OP_MODES). To ensure the above two capabilities are
determined by the last bridge in the chain, we handle three cases:

Case 1: The later bridge declares only DRM_BRIDGE_OP_MODES
 - If the previous bridge declares DRM_BRIDGE_OP_EDID, set
   &drm_bridge_connector.bridge_edid to NULL and set
   &drm_bridge_connector.bridge_modes to the later bridge.
 - Ensure modes detection capability of the later bridge will not
   be ignored.

Case 2: The later bridge declares only DRM_BRIDGE_OP_EDID
 - If the previous bridge declares DRM_BRIDGE_OP_MODES, set
   &drm_bridge_connector.bridge_modes to NULL and set
   &drm_bridge_connector.bridge_edid to the later bridge.
 - Although EDID detection capability has higher priority, this
   operation is for balance and makes sense.

Case 3: the later bridge declares both of them
 - Assign later bridge as &drm_bridge_connector.bridge_edid and
   and &drm_bridge_connector.bridge_modes to this bridge.
 - Just leave transfer of these two capabilities as before.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
Suggested-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 .../gpu/drm/display/drm_bridge_connector.c    | 42 +++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/drivers/gpu/drm/display/drm_bridge_connector.c b/drivers/gpu/drm/display/drm_bridge_connector.c
index baacd21e7341..0ca6f140e85b 100644
--- a/drivers/gpu/drm/display/drm_bridge_connector.c
+++ b/drivers/gpu/drm/display/drm_bridge_connector.c
@@ -640,6 +640,7 @@ struct drm_connector *drm_bridge_connector_init(struct drm_device *drm,
 	struct drm_connector *connector;
 	struct i2c_adapter *ddc = NULL;
 	struct drm_bridge *bridge, *panel_bridge = NULL;
+	struct drm_bridge *pre_bridge_edid, *pre_bridge_modes;
 	unsigned int supported_formats = BIT(HDMI_COLORSPACE_RGB);
 	unsigned int max_bpc = 8;
 	bool support_hdcp = false;
@@ -668,6 +669,9 @@ struct drm_connector *drm_bridge_connector_init(struct drm_device *drm,
 	 */
 	connector_type = DRM_MODE_CONNECTOR_Unknown;
 	drm_for_each_bridge_in_chain(encoder, bridge) {
+		pre_bridge_edid = bridge_connector->bridge_edid;
+		pre_bridge_modes = bridge_connector->bridge_modes;
+
 		if (!bridge->interlace_allowed)
 			connector->interlace_allowed = false;
 		if (!bridge->ycbcr_420_allowed)
@@ -681,6 +685,44 @@ struct drm_connector *drm_bridge_connector_init(struct drm_device *drm,
 			bridge_connector->bridge_detect = bridge;
 		if (bridge->ops & DRM_BRIDGE_OP_MODES)
 			bridge_connector->bridge_modes = bridge;
+
+		/*
+		 * When multiple bridges are present, EDID detection capability
+		 * (DRM_BRIDGE_OP_EDID) takes precedence over modes detection
+		 * (DRM_BRIDGE_OP_MODES). To ensure the above two capabilities
+		 * are determined by the last bridge in the chain, we handle
+		 * three cases:
+		 *
+		 * Case 1: The later bridge declares only DRM_BRIDGE_OP_MODES
+		 *  - If the previous bridge declares DRM_BRIDGE_OP_EDID, set
+		 *    &drm_bridge_connector.bridge_edid to NULL and set
+		 *    &drm_bridge_connector.bridge_modes to the later bridge.
+		 *  - Ensure modes detection capability of the later bridge
+		 *    will not be ignored.
+		 *
+		 * Case 2: The later bridge declares only DRM_BRIDGE_OP_EDID
+		 *  - If the previous bridge declares DRM_BRIDGE_OP_MODES, set
+		 *    &drm_bridge_connector.bridge_modes to NULL and set
+		 *    &drm_bridge_connector.bridge_edid to the later bridge.
+		 *  - Although EDID detection capability has higher priority,
+		 *    this operation is for balance and makes sense.
+		 *
+		 * Case 3: the later bridge declares both of them
+		 *  - Assign later bridge as &drm_bridge_connector.bridge_edid
+		 *    and &drm_bridge_connector.bridge_modes to this bridge.
+		 *  - Just leave transfer of these two capabilities as before.
+		 */
+		if (bridge->ops & DRM_BRIDGE_OP_EDID &&
+		    !(bridge->ops & DRM_BRIDGE_OP_MODES)) {
+			if (pre_bridge_modes)
+				bridge_connector->bridge_modes = NULL;
+		}
+		if (bridge->ops & DRM_BRIDGE_OP_MODES &&
+		    !(bridge->ops & DRM_BRIDGE_OP_EDID)) {
+			if (pre_bridge_edid)
+				bridge_connector->bridge_edid = NULL;
+		}
+
 		if (bridge->ops & DRM_BRIDGE_OP_HDMI) {
 			if (bridge_connector->bridge_hdmi)
 				return ERR_PTR(-EBUSY);
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
