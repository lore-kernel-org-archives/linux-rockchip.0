Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECED9C48BC4
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Feb 2024 20:44:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q+d4RpQGkK52h9GWU46UOUNEXcmL1B6XTP4DQWHY1jA=; b=vhTs4l1nyE0cAN
	g2ST3kJ+WeMOOqT0pHA7FjurGRRri9DR4pBwMRPKC44ZQMKOol6gSTr+v1fZdca18HzrHt1uauU3O
	p/ocTGLVwSWre7KD0Ar04No9zFJGMDNTIxWe6Lo9iMhaa8b6CiGMbJn7GwfD3DiOe/aNAzHxkTw8Q
	iNfns6GB/b5J1TwmM2ClPIu7T3TiDDLlbLxWYK5RgJTKbFIkYxQmzW/QshC95oTuMNJwHVLhM38Xn
	caimqtx3bn5DykmdMF3GuRdy1igS51Q3+75yF9CFlJ4NBTpH7BBOoY5ocXrzuiwW1z/eCy1lUDOWz
	A218qS0l/9F0K9LKxxVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbo0z-00000008PK8-01m4;
	Sun, 18 Feb 2024 20:43:57 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbo0v-00000008PH5-129Z
	for linux-rockchip@lists.infradead.org;
	Sun, 18 Feb 2024 20:43:54 +0000
Received: from pendragon.ideasonboard.com (89-27-53-110.bb.dnainternet.fi [89.27.53.110])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 23CD1480;
	Sun, 18 Feb 2024 21:43:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1708289026;
	bh=iceEoYtrQObPuI9oA6/dvwdyrJ9pE03R0toZoHOjBRs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=rdfeeLiTSSQNL0in9y1NHuzgEdiDoWXrtaJJl2itre3573OQyBbcW8evIvz/zWE7a
	 z2KJ0uEkzLopblLewkIO/TutDNtw6d/PcclV41kk004mWdf+4v9vhH3S1LlTZ5Uk19
	 UKYmJoCGZsey2hoUG8HOEc4mC1YY9yJnqfXM8+a0=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Paul Elder <paul.elder@ideasonboard.com>,
	Adam Ford <aford173@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Kieran Bingham <kieran.bingham@ideasonboard.com>,
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v13 04/12] media: rkisp1: Support devices lacking dual crop
Date: Sun, 18 Feb 2024 22:43:42 +0200
Message-ID: <20240218204350.10916-5-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240218204350.10916-1-laurent.pinchart@ideasonboard.com>
References: <20240218204350.10916-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240218_124353_463490_C237CA0B 
X-CRM114-Status: GOOD (  18.55  )
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

From: Paul Elder <paul.elder@ideasonboard.com>

Some versions of the ISP supported by the rkisp1 driver, such as the ISP
in the i.MX8MP, lack the dual crop registers and don't support cropping
at the resizer input. They instead rely on cropping in the Image
Stabilization module, at the output of the ISP, to modify the resizer
input size and implement digital zoom.

Add a dual crop feature flag to distinguish the versions of the ISP that
support dual crop from those that don't, and make sure that the sink
crop is set to the sink format when dual crop is not supported.

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Tested-by: Adam Ford <aford173@gmail.com>
Reviewed-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
Changes since v12:

- Update comment in rkisp1_rsz_set_sink_crop()

Changes since v6:

- Remove mention of moving resizer input crop to image stabilizer from
  commit message
- Make sure the sink crop is set to the sink format when dual crop is
  not supported
---
 .../media/platform/rockchip/rkisp1/rkisp1-common.h  |  2 ++
 drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c |  6 ++++--
 .../media/platform/rockchip/rkisp1/rkisp1-resizer.c | 13 ++++++++-----
 3 files changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index 998fe45f5df3..857fea1d079b 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -112,6 +112,7 @@ enum rkisp1_isp_pad {
  * @RKISP1_FEATURE_MIPI_CSI2: The ISP has an internal MIPI CSI-2 receiver
  * @RKISP1_FEATURE_MAIN_STRIDE: The ISP supports configurable stride on the main path
  * @RKISP1_FEATURE_SELF_PATH: The ISP has a self path
+ * @RKISP1_FEATURE_DUAL_CROP: The ISP has the dual crop block at the resizer input
  *
  * The ISP features are stored in a bitmask in &rkisp1_info.features and allow
  * the driver to implement support for features present in some ISP versions
@@ -121,6 +122,7 @@ enum rkisp1_feature {
 	RKISP1_FEATURE_MIPI_CSI2 = BIT(0),
 	RKISP1_FEATURE_MAIN_STRIDE = BIT(1),
 	RKISP1_FEATURE_SELF_PATH = BIT(2),
+	RKISP1_FEATURE_DUAL_CROP = BIT(3),
 };
 
 #define rkisp1_has_feature(rkisp1, feature) \
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 67a5c84ce117..5a3ad2c3347e 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -485,7 +485,8 @@ static const struct rkisp1_info px30_isp_info = {
 	.isr_size = ARRAY_SIZE(px30_isp_isrs),
 	.isp_ver = RKISP1_V12,
 	.features = RKISP1_FEATURE_MIPI_CSI2
-		  | RKISP1_FEATURE_SELF_PATH,
+		  | RKISP1_FEATURE_SELF_PATH
+		  | RKISP1_FEATURE_DUAL_CROP,
 };
 
 static const char * const rk3399_isp_clks[] = {
@@ -505,7 +506,8 @@ static const struct rkisp1_info rk3399_isp_info = {
 	.isr_size = ARRAY_SIZE(rk3399_isp_isrs),
 	.isp_ver = RKISP1_V10,
 	.features = RKISP1_FEATURE_MIPI_CSI2
-		  | RKISP1_FEATURE_SELF_PATH,
+		  | RKISP1_FEATURE_SELF_PATH
+		  | RKISP1_FEATURE_DUAL_CROP,
 };
 
 static const struct of_device_id rkisp1_of_match[] = {
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
index dd77a31e6014..6f3931ca5b51 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
@@ -444,11 +444,12 @@ static void rkisp1_rsz_set_sink_crop(struct rkisp1_resizer *rsz,
 	sink_fmt = v4l2_subdev_state_get_format(sd_state, RKISP1_RSZ_PAD_SINK);
 	sink_crop = v4l2_subdev_state_get_crop(sd_state, RKISP1_RSZ_PAD_SINK);
 
-	/* Not crop for MP bayer raw data */
+	/* Not crop for MP bayer raw data, or for devices lacking dual crop. */
 	mbus_info = rkisp1_mbus_info_get_by_code(sink_fmt->code);
 
-	if (rsz->id == RKISP1_MAINPATH &&
-	    mbus_info->pixel_enc == V4L2_PIXEL_ENC_BAYER) {
+	if ((rsz->id == RKISP1_MAINPATH &&
+	     mbus_info->pixel_enc == V4L2_PIXEL_ENC_BAYER) ||
+	    !rkisp1_has_feature(rsz->rkisp1, DUAL_CROP)) {
 		sink_crop->left = 0;
 		sink_crop->top = 0;
 		sink_crop->width = sink_fmt->width;
@@ -635,7 +636,8 @@ static int rkisp1_rsz_s_stream(struct v4l2_subdev *sd, int enable)
 	struct v4l2_subdev_state *sd_state;
 
 	if (!enable) {
-		rkisp1_dcrop_disable(rsz, RKISP1_SHADOW_REGS_ASYNC);
+		if (rkisp1_has_feature(rkisp1, DUAL_CROP))
+			rkisp1_dcrop_disable(rsz, RKISP1_SHADOW_REGS_ASYNC);
 		rkisp1_rsz_disable(rsz, RKISP1_SHADOW_REGS_ASYNC);
 		return 0;
 	}
@@ -646,7 +648,8 @@ static int rkisp1_rsz_s_stream(struct v4l2_subdev *sd, int enable)
 	sd_state = v4l2_subdev_lock_and_get_active_state(sd);
 
 	rkisp1_rsz_config(rsz, sd_state, when);
-	rkisp1_dcrop_config(rsz, sd_state);
+	if (rkisp1_has_feature(rkisp1, DUAL_CROP))
+		rkisp1_dcrop_config(rsz, sd_state);
 
 	v4l2_subdev_unlock_state(sd_state);
 
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
