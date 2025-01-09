Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D099E77197
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jan 2025 03:34:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RnEokLQZ3LC13yI+Ezw6A44iKCWFya9HQuXdTLI0o24=; b=zS5/XiGEMw5ApD
	sYnexFt2mAPwXBMUXvzdqA2zuI7Y/LTJWReaL3/ixJZrZDo9RpFFDD1ggWcFc179wBEAGMYtjujqI
	yHJ0byukY7Y5F330SxQJhBxCOpKxj0rmUP/RG0QL3Ogc5Ji0+Tf8makDTBvrIwmDvSnLiJbm8UDGr
	eNL9LnAOOwf6qn/lu3qKGKP6tRTIoymKEqdNe4yVR/xbc9pGBOBATc7JQG8aDbsMXo9HpMTcoFUXm
	xts/6jsPTP3/2BVZE0OK0WYYtoBFkY2R5za2mbYNaWb8p5HIgp1k1Bs6/sMDjPmY3qiRON49tGcWn
	At0raFoV6CK7AHZKut9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVjJJ-0000000AbLU-0MSX;
	Thu, 09 Jan 2025 03:34:17 +0000
Received: from mail-m12797.qiye.163.com ([115.236.127.97])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVjDP-0000000AZhr-23RM;
	Thu, 09 Jan 2025 03:28:13 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 82c01a26;
	Thu, 9 Jan 2025 11:28:06 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v5 05/20] drm/rockchip: analogix_dp: Replace DRM_...() functions with drm_...() or dev_...()
Date: Thu,  9 Jan 2025 11:27:10 +0800
Message-Id: <20250109032725.1102465-6-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250109032725.1102465-1-damon.ding@rock-chips.com>
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0pISVYfSxgeTB1CQkIfHRlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCS0
	NVSktLVUpCWQY+
X-HM-Tid: 0a94491ae58503a3kunm82c01a26
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6P1E6CTo6CzILPRQIFgJCTBc0
	EzZPFDhVSlVKTEhNSEJISUNDTU5LVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFOSkJJNwY+
DKIM-Signature: a=rsa-sha256;
	b=QoIxyBpmEC2qTazAgYcFXJcaX0t2tE5AhAv8qyRJpq5RdaQEW+YEv/xlVKWpfVJBXqK0hH6KGt+NkuxtVTs6muBC8tZif1TNdqBpDVVrHiRWO61i7+73Fv4kgF9FvED9FDqIbWZE/pZHqdaoBmm/dcfrPjMx39a9Z8/TPTduaWM=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=hUhp79OUJHQ64SYdSOOhsCMc+94NAAoeH98P6b2yS9s=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_192811_796007_A061A868 
X-CRM114-Status: GOOD (  10.30  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, dmitry.baryshkov@linaro.org, vkoul@kernel.org, Damon Ding <damon.ding@rock-chips.com>, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

According to the comments in include/drm/drm_print.h, the DRM_...()
functions are deprecated in favor of drm_...() or dev_...() functions.

Use drm_err()/drm_dbg_core()/drm_dbg_kms() instead of
DRM_DEV_ERROR()/DRM_ERROR()/DRM_DEV_DEBUG()/DRM_DEBUG_KMS() after
rockchip_dp_bind() is called, and replace DRM_DEV_ERROR() with dev_err()
before calling it.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
---
 .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 29 ++++++++++---------
 1 file changed, 15 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
index 546d13f19f9b..8114c3238609 100644
--- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
@@ -100,13 +100,13 @@ static int rockchip_dp_poweron(struct analogix_dp_plat_data *plat_data)
 
 	ret = clk_prepare_enable(dp->pclk);
 	if (ret < 0) {
-		DRM_DEV_ERROR(dp->dev, "failed to enable pclk %d\n", ret);
+		drm_err(dp->drm_dev, "failed to enable pclk %d\n", ret);
 		return ret;
 	}
 
 	ret = rockchip_dp_pre_init(dp);
 	if (ret < 0) {
-		DRM_DEV_ERROR(dp->dev, "failed to dp pre init %d\n", ret);
+		drm_err(dp->drm_dev, "failed to dp pre init %d\n", ret);
 		clk_disable_unprepare(dp->pclk);
 		return ret;
 	}
@@ -126,12 +126,13 @@ static int rockchip_dp_powerdown(struct analogix_dp_plat_data *plat_data)
 static int rockchip_dp_get_modes(struct analogix_dp_plat_data *plat_data,
 				 struct drm_connector *connector)
 {
+	struct rockchip_dp_device *dp = pdata_encoder_to_dp(plat_data);
 	struct drm_display_info *di = &connector->display_info;
 	/* VOP couldn't output YUV video format for eDP rightly */
 	u32 mask = DRM_COLOR_FORMAT_YCBCR444 | DRM_COLOR_FORMAT_YCBCR422;
 
 	if ((di->color_formats & mask)) {
-		DRM_DEBUG_KMS("Swapping display color format from YUV to RGB\n");
+		drm_dbg_kms(dp->drm_dev, "Swapping display color format from YUV to RGB\n");
 		di->color_formats &= ~mask;
 		di->color_formats |= DRM_COLOR_FORMAT_RGB444;
 		di->bpc = 8;
@@ -201,17 +202,17 @@ static void rockchip_dp_drm_encoder_enable(struct drm_encoder *encoder,
 	else
 		val = dp->data->lcdsel_big;
 
-	DRM_DEV_DEBUG(dp->dev, "vop %s output to dp\n", (ret) ? "LIT" : "BIG");
+	drm_dbg_core(dp->drm_dev, "vop %s output to dp\n", (ret) ? "LIT" : "BIG");
 
 	ret = clk_prepare_enable(dp->grfclk);
 	if (ret < 0) {
-		DRM_DEV_ERROR(dp->dev, "failed to enable grfclk %d\n", ret);
+		drm_err(dp->drm_dev, "failed to enable grfclk %d\n", ret);
 		return;
 	}
 
 	ret = regmap_write(dp->grf, dp->data->lcdsel_grf_reg, val);
 	if (ret != 0)
-		DRM_DEV_ERROR(dp->dev, "Could not write to GRF: %d\n", ret);
+		drm_err(dp->drm_dev, "Could not write to GRF: %d\n", ret);
 
 	clk_disable_unprepare(dp->grfclk);
 }
@@ -236,7 +237,7 @@ static void rockchip_dp_drm_encoder_disable(struct drm_encoder *encoder,
 
 	ret = rockchip_drm_wait_vact_end(crtc, PSR_WAIT_LINE_FLAG_TIMEOUT_MS);
 	if (ret)
-		DRM_DEV_ERROR(dp->dev, "line flag irq timed out\n");
+		drm_err(dp->drm_dev, "line flag irq timed out\n");
 }
 
 static int
@@ -277,7 +278,7 @@ static int rockchip_dp_of_probe(struct rockchip_dp_device *dp)
 
 	dp->grf = syscon_regmap_lookup_by_phandle(np, "rockchip,grf");
 	if (IS_ERR(dp->grf)) {
-		DRM_DEV_ERROR(dev, "failed to get rockchip,grf property\n");
+		dev_err(dev, "failed to get rockchip,grf property\n");
 		return PTR_ERR(dp->grf);
 	}
 
@@ -287,19 +288,19 @@ static int rockchip_dp_of_probe(struct rockchip_dp_device *dp)
 	} else if (PTR_ERR(dp->grfclk) == -EPROBE_DEFER) {
 		return -EPROBE_DEFER;
 	} else if (IS_ERR(dp->grfclk)) {
-		DRM_DEV_ERROR(dev, "failed to get grf clock\n");
+		dev_err(dev, "failed to get grf clock\n");
 		return PTR_ERR(dp->grfclk);
 	}
 
 	dp->pclk = devm_clk_get(dev, "pclk");
 	if (IS_ERR(dp->pclk)) {
-		DRM_DEV_ERROR(dev, "failed to get pclk property\n");
+		dev_err(dev, "failed to get pclk property\n");
 		return PTR_ERR(dp->pclk);
 	}
 
 	dp->rst = devm_reset_control_get(dev, "dp");
 	if (IS_ERR(dp->rst)) {
-		DRM_DEV_ERROR(dev, "failed to get dp reset control\n");
+		dev_err(dev, "failed to get dp reset control\n");
 		return PTR_ERR(dp->rst);
 	}
 
@@ -315,12 +316,12 @@ static int rockchip_dp_drm_create_encoder(struct rockchip_dp_device *dp)
 
 	encoder->possible_crtcs = drm_of_find_possible_crtcs(drm_dev,
 							     dev->of_node);
-	DRM_DEBUG_KMS("possible_crtcs = 0x%x\n", encoder->possible_crtcs);
+	drm_dbg_kms(drm_dev, "possible_crtcs = 0x%x\n", encoder->possible_crtcs);
 
 	ret = drm_simple_encoder_init(drm_dev, encoder,
 				      DRM_MODE_ENCODER_TMDS);
 	if (ret) {
-		DRM_ERROR("failed to initialize encoder with drm\n");
+		drm_err(drm_dev, "failed to initialize encoder with drm\n");
 		return ret;
 	}
 
@@ -340,7 +341,7 @@ static int rockchip_dp_bind(struct device *dev, struct device *master,
 
 	ret = rockchip_dp_drm_create_encoder(dp);
 	if (ret) {
-		DRM_ERROR("failed to create drm encoder\n");
+		drm_err(drm_dev, "failed to create drm encoder\n");
 		return ret;
 	}
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
