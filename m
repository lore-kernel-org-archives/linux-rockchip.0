Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8E7BC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 20:17:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ms2HbvOUhp4vwmpOJYWu3qY1jD+pg/5TI55OdKvA7LA=; b=urkSYEnuVOB2WH
	RD1vlH3OKzSdqjL64DbLzOeOrTHnqG1piQ2Rmvz0F1gZjbBZ6n/LQV/woFUESWpPUGyEWrInqM89n
	i0DYfW/+LkY1XMGSQexbNfdW3ON7oLO1ssNSTfcktNtcV4zMehUDqDXwl1YfgVYru/LalDfGV7ZS4
	XhH145Epj6RQq7iNBBA3DWYFOQbkK1Mq4KtgnGiCALIJbsIhBegF5esCCs23YL4BsXeDH/TF0+XX4
	W+Jl5Ic/Q/DGL321rnaQlyIUfl6HKzkQ2ftU+I6Q/70e9Z55a2ke1CEIdiYiQJE4ce8USPtDVQjXm
	X3m/G/Y4+LFnZo3I0sKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1BSV-007ANr-35;
	Thu, 09 Nov 2023 20:16:59 +0000
Received: from relay5-d.mail.gandi.net ([2001:4b98:dc4:8::225])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1BSR-007AJZ-1H
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Nov 2023 20:16:57 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 0F1D21C0004;
	Thu,  9 Nov 2023 20:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1699561010;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=qlw7B5/Bx/59SQf3CbtCdO7WmqSG7NYa1WOTVO0Qk80=;
	b=WgEq9pmqEnbuW6waH6m/ZSGL/NBzEuXlBpDxFBA2lGrCWWtOe/4nwymHgzG3MSGAZiSxlS
	J0ch5GA0xJRwfSm2GEJ4Hcy4TPCj9ZYmkExXAJYP/Zw6HmbvX64xuRhpUo80hriotvgVNk
	hhKX5A+o6QIGwuqX/WaPyLI+knh0Vnv+KVnOFA3471FomaQ71k+NrClfDNCRga5SYRH/CA
	xtZAp3SVnpGXsk5Y1SIaNqfagMAEn9nCrFiBbRUcp7WuOsp4i2v52aF4JeWJ6WE7quUx5I
	1/8xWkx1HCfNbs9XY4ylpXB9sQWlEsLzOwckLPo9PTn4tgPvXv/uz2wm8gB6YQ==
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-staging@lists.linux.dev
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Daniel Almeida <daniel.almeida@collabora.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Sebastian Fricke <sebastian.fricke@collabora.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: [PATCH 1/4] media: vicodec: Disable (TRY_)DECODER_CMD for the stateless case
Date: Thu,  9 Nov 2023 21:16:37 +0100
Message-ID: <20231109201640.340556-1-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.42.1
MIME-Version: 1.0
X-GND-Sasl: paul.kocialkowski@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_121655_766069_0810115C 
X-CRM114-Status: GOOD (  14.02  )
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

The (TRY_)DECODER_CMD ioctls are only useful for stateful decoders and for
stateless decoders that support holding capture buffers (which is not the case
for this driver).

Disable them when registering the stateless decoder.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 .../media/test-drivers/vicodec/vicodec-core.c | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/media/test-drivers/vicodec/vicodec-core.c b/drivers/media/test-drivers/vicodec/vicodec-core.c
index 6f0e20df74e9..8f7a2b153ee9 100644
--- a/drivers/media/test-drivers/vicodec/vicodec-core.c
+++ b/drivers/media/test-drivers/vicodec/vicodec-core.c
@@ -1240,6 +1240,12 @@ static int vicodec_decoder_cmd(struct file *file, void *fh,
 	struct vicodec_ctx *ctx = file2ctx(file);
 	int ret;
 
+	/*
+	 * This ioctl should not be used with a stateless codec that doesn't
+	 * support holding buffers and the associated flush command.
+	 */
+	WARN_ON(ctx->is_stateless);
+
 	ret = v4l2_m2m_ioctl_try_decoder_cmd(file, fh, dc);
 	if (ret < 0)
 		return ret;
@@ -2025,7 +2031,7 @@ static const struct v4l2_m2m_ops m2m_ops = {
 
 static int register_instance(struct vicodec_dev *dev,
 			     struct vicodec_dev_instance *dev_instance,
-			     const char *name, bool is_enc)
+			     const char *name, bool is_enc, bool is_stateless)
 {
 	struct video_device *vfd;
 	int ret;
@@ -2045,10 +2051,11 @@ static int register_instance(struct vicodec_dev *dev,
 	strscpy(vfd->name, name, sizeof(vfd->name));
 	vfd->device_caps = V4L2_CAP_STREAMING |
 		(multiplanar ? V4L2_CAP_VIDEO_M2M_MPLANE : V4L2_CAP_VIDEO_M2M);
-	if (is_enc) {
+	if (is_enc || is_stateless) {
 		v4l2_disable_ioctl(vfd, VIDIOC_DECODER_CMD);
 		v4l2_disable_ioctl(vfd, VIDIOC_TRY_DECODER_CMD);
-	} else {
+	}
+	if (!is_enc) {
 		v4l2_disable_ioctl(vfd, VIDIOC_ENCODER_CMD);
 		v4l2_disable_ioctl(vfd, VIDIOC_TRY_ENCODER_CMD);
 	}
@@ -2107,17 +2114,17 @@ static int vicodec_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, dev);
 
 	ret = register_instance(dev, &dev->stateful_enc, "stateful-encoder",
-				true);
+				true, false);
 	if (ret)
 		goto unreg_dev;
 
 	ret = register_instance(dev, &dev->stateful_dec, "stateful-decoder",
-				false);
+				false, false);
 	if (ret)
 		goto unreg_sf_enc;
 
 	ret = register_instance(dev, &dev->stateless_dec, "stateless-decoder",
-				false);
+				false, true);
 	if (ret)
 		goto unreg_sf_dec;
 
-- 
2.42.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
