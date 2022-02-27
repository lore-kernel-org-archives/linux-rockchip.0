Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E13CEC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Feb 2022 14:51:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QUnAtQgj7QA5Zu3md/DYTn7l8o0wkD6eZa3g5jysOC8=; b=tUNiYJf39gBmxk
	vK6paQ1mk3Z8I2sudr6lhIZHHcrKWuz8Ddp2qz5SzXeskTwHib3Xz+kqmEX7OSXaz1BanXE+fPAH0
	/MWvVsoFzjCIKUyITqikte8sdliXzyuWPEgkLD3KDr1mdp6S+O56jLZym/xLkcfyt/cXPFRHez4pn
	ihpMii08/BipUBBRbLieSFpfOukU2iqdE3UvKe7Ld5ygbxk0lfhl+ZUsRm8zGgxBs3pCJJT5iDc1n
	XJgBUGwv63d6usWCyWSaVIBY8zBpo1zpYDCxW9QRBK4+/Oj48OCzkuXSc5bcwQMe2hcq/kujh0OeM
	OvE7zEhaWzNez3joSOQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOKtH-009UfW-VN; Sun, 27 Feb 2022 14:51:16 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOKsd-009UGW-CZ; Sun, 27 Feb 2022 14:50:37 +0000
Received: by mail-ej1-x634.google.com with SMTP id qk11so20106979ejb.2;
 Sun, 27 Feb 2022 06:50:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=s8aw+CVJhbPdtKJ/NAqmQwDMpbWRqHJhFsfgMUPvA3s=;
 b=ZBLgtAq/fKqU6MUfgFta33PAUJZCPtqDXaxgjx//ZMHxknKd49GqYoSCksucKePkDr
 mfK0U/GB9BFvAXkttisbzMW0HcftXUglKgRGms55jgQXt39QwaTQRwjTyeh7BsvM1miq
 q/fSUttom0AQfj2XntgWtSF74LeWeVpkSG5ARpPt670rOhFKNyixOnMrr75DGdE3/Fbh
 PdBMRxkJFmWx/NU/jdZi2nG4RBpVVN9z1vD00qhl2b1TNIw5xo8yEuJfb/NbUx2hiV4X
 dmiwaYZM7RDY9mhhEembjTyF2yOc9lYDhM4XrhX9Qh0KbPn6hD5X1it9GfRw814b6ctU
 E0Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=s8aw+CVJhbPdtKJ/NAqmQwDMpbWRqHJhFsfgMUPvA3s=;
 b=V+A7gln2cHIa6aZF7BezqqF/DzMS2ukaGi+TSb1c45m+c55vKI2vKSQJ7wX2jPBUtL
 5GkZCdwv5LHvy2Us2PcA1K0M3V1VKmKtqRICGczinmtiQo3KK9XT1R2T31+hzeZ9oP8s
 wYFfw+jJVHlNtweslZSZBJaDUmG7gD0+mAmxioNPptohNopNNTQbUj1rQplSwDjqHed7
 gTE5TLYOkOMC/UzJtt/RndHRY6JZ8AaH+iCncM8mpSyL/Vl1CrnxBe8LiNdp4KJJUeD5
 oJZOZTZ1JnF+z0vpehYFlnEIxS+LzDDLUUR0aDLpQSClJiHWC/4q0xFhoXVp3vCcu3G+
 sEDw==
X-Gm-Message-State: AOAM532WYDEuvgoBrpDWqdgpJjLAy278r9vRz7YzLRTytfDEEP7F2m7Z
 CN7NEa6XRj8C7hi1OmMLTQs=
X-Google-Smtp-Source: ABdhPJwJj07ONhhuMWXyHUXJvedtR6OfuCrdqZCSxd+tPU4hIGiprZ+jf5YCICbZwsJDHDbZaU8NcA==
X-Received: by 2002:a17:906:30d1:b0:6cf:c116:c9d3 with SMTP id
 b17-20020a17090630d100b006cfc116c9d3mr11689773ejb.245.1645973433800; 
 Sun, 27 Feb 2022 06:50:33 -0800 (PST)
Received: from kista.localdomain (cpe-86-58-32-107.static.triera.net.
 [86.58.32.107]) by smtp.gmail.com with ESMTPSA id
 a1-20020a1709063e8100b006ce06ed8aa7sm3501887ejj.142.2022.02.27.06.50.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Feb 2022 06:50:33 -0800 (PST)
From: Jernej Skrabec <jernej.skrabec@gmail.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de
Cc: mchehab@kernel.org, nicolas@ndufresne.ca, hverkuil-cisco@xs4all.nl,
 gregkh@linuxfoundation.org, wens@csie.org, samuel@sholland.org,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 Jernej Skrabec <jernej.skrabec@gmail.com>
Subject: [RFC PATCH 4/8] media: hantro: postproc: Fix buffer size calculation
Date: Sun, 27 Feb 2022 15:49:22 +0100
Message-Id: <20220227144926.3006585-5-jernej.skrabec@gmail.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220227144926.3006585-1-jernej.skrabec@gmail.com>
References: <20220227144926.3006585-1-jernej.skrabec@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220227_065035_476444_9B6835F9 
X-CRM114-Status: GOOD (  16.73  )
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

When allocating aux buffers for postprocessing, it's assumed that base
buffer size is the same as that of output. Coincidentally, that's true
most of the time, but not always. 10-bit source also needs aux buffer
size which is appropriate for 10-bit native format, even if the output
format is 8-bit. Similarly, mv sizes and other extra buffer size also
depends on source width/height, not destination.

Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
---
 .../staging/media/hantro/hantro_postproc.c    | 24 +++++++++++++------
 drivers/staging/media/hantro/hantro_v4l2.c    |  2 +-
 drivers/staging/media/hantro/hantro_v4l2.h    |  2 ++
 3 files changed, 20 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_postproc.c b/drivers/staging/media/hantro/hantro_postproc.c
index 248abe5423f0..1a76628d5754 100644
--- a/drivers/staging/media/hantro/hantro_postproc.c
+++ b/drivers/staging/media/hantro/hantro_postproc.c
@@ -12,6 +12,7 @@
 #include "hantro_hw.h"
 #include "hantro_g1_regs.h"
 #include "hantro_g2_regs.h"
+#include "hantro_v4l2.h"
 
 #define HANTRO_PP_REG_WRITE(vpu, reg_name, val) \
 { \
@@ -137,18 +138,27 @@ int hantro_postproc_alloc(struct hantro_ctx *ctx)
 	struct v4l2_m2m_ctx *m2m_ctx = ctx->fh.m2m_ctx;
 	struct vb2_queue *cap_queue = &m2m_ctx->cap_q_ctx.q;
 	unsigned int num_buffers = cap_queue->num_buffers;
+	struct v4l2_pix_format_mplane pix_mp;
+	const struct hantro_fmt *fmt;
 	unsigned int i, buf_size;
 
-	buf_size = ctx->dst_fmt.plane_fmt[0].sizeimage;
+	/* this should always pick native format */
+	fmt = hantro_get_default_fmt(ctx, false);
+	if (!fmt)
+		return -EINVAL;
+	v4l2_fill_pixfmt_mp(&pix_mp, fmt->fourcc, ctx->src_fmt.width,
+			    ctx->src_fmt.height);
+
+	buf_size = pix_mp.plane_fmt[0].sizeimage;
 	if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_H264_SLICE)
-		buf_size += hantro_h264_mv_size(ctx->dst_fmt.width,
-						ctx->dst_fmt.height);
+		buf_size += hantro_h264_mv_size(pix_mp.width,
+						pix_mp.height);
 	else if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_VP9_FRAME)
-		buf_size += hantro_vp9_mv_size(ctx->dst_fmt.width,
-					       ctx->dst_fmt.height);
+		buf_size += hantro_vp9_mv_size(pix_mp.width,
+					       pix_mp.height);
 	else if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_HEVC_SLICE)
-		buf_size += hantro_hevc_mv_size(ctx->dst_fmt.width,
-						ctx->dst_fmt.height);
+		buf_size += hantro_hevc_mv_size(pix_mp.width,
+						pix_mp.height);
 
 	for (i = 0; i < num_buffers; ++i) {
 		struct hantro_aux_buf *priv = &ctx->postproc.dec_q[i];
diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
index 1214fa2f64ae..69d2a108e1e6 100644
--- a/drivers/staging/media/hantro/hantro_v4l2.c
+++ b/drivers/staging/media/hantro/hantro_v4l2.c
@@ -118,7 +118,7 @@ hantro_find_format(const struct hantro_ctx *ctx, u32 fourcc)
 	return NULL;
 }
 
-static const struct hantro_fmt *
+const struct hantro_fmt *
 hantro_get_default_fmt(const struct hantro_ctx *ctx, bool bitstream)
 {
 	const struct hantro_fmt *formats;
diff --git a/drivers/staging/media/hantro/hantro_v4l2.h b/drivers/staging/media/hantro/hantro_v4l2.h
index f4a5905ed518..cc9a645be886 100644
--- a/drivers/staging/media/hantro/hantro_v4l2.h
+++ b/drivers/staging/media/hantro/hantro_v4l2.h
@@ -23,5 +23,7 @@ extern const struct vb2_ops hantro_queue_ops;
 
 void hantro_reset_fmts(struct hantro_ctx *ctx);
 int hantro_get_formath_depth(u32 fourcc);
+const struct hantro_fmt *
+hantro_get_default_fmt(const struct hantro_ctx *ctx, bool bitstream);
 
 #endif /* HANTRO_V4L2_H_ */
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
