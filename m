Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 505D1C531D0
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Jul 2026 02:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GfLHDI/Y5SieYDiBtzhGeR0+ZLDYULXzQMWhyZRjBhY=; b=ArjLpyoE201b5Y
	OpqhNy4q/5kI3gd6bEnQUqQDG54J7D+VBs1HbtVy8gl1pBgzCYFczOgz4xUYwEA3bZmn+mj3xz8PP
	NZ1MQ1R5uanUldjsCTasrosSJyd/2h3QtCzrHcAQHICR9sMans95srVlDzhNPbLgzSjHs/1nnWQIU
	0gr7VBOBSbBfNredMf6rYnU00nj4zL8ORwYvhjlldJp/H1s/O0KG88lSmpNdNg4IBV8oaiownwnaP
	yTFQYNMPfknkgKzFT1gz1mPuMlOnphB10RdvKL/HJ8KLw43Igznz/YzMAwDL4JDm+fGzqDVgdd1Fe
	W+Z0cLvkEi3W9T+YIQkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnorX-00000000pmj-3hGY;
	Sun, 26 Jul 2026 02:45:11 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnorG-00000000plo-1pT6
	for linux-rockchip@lists.infradead.org;
	Sun, 26 Jul 2026 02:45:10 +0000
Received: by mail-pj1-x102c.google.com with SMTP id 98e67ed59e1d1-381c51fde6bso1760617a91.2
        for <linux-rockchip@lists.infradead.org>; Sat, 25 Jul 2026 19:44:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785033893; x=1785638693; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ZueuOu0bsjbmfoZW5fI6EGD7PRQKcFNbXmi39LsZknI=;
        b=NHoWn2cudSChiHMrI8PYXFKcho86tQOJbWavho6cinZHsoN0czLYY9l+z/Ik/ZhOmb
         EWr9cdFlIQIrDUE8uyXQ+LgNaGAR46CEoYpjwGAJFsbJ5JARkFQ1f1kWQFTPbfrLB9FV
         ZUSMEvHIKTPpQT2BxEu4Gms5723EM0j0X5O8zqt8zArRRhoDJYLGRbo7IACJu02svw1S
         KdXotsTbLhkbH7PAOoC+6fNTOCFCeUGC3TKKaWvtZrSu537ffXsxuVH3tqH4iKGWZqQu
         GHGTbtjoUiz7lohSCXfrBKtOgv5QiALp5CVpLF6tbu1LdUOfkL1sfn/uEU0qzy26+5yB
         CutA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785033893; x=1785638693;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=ZueuOu0bsjbmfoZW5fI6EGD7PRQKcFNbXmi39LsZknI=;
        b=Deco7CVBF/g5+Zn2tQZ5TOj9N1loyJ8CrapF7Qh5TvFUbvxMBHqKOV7uyU3FpNpJ3K
         8Z75Tq1XlTvOPFoTU7bbJrBxdewApgeHH0pRrwl614+/vRi42cbYjRKA+gQXa/SMGffy
         YLI4Lyk5BuNjm2ivqCyYSQs7IyTLoyyiPOG5x2PuMjPZtf2d9r+Ze53ReQQ90juSlTTx
         lU55GeT02MrQm5V0zLuEcd8ZzjXXw5uDerf/kBDqW7sRVTJF5CosV8jmvqbrw6BXvzvS
         nMixYDA3dF/QowZ4QDB2yczGwkDenGqscQSHjwdNBnYuM+McQVESMaJTEZDmyivjOPe9
         FH7w==
X-Forwarded-Encrypted: i=1; AHgh+RrWBZAB47wO4hPQ5g6YSuX8Yw1zrxtppoknb5BnCcmIDpsaQka3lZoqnFtw6wx5xNKEf+ijD4kA4FFfUKTqwg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy+8dtjFNKJEGN7TL0mGEgLQxOFvAmtxDT+SZf6M8v5Jjk4DUF+
	VwH+NfEMyov+XNuY54vHxAFPkehdd4oTfmgjJoGjiZwtoywaiYBWSP+g
X-Gm-Gg: AR+sD11CB3AQeZ55Yj9IeIoDeLSCawVvV9DQGT0OAnxuc+L48bp3gjmriBgfl/t/I+s
	pxH+OZcpNfyi9k/SaU09YTM0wDIr6i3I9pJP0JzSz7RyhwKW6vN7RV0pBJ6BCYE1ogTrpmpLs1B
	rdbY5DOQRgUEG9z9LlSqZZOL+y4uqDWu6JEv/XIdrq77YvDy7SfgXBYwOEySEF2vcL9p+k+/RZG
	Vqv4GPGW/k5Jmn+G1ncpmh7mN2OfE1monV7LXs2z9W1bd8K8h2i7+6u41uxZ0Eg0ZOJ3kV0IRMF
	rfoEySgqoSPZNbvCXK+TyOqXEBlehrTHpRp5KxjrFMnfaALSD6OlSYrYZR5CGWwLJbwRG5t8+NR
	1yJH+TQzQTLfCi95ppGhxuX3QRqg6xpUBgJIgIZewKIjI29XO5jzt+OlNmi2B8m9VUdAzq4N/Dp
	3WqOjxzE2FOc2cmihxyllsHfsCzcx7450p7uFU+Zv+6xiihQq57Sk3nKVwh05LDMXadn8QM2DhN
	Nc=
X-Received: by 2002:a05:6a20:914e:b0:3c0:e552:f2d with SMTP id adf61e73a8af0-3c67dac0acemr3275871637.34.1785033892904;
        Sat, 25 Jul 2026 19:44:52 -0700 (PDT)
Received: from debian-rockchip-rock5b-rk3588.. ([2405:9800:b670:b64b:14e4:adb4:cabd:de50])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-314bc413766sm16313406eec.8.2026.07.25.19.44.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Jul 2026 19:44:52 -0700 (PDT)
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
	linux-kernel-mentees@lists.linux.dev,
	skhan@linuxfoundation.org,
	me@brighamcampbell.com,
	jkoolstra@xs4all.nl,
	Frank.li@oss.nxp.com,
	Tharit Tangkijwanichakul <tharitt97@gmail.com>
Subject: [PATCH v3] media: hantro: release runtime resources when device_run fails
Date: Sun, 26 Jul 2026 02:42:43 +0000
Message-ID: <20260726024243.730-1-tharitt97@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260724131208.2315-1-tharitt97@gmail.com>
References: <20260724131208.2315-1-tharitt97@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260725_194454_521251_0B3D529A 
X-CRM114-Status: GOOD (  20.10  )
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

 .../media/platform/verisilicon/hantro_drv.c   | 68 +++++++++++--------
 1 file changed, 39 insertions(+), 29 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index 2e81877f640f..7978bb72569e 100644
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
@@ -1292,22 +1284,40 @@ static void hantro_remove(struct platform_device *pdev)
 	pm_runtime_disable(vpu->dev);
 }
 
-#ifdef CONFIG_PM
 static int hantro_runtime_resume(struct device *dev)
 {
 	struct hantro_dev *vpu = dev_get_drvdata(dev);
+	int ret;
 
-	if (vpu->variant->runtime_resume)
-		return vpu->variant->runtime_resume(vpu);
+	ret = clk_bulk_enable(vpu->variant->num_clocks, vpu->clocks);
+	if (ret)
+		return ret;
+
+	if (vpu->variant->runtime_resume) {
+		ret = vpu->variant->runtime_resume(vpu);
+		if (ret)
+			goto err_disable_clocks;
+	}
 
 	return 0;
+
+err_disable_clocks:
+	clk_bulk_disable(vpu->variant->num_clocks, vpu->clocks);
+	return ret;
+}
+
+static int hantro_runtime_suspend(struct device *dev)
+{
+	struct hantro_dev *vpu = dev_get_drvdata(dev);
+
+	clk_bulk_disable(vpu->variant->num_clocks, vpu->clocks);
+	return 0;
 }
-#endif
 
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
