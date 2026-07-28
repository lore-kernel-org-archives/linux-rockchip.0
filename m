Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DD0DC54F4C
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jul 2026 05:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UwY53YFXV2rkw8e/LeU4u8Qx9/fs3wEW5fVhPYNOxYk=; b=Ncm+6v1kenCT+L
	yO5PSeC8ZfhQXrHQjvjo8/vxmBcKPjNwMaozDc/wXalICyQWbuIVH9B2U3viJALMHW44Hk3G+/G43
	/lsDahfTuEZ9AuHpC7wGD2DByYIAY/tHdDbMr1e/irCkDDa4h/iao3inkOS1uyGVsFy3rnHZ738Ml
	8q+2TT5F6EtXZo0GDP+736T3b2/x3tdY3OJbLiSRhZefsDawG1GobCQmfDDAV2Q6WVEb0sqbdCwg6
	Q1QKLcU6QzGlu2IcsXJD6JzD6KIvFHc6ewnIjgtvNq6rhT+irqinzCZOwRpeIJs4UeAknt7pdUDSF
	opq8cK07B/7S8++1NfIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woZwc-00000004Q53-1Ex1;
	Tue, 28 Jul 2026 05:01:34 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woZwa-00000004Q4G-0HMQ
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Jul 2026 05:01:33 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-2cab973140bso46185285ad.3
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Jul 2026 22:01:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785214891; x=1785819691; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=EXLw2qYAX9E/FJ2MopzGW6N4TvWUucHeTTJeGbPG6U4=;
        b=QaAAnRKo5zhV2iW4zRBH/im97uACSfVHTJhsZCbUtwdCm9ZMCGowp+cUXxzetnlm9d
         uF5cbTeTq+a4wg+MpSo2H64JfrcRB3LmYG4d5i2l+hPz/TemVryTBzI4nSisjuNipngJ
         hmLsd805v4ZByMhW5zucm1QJCfQE7qNleT0EGrPgYRO/DtR0uIah1uW5m/RACCALX+5d
         jZuU8ncnbFaIL+rVNmmFZz4Id8NLRSgm0Je8S7/9P26PG7gwOdBTmhtV+T6j8p9CQnNU
         SecY9P0gdmctUXyXSLEVyqN9V2zWgglv959HQggQXdF/HQxCkJJtKcr/KE+IflxjRXjH
         IkeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785214891; x=1785819691;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=EXLw2qYAX9E/FJ2MopzGW6N4TvWUucHeTTJeGbPG6U4=;
        b=GcN43T8Bki0YFBszhpmWuThuWQ7IDJd46dgBM1snDIZjv6LfN2FR9w+cF0QKuUWFHU
         12cAvjKqmV1Er3x3CV+Gp3Qr8+3m0OO7DRIfZAxvlN42efi0RrZhU2peyZ5humchQXgE
         iyPSEam69cdFCdHqEI7gARjRfXYSNgcOwmFxRfBHk26n0U7iu3wludBY9i3b6gKOshEh
         g5+drEol2N2jFHDxhcUz6iwJwbJDGaZYWWwlIE8XYz7fLq2qQJWccxrl+vYMzZA/T6sp
         3dv1cRdVfGANrHNjGbljfWm+aiQ+5lR4VJeXu0NYAAclv72eXPgwc1mFvBfjkZfZjT4j
         uFog==
X-Forwarded-Encrypted: i=1; AHgh+RoYPk7d24tXH7Qgnn8mLF7D7iDFyE7cSMhvHgMRItxyHkPlhIAfZNIN2BlzBExde2F89JNXfgM+USuqT92QDg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzFkmR6S2+D0hFNj+5YQr/OH/R7EziVXuNGblY2zt45bafNQssn
	WIQtxMjWXvvRhGTVBRRIEglJP5M7VfcX/fakKqww4SaC8yrCOU7HdcQV
X-Gm-Gg: AR+sD10goQLeHbY+ig4HLG/63YjzvVHxg1putYmfJSpVK0L66y670rcupghq+JUV6jr
	EtEh0TJjXdyOsP1xA2J7uMv0xAlodaYODhUMN+31gynTvVaKLuuHfGogfL9thc8YhNOjG+LZ2Sa
	SkP2bW50+FA4ftC5hl/wBrCWPLkBAEpBcgaSBL0NJ3+tiNhqLIoFt2KG9Kn/EmK+1LXd/Ok8wWJ
	7g5LzZPSw1ppI6FMKtknAwXkeauRv1/k3L1sjJw2EMPAKy9Ud0MyJYgop9a6rCzazzG324YPopW
	WHhYjBiVL11KbQoTe7JcQ9XE8Nvdex1rktIWSgoTBn0T6TdjM17PGdhKSbwi+p/sRmR6/Ft8yGd
	lvRyROzDcceulWIu5FyqucBeTi7vI5EnIF4CejFbzLV4zNoqIijjuaTDjX2+N1biiuYk/296GKV
	w+lgo6vWY0lJpq7egxQqmaTGP91xvLcpMAVoM14H7owAqLVRlDGfeEnfk10wC7ynpI
X-Received: by 2002:a17:902:fda5:b0:2ca:20b1:3e0a with SMTP id d9443c01a7336-2d015c8fbcemr11383945ad.3.1785214890986;
        Mon, 27 Jul 2026 22:01:30 -0700 (PDT)
Received: from debian-rockchip-rock5b-rk3588.. ([2405:9800:b670:b64b:1c6e:95da:41c0:e7b6])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2cfde7bc57asm44882835ad.45.2026.07.27.22.01.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jul 2026 22:01:30 -0700 (PDT)
From: Tharit Tangkijwanichakul <tharitt97@gmail.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Hans Verkuil <hverkuil@kernel.org>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel-mentees@lists.linux.dev,
	skhan@linuxfoundation.org,
	me@brighamcampbell.com,
	jkoolstra@xs4all.nl,
	Frank.li@oss.nxp.com,
	Tharit Tangkijwanichakul <tharitt97@gmail.com>
Subject: [PATCH v4] media: hantro: release runtime resources when device_run fails
Date: Tue, 28 Jul 2026 04:59:21 +0000
Message-ID: <20260728045921.4761-1-tharitt97@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260726024243.730-1-tharitt97@gmail.com>
References: <20260726024243.730-1-tharitt97@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_220132_107113_EE8F31D0 
X-CRM114-Status: GOOD (  20.64  )
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

device_run() acquires a runtime PM reference and enables the VPU clocks
before invoking the codec-specific run callback.

If clk_bulk_enable() fails, the runtime PM reference is left held. If
the codec-specific run callback fails, both the enabled clocks and the
runtime PM reference are left held.

Make the clocks part of the device's runtime PM state by enabling them
from the runtime-resume callback and disabling them from the
runtime-suspend callback.

Fixes: 775fec69008d ("media: add Rockchip VPU JPEG encoder driver")
Signed-off-by: Tharit Tangkijwanichakul <tharitt97@gmail.com>
---
Changes in v4:
- Keep CONFIG_PM guard to avoid possible build error, as suggested by Frank Li.

Changes in v3:
- Move clock enable and disable operations into the runtime PM
  callbacks, as suggested by Frank Li.
- Remove vpu from argument in hantro_job_finish() and 
  hantro_job_finish_no_pm(). It is accessible by ctx.

Changes in v2:
- Fix the codec run failure path to disable the clocks before dropping
  the runtime PM reference.
- Use a local vpu variable in device_run().

Tested on a ROCK 5B (RK3588) using the Hantro G1 decoder and Fluster:

  H.264 (JVT-AVC_V1):          129/135, unchanged
  MPEG-2 (MPEG2_VIDEO-MAIN):    23/43, unchanged
  VP8 (VP8-TEST-VECTORS):       61/61, unchanged
 .../media/platform/verisilicon/hantro_drv.c   | 66 +++++++++++--------
 1 file changed, 39 insertions(+), 27 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index 2e81877f640f..d6fcd4f7f9da 100644
--- a/drivers/media/platform/verisilicon/hantro_drv.c
+++ b/drivers/media/platform/verisilicon/hantro_drv.c
@@ -59,8 +59,7 @@ static const struct v4l2_event hantro_eos_event = {
 	.type = V4L2_EVENT_EOS
 };
 
-static void hantro_job_finish_no_pm(struct hantro_dev *vpu,
-				    struct hantro_ctx *ctx,
+static void hantro_job_finish_no_pm(struct hantro_ctx *ctx,
 				    enum vb2_buffer_state result)
 {
 	struct vb2_v4l2_buffer *src, *dst;
@@ -86,15 +85,13 @@ static void hantro_job_finish_no_pm(struct hantro_dev *vpu,
 					 result);
 }
 
-static void hantro_job_finish(struct hantro_dev *vpu,
-			      struct hantro_ctx *ctx,
+static void hantro_job_finish(struct hantro_ctx *ctx,
 			      enum vb2_buffer_state result)
 {
-	pm_runtime_put_autosuspend(vpu->dev);
-
-	clk_bulk_disable(vpu->variant->num_clocks, vpu->clocks);
+	struct hantro_dev *vpu = ctx->dev;
 
-	hantro_job_finish_no_pm(vpu, ctx, result);
+	pm_runtime_put_autosuspend(vpu->dev);
+	hantro_job_finish_no_pm(ctx, result);
 }
 
 void hantro_irq_done(struct hantro_dev *vpu,
@@ -111,7 +108,7 @@ void hantro_irq_done(struct hantro_dev *vpu,
 	if (cancel_delayed_work(&vpu->watchdog_work)) {
 		if (result == VB2_BUF_STATE_DONE && ctx->codec_ops->done)
 			ctx->codec_ops->done(ctx);
-		hantro_job_finish(vpu, ctx, result);
+		hantro_job_finish(ctx, result);
 	}
 }
 
@@ -127,7 +124,7 @@ void hantro_watchdog(struct work_struct *work)
 		vpu_err("frame processing timed out!\n");
 		if (ctx->codec_ops->reset)
 			ctx->codec_ops->reset(ctx);
-		hantro_job_finish(vpu, ctx, VB2_BUF_STATE_ERROR);
+		hantro_job_finish(ctx, VB2_BUF_STATE_ERROR);
 	}
 }
 
@@ -170,29 +167,24 @@ void hantro_end_prepare_run(struct hantro_ctx *ctx)
 static void device_run(void *priv)
 {
 	struct hantro_ctx *ctx = priv;
+	struct hantro_dev *vpu = ctx->dev;
 	struct vb2_v4l2_buffer *src, *dst;
 	int ret;
 
 	src = hantro_get_src_buf(ctx);
 	dst = hantro_get_dst_buf(ctx);
 
-	ret = pm_runtime_resume_and_get(ctx->dev->dev);
-	if (ret < 0)
-		goto err_cancel_job;
-
-	ret = clk_bulk_enable(ctx->dev->variant->num_clocks, ctx->dev->clocks);
-	if (ret)
-		goto err_cancel_job;
+	ret = pm_runtime_resume_and_get(vpu->dev);
+	if (ret < 0) {
+		hantro_job_finish_no_pm(ctx, VB2_BUF_STATE_ERROR);
+		return;
+	}
 
 	v4l2_m2m_buf_copy_metadata(src, dst);
 
-	if (ctx->codec_ops->run(ctx))
-		goto err_cancel_job;
-
-	return;
-
-err_cancel_job:
-	hantro_job_finish_no_pm(ctx->dev, ctx, VB2_BUF_STATE_ERROR);
+	ret = ctx->codec_ops->run(ctx);
+	if (ret)
+		hantro_job_finish(ctx, VB2_BUF_STATE_ERROR);
 }
 
 static const struct v4l2_m2m_ops vpu_m2m_ops = {
@@ -1296,10 +1288,30 @@ static void hantro_remove(struct platform_device *pdev)
 static int hantro_runtime_resume(struct device *dev)
 {
 	struct hantro_dev *vpu = dev_get_drvdata(dev);
+	int ret;
+
+	ret = clk_bulk_enable(vpu->variant->num_clocks, vpu->clocks);
+	if (ret)
+		return ret;
+
+	if (vpu->variant->runtime_resume) {
+		ret = vpu->variant->runtime_resume(vpu);
+		if (ret)
+			goto err_disable_clocks;
+	}
+
+	return 0;
 
-	if (vpu->variant->runtime_resume)
-		return vpu->variant->runtime_resume(vpu);
+err_disable_clocks:
+	clk_bulk_disable(vpu->variant->num_clocks, vpu->clocks);
+	return ret;
+}
 
+static int hantro_runtime_suspend(struct device *dev)
+{
+	struct hantro_dev *vpu = dev_get_drvdata(dev);
+
+	clk_bulk_disable(vpu->variant->num_clocks, vpu->clocks);
 	return 0;
 }
 #endif
@@ -1307,7 +1319,7 @@ static int hantro_runtime_resume(struct device *dev)
 static const struct dev_pm_ops hantro_pm_ops = {
 	SET_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend,
 				pm_runtime_force_resume)
-	SET_RUNTIME_PM_OPS(NULL, hantro_runtime_resume, NULL)
+	SET_RUNTIME_PM_OPS(hantro_runtime_suspend, hantro_runtime_resume, NULL)
 };
 
 static struct platform_driver hantro_driver = {
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
