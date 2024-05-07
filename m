Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFFFAC25B5F
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 May 2024 16:19:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gWWo465111qT2LazEcJNQkL7wVR7/K7M1ItvmCCaWv8=; b=0axHqUdaYRvy9f
	uZX+HMDAk69n79M9dskPxqL0mUAk+00XZnbr0HDqhRH+yo5L+eOX2tq672pYP2+WITqnF5RMtbtdw
	3dj3Q9l2dSgLDhuk+wlnCmEc/LGpg6awOWDhK4LmD1aqk0eM7GsyA9IJG93H7a4WJMfo00Im9fnFE
	I/As1QvyJ/QtmxFArmHL5vXb43PzIoBExSwgDnFC1K3NO1GDmHW1ANrQH4u3jH1brXYiEutTAls7n
	WNwK3cinOk0jh7HlfKqoDWM6xe9NzccS6o11X4I9MAxMdPJ3F+VSqguovVr+g80rvjBHfVlcpxZCE
	BA5Sz0Bda/TRjOgXofOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4NXQ-0000000Bvpf-1Bl5;
	Tue, 07 May 2024 16:19:32 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4NXM-0000000Bvlt-3mqP
	for linux-rockchip@lists.infradead.org;
	Tue, 07 May 2024 16:19:30 +0000
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 5805C904;
	Tue,  7 May 2024 18:19:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1715098756;
	bh=Y0faM+U61JHbDE16uPhf6jDmA9FQGes5Rn/PQHPGf54=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=EpAHRehD44aEViIrzxzlJQGCDoi9psZ+ClDC+e7e+gePQ70aKFSMlTGfkarRCGiLW
	 NUPU3hUABI0hMAFvdzaPj9s4ck0ycovtXnUgzCvmDY1NDzBr4IYrtV9lBG0SQ/eyCb
	 E7RyQlgMMfRGMCdwBLX0P+9tN4tLNRip71HZZkCA=
From: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-renesas-soc@vger.kernel.org,
	Sakari Ailus <sakari.ailus@iki.fi>,
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v3 2/2] media: rkisp1: Mark subdev state pointers as const
Date: Tue,  7 May 2024 19:19:07 +0300
Message-ID: <20240507161907.27747-3-laurent.pinchart+renesas@ideasonboard.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240507161907.27747-1-laurent.pinchart+renesas@ideasonboard.com>
References: <20240507161907.27747-1-laurent.pinchart+renesas@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_091929_103272_D1563D53 
X-CRM114-Status: GOOD (  10.14  )
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
