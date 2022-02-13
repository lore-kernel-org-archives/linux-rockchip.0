Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CAFCC433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Feb 2022 19:53:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XYQ8hqO+CoRd63P2LSS5oReNeBOx2ok0ILf72iixxzs=; b=qpHIScMfcfxu2u
	1aq+pxp8wUpnYDdGyTJ76euVXhDRApthAIwCbVcEDWPWIXbt8BVk/qDWWoUsG/ggVXRbUy442pqOl
	J+/LAIW+2Yvvb47+pT6bqNZidRmR/WSJJ/lzqZJs+ct2FF+b1sM2hpEcxnSdkeqx6SSUzGnQYQKIX
	sXsw7o+Tr6QCxGDwcfXwr6wFukXSUpZf9cZLhfTlegN61lMCn1mLjnryp+3C32sCD/nDonspidFb8
	JQm7LG/fG9ZcAGPbwBcoxdKUY8xeR6IACIuudPDF8kmQptEEkiUptifk34FVzUc7ONqv4af5cPBI2
	MA9miiEPMykz/rGsqwbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJKvV-00COWw-SZ; Sun, 13 Feb 2022 19:52:53 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJKvS-00COWZ-QM
 for Linux-rockchip@lists.infradead.org; Sun, 13 Feb 2022 19:52:52 +0000
Received: by mail-lj1-x229.google.com with SMTP id be32so1104669ljb.7
 for <Linux-rockchip@lists.infradead.org>; Sun, 13 Feb 2022 11:52:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+IvjBSigw9nyuJJODv2b6IGzdRQsGcbOBUmM9/VOzQU=;
 b=GO/WZa8tDLFfAiINkNRVQ/4NSBF6ooS87ayyDick1RMOaTaGOJO6ciugoUNlTxQi6i
 VNc6b7Okyhbn6HHx3ec98RVOgC8s0Fo61mklH5aOdacEoPnofNhDYM8oM9rzHGHc/xfx
 AyyPTAHYHD8G8TJ9zle2Zg1yzu7QcZrPMhcOgUU1e4AFfintFUfQR93+U2JRFuQeDQN/
 /ZKbLl6lQ0XoblOQmRt0WD4yYDAbCJsW7SZNk7wSuRFRaLYNgzbUUyTJ/9/Z26ahLSWg
 0kH4t3+LXGGgECQzqZUZzivQ3Bzc4H9+nntb0PFVcFo6v1IIIdgx2ZE1rheRAXNb1CnZ
 boag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+IvjBSigw9nyuJJODv2b6IGzdRQsGcbOBUmM9/VOzQU=;
 b=WCLF+MFJJF2HWIeTkoAy6fxzWnr3qFl529NVG168oChkAjRWlv7EjE7FwwaE3QczKN
 b9v00A8oLL0V3ER2H7e6P7PiOLDqgvrgyEdIi9On7QlnQf6HV3XtxaU+CpRA9fHflvO5
 8F894sT2kSmK+voot+xHjpQUV8PX1dF7NOEPV4z30bE3NthpfCbHI9OMupORXLbbjtSy
 PdOS3kNJyaZXVwcaNfqv+okicQD204PDTAkWRR7a39BNPdRSKCwEGgrLzDFcQaePlA1p
 qY6fp8rhJyWHnS2Y+4yumaRi9LeVbbEkT3yG808InPSN1UDXz2mJCSb+b5FYLkWLYPbP
 9yYw==
X-Gm-Message-State: AOAM5332PWTvwBST7qYSZA6uV0kz63ZY6h6Pql/GsitF3QwbW6W0yoz5
 H8U8tHN11zDQKB/2HQ6beGMRZ5mfV+6YcQ==
X-Google-Smtp-Source: ABdhPJw2WFE3pe+wg7tyEq4xecJDI64rtTjFTadABwCeB4qfiWiBNWoYNxbFGbmHzpFRqJCWo6Fdrg==
X-Received: by 2002:a2e:3111:: with SMTP id x17mr7039438ljx.136.1644781968100; 
 Sun, 13 Feb 2022 11:52:48 -0800 (PST)
Received: from localhost (31-178-191-245.dynamic.chello.pl. [31.178.191.245])
 by smtp.gmail.com with ESMTPSA id
 t12sm3784798ljc.97.2022.02.13.11.52.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 13 Feb 2022 11:52:47 -0800 (PST)
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
To: Linux-rockchip@lists.infradead.org
Cc: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Subject: [PATCH v1 01/03]: media: hantro: Add support for Hantro G1 on RK356x
Date: Sun, 13 Feb 2022 20:53:15 +0100
Message-Id: <20220213195316.4149106-1-piotr.oniszczuk@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220213_115250_883363_5C8B3584 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
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

From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>

RK356x has Hantro G1 video decoder capable to decode MPEG2/H.264/VP9
video formats.

This patch adds support for RK356x family in existing Hantro
video decoder kernel driver.

Tested on [1] with FFmpeg v4l2_request code taken from [2]
with MPEG2, H.642 and VP8 samples with results [3].

[1] https://github.com/warpme/minimyth2
[2] https://github.com/LibreELEC/LibreELEC.tv/blob/master/packages/multimedia/ffmpeg/patches/v4l2-request/ffmpeg-001-v4l2-request.patch
[3] https://github.com/warpme/minimyth2/blob/master/video-test-summary.txt

Signed-off-by: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
---
 drivers/staging/media/hantro/hantro_drv.c      |  1 +
 drivers/staging/media/hantro/hantro_hw.h       |  1 +
 drivers/staging/media/hantro/rockchip_vpu_hw.c | 14 ++++++++++++++
 3 files changed, 16 insertions(+)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index 6a51f39dde56..ac7d58069eb8 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -613,6 +613,7 @@ static const struct of_device_id of_hantro_match[] = {
 	{ .compatible = "rockchip,rk3288-vpu", .data = &rk3288_vpu_variant, },
 	{ .compatible = "rockchip,rk3328-vpu", .data = &rk3328_vpu_variant, },
 	{ .compatible = "rockchip,rk3399-vpu", .data = &rk3399_vpu_variant, },
+	{ .compatible = "rockchip,rk3568-vpu", .data = &rk3568_vpu_variant, },
 #endif
 #ifdef CONFIG_VIDEO_HANTRO_IMX8M
 	{ .compatible = "nxp,imx8mq-vpu", .data = &imx8mq_vpu_variant, },
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index 4a19ae8940b9..89ec6d500938 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -307,6 +307,7 @@ extern const struct hantro_variant rk3066_vpu_variant;
 extern const struct hantro_variant rk3288_vpu_variant;
 extern const struct hantro_variant rk3328_vpu_variant;
 extern const struct hantro_variant rk3399_vpu_variant;
+extern const struct hantro_variant rk3568_vpu_variant;
 extern const struct hantro_variant sama5d4_vdec_variant;
 extern const struct hantro_variant sunxi_vpu_variant;
 
diff --git a/drivers/staging/media/hantro/rockchip_vpu_hw.c b/drivers/staging/media/hantro/rockchip_vpu_hw.c
index c203b606e6e7..5e64cf068ff9 100644
--- a/drivers/staging/media/hantro/rockchip_vpu_hw.c
+++ b/drivers/staging/media/hantro/rockchip_vpu_hw.c
@@ -551,6 +551,20 @@ const struct hantro_variant rk3399_vpu_variant = {
 	.num_clocks = ARRAY_SIZE(rockchip_vpu_clk_names)
 };
 
+const struct hantro_variant rk3568_vpu_variant = {
+	.dec_offset = 0x400,
+	.dec_fmts = rk3399_vpu_dec_fmts,
+	.num_dec_fmts = ARRAY_SIZE(rk3399_vpu_dec_fmts),
+	.codec = HANTRO_MPEG2_DECODER |
+		 HANTRO_VP8_DECODER | HANTRO_H264_DECODER,
+	.codec_ops = rk3399_vpu_codec_ops,
+	.irqs = rockchip_vdpu2_irqs,
+	.num_irqs = ARRAY_SIZE(rockchip_vdpu2_irqs),
+	.init = rockchip_vpu_hw_init,
+	.clk_names = rockchip_vpu_clk_names,
+	.num_clocks = ARRAY_SIZE(rockchip_vpu_clk_names)
+};
+
 const struct hantro_variant px30_vpu_variant = {
 	.enc_offset = 0x0,
 	.enc_fmts = rockchip_vpu_enc_fmts,
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
