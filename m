Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82C7EC25B74
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 May 2024 21:41:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gWWo465111qT2LazEcJNQkL7wVR7/K7M1ItvmCCaWv8=; b=hTTPbX6XlrTHf4
	mFhAG9ARiDSFqeEkWqdPiQaqVv14U0TZJP3khp9G1RauHN963X+gY7ncJ1ed8++qot0sBVTBl6soO
	Cyv78kGm60q0GrS9d+tyfn7G6FgW4o8me2o8paX0jxHNxMn/Rs/GtqVeZcEJb+gYYUvykYfaM31Np
	RbK3JN6g/xkP750GYWXNw+V8gNgq3a6f4hi1JuebANpqO5nGJ6l/MYV5k7E+kHiO68hOB8TBCODfu
	SijybhS9UhZEJlB9j60OPxhcJBNPJW9jS2rEV9CZ7vB4R4WeK5VzG0OOR5OHC1Wc5xhFFgfEE8t3J
	NOiVCaE5+2DPUcvbSo8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4p27-0000000H3Jn-3xQr;
	Wed, 08 May 2024 21:41:03 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4p23-0000000H3IE-3QfL
	for linux-rockchip@lists.infradead.org;
	Wed, 08 May 2024 21:41:01 +0000
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 8177A2D31;
	Wed,  8 May 2024 23:40:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1715204455;
	bh=Y0faM+U61JHbDE16uPhf6jDmA9FQGes5Rn/PQHPGf54=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=q6+4nBQHw5IJkuGW9HVA5RhNA5MqafUydy4qqnRD5XBVVTs5FSb+gcgB8fOASsq7P
	 IKMQjrO4D0O/KSF8fouH3AuQM+8uhuWtQOJ2PLL+lWZwFrtNUuCQVJFE9NLEyWCjjv
	 I2NWlY+138BBThc8KLqVCvzawWYLUD9cvVtMiY9w=
From: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-renesas-soc@vger.kernel.org,
	Sakari Ailus <sakari.ailus@iki.fi>,
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v4 3/3] media: rkisp1: Mark subdev state pointers as const
Date: Thu,  9 May 2024 00:40:45 +0300
Message-ID: <20240508214045.24716-4-laurent.pinchart+renesas@ideasonboard.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240508214045.24716-1-laurent.pinchart+renesas@ideasonboard.com>
References: <20240508214045.24716-1-laurent.pinchart+renesas@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240508_144100_172315_50FEEDB3 
X-CRM114-Status: GOOD (  10.53  )
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

Several subdev state pointers are used to access the state read-only.
Mark them as const.

Signed-off-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c     | 8 ++++----
 drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c | 8 ++++----
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index e45a213baf49..91301d17d356 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
@@ -173,7 +173,7 @@ static void rkisp1_gasket_disable(struct rkisp1_device *rkisp1)
  * or at the frame end interrupt
  */
 static void rkisp1_config_ism(struct rkisp1_isp *isp,
-			      struct v4l2_subdev_state *sd_state)
+			      const struct v4l2_subdev_state *sd_state)
 {
 	const struct v4l2_rect *src_crop =
 		v4l2_subdev_state_get_crop(sd_state,
@@ -201,7 +201,7 @@ static void rkisp1_config_ism(struct rkisp1_isp *isp,
  * configure ISP blocks with input format, size......
  */
 static int rkisp1_config_isp(struct rkisp1_isp *isp,
-			     struct v4l2_subdev_state *sd_state,
+			     const struct v4l2_subdev_state *sd_state,
 			     enum v4l2_mbus_type mbus_type, u32 mbus_flags)
 {
 	struct rkisp1_device *rkisp1 = isp->rkisp1;
@@ -309,7 +309,7 @@ static int rkisp1_config_isp(struct rkisp1_isp *isp,
 	if (src_fmt->pixel_enc == V4L2_PIXEL_ENC_BAYER) {
 		rkisp1_params_disable(&rkisp1->params);
 	} else {
-		struct v4l2_mbus_framefmt *src_frm;
+		const struct v4l2_mbus_framefmt *src_frm;
 
 		src_frm = v4l2_subdev_state_get_format(sd_state,
 						       RKISP1_ISP_PAD_SOURCE_VIDEO);
@@ -429,7 +429,7 @@ static void rkisp1_config_clk(struct rkisp1_isp *isp)
 }
 
 static int rkisp1_isp_start(struct rkisp1_isp *isp,
-			    struct v4l2_subdev_state *sd_state,
+			    const struct v4l2_subdev_state *sd_state,
 			    struct media_pad *source)
 {
 	struct rkisp1_device *rkisp1 = isp->rkisp1;
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
index 6f3931ca5b51..1fa991227fa9 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
@@ -135,11 +135,11 @@ static void rkisp1_dcrop_disable(struct rkisp1_resizer *rsz,
 
 /* configure dual-crop unit */
 static void rkisp1_dcrop_config(struct rkisp1_resizer *rsz,
-				struct v4l2_subdev_state *sd_state)
+				const struct v4l2_subdev_state *sd_state)
 {
 	struct rkisp1_device *rkisp1 = rsz->rkisp1;
-	struct v4l2_mbus_framefmt *sink_fmt;
-	struct v4l2_rect *sink_crop;
+	const struct v4l2_mbus_framefmt *sink_fmt;
+	const struct v4l2_rect *sink_crop;
 	u32 dc_ctrl;
 
 	sink_crop = v4l2_subdev_state_get_crop(sd_state, RKISP1_RSZ_PAD_SINK);
@@ -264,7 +264,7 @@ static void rkisp1_rsz_config_regs(struct rkisp1_resizer *rsz,
 }
 
 static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
-			      struct v4l2_subdev_state *sd_state,
+			      const struct v4l2_subdev_state *sd_state,
 			      enum rkisp1_shadow_regs_when when)
 {
 	const struct rkisp1_rsz_yuv_mbus_info *sink_yuv_info, *src_yuv_info;
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
