Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8D62C43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jun 2022 12:00:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c5w9U1iB3pNrFsqkT++YSdMLiSVPj74x8QrRkVDnXtM=; b=TAx1ANZ4u62t0a
	kRUeBD5PxW90tLImkq4NfsutS8OH/ntAgCG/SQYNp7K7b/D0DXr+Ar/un2FgQY4HBUJccRmKiyowA
	L5Kg0/3gHZATJwmGqRqzy4cu21qNAiGWO5PObMLH6NaVoZogb8qyfYTJN7GtDsaWqwi+rYn+34r79
	U0JtRchMTfyKQLYbLY8DCP84mu5VkwfTZty9ej/d9fk6NsjG942NDoE3wUcALLBzV8l8jwXvEiuKp
	k5BCRE6oIgHUODPfaFpijiOD9kZ7Zje5YpnjzorFD0cIwuLjHITR2SDWqkdYzJ9wqVwLULMJ8luYB
	4VCZAn59X0m9hE8EbG5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2Adr-007Vpg-8y; Fri, 17 Jun 2022 11:59:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2AcU-007Uz4-Du; Fri, 17 Jun 2022 11:58:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=pD+aiRV73CLHlkRFdtcrCiiY/Hsz9hpciHAoVHeRQOA=; b=jV1G1vs9eI+Fwfij6sBojhw6Kn
	akMwMchm+tTC3M+FkiDSeSnYHT5oH7TN2hFC82F9lf4hsV9KEnf4tdPIAeglm+APYy+mGawpH+KU2
	YcbbDaPPZPE0pVETYZ0j90NttVbUv/9WdqY3EUpkvpL3frzwkmNEcY5lmVBF0ad1JT+dfWfCMs8/k
	zzDIhwNlV5BCWsfrhJ+uqwlZyDtASmXMwzX/91p6zrg4rQv6gX7BJedopto0oabDS7cxMoKFna5QJ
	lZVAStPUZMxCyURwZexDf7uBQFCEvh9tPcHWm2xdxonSW2TMcPQ5LmWgV46q7UKc0IUmDEJ8uMN0e
	d61iEZ8w==;
Received: from madras.collabora.co.uk ([46.235.227.172])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2AcH-008g13-G5; Fri, 17 Jun 2022 11:58:31 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:faf2:1a12:f903:cc5e])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 958D3660183F;
	Fri, 17 Jun 2022 12:58:14 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1655467095;
	bh=Bi9ZgazJJwK+UkLeBW4Jrqy71/5gwlYkkwpr++kSPkE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=A6NLed4jxlXHDJPD/q4xzy1Fl7/Bqux8fDkPtfQqt3OTbEmyg4aKG3s2xWyB6cRLY
	 QlZW2trGVdOF/x2dTMvEYIMCKKcVT/TX2AzPUr6p7neNVfqOdSLZ3EdVon9Yw7ivwe
	 y+xAHhMRyMxupaPm6VyvGapLJ9PNDuMNlp3DFvvNoBz8gLx2gVCdoqdvCDWSc7OD/r
	 NCesnf18jXkKzrQ09TVqWylBbdEXFZzoakQUodTkexabf+na8RuWQaTQKJV5BUNOFM
	 Jh8ra96L+qdOPpSNLfENziK7H/aCewUCmlP6sbRroEzGiv41iGe3+WE1+2gxvzOFPZ
	 MkcefIlVFHb+Q==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	hverkuil@xs4all.nl,
	ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	gregkh@linuxfoundation.org,
	mripard@kernel.org,
	paul.kocialkowski@bootlin.com,
	wens@csie.org,
	jernej.skrabec@gmail.com,
	samuel@sholland.org,
	nicolas.dufresne@collabora.com,
	andrzej.p@collabora.com
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH 6/7] media: hantro: imx8m: Enable 10bit decoding
Date: Fri, 17 Jun 2022 13:58:01 +0200
Message-Id: <20220617115802.396442-7-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220617115802.396442-1-benjamin.gaignard@collabora.com>
References: <20220617115802.396442-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_125823_679686_0A9843F6 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
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

Expose 10bit pixel formats to enable 10bit decoding in IMX8M SoCs.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/staging/media/hantro/imx8m_vpu_hw.c | 27 +++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/staging/media/hantro/imx8m_vpu_hw.c b/drivers/staging/media/hantro/imx8m_vpu_hw.c
index 77f574fdfa77..b390228fd3b4 100644
--- a/drivers/staging/media/hantro/imx8m_vpu_hw.c
+++ b/drivers/staging/media/hantro/imx8m_vpu_hw.c
@@ -162,12 +162,39 @@ static const struct hantro_fmt imx8m_vpu_g2_postproc_fmts[] = {
 			.step_height = MB_DIM,
 		},
 	},
+	{
+		.fourcc = V4L2_PIX_FMT_P010,
+		.codec_mode = HANTRO_MODE_NONE,
+		.postprocessed = true,
+		.frmsize = {
+			.min_width = FMT_MIN_WIDTH,
+			.max_width = FMT_UHD_WIDTH,
+			.step_width = MB_DIM,
+			.min_height = FMT_MIN_HEIGHT,
+			.max_height = FMT_UHD_HEIGHT,
+			.step_height = MB_DIM,
+		},
+	},
 };
 
 static const struct hantro_fmt imx8m_vpu_g2_dec_fmts[] = {
 	{
 		.fourcc = V4L2_PIX_FMT_NV12_4L4,
 		.codec_mode = HANTRO_MODE_NONE,
+		.match_depth = true,
+		.frmsize = {
+			.min_width = FMT_MIN_WIDTH,
+			.max_width = FMT_UHD_WIDTH,
+			.step_width = TILE_MB_DIM,
+			.min_height = FMT_MIN_HEIGHT,
+			.max_height = FMT_UHD_HEIGHT,
+			.step_height = TILE_MB_DIM,
+		},
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_P010_4L4,
+		.codec_mode = HANTRO_MODE_NONE,
+		.match_depth = true,
 		.frmsize = {
 			.min_width = FMT_MIN_WIDTH,
 			.max_width = FMT_UHD_WIDTH,
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
