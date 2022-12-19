Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0D8DC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Dec 2022 17:27:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pKuJBYE0/Ca02Y4nZxpHjVDV0Ir11syTPTo3rUchdXY=; b=1hpX5/0MfoHRq4
	B3eH09a23Zek8BxxX6FVSz+Awk7bYi5VEP//x41q0IZcRLedADvnnZ+cZSYBoV+8DPLKKOR/5bSLy
	fW+je8vwP1JCGlbOv5WgsTDFZXkGUiS6h83GTRPQ4QxXdjCjpO3La3/Ue1lYlBmeo/AJ+Get2eAWH
	+ew6mZtfNX0nytotVrMG381d7aoZDJupPRGCelvrLeSK2oqW1cMBVg+K60vElh9y7dnt5GUve9fq7
	Z+C6fdlkmMnCJV4vdVkxuMYZKTHdMFR/+ooh0vztmKlCFVnQqq22h1VD4YWFxmnsthZDx2LnWdl8X
	HBeUyu0W4vUIYvQOkWLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7Jv3-00GlJ1-Tm; Mon, 19 Dec 2022 17:27:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7IVL-00FiOC-GQ; Mon, 19 Dec 2022 15:56:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=pbAByURa7pHd26A41MTdZAiDtMeJilsQtip0DarFYgY=; b=fRXHm6B0o3BOc+EFcAERvmgG0M
	MFiJoQwnyPVTUxbzdQyhtnWV2JBg4kauLgJ+USicmql5MijDtWsRXA25OooY8S/Q8SpwmNBbES6+l
	iUPVNUQZnG9yOpG7uUV9aXk5ax2cWiltCN+8K3TGabyAuy8j8Ca3L77V4lX+FoOjXXNUuLntvudjh
	WtLB2pAIAwxKPbJzZvNvxNU0uR+omWwCaT5/qYRpKGiluVIz8QIgHDrkydtQaxJekPxr9C6G9eVFn
	AzocrMU7I8w7JkR5OAHnhohJlylqR7PsXC3+XU3LMGaeTdx+aLZe+GeedVr4VTP3v52wNesDkmjqG
	+6QRIYDQ==;
Received: from madras.collabora.co.uk ([46.235.227.172])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1p7IVG-00Ceb7-2e;
	Mon, 19 Dec 2022 15:56:37 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:f69c:5603:d4ce:7aa2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 017176602CA6;
	Mon, 19 Dec 2022 15:56:25 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1671465386;
	bh=JP0ZOeme9Q4m/y2OT/XWBdUdu+lDTKM4GJ0tmfQWtnU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ejztEOp6yUa75oohHIt4ndHrP2zZinL88kj7yNFS3UwUQkXMIx3/mBX1fXAlM4BfB
	 Ms9DOhMjsyGaQ/EOBm6bpnMqC1sc2VWqHnG2MZTdXdXn7SSHFaSL6zAuY2oXB25w9V
	 9ooIIW2rE7CjjT/j9upbDLRMNMKpXRl18bpuCrS1EwLgJR2cOrs0ojeAnRKpWXP9LU
	 aRaiAZFsYZvaA5NP/NBAp0cLJhHhks4rVFe2LK/c8mhWds7I2JJV8T9nTrP30N48sa
	 MHS9YaHapiiZxTmgQNudgYcjUkvQsWkVzJsb44s8NxEjT+ur6jddvAR9YkU8KCeylQ
	 AbFg7y6dCrKog==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	daniel.almeida@collabora.com,
	nicolas.dufresne@collabora.co.uk
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v1 5/9] media: verisilicon: Compute motion vectors size for AV1 frames
Date: Mon, 19 Dec 2022 16:56:12 +0100
Message-Id: <20221219155616.848690-6-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221219155616.848690-1-benjamin.gaignard@collabora.com>
References: <20221219155616.848690-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221219_155635_060315_D50B59C3 
X-CRM114-Status: GOOD (  12.07  )
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

Compute the additional required to store motion vectors at
the end of the frames buffers.


Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/media/platform/verisilicon/hantro_hw.h      | 13 +++++++++++++
 .../media/platform/verisilicon/hantro_postproc.c    |  3 +++
 drivers/media/platform/verisilicon/hantro_v4l2.c    |  5 +++++
 3 files changed, 21 insertions(+)

diff --git a/drivers/media/platform/verisilicon/hantro_hw.h b/drivers/media/platform/verisilicon/hantro_hw.h
index e83f0c523a30..8b3bc7e31395 100644
--- a/drivers/media/platform/verisilicon/hantro_hw.h
+++ b/drivers/media/platform/verisilicon/hantro_hw.h
@@ -417,6 +417,19 @@ hantro_hevc_mv_size(unsigned int width, unsigned int height)
 	return width * height / 16;
 }
 
+static inline unsigned short hantro_av1_num_sbs(unsigned short dimension)
+{
+	return DIV_ROUND_UP(dimension, 64) + 1;
+}
+
+static inline size_t
+hantro_av1_mv_size(unsigned int width, unsigned int height)
+{
+	size_t num_sbs = hantro_av1_num_sbs(width) * hantro_av1_num_sbs(height);
+
+	return ALIGN(num_sbs * 384, 16) + 512;
+}
+
 int hantro_g1_mpeg2_dec_run(struct hantro_ctx *ctx);
 int rockchip_vpu2_mpeg2_dec_run(struct hantro_ctx *ctx);
 void hantro_mpeg2_dec_copy_qtable(u8 *qtable,
diff --git a/drivers/media/platform/verisilicon/hantro_postproc.c b/drivers/media/platform/verisilicon/hantro_postproc.c
index 09d8cf942689..7dc39519a2ee 100644
--- a/drivers/media/platform/verisilicon/hantro_postproc.c
+++ b/drivers/media/platform/verisilicon/hantro_postproc.c
@@ -213,6 +213,9 @@ int hantro_postproc_alloc(struct hantro_ctx *ctx)
 	else if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_HEVC_SLICE)
 		buf_size += hantro_hevc_mv_size(pix_mp.width,
 						pix_mp.height);
+	else if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_AV1_FRAME)
+		buf_size += hantro_av1_mv_size(pix_mp.width,
+					       pix_mp.height);
 
 	for (i = 0; i < num_buffers; ++i) {
 		struct hantro_aux_buf *priv = &ctx->postproc.dec_q[i];
diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
index 2c7a805289e7..d41dcb108a6d 100644
--- a/drivers/media/platform/verisilicon/hantro_v4l2.c
+++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
@@ -334,6 +334,11 @@ static int hantro_try_fmt(const struct hantro_ctx *ctx,
 			pix_mp->plane_fmt[0].sizeimage +=
 				hantro_hevc_mv_size(pix_mp->width,
 						    pix_mp->height);
+		else if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_AV1_FRAME &&
+			 !hantro_needs_postproc(ctx, fmt))
+			pix_mp->plane_fmt[0].sizeimage +=
+				hantro_av1_mv_size(pix_mp->width,
+						   pix_mp->height);
 	} else if (!pix_mp->plane_fmt[0].sizeimage) {
 		/*
 		 * For coded formats the application can specify
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
