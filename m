Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2665C53219
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jul 2026 06:07:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X1yNpHfmoaSXtqNCiYwGXOjpf7kwCR29i5qLBZ3pJ2c=; b=vrHr+DE2k14Gic
	M1ApAhA/AfVxLjX913Hzk+LhQOLzpXO7mNWMUGtSgqFYK/5ImuqkPSOGilF/vvXvji64BL+IpR8qn
	nvFXGe4kdOGD9+KqUKJekU1YVuBMNijuH12wE+SYlCXJXjmprO/WWilSm0ctsQR2i8XrlvzlQUD1z
	2pGTPWt9ChNainXq115dlL6gB/yyq5kvMUaoxcSuAHpwRD7lOti9CG1Vc2/FEKty4vh/GHldCtfab
	62Zmn//KjWFzgVtd0DKSFEMoXbFgRRse1Ro+OLKhdyWsAyAF3lr6lP0EeYuKKfjQ/iu42SRkOoPMN
	Or6A2323N/v9nk0AFn3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woxS4-00000006z9v-1jrI;
	Wed, 29 Jul 2026 06:07:36 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woxS0-00000006z8B-2l5p
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Jul 2026 06:07:34 +0000
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-848593533cbso249945b3a.3
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Jul 2026 23:07:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785305252; x=1785910052; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Hu86WNjJ+kA/XeSuM7zN7dq8Faj07B8lKH5Il6BqR+4=;
        b=Q4imaKY1tBL8pfQgMk6pw9UgDQo0rfSQAAf4hsI1gjDXaYdCgkLiMP0sZXaAmvROI1
         nUTTo5EgWMlCPURPNK5ImWV0dqxrU7p9UInm6r6bCdcGV0TbxxV9CypYqleelgj5q1My
         UhvI/tXeacBNHldGdxh4y4Q/olnlZZLtIuDBZ7MEp9pyG91NtuQ0sWScC236jkyopuLc
         JBOlEOtsRzpV69eajC3i4+Zt6p0RbEGd5pmI6zLp+4NaW5ZVBqkCIb2CbKipEHcMaJXV
         O6WwTR8KAzf1ZQkld8VrNCFm2+Dh92smEr6ELgftNB2d8MhaxGOMBVwO9Qdx2SMQu+NV
         6xuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785305252; x=1785910052;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Hu86WNjJ+kA/XeSuM7zN7dq8Faj07B8lKH5Il6BqR+4=;
        b=LK4vmt49JbahIWrwoZvESrq89xJCZ5c61OH640TqskbhqULxp/X/5D1Wn6x1Tdue1K
         ogfMTvCnNUa+4NNLICaFpRhApD+bylJuq9l5trhWSoMlxwBLbcm0g7yeeK40W7YZ73cE
         ouoFNOO/IJpHgYTc6nQKKdyIE5OnsuWju4hgFWcLupkyhBcG/tWOohLZnn+SzspEj+Nd
         UFBvu58zIg1ts70FxZ5ztdW0MnZS6i/RAiBt4ZZ7utpwgkJsGgzZLrBxozL9IXQwScs8
         Vb+hCsOgaUvHqzIGeqnX0wGgnt/fBOeePIRZ8hQ2MJv0yZs36dQBRliT7iPxisXN8STU
         Cm6w==
X-Forwarded-Encrypted: i=1; AHgh+Rr6v9p1I8XHgRtzcMj744T7AipslVSYjuBjxEwJ2FXfiwECNLiZmxiU+OKL6uZWfB4C0mdTGcSKhj+6QroJUw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyifXGYXDKZtQo0uL/TcsTtLFoAKnrie/UBFP7Nj+8H0jejlr6o
	hE+ykIE9CLPZ6wCj7KrYD2PwmgexOtCxMbfMOp8T16jXR0KoeJYA94VX
X-Gm-Gg: AR+sD13pdvtNIiToPataa2BlK597CVoQa66X7K+lcnBPehFwFVd4BuU27E8p13esKaZ
	z8Oq1hopkPXapxDz13nNp9VEIqPOcKfup+6wRa7SZUrIbQSL/ct8Cdu8OhfEHULPInmn1zA43SA
	ZtGJyks0Jw+VHKlPlxzJWWJ6TBA84T6ejtVWjjM8+QyajiMX3tk2RxAWhi3wWSNSDbkOa5gLY0K
	Kqi6ISpD4EkHlH1rCQD/HspqA6904vFFKN/ro51TZ4sj/qZxB2fqcN7QqxOJd3RXayrwM5DoIHA
	oDIUAj4y8CWazyXYNMHBMCqLF8RSmOInuzn9Q3qdJjrM21QXCvqSEAK12e72Hbg3NCxHezXiaYT
	WS5h6Mw7i9wJ9MUMEFZkZqCtgwPq5ERGjmRs0rU8DJcs2q5NzrNMF+QB2YE/jzkVZUnT3ncEHWf
	TARN1PYdjKJh4euKb44vPWj7EcGJdjK4psS+Xbk3mVgZlzar/t4sr470Ee9p6DWj88lhTik4vNY
	Arh1y2ju2S1ZaF6ecdil/Z5wfeE+jGUtZba0eGWxdivmMV5ZSk=
X-Received: by 2002:a05:6a00:b91:b0:82f:38df:681c with SMTP id d2e1a72fcca58-84e931ec99amr5885268b3a.6.1785305251710;
        Tue, 28 Jul 2026 23:07:31 -0700 (PDT)
Received: from debian-rockchip-rock5b-rk3588.. ([2405:9800:b670:b64b:1c6e:95da:41c0:e7b6])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84ea02f8473sm805504b3a.31.2026.07.28.23.07.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jul 2026 23:07:31 -0700 (PDT)
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
Subject: [PATCH v5 1/2] media: hantro: release runtime resources when device_run fails
Date: Wed, 29 Jul 2026 06:04:39 +0000
Message-ID: <20260729060440.2092-2-tharitt97@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260729060440.2092-1-tharitt97@gmail.com>
References: <20260729060440.2092-1-tharitt97@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_230732_760393_4FA9EF62 
X-CRM114-Status: GOOD (  18.37  )
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
