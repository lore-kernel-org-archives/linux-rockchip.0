Return-Path: <SRS0=p+QF=O4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 239D4C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Oct 2021 10:06:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DFF8960F5B
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Oct 2021 10:06:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org DFF8960F5B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TPPo4b4lqVhKceNGY5XU/acX+39Xoh4GVqseyVTHfr0=; b=JA9vygMB4EI9+m
	X/IomWwAveej9Q+ybflCHvrfiWsW6qa+dEyfNtKIdmMBfPbrsOXJHXLEnYe5SczE1li26TKE0o5ri
	Qvnea/GRgbYJIeLBWkcDbzlQDNiE9ZFl2etE1UsFh0QHqHTCyEhGEDjKTfiJBtxKs/8JtamlqzwxL
	fH3QQJ1GYceO4+enG76flSOnZHd9cVXARlEXuv15YeCUepWTcdsW/QmC8n/+gHo7KuEBbAuUT7lky
	YH+PkqIetpNxwn+rKz3kNCi78XNOJCpna0cFJdfMIGCSL4I8ygFwvz/o4SETIAuF4KJIzkQ7CQTfD
	fYcOKhZe25afhnH5BM9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mYmlc-002KUz-09; Fri, 08 Oct 2021 10:06:16 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mYmlY-002KRV-CL
 for linux-rockchip@lists.infradead.org; Fri, 08 Oct 2021 10:06:14 +0000
Received: by mail-pf1-x433.google.com with SMTP id 145so7762264pfz.11
 for <linux-rockchip@lists.infradead.org>; Fri, 08 Oct 2021 03:06:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0tE+OjKJHdX0YaSq/SP0LPgcFSSGhc57aktXdnN08Jk=;
 b=gOYHix4WHmVCBUetpODWqRHCtKw2zkRnlOzILi/AukbRmbFzIF1A3ycyJH5Uic3j49
 /kAhOSbW2sTpnedQcMvZ5FWgr/YAuVFNZuMd12Z5tSVWB+vGT1a5SazFy1uhjMuCZP4h
 d37OVXxIsaoh1xvhKMJvG9b2iq4QG4qjX47Ec=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0tE+OjKJHdX0YaSq/SP0LPgcFSSGhc57aktXdnN08Jk=;
 b=IBd1P31+Zq+xUlr8ncvzHPVXqWV7zdsdUYMCdvxNDPuK90NLIPH1nBDZ+01egGBBa+
 fXZbu+fEwYZdvJ9yNgnD7QOnYTkc2ZFNanY0e+I3iBdWFlAvX2t/k2iXPwwFzAZm7ZaF
 Tj5aRXEXKM5AN3SfVvEDb3FUmLUjhWEuNUN/HEKbDE5AjshrTHEgyG0snyJhRMrdHnNA
 MZFXGMqKFGhGgP4cBxEUX1OjQsqlbjeHqUkEhbqPj2jVUAkmrdOWUXFT9UT5/eVLbOyY
 4xp+cDPAazhORl70flLwhUhe57lBqvIm0UBzyMA9SloY7xg4thV/o4cSidY5JNSnNPt0
 xivg==
X-Gm-Message-State: AOAM5331IOXb+F4IapE6bvEmttVm8w9aQ/aH5ADo2XtZ13xWUWFVlNs1
 7LGVU3e/zepxKB1mCE4z2dMPcg==
X-Google-Smtp-Source: ABdhPJzc7HT14HLpHSLUpV1/gyAWAvzuj5fhMf9NUQpi8wdgeaB/B5vf3GAOwmoRaa36zy9hWqZPcA==
X-Received: by 2002:a63:d34f:: with SMTP id u15mr3879802pgi.200.1633687571528; 
 Fri, 08 Oct 2021 03:06:11 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com
 ([2401:fa00:1:10:ad8d:f936:2048:d735])
 by smtp.gmail.com with ESMTPSA id a7sm2082255pfn.150.2021.10.08.03.06.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Oct 2021 03:06:11 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>, stable@vger.kernel.org
Subject: [PATCH 2/2] media: rkvdec: Support dynamic resolution changes
Date: Fri,  8 Oct 2021 18:04:23 +0800
Message-Id: <20211008100423.739462-3-wenst@chromium.org>
X-Mailer: git-send-email 2.33.0.882.g93a45727a2-goog
In-Reply-To: <20211008100423.739462-1-wenst@chromium.org>
References: <20211008100423.739462-1-wenst@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211008_030612_437274_20ECD511 
X-CRM114-Status: GOOD (  16.44  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The mem-to-mem stateless decoder API specifies support for dynamic
resolution changes. In particular, the decoder should accept format
changes on the OUTPUT queue even when buffers have been allocated,
as long as it is not streaming.

Relax restrictions for S_FMT as described in the previous paragraph,
and as long as the codec format remains the same. This aligns it with
the Hantro and Cedrus decoders. This change was mostly based on commit
ae02d49493b5 ("media: hantro: Fix s_fmt for dynamic resolution changes").

Since rkvdec_s_fmt() is now just a wrapper around the output/capture
variants without any additional shared functionality, drop the wrapper
and call the respective functions directly.

Fixes: cd33c830448b ("media: rkvdec: Add the rkvdec driver")
Cc: <stable@vger.kernel.org>
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 drivers/staging/media/rkvdec/rkvdec.c | 40 +++++++++++++--------------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index 7131156c1f2c..3f3f96488d74 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -280,31 +280,20 @@ static int rkvdec_try_output_fmt(struct file *file, void *priv,
 	return 0;
 }
 
-static int rkvdec_s_fmt(struct file *file, void *priv,
-			struct v4l2_format *f,
-			int (*try_fmt)(struct file *, void *,
-				       struct v4l2_format *))
+static int rkvdec_s_capture_fmt(struct file *file, void *priv,
+				struct v4l2_format *f)
 {
 	struct rkvdec_ctx *ctx = fh_to_rkvdec_ctx(priv);
 	struct vb2_queue *vq;
+	int ret;
 
-	if (!try_fmt)
-		return -EINVAL;
-
-	vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
+	/* Change not allowed if queue is busy */
+	vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx,
+			     V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
 	if (vb2_is_busy(vq))
 		return -EBUSY;
 
-	return try_fmt(file, priv, f);
-}
-
-static int rkvdec_s_capture_fmt(struct file *file, void *priv,
-				struct v4l2_format *f)
-{
-	struct rkvdec_ctx *ctx = fh_to_rkvdec_ctx(priv);
-	int ret;
-
-	ret = rkvdec_s_fmt(file, priv, f, rkvdec_try_capture_fmt);
+	ret = rkvdec_try_capture_fmt(file, priv, f);
 	if (ret)
 		return ret;
 
@@ -319,9 +308,20 @@ static int rkvdec_s_output_fmt(struct file *file, void *priv,
 	struct v4l2_m2m_ctx *m2m_ctx = ctx->fh.m2m_ctx;
 	const struct rkvdec_coded_fmt_desc *desc;
 	struct v4l2_format *cap_fmt;
-	struct vb2_queue *peer_vq;
+	struct vb2_queue *peer_vq, *vq;
 	int ret;
 
+	/*
+	 * In order to support dynamic resolution change, the decoder admits
+	 * a resolution change, as long as the pixelformat remains. Can't be
+	 * done if streaming.
+	 */
+	vq = v4l2_m2m_get_vq(m2m_ctx, V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE);
+	if (vb2_is_streaming(vq) ||
+	    (vb2_is_busy(vq) &&
+	     f->fmt.pix_mp.pixelformat != ctx->coded_fmt.fmt.pix_mp.pixelformat))
+		return -EBUSY;
+
 	/*
 	 * Since format change on the OUTPUT queue will reset the CAPTURE
 	 * queue, we can't allow doing so when the CAPTURE queue has buffers
@@ -331,7 +331,7 @@ static int rkvdec_s_output_fmt(struct file *file, void *priv,
 	if (vb2_is_busy(peer_vq))
 		return -EBUSY;
 
-	ret = rkvdec_s_fmt(file, priv, f, rkvdec_try_output_fmt);
+	ret = rkvdec_try_output_fmt(file, priv, f);
 	if (ret)
 		return ret;
 
-- 
2.33.0.882.g93a45727a2-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
