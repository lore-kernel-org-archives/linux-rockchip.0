Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DE9EC531C9
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jul 2026 12:33:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wnOWFqoAwAGzfQPRznKKNuu+4n8bH+ZtjLZJecvkulE=; b=F3dJbIqfqyupdX
	69X0XlewrEVLOMwA4JEfYHYTTTx0jSHGI9KzNhVlzVVumSlPHxh/Mr8aKJhBP0hiH3IsOc20gAz3y
	4rm0UScw7+NrhVy45tIl0ICLWGuME9R9KoguUEFw/ZS+s95pN7tx5T+7e/dIzEyouTwHP/1fBarjo
	SmxLNdDqjt/X3pbt1M9vGMTud8rfjzT23694Bd5cyzFcukx2EEE8osbYWBM7ARBbR06cCGoMCOocv
	e3E1rVKmfwpr9yoBclQZtyKnsKrzxLvpkHLCMPsXcSf+JBOe6FQm7xIYtdcW/6MQ/l59/RTeGyPXK
	Bivk6ishvQv3zEfy7mVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnDsr-0000000GGX0-1jXC;
	Fri, 24 Jul 2026 11:16:05 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnDso-0000000GGVN-1Qyo
	for linux-rockchip@lists.infradead.org;
	Fri, 24 Jul 2026 11:16:03 +0000
Received: by mail-pj1-x102e.google.com with SMTP id 98e67ed59e1d1-38ec1402b05so220010a91.2
        for <linux-rockchip@lists.infradead.org>; Fri, 24 Jul 2026 04:16:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784891761; x=1785496561; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=7h17JbhLU+77sg51wrzjO1vG3T/1lQHWX6olvED5GMA=;
        b=k4EldhEVOBdEn90WMIhAsm8Va1vVCNAiYctjA0/7SsT+Aoy+aFyooGyITJeuzyZEIl
         8AOGMW0/WCrXQQVQ33c8J6CompsSovdN4HNjag/aMCLOe5YkqaD0+AoZTgc54fLbGGcV
         iFGPzCVs1igeyOu6TXDzEXem/uX0gQrw6OSS2FaxgiHlgf1qMwVGScVhtbFDzteNJLfL
         u8scJZ7M7GbCOg9hsS5thSVSOFZYiFol1gnhE3LM5a/nkG+Zj5OtRy3w+ZpglVBCCIub
         ADHjgKjbKjDdW9ylGii76Scwgl310Rn84xEFI/r2MZJQ0i0u4pXxTEcXGyNjpLiOxoAA
         bzdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784891761; x=1785496561;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=7h17JbhLU+77sg51wrzjO1vG3T/1lQHWX6olvED5GMA=;
        b=tUYQtRCjzRN8u6BFiiNg4W4ST5WeI6/IrD5qi2E9qVvu3SDWmxM58KVZG22jCtLQaV
         aac6UtIVFvwEmAHyvBC5g9N8HRdOxNyrxLdKLcE9WMHq5fU0ZKQZnGBTqX1tH+OoHMAX
         UwDRq2bVN1433+GVDP8TRBmhTPcPMcE1u6wk7ehYpefcJ1LXAeX3mKKVs068FweG3Q2L
         GxHNnlRp8OgcN+K/DnSXjs6l5WaAWafoHvQ9oYRfyOORsz148HOCYqCKPxj7YCG5YDIz
         7jis489iy1KcwDelQohaWFwiL607FOJJJQ8eg0L4U6dDicrYAH+fDgf5rgGEk4mHWCjc
         lw8w==
X-Forwarded-Encrypted: i=1; AHgh+RpZOZnc6juCL6fKu+6Q0j3u0i1bftjkQ8xVyiIlgb9bfaVfYO6RedibLb2Rey5hYrrzUi/d7DU/nTC6RfYAqw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxyPpV2gAy3RVClI7QIpMEK0yCykPopynIYqWYb2E2yvyVcExMa
	aHjImzJOPR01oobg36cRv7EiBqcizXZRHx4u8PJCGCKzPCxGTCTr9sIa
X-Gm-Gg: AR+sD11HCskwuu6GWAETlLsKTPRML09tL5QKrJJbZwf2fHEFkEopSOzW8x5cbwtMxL+
	cUNUGaSGPK8Z6nJbJxPNxvAOYqOBF5rEm8TfEaGlKrnZahh4YPVVCB+Yi1hv/UhAFU0QHd2Dvdl
	FW9UjJ70neTZOGRzI8igmv3qXA0gMDs55Hr/Ee8VbhDwWmwGqeFk0z4kez1YCsjqmaH3ATI8SiV
	6E+5Elq+19qVq1IPcdTyYTeuHkbQrFdo+jQE7e0O0qiTIeR7uV5Z5N15cJlVOGFfXigx1ewRL6b
	jIn97nUizoL7cLz3sDhJZKXCA1C1XtHRw3I2F+b+bZCrnNjOqYfQzFi+y0C2b2Qt75DQ1LzIssi
	L/r5VZZ/IEnTika1TmZYaJZ6gep2NhnbhyNaA6PGocCCN+GQbAtnmjjvR6D+iRxsLABjjFVsYUm
	fFld54OhSYZec+uSUiQd/zu7P8RKLpqWl0KT94RmEDlQcffRMRub8s4afFyCVc
X-Received: by 2002:a17:90b:4c8c:b0:38e:47e0:3ddd with SMTP id 98e67ed59e1d1-38ec65da07emr7051136a91.34.1784891761291;
        Fri, 24 Jul 2026 04:16:01 -0700 (PDT)
Received: from debian-rockchip-rock5b-rk3588.. ([49.228.106.246])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-38f03c4580csm1316850a91.15.2026.07.24.04.15.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jul 2026 04:16:00 -0700 (PDT)
From: Tharit Tangkijwanichakul <tharitt97@gmail.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
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
	Tharit Tangkijwanichakul <tharitt97@gmail.com>
Subject: [PATCH] media: hantro: release runtime resources when device_run fails
Date: Fri, 24 Jul 2026 11:15:48 +0000
Message-ID: <20260724111548.2109-1-tharitt97@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260724_041602_390408_A4C9704A 
X-CRM114-Status: GOOD (  12.21  )
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

Add separate error paths to release the resources acquired by
device_run(). Disable the clocks when the codec run callback fails, and
drop the runtime PM reference when either clock enabling or the codec
run callback fails.

Fixes: 775fec69008d ("media: add Rockchip VPU JPEG encoder driver")
Signed-off-by: Tharit Tangkijwanichakul <tharitt97@gmail.com>
---
Tested on a Rockchip RK3588 (Rock 5B) board with Fluster:
  H.264 (JVT-AVC_V1):	     129/135, unchanged
  MPEG-2 (MPEG2_VIDEO-MAIN): 23/43, unchanged
  VP8 (VP8-TEST-VECTORS):    61/61, unchanged

 drivers/media/platform/verisilicon/hantro_drv.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index 2e81877f640f..9daaf129211d 100644
--- a/drivers/media/platform/verisilicon/hantro_drv.c
+++ b/drivers/media/platform/verisilicon/hantro_drv.c
@@ -170,6 +170,7 @@ void hantro_end_prepare_run(struct hantro_ctx *ctx)
 static void device_run(void *priv)
 {
 	struct hantro_ctx *ctx = priv;
+	struct hantro_dev *vpu = ctx->dev;
 	struct vb2_v4l2_buffer *src, *dst;
 	int ret;
 
@@ -178,11 +179,11 @@ static void device_run(void *priv)
 
 	ret = pm_runtime_resume_and_get(ctx->dev->dev);
 	if (ret < 0)
-		goto err_cancel_job;
+		goto err_disable_clock;
 
 	ret = clk_bulk_enable(ctx->dev->variant->num_clocks, ctx->dev->clocks);
 	if (ret)
-		goto err_cancel_job;
+		goto err_pm_put_autosuspend;
 
 	v4l2_m2m_buf_copy_metadata(src, dst);
 
@@ -191,8 +192,12 @@ static void device_run(void *priv)
 
 	return;
 
+err_disable_clock:
+	clk_bulk_disable(vpu->variant->num_clocks, ctx->dev->clocks);
+err_pm_put_autosuspend:
+	pm_runtime_put_autosuspend(vpu->dev);
 err_cancel_job:
-	hantro_job_finish_no_pm(ctx->dev, ctx, VB2_BUF_STATE_ERROR);
+	hantro_job_finish_no_pm(vpu, ctx, VB2_BUF_STATE_ERROR);
 }
 
 static const struct v4l2_m2m_ops vpu_m2m_ops = {

base-commit: dc59e4fea9d83f03bad6bddf3fa2e52491777482
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
