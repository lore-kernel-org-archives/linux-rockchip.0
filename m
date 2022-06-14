Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 277F4C43334
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 19:15:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gBgETrMi1dr4bK7iNTBUO18c12CTAfTdpYyYgiMNBjk=; b=q2jxrdc42bxZZO
	1F889dUoQW4rYIzrJdBnT+CHCMlO50UCrLJEcalLPMemJy4Y0mBnOEPzOrxnOYPp9xSMpDlnHp3Ga
	pnwbi07VawMOCfznr0/b50OyIo+fNqKXxJHyL0ZTgJJloTcxrK6agtSBahzCTQ2ql13FYrCixFT0B
	AAkjnh5ZRne1oH1JAOaP7zPScQxk3PHxE21/9MmWXWdOBfOTkrmfDeghdCs9+G4NQauJY9xpqjWS3
	2Kxpf7OS+y25M3kd8Zm26aS6kFkov4wv4UgxykfC4KjZrVbGVuHieuer6ekVNGetY5czUBs1HVI07
	hVhRf4ua0ptCvufaUFPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1C0S-00AvjE-9O; Tue, 14 Jun 2022 19:15:16 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1C0O-00Avfy-UI
	for linux-rockchip@lists.infradead.org; Tue, 14 Jun 2022 19:15:14 +0000
Received: from pyrite.rasen.tech (softbank036240126034.bbtec.net [36.240.126.34])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id C0291825;
	Tue, 14 Jun 2022 21:15:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655234111;
	bh=oK+rU4Lkk88AlP7PONSvWsmoI8W3t86TP+7Am/+lmTg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QYmyA+k3xNKsJvunh03jM2iuV4DA5xhACPV0MVVTaJpX5IuzIFWUjy4NpfZ7c3uTM
	 iDK+8V7gq3HJIu2sfty6+2y5R+pjpagM1zZJjUJFMP9/rsR8jyhS7JEMJd1uR6mN2P
	 VBHoQVt402kIHx7yMqlXBFdKGJs1zwfcDCsozmT0=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Paul Elder <paul.elder@ideasonboard.com>,
	dafna@fastmail.com,
	heiko@sntech.de,
	laurent.pinchart@ideasonboard.com,
	jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org,
	djrscally@gmail.com,
	helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 50/55] media: rkisp1: Add and set registers for crop for i.MX8MP
Date: Wed, 15 Jun 2022 04:11:22 +0900
Message-Id: <20220614191127.3420492-51-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_121513_157319_41E11C54 
X-CRM114-Status: GOOD (  16.21  )
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

The ISP version in the i.MX8MP has a separate set of registers for crop
that is currently not handled. Add a feature flag to determine which
type of crop the ISP supports and set the crop registers based on that.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
---
 .../platform/rockchip/rkisp1/rkisp1-common.h  |  2 ++
 .../platform/rockchip/rkisp1/rkisp1-debug.c   | 14 +++++++++++++-
 .../platform/rockchip/rkisp1/rkisp1-dev.c     |  7 +++++--
 .../platform/rockchip/rkisp1/rkisp1-regs.h    |  9 +++++++++
 .../platform/rockchip/rkisp1/rkisp1-resizer.c | 19 +++++++++++++++++--
 5 files changed, 46 insertions(+), 5 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index 667fca0fef95..e4f422bed09a 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -110,6 +110,8 @@ enum rkisp1_isp_pad {
  */
 enum rkisp1_feature {
 	RKISP1_FEATURE_MIPI_CSI2 = BIT(0),
+	RKISP1_FEATURE_DUAL_CROP = BIT(1),
+	RKISP1_FEATURE_RSZ_CROP = BIT(2),
 };
 
 /*
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
index 02854e8ea1a4..753abd024ce7 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
@@ -115,9 +115,21 @@ static int rkisp1_debug_dump_rsz_regs_show(struct seq_file *m, void *p)
 		RKISP1_DEBUG_SHD_REG(RSZ_PHASE_VC),
 		{ /* Sentinel */ },
 	};
+	static const struct rkisp1_debug_register crop_registers[] = {
+		RKISP1_DEBUG_SHD_REG(RSZ_CROP_X_DIR),
+		RKISP1_DEBUG_SHD_REG(RSZ_CROP_Y_DIR),
+		RKISP1_DEBUG_REG(RSZ_FRAME_RATE),
+		RKISP1_DEBUG_REG(RSZ_FORMAT_CONV_CTRL),
+		{ /* Sentinel */ },
+	};
 	struct rkisp1_resizer *rsz = m->private;
 
-	return rkisp1_debug_dump_regs(rsz->rkisp1, m, rsz->regs_base, registers);
+	rkisp1_debug_dump_regs(rsz->rkisp1, m, rsz->regs_base, registers);
+	if (rsz->rkisp1->info->features & RKISP1_FEATURE_RSZ_CROP)
+		rkisp1_debug_dump_regs(rsz->rkisp1, m, rsz->regs_base,
+				       crop_registers);
+
+	return 0;
 }
 DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_dump_rsz_regs);
 
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index a4496ee2e9b4..5abe33f5fed4 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -465,7 +465,8 @@ static const struct rkisp1_info px30_isp_info = {
 	.isrs = px30_isp_isrs,
 	.isr_size = ARRAY_SIZE(px30_isp_isrs),
 	.isp_ver = RKISP1_V12,
-	.features = RKISP1_FEATURE_MIPI_CSI2,
+	.features = RKISP1_FEATURE_MIPI_CSI2
+		  | RKISP1_FEATURE_DUAL_CROP,
 };
 
 static const char * const rk3399_isp_clks[] = {
@@ -484,7 +485,8 @@ static const struct rkisp1_info rk3399_isp_info = {
 	.isrs = rk3399_isp_isrs,
 	.isr_size = ARRAY_SIZE(rk3399_isp_isrs),
 	.isp_ver = RKISP1_V10,
-	.features = RKISP1_FEATURE_MIPI_CSI2,
+	.features = RKISP1_FEATURE_MIPI_CSI2
+		  | RKISP1_FEATURE_DUAL_CROP,
 };
 
 static const char * const imx8mp_isp_clks[] = {
@@ -503,6 +505,7 @@ static const struct rkisp1_info imx8mp_isp_info = {
 	.isrs = imx8mp_isp_isrs,
 	.isr_size = ARRAY_SIZE(imx8mp_isp_isrs),
 	.isp_ver = IMX8MP_V10,
+	.features = RKISP1_FEATURE_RSZ_CROP,
 };
 
 static const struct of_device_id rkisp1_of_match[] = {
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
index dd3e6c38be67..1fc54ab22b6d 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
@@ -168,6 +168,9 @@
 #define RKISP1_CIF_RSZ_CTRL_CFG_UPD_AUTO		BIT(9)
 #define RKISP1_CIF_RSZ_SCALER_FACTOR			BIT(16)
 
+/* RSZ_CROP_[XY]_DIR */
+#define RKISP1_CIF_RSZ_CROP_XY_DIR(start, end)		((end) << 16 | (start) << 0)
+
 /* MI_IMSC - MI_MIS - MI_RIS - MI_ICR - MI_ISR */
 #define RKISP1_CIF_MI_FRAME(stream)			BIT((stream)->id)
 #define RKISP1_CIF_MI_MBLK_LINE				BIT(2)
@@ -926,6 +929,12 @@
 #define RKISP1_CIF_RSZ_PHASE_HC_SHD		0x004C
 #define RKISP1_CIF_RSZ_PHASE_VY_SHD		0x0050
 #define RKISP1_CIF_RSZ_PHASE_VC_SHD		0x0054
+#define RKISP1_CIF_RSZ_CROP_X_DIR		0x0058
+#define RKISP1_CIF_RSZ_CROP_Y_DIR		0x005C
+#define RKISP1_CIF_RSZ_CROP_X_DIR_SHD		0x0060
+#define RKISP1_CIF_RSZ_CROP_Y_DIR_SHD		0x0064
+#define RKISP1_CIF_RSZ_FRAME_RATE		0x0068
+#define RKISP1_CIF_RSZ_FORMAT_CONV_CTRL		0x006C
 
 #define RKISP1_CIF_MI_BASE			0x00001400
 #define RKISP1_CIF_MI_CTRL			(RKISP1_CIF_MI_BASE + 0x00000000)
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
index f4caa8f684aa..08bf3aa8088f 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
@@ -244,6 +244,7 @@ static void rkisp1_rsz_config_regs(struct rkisp1_resizer *rsz,
 {
 	u32 ratio, rsz_ctrl = 0;
 	unsigned int i;
+	u32 val;
 
 	/* No phase offset */
 	rkisp1_rsz_write(rsz, RKISP1_CIF_RSZ_PHASE_HY, 0);
@@ -292,6 +293,18 @@ static void rkisp1_rsz_config_regs(struct rkisp1_resizer *rsz,
 
 	rkisp1_rsz_write(rsz, RKISP1_CIF_RSZ_CTRL, rsz_ctrl);
 
+	if (rsz->rkisp1->info->features & RKISP1_FEATURE_RSZ_CROP) {
+		val = RKISP1_CIF_RSZ_CROP_XY_DIR(src_y->left, src_y->left + src_y->width - 1);
+		rkisp1_rsz_write(rsz, RKISP1_CIF_RSZ_CROP_X_DIR, val);
+		val = RKISP1_CIF_RSZ_CROP_XY_DIR(src_y->top, src_y->top + src_y->height - 1);
+		rkisp1_rsz_write(rsz, RKISP1_CIF_RSZ_CROP_Y_DIR, val);
+
+		val = RKISP1_CIF_RSZ_FORMAT_CONV_CTRL_RSZ_INPUT_FORMAT_YCBCR_422
+		    | RKISP1_CIF_RSZ_FORMAT_CONV_CTRL_RSZ_OUTPUT_FORMAT_YCBCR_420
+		    | RKISP1_CIF_RSZ_FORMAT_CONV_CTRL_RSZ_PACK_FORMAT_SEMI_PLANAR;
+		rkisp1_rsz_write(rsz, RKISP1_CIF_RSZ_FORMAT_CONV_CTRL, val);
+	}
+
 	rkisp1_rsz_update_shadow(rsz, when);
 }
 
@@ -656,7 +669,8 @@ static int rkisp1_rsz_s_stream(struct v4l2_subdev *sd, int enable)
 	enum rkisp1_shadow_regs_when when = RKISP1_SHADOW_REGS_SYNC;
 
 	if (!enable) {
-		rkisp1_dcrop_disable(rsz, RKISP1_SHADOW_REGS_ASYNC);
+		if (rkisp1->info->features & RKISP1_FEATURE_DUAL_CROP)
+			rkisp1_dcrop_disable(rsz, RKISP1_SHADOW_REGS_ASYNC);
 		rkisp1_rsz_disable(rsz, RKISP1_SHADOW_REGS_ASYNC);
 		return 0;
 	}
@@ -666,7 +680,8 @@ static int rkisp1_rsz_s_stream(struct v4l2_subdev *sd, int enable)
 
 	mutex_lock(&rsz->ops_lock);
 	rkisp1_rsz_config(rsz, when);
-	rkisp1_dcrop_config(rsz);
+	if (rkisp1->info->features & RKISP1_FEATURE_DUAL_CROP)
+		rkisp1_dcrop_config(rsz);
 
 	mutex_unlock(&rsz->ops_lock);
 	return 0;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
