Return-Path: <SRS0=t/9b=OT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F0C89C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Sep 2021 16:06:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B4BF6614C8
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Sep 2021 16:06:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B4BF6614C8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0TUG5syPA7efF5S1rCTmPx2atvHeE16WOXiOvMCARAs=; b=z90QxMXcT+WLBf
	FSxjgCYMPsGI4z+uZF4Pix5R6QAzHClFPd/aIaWSxadGD0ehSzoVAS63qanPJE0hbRwkHUab5Tc4r
	dHQCNC3E9ORIQ8NZDeWia4PyXQQ21QDtyY8Qy5gi6N5ZzUBm6PduZ/b4lGJ8crYjnCsxpAtCoSCYP
	0tQOAdkQYJi8IH6BWQgCOKwqK3aWGCYU8lkIt0WjLHMbAtuxTZ/SwR/mzDINrswj7MKDL4TG3+8Xj
	KDrsVj4Ki1ZY1hXkMAdEZfosIsgQ2LCTVdh5bU41965cZ5QS2ePKugeXRVNGP0lMkijNRCo+oZXMO
	GfxGwvPlt+SJetBaLzkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVc6P-00BgCd-Qh; Wed, 29 Sep 2021 16:06:37 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVc4i-00BfIl-35; Wed, 29 Sep 2021 16:04:55 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 7FEBC1F44672
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev
Cc: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Fabio Estevam <festevam@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Heiko Stuebner <heiko@sntech.de>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH v7 03/11] hantro: Simplify postprocessor
Date: Wed, 29 Sep 2021 18:04:31 +0200
Message-Id: <20210929160439.6601-4-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210929160439.6601-1-andrzej.p@collabora.com>
References: <20210929160439.6601-1-andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210929_090452_306126_99A7B56D 
X-CRM114-Status: GOOD (  14.51  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Ezequiel Garcia <ezequiel@collabora.com>

Add a 'postprocessed' boolean property to struct hantro_fmt
to signal that a format is produced by the post-processor.
This will allow to introduce the G2 post-processor in a simple way.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
---
 drivers/staging/media/hantro/hantro.h          | 2 ++
 drivers/staging/media/hantro/hantro_postproc.c | 8 +-------
 drivers/staging/media/hantro/imx8m_vpu_hw.c    | 1 +
 drivers/staging/media/hantro/rockchip_vpu_hw.c | 1 +
 drivers/staging/media/hantro/sama5d4_vdec_hw.c | 1 +
 5 files changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro.h b/drivers/staging/media/hantro/hantro.h
index c2e01959dc00..dd5e56765d4e 100644
--- a/drivers/staging/media/hantro/hantro.h
+++ b/drivers/staging/media/hantro/hantro.h
@@ -263,6 +263,7 @@ struct hantro_ctx {
  * @max_depth:	Maximum depth, for bitstream formats
  * @enc_fmt:	Format identifier for encoder registers.
  * @frmsize:	Supported range of frame sizes (only for bitstream formats).
+ * @postprocessed: Indicates if this format needs the post-processor.
  */
 struct hantro_fmt {
 	char *name;
@@ -272,6 +273,7 @@ struct hantro_fmt {
 	int max_depth;
 	enum hantro_enc_fmt enc_fmt;
 	struct v4l2_frmsize_stepwise frmsize;
+	bool postprocessed;
 };
 
 struct hantro_reg {
diff --git a/drivers/staging/media/hantro/hantro_postproc.c b/drivers/staging/media/hantro/hantro_postproc.c
index 882fb8bc5ddd..4549aec08feb 100644
--- a/drivers/staging/media/hantro/hantro_postproc.c
+++ b/drivers/staging/media/hantro/hantro_postproc.c
@@ -53,15 +53,9 @@ const struct hantro_postproc_regs hantro_g1_postproc_regs = {
 bool hantro_needs_postproc(const struct hantro_ctx *ctx,
 			   const struct hantro_fmt *fmt)
 {
-	struct hantro_dev *vpu = ctx->dev;
-
 	if (ctx->is_encoder)
 		return false;
-
-	if (!vpu->variant->postproc_fmts)
-		return false;
-
-	return fmt->fourcc != V4L2_PIX_FMT_NV12;
+	return fmt->postprocessed;
 }
 
 static void hantro_postproc_g1_enable(struct hantro_ctx *ctx)
diff --git a/drivers/staging/media/hantro/imx8m_vpu_hw.c b/drivers/staging/media/hantro/imx8m_vpu_hw.c
index 22fa7d2f3b64..02e61438220a 100644
--- a/drivers/staging/media/hantro/imx8m_vpu_hw.c
+++ b/drivers/staging/media/hantro/imx8m_vpu_hw.c
@@ -82,6 +82,7 @@ static const struct hantro_fmt imx8m_vpu_postproc_fmts[] = {
 	{
 		.fourcc = V4L2_PIX_FMT_YUYV,
 		.codec_mode = HANTRO_MODE_NONE,
+		.postprocessed = true,
 	},
 };
 
diff --git a/drivers/staging/media/hantro/rockchip_vpu_hw.c b/drivers/staging/media/hantro/rockchip_vpu_hw.c
index 6c1ad5534ce5..f372f767d4ff 100644
--- a/drivers/staging/media/hantro/rockchip_vpu_hw.c
+++ b/drivers/staging/media/hantro/rockchip_vpu_hw.c
@@ -62,6 +62,7 @@ static const struct hantro_fmt rockchip_vpu1_postproc_fmts[] = {
 	{
 		.fourcc = V4L2_PIX_FMT_YUYV,
 		.codec_mode = HANTRO_MODE_NONE,
+		.postprocessed = true,
 	},
 };
 
diff --git a/drivers/staging/media/hantro/sama5d4_vdec_hw.c b/drivers/staging/media/hantro/sama5d4_vdec_hw.c
index f3fecc7248c4..b2fc1c5613e1 100644
--- a/drivers/staging/media/hantro/sama5d4_vdec_hw.c
+++ b/drivers/staging/media/hantro/sama5d4_vdec_hw.c
@@ -15,6 +15,7 @@ static const struct hantro_fmt sama5d4_vdec_postproc_fmts[] = {
 	{
 		.fourcc = V4L2_PIX_FMT_YUYV,
 		.codec_mode = HANTRO_MODE_NONE,
+		.postprocessed = true,
 	},
 };
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
