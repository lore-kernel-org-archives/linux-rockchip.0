Return-Path: <SRS0=U2ba=CK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11BB3C433E6
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2020 12:13:01 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CB130206EB
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2020 12:13:00 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="kfQ3TOJZ"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CB130206EB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FV2uxsYo1v7COdfUlvDhOTDFizBzmxvq+uKF9aetti8=; b=kfQ3TOJZkIHIYOfC6fddd7sVcV
	h88CY6gL/AbKI0j419mok3UBJe/Binfqg+LOAelgCgonwJaIMv+kEsfz2JCB27nl/RNV14KWzB3eq
	EexPuDrD1+avnO64qfe2o+3xNaco1Ay8D1Zctuqt3AHfprLqrAP5OQaDvNOkji5S4w+vf0TJD3qAn
	wcKbno+jSrnzIVux7HWrZ0VikPX1bBk+ZmJRfyiNoF1OozZGlxcktJlFKrd0mCzi4lpy2AA6A20c5
	eMkXqhe5kD1f4AR6EE6LfZEge0t3jx53hOiXvBj0EePOUPKi5cjkbgNykQvweAtH2pReqAIx2innd
	t9JBS5DA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kD4HH-0004lT-ME; Tue, 01 Sep 2020 11:16:39 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kD4H5-0004co-8F
 for linux-rockchip@lists.infradead.org; Tue, 01 Sep 2020 11:16:33 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 6FA682987D5
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v4 10/10] media: staging: rkisp1: fix configuration for GREY
 pixelformat
Date: Tue,  1 Sep 2020 13:16:12 +0200
Message-Id: <20200901111612.10552-11-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200901111612.10552-1-dafna.hirschfeld@collabora.com>
References: <20200901111612.10552-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200901_071627_494132_F2619D23 
X-CRM114-Status: GOOD (  11.38  )
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

This patch changes the device configuration to support capture
of V4L2_PIX_FMT_GREY video. The 'write_format' field of the format
description should be planar.
Also the array 'pixm->plane_fmt' that describes the planes should
be memset to 0 before filling it since the the cb, cr planes should
be 0.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-capture.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
index 79ee6795a58f..6d02cb1c9c5b 100644
--- a/drivers/staging/media/rkisp1/rkisp1-capture.c
+++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
@@ -120,7 +120,7 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_mp_fmts[] = {
 	{
 		.fourcc = V4L2_PIX_FMT_GREY,
 		.uv_swap = 0,
-		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
+		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
 		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
 	},
 	/* yuv420 */
@@ -248,7 +248,7 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
 	{
 		.fourcc = V4L2_PIX_FMT_GREY,
 		.uv_swap = 0,
-		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
+		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV400,
 		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
 	},
@@ -1059,6 +1059,7 @@ rkisp1_fill_pixfmt(struct v4l2_pix_format_mplane *pixm,
 	unsigned int i;
 	u32 stride;
 
+	memset(pixm->plane_fmt, 0, sizeof(pixm->plane_fmt));
 	info = v4l2_format_info(pixm->pixelformat);
 	pixm->num_planes = info->mem_planes;
 	stride = info->bpp[0] * pixm->width;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
