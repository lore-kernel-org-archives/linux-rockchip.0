Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29A00C48BC4
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Feb 2024 23:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4SbXtg45hfAX6mEcac0Zwqz+anYht3M8h3NMgzo8kbg=; b=OikLxmtYMqS5yN
	4CNZis2ulYbPLm2zVYrXBMfr/4a6F8t+AGKoMZdD4iachnC2FOYJQltXyjXomG4jRPIC/dvqp+xOg
	MZnWPZvfrGKD7k4CBeUIXVFEn8tCyFPpfDsPdYdlPMamvC6MuGD/H4Q48GeV2e/e0W4pqV1ymKBVk
	9Ky4qp+5mklDfUMdYcZ54TKr69DiDJC1Rqh2oa7G5UR1KnBH91cEfPYi9a4kkeBj/QETwWMBSotGg
	hejGuYdjSkjuLkDUD8ptxje0/QRs14MTR9ft7Bj5Eky7qTI/qUPbyQxRplrq1/TEgnZxiK4h0XwZD
	U+YYvkSQLKGE72+bNKkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcZzP-0000000GYtI-1McS;
	Tue, 20 Feb 2024 23:57:31 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcZzL-0000000GYrm-2r1I;
	Tue, 20 Feb 2024 23:57:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1708473446; bh=DGjkuFJuDK9TXlqvQDkKIyUp+GaWhAK+/qIZgY/58r4=;
	h=From:To:Cc:Subject:Date:From;
	b=VgGLavrHkjCjYdeq4qeuydbidUOPsmlvmuRZRoZEVd1DfzWqbReHEkLGK7q0abGH9
	 myy/TVZqegSS2FfKQYSMOGiFAUjjyHiVW1jIKg8W3KrpiPp3H8SMPkRl2UmwaHg9NV
	 7hvaieBdGeoBJDTL2cNs0g13oNoHgcz+5LYtsP5M=
From: =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>
To: linux-kernel@vger.kernel.org
Cc: Ondrej Jirman <megi@xff.cz>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-media@vger.kernel.org (open list:ROCKCHIP ISP V1 DRIVER),
	linux-rockchip@lists.infradead.org (open list:ROCKCHIP ISP V1 DRIVER),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support)
Subject: [PATCH] media: rkisp1: Adapt to different SoCs having different size limits
Date: Wed, 21 Feb 2024 00:57:17 +0100
Message-ID: <20240220235720.3010608-1-megi@xff.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_155727_895628_EBDC8FD5 
X-CRM114-Status: GOOD (  15.00  )
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

From: Ondrej Jirman <megi@xff.cz>

- RK3399 has input/output limit of main path 4416 x 3312
- PX30 has input/output limit of main path 3264 x 2448

Use rkisp1_info struct to encode the limits.

Signed-off-by: Ondrej Jirman <megi@xff.cz>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-common.h  | 6 ++++--
 drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c     | 5 +++--
 drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c     | 4 ++++
 drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c     | 9 +++++----
 drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c | 4 ++--
 5 files changed, 18 insertions(+), 10 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index b757f75edecf..423e7932e7fd 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -33,8 +33,6 @@ struct dentry;
 #define RKISP1_ISP_SD_SINK			BIT(1)
 
 /* min and max values for the widths and heights of the entities */
-#define RKISP1_ISP_MAX_WIDTH			4032
-#define RKISP1_ISP_MAX_HEIGHT			3024
 #define RKISP1_ISP_MIN_WIDTH			32
 #define RKISP1_ISP_MIN_HEIGHT			32
 
@@ -128,6 +126,8 @@ enum rkisp1_feature {
  * @isr_size: number of entries in the @isrs array
  * @isp_ver: ISP version
  * @features: bitmask of rkisp1_feature features implemented by the ISP
+ * @max_width: maximum input frame width
+ * @max_height: maximum input frame height
  *
  * This structure contains information about the ISP specific to a particular
  * ISP model, version, or integration in a particular SoC.
@@ -139,6 +139,8 @@ struct rkisp1_info {
 	unsigned int isr_size;
 	enum rkisp1_cif_isp_version isp_ver;
 	unsigned int features;
+	unsigned int max_width;
+	unsigned int max_height;
 };
 
 /*
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
index 4202642e0523..841e58c20f7f 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
@@ -307,6 +307,7 @@ static int rkisp1_csi_set_fmt(struct v4l2_subdev *sd,
 			      struct v4l2_subdev_state *sd_state,
 			      struct v4l2_subdev_format *fmt)
 {
+	struct rkisp1_csi *csi = to_rkisp1_csi(sd);
 	const struct rkisp1_mbus_info *mbus_info;
 	struct v4l2_mbus_framefmt *sink_fmt, *src_fmt;
 
@@ -326,10 +327,10 @@ static int rkisp1_csi_set_fmt(struct v4l2_subdev *sd,
 
 	sink_fmt->width = clamp_t(u32, fmt->format.width,
 				  RKISP1_ISP_MIN_WIDTH,
-				  RKISP1_ISP_MAX_WIDTH);
+				  csi->rkisp1->info->max_width);
 	sink_fmt->height = clamp_t(u32, fmt->format.height,
 				   RKISP1_ISP_MIN_HEIGHT,
-				   RKISP1_ISP_MAX_HEIGHT);
+				   csi->rkisp1->info->max_height);
 
 	fmt->format = *sink_fmt;
 
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 73cf08a74011..93296dbacfef 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -506,6 +506,8 @@ static const struct rkisp1_info px30_isp_info = {
 	.isr_size = ARRAY_SIZE(px30_isp_isrs),
 	.isp_ver = RKISP1_V12,
 	.features = RKISP1_FEATURE_MIPI_CSI2,
+	.max_width = 3264,
+	.max_height = 2448,
 };
 
 static const char * const rk3399_isp_clks[] = {
@@ -525,6 +527,8 @@ static const struct rkisp1_info rk3399_isp_info = {
 	.isr_size = ARRAY_SIZE(rk3399_isp_isrs),
 	.isp_ver = RKISP1_V10,
 	.features = RKISP1_FEATURE_MIPI_CSI2,
+	.max_width = 4416,
+	.max_height = 3312,
 };
 
 static const struct of_device_id rkisp1_of_match[] = {
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index 78a1f7a1499b..5e0a63d353e3 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
@@ -394,6 +394,7 @@ static int rkisp1_isp_enum_frame_size(struct v4l2_subdev *sd,
 				      struct v4l2_subdev_state *sd_state,
 				      struct v4l2_subdev_frame_size_enum *fse)
 {
+	struct rkisp1_isp *isp = to_rkisp1_isp(sd);
 	const struct rkisp1_mbus_info *mbus_info;
 
 	if (fse->pad == RKISP1_ISP_PAD_SINK_PARAMS ||
@@ -416,9 +417,9 @@ static int rkisp1_isp_enum_frame_size(struct v4l2_subdev *sd,
 		return -EINVAL;
 
 	fse->min_width = RKISP1_ISP_MIN_WIDTH;
-	fse->max_width = RKISP1_ISP_MAX_WIDTH;
+	fse->max_width = isp->rkisp1->info->max_width;
 	fse->min_height = RKISP1_ISP_MIN_HEIGHT;
-	fse->max_height = RKISP1_ISP_MAX_HEIGHT;
+	fse->max_height = isp->rkisp1->info->max_height;
 
 	return 0;
 }
@@ -649,10 +650,10 @@ static void rkisp1_isp_set_sink_fmt(struct rkisp1_isp *isp,
 
 	sink_fmt->width = clamp_t(u32, format->width,
 				  RKISP1_ISP_MIN_WIDTH,
-				  RKISP1_ISP_MAX_WIDTH);
+				  isp->rkisp1->info->max_width);
 	sink_fmt->height = clamp_t(u32, format->height,
 				   RKISP1_ISP_MIN_HEIGHT,
-				   RKISP1_ISP_MAX_HEIGHT);
+				   isp->rkisp1->info->max_height);
 
 	/*
 	 * Adjust the color space fields. Accept any color primaries and
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
index a8e377701302..34938fe8e812 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
@@ -493,10 +493,10 @@ static void rkisp1_rsz_set_sink_fmt(struct rkisp1_resizer *rsz,
 
 	sink_fmt->width = clamp_t(u32, format->width,
 				  RKISP1_ISP_MIN_WIDTH,
-				  RKISP1_ISP_MAX_WIDTH);
+				  rsz->rkisp1->info->max_width);
 	sink_fmt->height = clamp_t(u32, format->height,
 				   RKISP1_ISP_MIN_HEIGHT,
-				   RKISP1_ISP_MAX_HEIGHT);
+				   rsz->rkisp1->info->max_height);
 
 	/*
 	 * Adjust the color space fields. Accept any color primaries and
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
