Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF309C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Dec 2021 11:19:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jdc0zlH9RhXEhEZWfuITzo3uICrObYFDoO5OZPxHV7g=; b=bjlZovMgS+yFmm
	YGtksYaiJ2QIfkWQq3fjPapohrVLpqFZqdsKIDkF7H2H2QPunC5NKp9VK9KFw2QzEvpH2J/AqCeBR
	JREfQFarU0vMvbxpjvyW9PFcdhsQuaOC5cKEtROce54tJIlIGFYtQYjFAiGyXL8Zkk4wRSPFAoHRv
	69KyNJjboK2Zr2YpTHZMZe50XV9zFNRaRGphXiQckxWpLCk4mfYvEFHw3LTn08T0y9oQfwEaKWkHC
	O7GBJpX/TdNNQWHeRLucsFeVQ5KXjIF12+3iOwVtLYrDQZkTIrZUHeMpPZMuCXd//7z9YTOVisVDn
	toeX7qHgZv824PuZm75w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxomu-0057i8-8P; Thu, 16 Dec 2021 11:19:04 +0000
Received: from mail-io1-xd2a.google.com ([2607:f8b0:4864:20::d2a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxohh-00550O-9d; Thu, 16 Dec 2021 11:13:42 +0000
Received: by mail-io1-xd2a.google.com with SMTP id x6so34407793iol.13;
 Thu, 16 Dec 2021 03:13:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pVwaRVsa/dCilPzHdFqGN9Zx3nJSGjB1MUq/Bb2332o=;
 b=cZVEJud2C0aEg+ZduYDuA4QjJMzZ2lC3neSwmZNaVBq6FvNN6qPcLZSYvbclDlSyU3
 AXZdMyrKQh9LariRRwTHSiGtGItJYRXHkY99B7zIBitRVwAs++9b+laiCYJHitzJly3w
 83cVRWIkpw+z7PKysXYz0Ao/g/CIkw7Y7ys+tsxsm8CGszJ8xz953p3w9/z4wp9nDvoz
 hwL4kFybhHqESG+/J0ZyMBdtTKyVCEmvwxnzPoKH98/v1snfM36ouIW2XAEfvVd7ky2l
 BMo+E7QiQLnv81f7NiKI/4kXngLJX8CGScY50USh/VwmlNYSUSEE6KLhQXeHAG27ztVw
 X0Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pVwaRVsa/dCilPzHdFqGN9Zx3nJSGjB1MUq/Bb2332o=;
 b=0J1nTmO6ahnwKGU8TZ+LjXrQXt8B17mFqKxIy8u3XYIWJvAYSvlsV3p+VjxB+hrzOv
 qHY6NhVd5hVlLXbNd4L00qQ04t7KPFSGfCeSwtNUhK4DJ7TYwbjeaJFzN2jSqE3rcFHy
 TskivuCyDngRexFgm03WTqwxPaf+t1bu6t4JSvGxAv1B4CDsXcb58x0nwNb2M9pTGc5y
 PYUg0tkeqRXXPWGFwggm6wQBB28BOwneSqqE7cGCvOAMqBAvVqZl7ACGbuKke5PEDy97
 7nxXv7mpBf7LAPqDdCAyokCxwgxMA8+d55smPVPQDT5PscasPewH9DpmoQaM0Pj2+iBR
 DHJg==
X-Gm-Message-State: AOAM532XU20demzFk9HoHu0EdHTkTTL+IuvMsW/cwZV5tWQKRXR02Ucp
 rAhjwxBFgZ8OfRGy7UF8hAk=
X-Google-Smtp-Source: ABdhPJy4sVeIMJwIQeYCLkxihsRkUDA6hNdXUFrl/38M/QwdiwK4gdsBdINrQVePG+rQxgbfDGuQSg==
X-Received: by 2002:a05:6638:3784:: with SMTP id
 w4mr9112168jal.144.1639653217362; 
 Thu, 16 Dec 2021 03:13:37 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:fe22:1652:55f7:5197])
 by smtp.gmail.com with ESMTPSA id h1sm3090946iow.31.2021.12.16.03.13.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Dec 2021 03:13:36 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: abel.vesa@nxp.com, aford@beaconembedded.com,
 benjamin.gaignard@collabora.com, hverkuil-cisco@xs4all.nl,
 Adam Ford <aford173@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lucas Stach <l.stach@pengutronix.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
Subject: [PATCH V2 09/10] media: hantro: Add support for i.MX8MM
Date: Thu, 16 Dec 2021 05:12:54 -0600
Message-Id: <20211216111256.2362683-10-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211216111256.2362683-1-aford173@gmail.com>
References: <20211216111256.2362683-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211216_031341_374026_B6926BD0 
X-CRM114-Status: GOOD (  11.61  )
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

The i.MX8MM has a G1 and G2 video decoder, so add support in
the driver for it with the post-processing removed.

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index e7afda388ee5..118c4fa3d556 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -608,6 +608,8 @@ static const struct of_device_id of_hantro_match[] = {
 	{ .compatible = "rockchip,rk3399-vpu", .data = &rk3399_vpu_variant, },
 #endif
 #ifdef CONFIG_VIDEO_HANTRO_IMX8M
+	{ .compatible = "nxp,imx8mm-vpu-g1", .data = &imx8mm_vpu_g1_variant, },
+	{ .compatible = "nxp,imx8mm-vpu-g2", .data = &imx8mm_vpu_g2_variant },
 	{ .compatible = "nxp,imx8mq-vpu", .data = &imx8mq_vpu_variant, },
 	{ .compatible = "nxp,imx8mq-vpu-g1", .data = &imx8mq_vpu_g1_variant },
 	{ .compatible = "nxp,imx8mq-vpu-g2", .data = &imx8mq_vpu_g2_variant },
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index 96b14b43a4af..6ae1aeed2e16 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -299,6 +299,8 @@ enum hantro_enc_fmt {
 	ROCKCHIP_VPU_ENC_FMT_UYVY422 = 3,
 };
 
+extern const struct hantro_variant imx8mm_vpu_g1_variant;
+extern const struct hantro_variant imx8mm_vpu_g2_variant;
 extern const struct hantro_variant imx8mq_vpu_g1_variant;
 extern const struct hantro_variant imx8mq_vpu_g2_variant;
 extern const struct hantro_variant imx8mq_vpu_variant;
diff --git a/drivers/staging/media/hantro/imx8m_vpu_hw.c b/drivers/staging/media/hantro/imx8m_vpu_hw.c
index 4925f2a07d4c..dc7fc19283e8 100644
--- a/drivers/staging/media/hantro/imx8m_vpu_hw.c
+++ b/drivers/staging/media/hantro/imx8m_vpu_hw.c
@@ -347,3 +347,26 @@ const struct hantro_variant imx8mq_vpu_g2_variant = {
 	.clk_names = imx8mq_g2_clk_names,
 	.num_clocks = ARRAY_SIZE(imx8mq_g2_clk_names),
 };
+
+const struct hantro_variant imx8mm_vpu_g1_variant = {
+	.dec_fmts = imx8m_vpu_dec_fmts,
+	.num_dec_fmts = ARRAY_SIZE(imx8m_vpu_dec_fmts),
+	.codec = HANTRO_MPEG2_DECODER | HANTRO_VP8_DECODER |
+		 HANTRO_H264_DECODER,
+	.codec_ops = imx8mq_vpu_g1_codec_ops,
+	.irqs = imx8mq_irqs,
+	.num_irqs = ARRAY_SIZE(imx8mq_irqs),
+	.clk_names = imx8mq_g1_clk_names,
+	.num_clocks = ARRAY_SIZE(imx8mq_g1_clk_names),
+};
+
+const struct hantro_variant imx8mm_vpu_g2_variant = {
+	.dec_fmts = imx8m_vpu_g2_dec_fmts,
+	.num_dec_fmts = ARRAY_SIZE(imx8m_vpu_g2_dec_fmts),
+	.codec = HANTRO_HEVC_DECODER | HANTRO_VP9_DECODER,
+	.codec_ops = imx8mq_vpu_g2_codec_ops,
+	.irqs = imx8mq_g2_irqs,
+	.num_irqs = ARRAY_SIZE(imx8mq_g2_irqs),
+	.clk_names = imx8mq_g2_clk_names,
+	.num_clocks = ARRAY_SIZE(imx8mq_g2_clk_names),
+};
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
