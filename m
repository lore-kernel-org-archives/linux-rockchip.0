Return-Path: <SRS0=U2ba=CK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F098CC433E2
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2020 12:36:35 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BDC3120767
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2020 12:36:35 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="hGakZg6I"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BDC3120767
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MwmQ2ZDD9UW1pTSYr9KSJlw6RIYY06ozX4kvbxHVE68=; b=hGakZg6ImwrHb/tUL6CgOcV6r0
	KkXyGn/NrenwMMkUlimLZp24lUWhpGuh6ZoMTlzzw4pwVJutJBAmKJRdhRg51L613o36nuehayYkC
	wJdKLzVgRJbAyrnYVffoI2Vx24CRd7xgxMLgzk4KgE6C7bcUKIEDokqMCgeASZQ9FeukjsmjTOLOf
	/C+AM60KqJjTaCeJQ4OE1NvvcKVmR2che+49VUTRF8RTbLDu+wKRXAqdGl4gGUOJTLd0WxUXZOgtD
	ZUPzS9ehUOg5mGUYMIEGDs77oJsJia5M5EiMbDHt/JDd5y68vGmxXmUErVY6BkX1Tv1Jqx75ZBzn5
	UDc/IzCw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kD4H8-0004g2-Ev; Tue, 01 Sep 2020 11:16:30 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kD4H1-0004Yw-Bw
 for linux-rockchip@lists.infradead.org; Tue, 01 Sep 2020 11:16:26 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 31A58299038
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v4 04/10] media: staging: rkisp1: don't support bayer format
 on selfpath resizer
Date: Tue,  1 Sep 2020 13:16:06 +0200
Message-Id: <20200901111612.10552-5-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200901111612.10552-1-dafna.hirschfeld@collabora.com>
References: <20200901111612.10552-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200901_071623_673506_63CB1A65 
X-CRM114-Status: GOOD (  12.85  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, dafna3@gmail.com,
 tfiga@chromium.org, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The selfpath capture does not support bayer formats.
Therefore there is no reason to support bayer formats
on the selfpath resizer. The selfpath resizer should
support only MEDIA_BUS_FMT_YUYV8_2X8.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Acked-by: Helen Koike <helen.koike@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-capture.c |  7 -------
 drivers/staging/media/rkisp1/rkisp1-resizer.c | 13 ++++++++++++-
 2 files changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
index 022b8eeed426..22da94a9baf1 100644
--- a/drivers/staging/media/rkisp1/rkisp1-capture.c
+++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
@@ -1186,13 +1186,6 @@ static int rkisp1_capture_link_validate(struct media_link *link)
 	struct v4l2_subdev_format sd_fmt;
 	int ret;
 
-	if (cap->id == RKISP1_SELFPATH &&
-	    isp->src_fmt->mbus_code != MEDIA_BUS_FMT_YUYV8_2X8) {
-		dev_err(cap->rkisp1->dev,
-			"selfpath only supports MEDIA_BUS_FMT_YUYV8_2X8\n");
-		return -EPIPE;
-	}
-
 	if (cap_pix_enc != isp_pix_enc &&
 	    !(isp_pix_enc == V4L2_PIXEL_ENC_YUV &&
 	      cap_pix_enc == V4L2_PIXEL_ENC_RGB)) {
diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
index c66d2a52fd71..066d22096a7d 100644
--- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
+++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
@@ -437,6 +437,13 @@ static int rkisp1_rsz_enum_mbus_code(struct v4l2_subdev *sd,
 	u32 pad = code->pad;
 	int ret;
 
+	if (rsz->id == RKISP1_SELFPATH) {
+		if (code->index > 0)
+			return -EINVAL;
+		code->code = MEDIA_BUS_FMT_YUYV8_2X8;
+		return 0;
+	}
+
 	/* supported mbus codes are the same in isp video src pad */
 	code->pad = RKISP1_ISP_PAD_SOURCE_VIDEO;
 	ret = v4l2_subdev_call(&rsz->rkisp1->isp.sd, pad, enum_mbus_code,
@@ -540,7 +547,11 @@ static void rkisp1_rsz_set_sink_fmt(struct rkisp1_resizer *rsz,
 	src_fmt = rkisp1_rsz_get_pad_fmt(rsz, cfg, RKISP1_RSZ_PAD_SRC, which);
 	sink_crop = rkisp1_rsz_get_pad_crop(rsz, cfg, RKISP1_RSZ_PAD_SINK,
 					    which);
-	sink_fmt->code = format->code;
+	if (rsz->id == RKISP1_SELFPATH)
+		sink_fmt->code = MEDIA_BUS_FMT_YUYV8_2X8;
+	else
+		sink_fmt->code = format->code;
+
 	mbus_info = rkisp1_isp_mbus_info_get(sink_fmt->code);
 	if (!mbus_info || !(mbus_info->direction & RKISP1_ISP_SD_SRC)) {
 		sink_fmt->code = RKISP1_DEF_FMT;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
