Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E805CE7A96
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Sep 2023 00:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9gRsvLgWbLRqMWV8A9nvwaadkQtVgDy+y0Mia/vWLgI=; b=5AWqGqFmcCOOM2
	t9DlmRCPsOP1aY2hoL4afomP4NoSPK2SKm1/zxBnA7K2X2VE2Z5S5C4da1ZVHtkxpeA35uuOJy9wD
	/VttMG5lChsHUb1C69BBTEN8Ai0Ou0f4b0ACghXV0aiAf8z49BkUs5EdCTjSMWH5G1H2SdgMmr2AB
	lv3+9t+lozgsj6g6NN/pKyVM3Z2SH/NqGxesodpf7APAwuRYqDqzU6Xxew+b/t+dKLlzaw5ZX8oFF
	1VjvMcpqh4pKIChm1OlrjzNyot0MvvpMSS1P+mu2bxWHA2pZy9zjIdnOH6Y3AaaCGe6GfpOaSO5Qy
	ob/sNwVtsMAdhGkl1XFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qkZf5-00D20m-1B;
	Mon, 25 Sep 2023 00:41:19 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qkZf0-00D1wm-2s
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Sep 2023 00:41:16 +0000
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 05E0113C5;
	Mon, 25 Sep 2023 02:39:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1695602374;
	bh=60kPSPrfAehlbCTZDk+uFbzmzXkKrjGoDel2HuOJZbg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=TcSnq/H3GtK8CMU684uR5tsnAmd7bEiQCl0ZNIWNZpHeov/Gxot9NHqcbAkHmpswt
	 QBQu1hP2IFJ/4qMGACvLu4dCDc12FM/k5Hl9vRZwLtBRVR/cAp5cpx8aMUb0YhtiPR
	 0/8y0Oa+ni8ex1fnwUMJI7hk4+d7rdk8jHw9WOp0=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 08/14] media: rkisp1: Remove dual crop control register from config structure
Date: Mon, 25 Sep 2023 03:41:06 +0300
Message-ID: <20230925004112.22797-9-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230925004112.22797-1-laurent.pinchart@ideasonboard.com>
References: <20230925004112.22797-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230924_174115_074313_74988A66 
X-CRM114-Status: GOOD (  10.67  )
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

The dual crop register is the same for both the MP and SP channels. Drop
it from the rkisp1_rsz_config structure and use the
RKISP1_CIF_DUAL_CROP_CTRL macro directly in the code.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../media/platform/rockchip/rkisp1/rkisp1-resizer.c   | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
index 6845df38ef5f..bca111711cee 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
@@ -60,7 +60,6 @@ struct rkisp1_rsz_config {
 	const int min_rsz_height;
 	/* registers */
 	struct {
-		u32 ctrl;
 		u32 yuvmode_mask;
 		u32 rawmode_mask;
 		u32 h_offset;
@@ -78,7 +77,6 @@ static const struct rkisp1_rsz_config rkisp1_rsz_config_mp = {
 	.min_rsz_height = RKISP1_RSZ_SRC_MIN_HEIGHT,
 	/* registers */
 	.dual_crop = {
-		.ctrl =			RKISP1_CIF_DUAL_CROP_CTRL,
 		.yuvmode_mask =		RKISP1_CIF_DUAL_CROP_MP_MODE_YUV,
 		.rawmode_mask =		RKISP1_CIF_DUAL_CROP_MP_MODE_RAW,
 		.h_offset =		RKISP1_CIF_DUAL_CROP_M_H_OFFS,
@@ -96,7 +94,6 @@ static const struct rkisp1_rsz_config rkisp1_rsz_config_sp = {
 	.min_rsz_height = RKISP1_RSZ_SRC_MIN_HEIGHT,
 	/* registers */
 	.dual_crop = {
-		.ctrl =			RKISP1_CIF_DUAL_CROP_CTRL,
 		.yuvmode_mask =		RKISP1_CIF_DUAL_CROP_SP_MODE_YUV,
 		.rawmode_mask =		RKISP1_CIF_DUAL_CROP_SP_MODE_RAW,
 		.h_offset =		RKISP1_CIF_DUAL_CROP_S_H_OFFS,
@@ -124,7 +121,7 @@ static inline void rkisp1_rsz_write(struct rkisp1_resizer *rsz, u32 offset,
 static void rkisp1_dcrop_disable(struct rkisp1_resizer *rsz,
 				 enum rkisp1_shadow_regs_when when)
 {
-	u32 dc_ctrl = rkisp1_read(rsz->rkisp1, rsz->config->dual_crop.ctrl);
+	u32 dc_ctrl = rkisp1_read(rsz->rkisp1, RKISP1_CIF_DUAL_CROP_CTRL);
 	u32 mask = ~(rsz->config->dual_crop.yuvmode_mask |
 		     rsz->config->dual_crop.rawmode_mask);
 
@@ -133,7 +130,7 @@ static void rkisp1_dcrop_disable(struct rkisp1_resizer *rsz,
 		dc_ctrl |= RKISP1_CIF_DUAL_CROP_GEN_CFG_UPD;
 	else
 		dc_ctrl |= RKISP1_CIF_DUAL_CROP_CFG_UPD;
-	rkisp1_write(rsz->rkisp1, rsz->config->dual_crop.ctrl, dc_ctrl);
+	rkisp1_write(rsz->rkisp1, RKISP1_CIF_DUAL_CROP_CTRL, dc_ctrl);
 }
 
 /* configure dual-crop unit */
@@ -158,14 +155,14 @@ static void rkisp1_dcrop_config(struct rkisp1_resizer *rsz,
 		return;
 	}
 
-	dc_ctrl = rkisp1_read(rkisp1, rsz->config->dual_crop.ctrl);
+	dc_ctrl = rkisp1_read(rkisp1, RKISP1_CIF_DUAL_CROP_CTRL);
 	rkisp1_write(rkisp1, rsz->config->dual_crop.h_offset, sink_crop->left);
 	rkisp1_write(rkisp1, rsz->config->dual_crop.v_offset, sink_crop->top);
 	rkisp1_write(rkisp1, rsz->config->dual_crop.h_size, sink_crop->width);
 	rkisp1_write(rkisp1, rsz->config->dual_crop.v_size, sink_crop->height);
 	dc_ctrl |= rsz->config->dual_crop.yuvmode_mask;
 	dc_ctrl |= RKISP1_CIF_DUAL_CROP_CFG_UPD;
-	rkisp1_write(rkisp1, rsz->config->dual_crop.ctrl, dc_ctrl);
+	rkisp1_write(rkisp1, RKISP1_CIF_DUAL_CROP_CTRL, dc_ctrl);
 
 	dev_dbg(rkisp1->dev, "stream %d crop: %dx%d -> %dx%d\n", rsz->id,
 		sink_fmt->width, sink_fmt->height,
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
