Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31CBAC46467
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jan 2023 17:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mMblevH42XgK5dgsiSjXFI6vxbHFv7k7J66UFH6y5tw=; b=vnO5Kp8Osipd6S
	K+gQZVCROPlAkxu+qfT+I4+oOB1bkVdwK7l4RskPbCfUGOer51RSi00nclQrzz9OJ85xzYWqJk2DV
	xpiG0vD/CR4Ao05GGLluWFr/I1isbljCNNYlZU7H5eFZ60Gn9vKlJzU1/9HzK+abET7sb0cZH6/uo
	qjAZFn6cUTp6B3Q25NWg7lnWfVYgrMV3+PFNvjoK8Z61Sfrt4tl/WTVPkEFACnE+o49uGMuA7yTIM
	vx1Pu+JDR/CwiKzUiMRR694IDXzWWBWddRPsEAfbpg82eJLd/KHVF5JgxONZ7x4laln2BnoPfKO4A
	VztpR9YgNYJShWCF49Cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFeUF-00CGE1-Uw; Wed, 11 Jan 2023 17:02:03 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFeS4-00CEoi-4y; Wed, 11 Jan 2023 16:59:50 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:1ee3:efce:e4f6:17a3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 3F7F56602D9F;
	Wed, 11 Jan 2023 16:59:43 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1673456383;
	bh=LGv40PaIQDqq/J5jDhdeIwK7Nftqoy1jclkArRF3dv8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ciFASSAs/Gh3iWmya91novhFsuG+CQ0gpoqW3LpzK8Oj3tcYZXgGr3SPVBPBbVaGj
	 uC3/SZpuJdLAB5oEjYCmZGBfdG5EZ9TtCBm3CaIIwa9DHb3nXfUst9/qCW76VIBIu8
	 w4WX9OFeipG4jw5+cgvU3Wfzj6MhJfFoo3evVqrGSftXxmZUdq2FbN8vT8zDKTRnD7
	 jO6tUSCfdN78+eGAKJHIw3Oak0jVH2DBPjMhkMNJJ6wFA9/0cCdT7FiJ1FbSplkDg0
	 mRSvfdZhJ7r007EcL2yKe3mSLeUAODJcZK1MWcjYwI4a6A2Pme4iSsIcAMcy7K2TAP
	 4pDG+Ik+bVuLw==
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
Subject: [PATCH v3 08/13] media: verisilicon: Compute motion vectors size for AV1 frames
Date: Wed, 11 Jan 2023 17:59:26 +0100
Message-Id: <20230111165931.753763-9-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230111165931.753763-1-benjamin.gaignard@collabora.com>
References: <20230111165931.753763-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_085948_408018_F3F2CD2A 
X-CRM114-Status: GOOD (  12.57  )
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

Compute the additional space required to store motion vectors at
the end of the frames buffers.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/media/platform/verisilicon/hantro_hw.h      | 13 +++++++++++++
 .../media/platform/verisilicon/hantro_postproc.c    |  3 +++
 drivers/media/platform/verisilicon/hantro_v4l2.c    |  5 +++++
 3 files changed, 21 insertions(+)

diff --git a/drivers/media/platform/verisilicon/hantro_hw.h b/drivers/media/platform/verisilicon/hantro_hw.h
index e83f0c523a30..201f8679ca11 100644
--- a/drivers/media/platform/verisilicon/hantro_hw.h
+++ b/drivers/media/platform/verisilicon/hantro_hw.h
@@ -417,6 +417,19 @@ hantro_hevc_mv_size(unsigned int width, unsigned int height)
 	return width * height / 16;
 }
 
+static inline unsigned short hantro_av1_num_sbs(unsigned short dimension)
+{
+	return DIV_ROUND_UP(dimension, 64);
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
index 162110ac118d..bbe79dbd2cd9 100644
--- a/drivers/media/platform/verisilicon/hantro_v4l2.c
+++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
@@ -335,6 +335,11 @@ static int hantro_try_fmt(const struct hantro_ctx *ctx,
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
