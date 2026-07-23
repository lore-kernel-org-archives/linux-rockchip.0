Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB6CEC531D1
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jul 2026 15:37:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H/EURb+93CELsVd5gDDb8BBwCthzJLnt10l4PJKs6pk=; b=1zBS1oWdKosZrx
	2yDFE6tPmQW0RRuJfcAuR+QkbAGTiYKoNUlpyy41aacM+kAcg6cKsDPM27kHGJprHLPoIJoUkiVyp
	hSqu8e0GZrUWCvgOzD0jxVAIgUT9yxeG4336SWIK4AwsgJ3RhQwiKNFDDumnpQK6VJd7fPO0YC3Mj
	oDYeV2eGGjGOLQM5IiQhySzOfkupqAFpuaLCKiarcqw4Ueo1naL+mXiYw/lFndeJlslJXcIUliD6L
	18gfvj57Dvhi2b/ARZHqUPaVIL12n36OzXpRqzAhGUuLUMBCaEo7hpsmcgBNNKznY2S1RoZLnxiEZ
	Y+gig1jgo+d4EPR+I0xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmvTw-0000000EcLY-2lso;
	Thu, 23 Jul 2026 15:37:08 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmvTu-0000000EcL8-32OI
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Jul 2026 15:37:07 +0000
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-848595b338cso878292b3a.0
        for <linux-rockchip@lists.infradead.org>; Thu, 23 Jul 2026 08:37:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784821025; x=1785425825; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=y/CrixQ3EkxP2WoSCLt7vnc1mcHljZIG3GR5HRF0Syc=;
        b=ae9/kxl+JMOSisX7nU8fA20ECuf8rrBQI9egb4kgaStNqZYkv/H7QPcli2VerUvM8W
         PQZImL22nDqzrU1tYt1JxnZHS/YpGlpV5N+b3jmNN6dwiOfQI4fL0dtUACSIDNVi511y
         +hbBl2sCTjjjPxT69ZpTJxjqB0190SfsoaYpgZJb2tRw6kIp68yslp+/EGHwg9uEp5kj
         ItYyfcWtQUBGUxdfffoGZOpAln5zf9N5wGF0PHMWeJ7EzAmO3XCPTE31vwOSNXV1iYhW
         EH3kjW2JTyRR/jFS+DA5cwCDJ6O3jTMYreojm1RiyZVjTshLR+meDpAOBHaPYijsifXN
         ksUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784821025; x=1785425825;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=y/CrixQ3EkxP2WoSCLt7vnc1mcHljZIG3GR5HRF0Syc=;
        b=Hh5MLGHaxLX9ZCU+49c9F4EUiqp27YgKBmSF8hKJRdZOqTQDoZTr4NHg4D3Lps+BKh
         fTGw6CHhwQfEoyy/QXxRPTXVJesFv2SeOiB6Bf8yjJyhpSTyi3dQWu7iRVEyB7TrFfdm
         gRupP9Ey3R4d2RE6yhLXnYjGLxW82+97iVmiOvoD2ZqVksjgQelYe2bbYIwNeOLCfpmV
         fz7UFUjCqtxeXH6HT+RTmaEja0+dDpnRsSz/xRfLVv7tddU4LELHWd8JeuQc7e8BJ78r
         2i/EJscvDOsDWpj0bLwAfei6uA1/Cv/g15xi5Com2oJHxpzKzYD0aix3pRxjhJSeAbVY
         g20A==
X-Forwarded-Encrypted: i=1; AHgh+RrPgI/N/aF9/qEVkdScve/vJYGaqoj1sMakvWCwKYPLn4KkNxPf6+JHHxDH3rfgzQ+pyyKviziVlcmxfajN7A==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw91BEo5gDCcROpuGioghLiAyPW9YSYAcMgqnOpXzFYo+T+MRym
	0hlB6hGMhGe4XSQkBHYilxSRpO3YAkICEYHV4fR61W0LmGkXnFDG0RNV
X-Gm-Gg: AR+sD11tFqOCZczDy0ICYzh/cBLMHsqQyFUrfUczZfjV4HsHXdsqeqEcQImgin24Q8c
	6E+pxjqemrokiyB7NirGHtujfOAGh/fu8kq6kVFz29wq5JmfTiQqrQh3LRST12YgnVwr+H51ho0
	6qPR+EokIGIIREFxF3jCK2uOq1Y6dLmSY36SKgHOnaiz6+xTHrJ2LP7TqS/xcYwhKXcOGi1vIRz
	nIrhgbRWLDA2u9aa8auxuhE6/hy7Fy5hvue+hDn6A0XuN3iqcLPQEwKj7ZTP9INXRI12qCrKsuy
	+5QMhml3HNV9adw1LFWudK2u4vrkUltupjtbuvMZDWXIU9ngveohaRgC018wA7KAejWoo4tpbkm
	Ztl20gCRQG2E024Em7jjTlZGDSSsaEzPFUAFxHJl50Naf4twXDYNzon/SBuZt/FIdnfJr1kML4T
	OCp1njDPAN6fwmfgP9wZ3Gh0TXc4HMBmXIr62nA2BS/NAJhwGBt+DzW3eKp4RG
X-Received: by 2002:a05:6a00:181d:b0:84c:4d9a:ae42 with SMTP id d2e1a72fcca58-84e2b8bf838mr4448206b3a.27.1784821024558;
        Thu, 23 Jul 2026 08:37:04 -0700 (PDT)
Received: from debian-rockchip-rock5b-rk3588.. ([184.22.136.124])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84e1723643esm3212522b3a.3.2026.07.23.08.37.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jul 2026 08:37:04 -0700 (PDT)
From: Tharit Tangkijwanichakul <tharitt97@gmail.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: linux-kernel-mentees@lists.linux.dev,
	skhan@linuxfoundation.org,
	me@brighamcamplbell.com,
	jkoolstra@xs4all.nl,
	Tharit Tangkijwanichakul <tharitt97@gmail.com>
Subject: [PATCH] media: verisilicon: vp9: do not arm watchdog on preparation failure
Date: Thu, 23 Jul 2026 15:36:56 +0000
Message-ID: <20260723153656.2167-1-tharitt97@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260723_083706_781865_5C95B046 
X-CRM114-Status: GOOD (  13.95  )
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

hantro_g2_vp9_dec_run() calls hantro_end_prepare_run() when
start_prepare_run() fails to find one of the required VP9 controls.

hantro_end_prepare_run() completes the control request, but also schedules
the hardware watchdog. Since the decode operation has not been started on
this error path, the watchdog should not be scheduled.

Factor the control-request completion out of hantro_end_prepare_run() and
call it directly from the VP9 preparation error path. This preserves the
pairing with hantro_start_prepare_run() without scheduling the watchdog.

Signed-off-by: Tharit Tangkijwanichakul <tharitt97@gmail.com>
---
Testing:

- Built with the Verisilicon Hantro driver enabled.
- Not runtime-tested: the available RK3588 board does not expose a Hantro
  G2 VP9 decoder.

 drivers/media/platform/verisilicon/hantro_drv.c    | 13 +++++++++----
 .../media/platform/verisilicon/hantro_g2_vp9_dec.c | 14 +++++++++-----
 drivers/media/platform/verisilicon/hantro_hw.h     |  1 +
 3 files changed, 19 insertions(+), 9 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index 2e81877f640f..04167e4be003 100644
--- a/drivers/media/platform/verisilicon/hantro_drv.c
+++ b/drivers/media/platform/verisilicon/hantro_drv.c
@@ -147,10 +147,17 @@ void hantro_start_prepare_run(struct hantro_ctx *ctx)
 	}
 }
 
-void hantro_end_prepare_run(struct hantro_ctx *ctx)
+void hantro_complete_ctrl_request(struct hantro_ctx *ctx)
 {
 	struct vb2_v4l2_buffer *src_buf;
 
+	src_buf = hantro_get_src_buf(ctx);
+	v4l2_ctrl_request_complete(src_buf->vb2_buf.req_obj.req,
+				   &ctx->ctrl_handler);
+}
+
+void hantro_end_prepare_run(struct hantro_ctx *ctx)
+{
 	if (!ctx->is_encoder && ctx->dev->variant->late_postproc) {
 		if (hantro_needs_postproc(ctx, ctx->vpu_dst_fmt))
 			hantro_postproc_enable(ctx);
@@ -158,9 +165,7 @@ void hantro_end_prepare_run(struct hantro_ctx *ctx)
 			hantro_postproc_disable(ctx);
 	}
 
-	src_buf = hantro_get_src_buf(ctx);
-	v4l2_ctrl_request_complete(src_buf->vb2_buf.req_obj.req,
-				   &ctx->ctrl_handler);
+	hantro_complete_ctrl_request(ctx);
 
 	/* Kick the watchdog. */
 	schedule_delayed_work(&ctx->dev->watchdog_work,
diff --git a/drivers/media/platform/verisilicon/hantro_g2_vp9_dec.c b/drivers/media/platform/verisilicon/hantro_g2_vp9_dec.c
index 56c79e339030..e08db6e3f6f9 100644
--- a/drivers/media/platform/verisilicon/hantro_g2_vp9_dec.c
+++ b/drivers/media/platform/verisilicon/hantro_g2_vp9_dec.c
@@ -36,12 +36,14 @@ static int start_prepare_run(struct hantro_ctx *ctx, const struct v4l2_ctrl_vp9_
 
 	ctrl = v4l2_ctrl_find(&ctx->ctrl_handler, V4L2_CID_STATELESS_VP9_FRAME);
 	if (WARN_ON(!ctrl))
-		return -EINVAL;
+		goto err_complete_request;
+
 	*dec_params = ctrl->p_cur.p;
 
 	ctrl = v4l2_ctrl_find(&ctx->ctrl_handler, V4L2_CID_STATELESS_VP9_COMPRESSED_HDR);
 	if (WARN_ON(!ctrl))
-		return -EINVAL;
+		goto err_complete_request;
+
 	prob_updates = ctrl->p_cur.p;
 	vp9_ctx->cur.tx_mode = prob_updates->tx_mode;
 
@@ -86,6 +88,10 @@ static int start_prepare_run(struct hantro_ctx *ctx, const struct v4l2_ctrl_vp9_
 	v4l2_vp9_fw_update_probs(&vp9_ctx->probability_tables, prob_updates, *dec_params);
 
 	return 0;
+
+err_complete_request:
+	hantro_complete_ctrl_request(ctx);
+	return -EINVAL;
 }
 
 static struct hantro_decoded_buffer *
@@ -894,10 +900,8 @@ int hantro_g2_vp9_dec_run(struct hantro_ctx *ctx)
 	int ret;
 
 	ret = start_prepare_run(ctx, &decode_params);
-	if (ret) {
-		hantro_end_prepare_run(ctx);
+	if (ret)
 		return ret;
-	}
 
 	src = hantro_get_src_buf(ctx);
 	dst = hantro_get_dst_buf(ctx);
diff --git a/drivers/media/platform/verisilicon/hantro_hw.h b/drivers/media/platform/verisilicon/hantro_hw.h
index 13e573f1f19d..9d4e858f17c7 100644
--- a/drivers/media/platform/verisilicon/hantro_hw.h
+++ b/drivers/media/platform/verisilicon/hantro_hw.h
@@ -430,6 +430,7 @@ void hantro_watchdog(struct work_struct *work);
 void hantro_irq_done(struct hantro_dev *vpu,
 		     enum vb2_buffer_state result);
 void hantro_start_prepare_run(struct hantro_ctx *ctx);
+void hantro_complete_ctrl_request(struct hantro_ctx *ctx);
 void hantro_end_prepare_run(struct hantro_ctx *ctx);
 
 irqreturn_t hantro_g1_irq(int irq, void *dev_id);

base-commit: dc59e4fea9d83f03bad6bddf3fa2e52491777482
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
