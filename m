Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3750DC43217
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Apr 2022 23:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HN1MTcWtGDvZIHfppRStqNrNBp8Rx6GIRQrUa+LbJQA=; b=cJCb2sV6SKYMOS
	OOsy0PPP8Cc+mfoUsTlKShYEenFr7TGBwoqshS/CnMf1dbpueq25JAHHs3XqNcMMlGMA2OuZpe2fg
	2YXReDYwRIhtnRxgCUxmDxpO4SEQJtiiFwtV/DPfEyND8NJr2GR+S0qw8t778GbNHanN5NMdP0beX
	pQVepjxA39GinFHqkkmzspwmQOJjioa0baxBm5XLnfllyyHIvrXQm+vL1cT+VmTmcAc4+pbs48HSj
	/VXvwZVIV0bzfPnfflz7j3VBT5tXHp4eYvmv/lnlXOqtafxH9dnWLcNYpvWP+hl9UqVvwDUB4kKsh
	IWi+vI8sudOBQFrxnJbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhgS2-00FO55-5r; Thu, 21 Apr 2022 23:43:06 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhgRo-00FNpw-Qe
 for linux-rockchip@lists.infradead.org; Thu, 21 Apr 2022 23:42:56 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id BFF2F492;
 Fri, 22 Apr 2022 01:42:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1650584571;
 bh=9N/wMnvCirb3A9eWIL8H5HndLpqEJbgR3pLeQn5zIjY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ezDVLGyk1Z74Bgh24TlBZhGjYQ219NQrwjTpK/ip4km3fLm8SVG+/ZCCbdXV8onx2
 WBb6jpplWDIrix2319Tz2PiTe4mNbIyFCaEIGim+hbUsTqMTd6gKZWhrkR22GcP9eq
 e3YUuDUU5hLKj5H1CL3L6k8aFvhQuu+1xYZC2MDM=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Paul Elder <paul.elder@ideasonboard.com>, Tomasz Figa <tfiga@google.com>,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v4 11/21] media: rkisp1: resizer: Simplify register access
Date: Fri, 22 Apr 2022 02:42:30 +0300
Message-Id: <20220421234240.1694-12-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220421234240.1694-1-laurent.pinchart@ideasonboard.com>
References: <20220421234240.1694-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220421_164253_243659_A0ED3595 
X-CRM114-Status: GOOD (  14.54  )
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

The registers for the mainpath and selfpath resizers are located at the
same offset from the instance-specific base. Use this to simplify
register access, removing the need to store per-register offsets in the
rkisp1_rsz_config structure.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
Changes since v1:

- Fix order of arguments to write function
---
 .../platform/rockchip/rkisp1/rkisp1-common.h  |   2 +
 .../platform/rockchip/rkisp1/rkisp1-regs.h    |  67 +++-----
 .../platform/rockchip/rkisp1/rkisp1-resizer.c | 161 ++++++------------
 3 files changed, 75 insertions(+), 155 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index 941580c9c4e0..3b36ab05ac34 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -313,6 +313,7 @@ struct rkisp1_params {
  * struct rkisp1_resizer - Resizer subdev
  *
  * @sd:	       v4l2_subdev variable
+ * @regs_base: base register address offset
  * @id:	       id of the resizer, one of RKISP1_SELFPATH, RKISP1_MAINPATH
  * @rkisp1:    pointer to the rkisp1 device
  * @pads:      media pads
@@ -323,6 +324,7 @@ struct rkisp1_params {
  */
 struct rkisp1_resizer {
 	struct v4l2_subdev sd;
+	u32 regs_base;
 	enum rkisp1_stream_id id;
 	struct rkisp1_device *rkisp1;
 	struct media_pad pads[RKISP1_RSZ_PAD_MAX];
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
index 0f6ea67b4d5a..a93d0127b813 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
@@ -905,52 +905,29 @@
 #define RKISP1_CIF_DUAL_CROP_S_V_SIZE_SHD	(RKISP1_CIF_DUAL_CROP_BASE + 0x00000040)
 
 #define RKISP1_CIF_MRSZ_BASE			0x00000C00
-#define RKISP1_CIF_MRSZ_CTRL			(RKISP1_CIF_MRSZ_BASE + 0x00000000)
-#define RKISP1_CIF_MRSZ_SCALE_HY		(RKISP1_CIF_MRSZ_BASE + 0x00000004)
-#define RKISP1_CIF_MRSZ_SCALE_HCB		(RKISP1_CIF_MRSZ_BASE + 0x00000008)
-#define RKISP1_CIF_MRSZ_SCALE_HCR		(RKISP1_CIF_MRSZ_BASE + 0x0000000C)
-#define RKISP1_CIF_MRSZ_SCALE_VY		(RKISP1_CIF_MRSZ_BASE + 0x00000010)
-#define RKISP1_CIF_MRSZ_SCALE_VC		(RKISP1_CIF_MRSZ_BASE + 0x00000014)
-#define RKISP1_CIF_MRSZ_PHASE_HY		(RKISP1_CIF_MRSZ_BASE + 0x00000018)
-#define RKISP1_CIF_MRSZ_PHASE_HC		(RKISP1_CIF_MRSZ_BASE + 0x0000001C)
-#define RKISP1_CIF_MRSZ_PHASE_VY		(RKISP1_CIF_MRSZ_BASE + 0x00000020)
-#define RKISP1_CIF_MRSZ_PHASE_VC		(RKISP1_CIF_MRSZ_BASE + 0x00000024)
-#define RKISP1_CIF_MRSZ_SCALE_LUT_ADDR		(RKISP1_CIF_MRSZ_BASE + 0x00000028)
-#define RKISP1_CIF_MRSZ_SCALE_LUT		(RKISP1_CIF_MRSZ_BASE + 0x0000002C)
-#define RKISP1_CIF_MRSZ_CTRL_SHD		(RKISP1_CIF_MRSZ_BASE + 0x00000030)
-#define RKISP1_CIF_MRSZ_SCALE_HY_SHD		(RKISP1_CIF_MRSZ_BASE + 0x00000034)
-#define RKISP1_CIF_MRSZ_SCALE_HCB_SHD		(RKISP1_CIF_MRSZ_BASE + 0x00000038)
-#define RKISP1_CIF_MRSZ_SCALE_HCR_SHD		(RKISP1_CIF_MRSZ_BASE + 0x0000003C)
-#define RKISP1_CIF_MRSZ_SCALE_VY_SHD		(RKISP1_CIF_MRSZ_BASE + 0x00000040)
-#define RKISP1_CIF_MRSZ_SCALE_VC_SHD		(RKISP1_CIF_MRSZ_BASE + 0x00000044)
-#define RKISP1_CIF_MRSZ_PHASE_HY_SHD		(RKISP1_CIF_MRSZ_BASE + 0x00000048)
-#define RKISP1_CIF_MRSZ_PHASE_HC_SHD		(RKISP1_CIF_MRSZ_BASE + 0x0000004C)
-#define RKISP1_CIF_MRSZ_PHASE_VY_SHD		(RKISP1_CIF_MRSZ_BASE + 0x00000050)
-#define RKISP1_CIF_MRSZ_PHASE_VC_SHD		(RKISP1_CIF_MRSZ_BASE + 0x00000054)
-
 #define RKISP1_CIF_SRSZ_BASE			0x00001000
-#define RKISP1_CIF_SRSZ_CTRL			(RKISP1_CIF_SRSZ_BASE + 0x00000000)
-#define RKISP1_CIF_SRSZ_SCALE_HY		(RKISP1_CIF_SRSZ_BASE + 0x00000004)
-#define RKISP1_CIF_SRSZ_SCALE_HCB		(RKISP1_CIF_SRSZ_BASE + 0x00000008)
-#define RKISP1_CIF_SRSZ_SCALE_HCR		(RKISP1_CIF_SRSZ_BASE + 0x0000000C)
-#define RKISP1_CIF_SRSZ_SCALE_VY		(RKISP1_CIF_SRSZ_BASE + 0x00000010)
-#define RKISP1_CIF_SRSZ_SCALE_VC		(RKISP1_CIF_SRSZ_BASE + 0x00000014)
-#define RKISP1_CIF_SRSZ_PHASE_HY		(RKISP1_CIF_SRSZ_BASE + 0x00000018)
-#define RKISP1_CIF_SRSZ_PHASE_HC		(RKISP1_CIF_SRSZ_BASE + 0x0000001C)
-#define RKISP1_CIF_SRSZ_PHASE_VY		(RKISP1_CIF_SRSZ_BASE + 0x00000020)
-#define RKISP1_CIF_SRSZ_PHASE_VC		(RKISP1_CIF_SRSZ_BASE + 0x00000024)
-#define RKISP1_CIF_SRSZ_SCALE_LUT_ADDR		(RKISP1_CIF_SRSZ_BASE + 0x00000028)
-#define RKISP1_CIF_SRSZ_SCALE_LUT		(RKISP1_CIF_SRSZ_BASE + 0x0000002C)
-#define RKISP1_CIF_SRSZ_CTRL_SHD		(RKISP1_CIF_SRSZ_BASE + 0x00000030)
-#define RKISP1_CIF_SRSZ_SCALE_HY_SHD		(RKISP1_CIF_SRSZ_BASE + 0x00000034)
-#define RKISP1_CIF_SRSZ_SCALE_HCB_SHD		(RKISP1_CIF_SRSZ_BASE + 0x00000038)
-#define RKISP1_CIF_SRSZ_SCALE_HCR_SHD		(RKISP1_CIF_SRSZ_BASE + 0x0000003C)
-#define RKISP1_CIF_SRSZ_SCALE_VY_SHD		(RKISP1_CIF_SRSZ_BASE + 0x00000040)
-#define RKISP1_CIF_SRSZ_SCALE_VC_SHD		(RKISP1_CIF_SRSZ_BASE + 0x00000044)
-#define RKISP1_CIF_SRSZ_PHASE_HY_SHD		(RKISP1_CIF_SRSZ_BASE + 0x00000048)
-#define RKISP1_CIF_SRSZ_PHASE_HC_SHD		(RKISP1_CIF_SRSZ_BASE + 0x0000004C)
-#define RKISP1_CIF_SRSZ_PHASE_VY_SHD		(RKISP1_CIF_SRSZ_BASE + 0x00000050)
-#define RKISP1_CIF_SRSZ_PHASE_VC_SHD		(RKISP1_CIF_SRSZ_BASE + 0x00000054)
+#define RKISP1_CIF_RSZ_CTRL			0x0000
+#define RKISP1_CIF_RSZ_SCALE_HY			0x0004
+#define RKISP1_CIF_RSZ_SCALE_HCB		0x0008
+#define RKISP1_CIF_RSZ_SCALE_HCR		0x000C
+#define RKISP1_CIF_RSZ_SCALE_VY			0x0010
+#define RKISP1_CIF_RSZ_SCALE_VC			0x0014
+#define RKISP1_CIF_RSZ_PHASE_HY			0x0018
+#define RKISP1_CIF_RSZ_PHASE_HC			0x001C
+#define RKISP1_CIF_RSZ_PHASE_VY			0x0020
+#define RKISP1_CIF_RSZ_PHASE_VC			0x0024
+#define RKISP1_CIF_RSZ_SCALE_LUT_ADDR		0x0028
+#define RKISP1_CIF_RSZ_SCALE_LUT		0x002C
+#define RKISP1_CIF_RSZ_CTRL_SHD			0x0030
+#define RKISP1_CIF_RSZ_SCALE_HY_SHD		0x0034
+#define RKISP1_CIF_RSZ_SCALE_HCB_SHD		0x0038
+#define RKISP1_CIF_RSZ_SCALE_HCR_SHD		0x003C
+#define RKISP1_CIF_RSZ_SCALE_VY_SHD		0x0040
+#define RKISP1_CIF_RSZ_SCALE_VC_SHD		0x0044
+#define RKISP1_CIF_RSZ_PHASE_HY_SHD		0x0048
+#define RKISP1_CIF_RSZ_PHASE_HC_SHD		0x004C
+#define RKISP1_CIF_RSZ_PHASE_VY_SHD		0x0050
+#define RKISP1_CIF_RSZ_PHASE_VC_SHD		0x0054
 
 #define RKISP1_CIF_MI_BASE			0x00001400
 #define RKISP1_CIF_MI_CTRL			(RKISP1_CIF_MI_BASE + 0x00000000)
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
index b88d579a283c..ac1b357a2a3a 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
@@ -59,30 +59,6 @@ struct rkisp1_rsz_config {
 	const int min_rsz_width;
 	const int min_rsz_height;
 	/* registers */
-	struct {
-		u32 ctrl;
-		u32 ctrl_shd;
-		u32 scale_hy;
-		u32 scale_hcr;
-		u32 scale_hcb;
-		u32 scale_vy;
-		u32 scale_vc;
-		u32 scale_lut;
-		u32 scale_lut_addr;
-		u32 scale_hy_shd;
-		u32 scale_hcr_shd;
-		u32 scale_hcb_shd;
-		u32 scale_vy_shd;
-		u32 scale_vc_shd;
-		u32 phase_hy;
-		u32 phase_hc;
-		u32 phase_vy;
-		u32 phase_vc;
-		u32 phase_hy_shd;
-		u32 phase_hc_shd;
-		u32 phase_vy_shd;
-		u32 phase_vc_shd;
-	} rsz;
 	struct {
 		u32 ctrl;
 		u32 yuvmode_mask;
@@ -101,30 +77,6 @@ static const struct rkisp1_rsz_config rkisp1_rsz_config_mp = {
 	.min_rsz_width = RKISP1_RSZ_SRC_MIN_WIDTH,
 	.min_rsz_height = RKISP1_RSZ_SRC_MIN_HEIGHT,
 	/* registers */
-	.rsz = {
-		.ctrl =			RKISP1_CIF_MRSZ_CTRL,
-		.scale_hy =		RKISP1_CIF_MRSZ_SCALE_HY,
-		.scale_hcr =		RKISP1_CIF_MRSZ_SCALE_HCR,
-		.scale_hcb =		RKISP1_CIF_MRSZ_SCALE_HCB,
-		.scale_vy =		RKISP1_CIF_MRSZ_SCALE_VY,
-		.scale_vc =		RKISP1_CIF_MRSZ_SCALE_VC,
-		.scale_lut =		RKISP1_CIF_MRSZ_SCALE_LUT,
-		.scale_lut_addr =	RKISP1_CIF_MRSZ_SCALE_LUT_ADDR,
-		.scale_hy_shd =		RKISP1_CIF_MRSZ_SCALE_HY_SHD,
-		.scale_hcr_shd =	RKISP1_CIF_MRSZ_SCALE_HCR_SHD,
-		.scale_hcb_shd =	RKISP1_CIF_MRSZ_SCALE_HCB_SHD,
-		.scale_vy_shd =		RKISP1_CIF_MRSZ_SCALE_VY_SHD,
-		.scale_vc_shd =		RKISP1_CIF_MRSZ_SCALE_VC_SHD,
-		.phase_hy =		RKISP1_CIF_MRSZ_PHASE_HY,
-		.phase_hc =		RKISP1_CIF_MRSZ_PHASE_HC,
-		.phase_vy =		RKISP1_CIF_MRSZ_PHASE_VY,
-		.phase_vc =		RKISP1_CIF_MRSZ_PHASE_VC,
-		.ctrl_shd =		RKISP1_CIF_MRSZ_CTRL_SHD,
-		.phase_hy_shd =		RKISP1_CIF_MRSZ_PHASE_HY_SHD,
-		.phase_hc_shd =		RKISP1_CIF_MRSZ_PHASE_HC_SHD,
-		.phase_vy_shd =		RKISP1_CIF_MRSZ_PHASE_VY_SHD,
-		.phase_vc_shd =		RKISP1_CIF_MRSZ_PHASE_VC_SHD,
-	},
 	.dual_crop = {
 		.ctrl =			RKISP1_CIF_DUAL_CROP_CTRL,
 		.yuvmode_mask =		RKISP1_CIF_DUAL_CROP_MP_MODE_YUV,
@@ -143,30 +95,6 @@ static const struct rkisp1_rsz_config rkisp1_rsz_config_sp = {
 	.min_rsz_width = RKISP1_RSZ_SRC_MIN_WIDTH,
 	.min_rsz_height = RKISP1_RSZ_SRC_MIN_HEIGHT,
 	/* registers */
-	.rsz = {
-		.ctrl =			RKISP1_CIF_SRSZ_CTRL,
-		.scale_hy =		RKISP1_CIF_SRSZ_SCALE_HY,
-		.scale_hcr =		RKISP1_CIF_SRSZ_SCALE_HCR,
-		.scale_hcb =		RKISP1_CIF_SRSZ_SCALE_HCB,
-		.scale_vy =		RKISP1_CIF_SRSZ_SCALE_VY,
-		.scale_vc =		RKISP1_CIF_SRSZ_SCALE_VC,
-		.scale_lut =		RKISP1_CIF_SRSZ_SCALE_LUT,
-		.scale_lut_addr =	RKISP1_CIF_SRSZ_SCALE_LUT_ADDR,
-		.scale_hy_shd =		RKISP1_CIF_SRSZ_SCALE_HY_SHD,
-		.scale_hcr_shd =	RKISP1_CIF_SRSZ_SCALE_HCR_SHD,
-		.scale_hcb_shd =	RKISP1_CIF_SRSZ_SCALE_HCB_SHD,
-		.scale_vy_shd =		RKISP1_CIF_SRSZ_SCALE_VY_SHD,
-		.scale_vc_shd =		RKISP1_CIF_SRSZ_SCALE_VC_SHD,
-		.phase_hy =		RKISP1_CIF_SRSZ_PHASE_HY,
-		.phase_hc =		RKISP1_CIF_SRSZ_PHASE_HC,
-		.phase_vy =		RKISP1_CIF_SRSZ_PHASE_VY,
-		.phase_vc =		RKISP1_CIF_SRSZ_PHASE_VC,
-		.ctrl_shd =		RKISP1_CIF_SRSZ_CTRL_SHD,
-		.phase_hy_shd =		RKISP1_CIF_SRSZ_PHASE_HY_SHD,
-		.phase_hc_shd =		RKISP1_CIF_SRSZ_PHASE_HC_SHD,
-		.phase_vy_shd =		RKISP1_CIF_SRSZ_PHASE_VY_SHD,
-		.phase_vc_shd =		RKISP1_CIF_SRSZ_PHASE_VC_SHD,
-	},
 	.dual_crop = {
 		.ctrl =			RKISP1_CIF_DUAL_CROP_CTRL,
 		.yuvmode_mask =		RKISP1_CIF_DUAL_CROP_SP_MODE_YUV,
@@ -178,6 +106,17 @@ static const struct rkisp1_rsz_config rkisp1_rsz_config_sp = {
 	},
 };
 
+static inline u32 rkisp1_rsz_read(struct rkisp1_resizer *rsz, u32 offset)
+{
+	return rkisp1_read(rsz->rkisp1, rsz->regs_base + offset);
+}
+
+static inline void rkisp1_rsz_write(struct rkisp1_resizer *rsz, u32 offset,
+				    u32 value)
+{
+	rkisp1_write(rsz->rkisp1, rsz->regs_base + offset, value);
+}
+
 static struct v4l2_mbus_framefmt *
 rkisp1_rsz_get_pad_fmt(struct rkisp1_resizer *rsz,
 		       struct v4l2_subdev_state *sd_state,
@@ -277,39 +216,39 @@ static void rkisp1_rsz_dump_regs(struct rkisp1_resizer *rsz)
 		"RSZ_PHASE_HC %d/%d\n"
 		"RSZ_PHASE_VY %d/%d\n"
 		"RSZ_PHASE_VC %d/%d\n",
-		rkisp1_read(rsz->rkisp1, rsz->config->rsz.ctrl),
-		rkisp1_read(rsz->rkisp1, rsz->config->rsz.ctrl_shd),
-		rkisp1_read(rsz->rkisp1, rsz->config->rsz.scale_hy),
-		rkisp1_read(rsz->rkisp1, rsz->config->rsz.scale_hy_shd),
-		rkisp1_read(rsz->rkisp1, rsz->config->rsz.scale_hcb),
-		rkisp1_read(rsz->rkisp1, rsz->config->rsz.scale_hcb_shd),
-		rkisp1_read(rsz->rkisp1, rsz->config->rsz.scale_hcr),
-		rkisp1_read(rsz->rkisp1, rsz->config->rsz.scale_hcr_shd),
-		rkisp1_read(rsz->rkisp1, rsz->config->rsz.scale_vy),
-		rkisp1_read(rsz->rkisp1, rsz->config->rsz.scale_vy_shd),
-		rkisp1_read(rsz->rkisp1, rsz->config->rsz.scale_vc),
-		rkisp1_read(rsz->rkisp1, rsz->config->rsz.scale_vc_shd),
-		rkisp1_read(rsz->rkisp1, rsz->config->rsz.phase_hy),
-		rkisp1_read(rsz->rkisp1, rsz->config->rsz.phase_hy_shd),
-		rkisp1_read(rsz->rkisp1, rsz->config->rsz.phase_hc),
-		rkisp1_read(rsz->rkisp1, rsz->config->rsz.phase_hc_shd),
-		rkisp1_read(rsz->rkisp1, rsz->config->rsz.phase_vy),
-		rkisp1_read(rsz->rkisp1, rsz->config->rsz.phase_vy_shd),
-		rkisp1_read(rsz->rkisp1, rsz->config->rsz.phase_vc),
-		rkisp1_read(rsz->rkisp1, rsz->config->rsz.phase_vc_shd));
+		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_CTRL),
+		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_CTRL_SHD),
+		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_SCALE_HY),
+		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_SCALE_HY_SHD),
+		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_SCALE_HCB),
+		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_SCALE_HCB_SHD),
+		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_SCALE_HCR),
+		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_SCALE_HCR_SHD),
+		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_SCALE_VY),
+		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_SCALE_VY_SHD),
+		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_SCALE_VC),
+		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_SCALE_VC_SHD),
+		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_PHASE_HY),
+		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_PHASE_HY_SHD),
+		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_PHASE_HC),
+		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_PHASE_HC_SHD),
+		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_PHASE_VY),
+		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_PHASE_VY_SHD),
+		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_PHASE_VC),
+		rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_PHASE_VC_SHD));
 }
 
 static void rkisp1_rsz_update_shadow(struct rkisp1_resizer *rsz,
 				     enum rkisp1_shadow_regs_when when)
 {
-	u32 ctrl_cfg = rkisp1_read(rsz->rkisp1, rsz->config->rsz.ctrl);
+	u32 ctrl_cfg = rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_CTRL);
 
 	if (when == RKISP1_SHADOW_REGS_ASYNC)
 		ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CFG_UPD_AUTO;
 	else
 		ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CFG_UPD;
 
-	rkisp1_write(rsz->rkisp1, rsz->config->rsz.ctrl, ctrl_cfg);
+	rkisp1_rsz_write(rsz, RKISP1_CIF_RSZ_CTRL, ctrl_cfg);
 }
 
 static u32 rkisp1_rsz_calc_ratio(u32 len_sink, u32 len_src)
@@ -325,7 +264,7 @@ static u32 rkisp1_rsz_calc_ratio(u32 len_sink, u32 len_src)
 static void rkisp1_rsz_disable(struct rkisp1_resizer *rsz,
 			       enum rkisp1_shadow_regs_when when)
 {
-	rkisp1_write(rsz->rkisp1, rsz->config->rsz.ctrl, 0);
+	rkisp1_rsz_write(rsz, RKISP1_CIF_RSZ_CTRL, 0);
 
 	if (when == RKISP1_SHADOW_REGS_SYNC)
 		rkisp1_rsz_update_shadow(rsz, when);
@@ -338,20 +277,19 @@ static void rkisp1_rsz_config_regs(struct rkisp1_resizer *rsz,
 				   struct v4l2_rect *src_c,
 				   enum rkisp1_shadow_regs_when when)
 {
-	struct rkisp1_device *rkisp1 = rsz->rkisp1;
 	u32 ratio, rsz_ctrl = 0;
 	unsigned int i;
 
 	/* No phase offset */
-	rkisp1_write(rkisp1, rsz->config->rsz.phase_hy, 0);
-	rkisp1_write(rkisp1, rsz->config->rsz.phase_hc, 0);
-	rkisp1_write(rkisp1, rsz->config->rsz.phase_vy, 0);
-	rkisp1_write(rkisp1, rsz->config->rsz.phase_vc, 0);
+	rkisp1_rsz_write(rsz, RKISP1_CIF_RSZ_PHASE_HY, 0);
+	rkisp1_rsz_write(rsz, RKISP1_CIF_RSZ_PHASE_HC, 0);
+	rkisp1_rsz_write(rsz, RKISP1_CIF_RSZ_PHASE_VY, 0);
+	rkisp1_rsz_write(rsz, RKISP1_CIF_RSZ_PHASE_VC, 0);
 
 	/* Linear interpolation */
 	for (i = 0; i < 64; i++) {
-		rkisp1_write(rkisp1, rsz->config->rsz.scale_lut_addr, i);
-		rkisp1_write(rkisp1, rsz->config->rsz.scale_lut, i);
+		rkisp1_rsz_write(rsz, RKISP1_CIF_RSZ_SCALE_LUT_ADDR, i);
+		rkisp1_rsz_write(rsz, RKISP1_CIF_RSZ_SCALE_LUT, i);
 	}
 
 	if (sink_y->width != src_y->width) {
@@ -359,7 +297,7 @@ static void rkisp1_rsz_config_regs(struct rkisp1_resizer *rsz,
 		if (sink_y->width < src_y->width)
 			rsz_ctrl |= RKISP1_CIF_RSZ_CTRL_SCALE_HY_UP;
 		ratio = rkisp1_rsz_calc_ratio(sink_y->width, src_y->width);
-		rkisp1_write(rkisp1, rsz->config->rsz.scale_hy, ratio);
+		rkisp1_rsz_write(rsz, RKISP1_CIF_RSZ_SCALE_HY, ratio);
 	}
 
 	if (sink_c->width != src_c->width) {
@@ -367,8 +305,8 @@ static void rkisp1_rsz_config_regs(struct rkisp1_resizer *rsz,
 		if (sink_c->width < src_c->width)
 			rsz_ctrl |= RKISP1_CIF_RSZ_CTRL_SCALE_HC_UP;
 		ratio = rkisp1_rsz_calc_ratio(sink_c->width, src_c->width);
-		rkisp1_write(rkisp1, rsz->config->rsz.scale_hcb, ratio);
-		rkisp1_write(rkisp1, rsz->config->rsz.scale_hcr, ratio);
+		rkisp1_rsz_write(rsz, RKISP1_CIF_RSZ_SCALE_HCB, ratio);
+		rkisp1_rsz_write(rsz, RKISP1_CIF_RSZ_SCALE_HCR, ratio);
 	}
 
 	if (sink_y->height != src_y->height) {
@@ -376,7 +314,7 @@ static void rkisp1_rsz_config_regs(struct rkisp1_resizer *rsz,
 		if (sink_y->height < src_y->height)
 			rsz_ctrl |= RKISP1_CIF_RSZ_CTRL_SCALE_VY_UP;
 		ratio = rkisp1_rsz_calc_ratio(sink_y->height, src_y->height);
-		rkisp1_write(rkisp1, rsz->config->rsz.scale_vy, ratio);
+		rkisp1_rsz_write(rsz, RKISP1_CIF_RSZ_SCALE_VY, ratio);
 	}
 
 	if (sink_c->height != src_c->height) {
@@ -384,10 +322,10 @@ static void rkisp1_rsz_config_regs(struct rkisp1_resizer *rsz,
 		if (sink_c->height < src_c->height)
 			rsz_ctrl |= RKISP1_CIF_RSZ_CTRL_SCALE_VC_UP;
 		ratio = rkisp1_rsz_calc_ratio(sink_c->height, src_c->height);
-		rkisp1_write(rkisp1, rsz->config->rsz.scale_vc, ratio);
+		rkisp1_rsz_write(rsz, RKISP1_CIF_RSZ_SCALE_VC, ratio);
 	}
 
-	rkisp1_write(rkisp1, rsz->config->rsz.ctrl, rsz_ctrl);
+	rkisp1_rsz_write(rsz, RKISP1_CIF_RSZ_CTRL, rsz_ctrl);
 
 	rkisp1_rsz_update_shadow(rsz, when);
 }
@@ -803,10 +741,13 @@ static int rkisp1_rsz_register(struct rkisp1_resizer *rsz)
 	struct v4l2_subdev *sd = &rsz->sd;
 	int ret;
 
-	if (rsz->id == RKISP1_SELFPATH)
+	if (rsz->id == RKISP1_SELFPATH) {
+		rsz->regs_base = RKISP1_CIF_SRSZ_BASE;
 		rsz->config = &rkisp1_rsz_config_sp;
-	else
+	} else {
+		rsz->regs_base = RKISP1_CIF_MRSZ_BASE;
 		rsz->config = &rkisp1_rsz_config_mp;
+	}
 
 	v4l2_subdev_init(sd, &rkisp1_rsz_ops);
 	sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
