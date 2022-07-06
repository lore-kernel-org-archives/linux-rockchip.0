Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71DF8C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jul 2022 18:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YyQQDQMzRbn1cjOLJ0bin0XYAf9bhB31pxde2lfHdII=; b=ePh8v3mZorw6AK
	MxO1FNFGZpkGtlVAfQpBZR9MqkcJoQRWpaPcIt5PE46OHuzSKRAI/1uD8Hv+e9hIwRQ7D3/NU1zN+
	9ypA6tH2sfc+jWj18R/smddGeTE/neVLrC8mnrgCRdEjNio0g23adA9nDXaltJ87bMDHDjIHIuc3R
	2N1TWTZtKpkHgesW+QpDVkkqnThrCPChOEay3gu4uiS9jTzQhnElo7g+WDLeUkI0BFuHL94cocGzz
	2r1n2P42MgGZZA9YNv0nOd3BCAp0pIGtuWTwDtSNJvwVaKiaaO2LVS2wpjWAb3eZ8ONCadVzjdNW8
	JhrcUOi4+mW/CW0kLXYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o99mq-00BxIs-Is; Wed, 06 Jul 2022 18:30:08 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o99m3-00Bwua-Jz; Wed, 06 Jul 2022 18:29:20 +0000
Received: by mail-wr1-x435.google.com with SMTP id b26so23249310wrc.2;
        Wed, 06 Jul 2022 11:29:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=aRhpgcalr07YkEQC06e4quRgCbSsA86eLkAqCnDRLp8=;
        b=pcydag+pErwwrdcsmjf+nFIVxjSqKs3nSu05sEc+DitNQRoW43UAfrWUOvZR5eJbGU
         XiE5mJ2bYJ+uqPX+b6HKuNlkKSZ8SzLTaugHjQgkcOmwONArnOB0T8++e71Lti63s8Nt
         NMO95ub8vty+cf7GwftldTDIx+6zgB9/9LC92KBVy/UVMlYotWQBrlAbC70r15BU9oSM
         sYfr+n9/93qVCTRXS1I7tbqY2SaacHWmGwYnmm51IqDpuZHDCiw+8dFoekXyiinSQMES
         Lp1IEXFlwhXbJEHpKVbM1Y2LAYKKVuTxdP+C/lBxjgRZrDfnEat17Qzxq7G4Ghwl7FUn
         3sVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=aRhpgcalr07YkEQC06e4quRgCbSsA86eLkAqCnDRLp8=;
        b=qUmlgbZYXbGKSEqmctTlr876luSdJKE1G3cxzIUGT/Ap5M4ljy3X91U/dqb71nvbEQ
         sIghXvMP/F5gcIdR9uHC8n72gm+qpMNtot1FVeP6ilhvl85V3i9Wu5K0ZrU01nsYnfMs
         3m8pKms/Hg9XfmWflkx4azLStqZxjkGe3hiv/uWKldSb7jP8NB6qYvl6FMSNJIuaWGgU
         Xn3brh5wQAaiTm/4TPW4GFwPwhJIAgnkGGeM2wLy0sdLnZR0znEngie7vgSariulNqM6
         o38S+iBKkX5lYth8NIsFTjmiylsnUtbwtdgs7vkmX+H0TR/ad47E5jBlFN6Y26BbP69d
         w0Ew==
X-Gm-Message-State: AJIora9p/A2lYX82oAsxvLjMi1XxvV1oHW5AQgtST9zPIUnNVbztTMrK
	/bmwJLpWR/FfATTGIihxGIM=
X-Google-Smtp-Source: AGRyM1vqDJph0zXaYU+mKDtrGOKYY+x7Ui4yKgelPc1/miuilxQ3TdUsAbj7Z1VEKJsMxiRYhuCZ9w==
X-Received: by 2002:adf:dd82:0:b0:21d:62e3:a51 with SMTP id x2-20020adfdd82000000b0021d62e30a51mr21961682wrl.324.1657132159236;
        Wed, 06 Jul 2022 11:29:19 -0700 (PDT)
Received: from kista.localdomain (213-161-3-76.dynamic.telemach.net. [213.161.3.76])
        by smtp.gmail.com with ESMTPSA id r15-20020a0560001b8f00b0021d74906683sm5142406wru.28.2022.07.06.11.29.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 11:29:18 -0700 (PDT)
From: Jernej Skrabec <jernej.skrabec@gmail.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de
Cc: mchehab@kernel.org,
	hverkuil-cisco@xs4all.nl,
	benjamin.gaignard@collabora.com,
	nicolas.dufresne@collabora.com,
	gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	linux-staging@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Jernej Skrabec <jernej.skrabec@gmail.com>
Subject: [PATCH v3 6/7] media: hantro: Store VP9 bit depth in context
Date: Wed,  6 Jul 2022 20:29:00 +0200
Message-Id: <20220706182901.78949-7-jernej.skrabec@gmail.com>
X-Mailer: git-send-email 2.37.0
In-Reply-To: <20220706182901.78949-1-jernej.skrabec@gmail.com>
References: <20220706182901.78949-1-jernej.skrabec@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_112919_680037_420DE47C 
X-CRM114-Status: GOOD (  11.74  )
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

Now that we have proper infrastructure for postprocessing 10-bit
formats, store VP9 bit depth in context.

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Tested-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
---
 drivers/staging/media/hantro/hantro_drv.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index 01d33dcb0467..afddf7ac0731 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -324,6 +324,24 @@ static int hantro_hevc_s_ctrl(struct v4l2_ctrl *ctrl)
 	return 0;
 }
 
+static int hantro_vp9_s_ctrl(struct v4l2_ctrl *ctrl)
+{
+	struct hantro_ctx *ctx;
+
+	ctx = container_of(ctrl->handler,
+			   struct hantro_ctx, ctrl_handler);
+
+	switch (ctrl->id) {
+	case V4L2_CID_STATELESS_VP9_FRAME:
+		ctx->bit_depth = ctrl->p_new.p_vp9_frame->bit_depth;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 static const struct v4l2_ctrl_ops hantro_ctrl_ops = {
 	.try_ctrl = hantro_try_ctrl,
 };
@@ -336,6 +354,10 @@ static const struct v4l2_ctrl_ops hantro_hevc_ctrl_ops = {
 	.s_ctrl = hantro_hevc_s_ctrl,
 };
 
+static const struct v4l2_ctrl_ops hantro_vp9_ctrl_ops = {
+	.s_ctrl = hantro_vp9_s_ctrl,
+};
+
 #define HANTRO_JPEG_ACTIVE_MARKERS	(V4L2_JPEG_ACTIVE_MARKER_APP0 | \
 					 V4L2_JPEG_ACTIVE_MARKER_COM | \
 					 V4L2_JPEG_ACTIVE_MARKER_DQT | \
@@ -503,6 +525,7 @@ static const struct hantro_ctrl controls[] = {
 		.codec = HANTRO_VP9_DECODER,
 		.cfg = {
 			.id = V4L2_CID_STATELESS_VP9_FRAME,
+			.ops = &hantro_vp9_ctrl_ops,
 		},
 	}, {
 		.codec = HANTRO_VP9_DECODER,
-- 
2.37.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
