Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BF23C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 May 2022 20:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IY5vzffbq3q5/HD9xwjT7R6WplEHwiCP/AvYNms7PQw=; b=3if87ZPII0RiOc
	+ID1wJMDpc3DSYbDSuHphiygeM+TKSLvTTNrYmSqQqB7500lhlpKOwb3kuQJeU4HiSirenHZoVg2l
	GDsUWo61SsrMqthxMkA638wk/4yS/b5IpWPX2j9m6j3Kx7wsaC6TkQAbHWtJ2GOsBnTRlODjh73L2
	TI35CibcXhGEwx4ZboFR0f9AvfT1/Tjq5OS3OpD7ShcNLtIwDBxZtPJPOldOU9m+zJ9E+bqa1ZcjA
	0xOwbtAHHAT+/F82uXmRhNsgYVahqzt4rWEuTqB1XfbqvMS6HQfC07ua7Emgc/SypUYZkYw97iy1g
	BILozO64ZpeZz5IcCd4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnnTp-00BKpo-Se; Sun, 08 May 2022 20:26:13 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnnTi-00BKjk-5a; Sun, 08 May 2022 20:26:07 +0000
Received: by mail-ej1-x62d.google.com with SMTP id kq17so23302838ejb.4;
 Sun, 08 May 2022 13:26:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=p/y8kwDEE09pYlbLH2XHpoLmNt2slQabq1pX4LdThWs=;
 b=hqFpDUGBEQhnZoUyBAcPrbduVWYy9dYRR/YdtNDlpJs5Jat9FGkikcr3MXBH0vHRdl
 kven41XIGh+k7EnNM6yx9qPzoHcLUA8RxttHaqPIfHk18+anqdcYuQcEHvVYPSN7mFb7
 hkqNldEjKn8vvUa6Jn+QhnnvH7K4Ii/gXqEpeDsUgO/4EsFJcoB5W8mWgNXPdOgb6483
 UgJ0rKNMqa2t6LdGg2dHQZRx5T1h+P78KwDTAnGLihixIPLxAkW4gpntRN/RnCY3mqC7
 z8Xk/pcGxIo8KNImR9ZMB5N3hU6NoighFVIW5CpD3TTd+CpVU0S9TLZagIWg+coMLQzp
 9/yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=p/y8kwDEE09pYlbLH2XHpoLmNt2slQabq1pX4LdThWs=;
 b=XH/a78WFd0ir7I/pK1qIvFPeZtLakkoBtODseS0lWl8tAe7Drac700nE7MqNh4265k
 Z7Hlni4WZG0xnZ1JLstuUBXfD37N4NXkZL1jBxhtf01g5UGiAa2FVOALL5Dmp+9Kq+9t
 NkMKdC4TTMtm9lzZDnI7JR3WHbzHaoKsYVxq3BXl+MAFxDm26g4apz++2ig8jgs86tP7
 Iw2HCvuwWg4VHJfIh27wcd8IKIEovusSMdNWNM83+yti2wrLUlDg/BN/QqDUhe4vNxEP
 1Iy335GRKPX7YZ3bY0XcdjjjI1S33AeSCcPKi6780yhQF4CTK2xEfhgQwOlaDS5gEqVT
 x+Fg==
X-Gm-Message-State: AOAM532grX/onXnh7SQREiflzjAzRb9ZDhKXD85DKZeiCItHxQBfOl4X
 Y2pwWGqF2XIYsaWJWRmDfRY=
X-Google-Smtp-Source: ABdhPJydrEwCCJRojJ77JBqDKeWn/RhmqedOu899Ka9w0LMyDl2haPSySeYYzb1AEfNu4Jb/9LBG9A==
X-Received: by 2002:a17:906:c284:b0:6f4:dcc3:7939 with SMTP id
 r4-20020a170906c28400b006f4dcc37939mr11576981ejz.444.1652041564100; 
 Sun, 08 May 2022 13:26:04 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84]) by smtp.gmail.com with ESMTPSA id
 eo10-20020a1709069b0a00b006f3ef214e1esm4341459ejc.132.2022.05.08.13.26.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 May 2022 13:26:03 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/3] media: hantro: Add support for RK356x encoder
Date: Sun,  8 May 2022 22:25:43 +0200
Message-Id: <20220508202544.501981-3-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220508202544.501981-1-frattaroli.nicolas@gmail.com>
References: <20220508202544.501981-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_132606_234555_98E4ADA0 
X-CRM114-Status: GOOD (  16.17  )
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

The RK3566 and RK3568 SoCs come with a small Hantro instance which is
solely dedicated to encoding. This patch adds the necessary structs to
the Hantro driver to allow the JPEG encoder of it to function.

Through some sleuthing through the vendor's MPP source code and after
closer inspection of the TRM, it was determined that the hardware likely
supports VP8 and H.264 as well.

Tested with the following GStreamer command:

gst-launch-1.0 videotestsrc ! v4l2jpegenc ! matroskamux ! \
               filesink location=foo.mkv

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 drivers/staging/media/hantro/hantro_drv.c     |  1 +
 drivers/staging/media/hantro/hantro_hw.h      |  1 +
 .../staging/media/hantro/rockchip_vpu_hw.c    | 25 +++++++++++++++++++
 3 files changed, 27 insertions(+)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index dc768884cb79..0b38b41136e2 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -628,6 +628,7 @@ static const struct of_device_id of_hantro_match[] = {
 	{ .compatible = "rockchip,rk3288-vpu", .data = &rk3288_vpu_variant, },
 	{ .compatible = "rockchip,rk3328-vpu", .data = &rk3328_vpu_variant, },
 	{ .compatible = "rockchip,rk3399-vpu", .data = &rk3399_vpu_variant, },
+	{ .compatible = "rockchip,rk3568-vepu", .data = &rk3568_vepu_variant, },
 #endif
 #ifdef CONFIG_VIDEO_HANTRO_IMX8M
 	{ .compatible = "nxp,imx8mm-vpu-g1", .data = &imx8mm_vpu_g1_variant, },
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index ed018e293ba0..b312da654d38 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -300,6 +300,7 @@ extern const struct hantro_variant rk3066_vpu_variant;
 extern const struct hantro_variant rk3288_vpu_variant;
 extern const struct hantro_variant rk3328_vpu_variant;
 extern const struct hantro_variant rk3399_vpu_variant;
+extern const struct hantro_variant rk3568_vepu_variant;
 extern const struct hantro_variant sama5d4_vdec_variant;
 extern const struct hantro_variant sunxi_vpu_variant;
 
diff --git a/drivers/staging/media/hantro/rockchip_vpu_hw.c b/drivers/staging/media/hantro/rockchip_vpu_hw.c
index 163cf92eafca..a97a4ea8ede4 100644
--- a/drivers/staging/media/hantro/rockchip_vpu_hw.c
+++ b/drivers/staging/media/hantro/rockchip_vpu_hw.c
@@ -417,6 +417,14 @@ static const struct hantro_codec_ops rk3399_vpu_codec_ops[] = {
 	},
 };
 
+static const struct hantro_codec_ops rk3568_jpeg_enc_codec_ops[] = {
+	[HANTRO_MODE_JPEG_ENC] = {
+		.run = rockchip_vpu2_jpeg_enc_run,
+		.reset = rockchip_vpu2_enc_reset,
+		.done = rockchip_vpu2_jpeg_enc_done,
+	},
+};
+
 /*
  * VPU variant.
  */
@@ -439,6 +447,10 @@ static const struct hantro_irq rockchip_vpu2_irqs[] = {
 	{ "vdpu", rockchip_vpu2_vdpu_irq },
 };
 
+static const struct hantro_irq rk3568_vepu_irqs[] = {
+	{ "vepu", rockchip_vpu2_vepu_irq },
+};
+
 static const char * const rk3066_vpu_clk_names[] = {
 	"aclk_vdpu", "hclk_vdpu",
 	"aclk_vepu", "hclk_vepu"
@@ -545,6 +557,19 @@ const struct hantro_variant rk3399_vpu_variant = {
 	.num_clocks = ARRAY_SIZE(rockchip_vpu_clk_names)
 };
 
+const struct hantro_variant rk3568_vepu_variant = {
+	.enc_offset = 0x0,
+	.enc_fmts = rockchip_vpu_enc_fmts,
+	.num_enc_fmts = ARRAY_SIZE(rockchip_vpu_enc_fmts),
+	.codec = HANTRO_JPEG_ENCODER,
+	.codec_ops = rk3568_jpeg_enc_codec_ops,
+	.irqs = rk3568_vepu_irqs,
+	.num_irqs = ARRAY_SIZE(rk3568_vepu_irqs),
+	.init = rockchip_vpu_hw_init,
+	.clk_names = rockchip_vpu_clk_names,
+	.num_clocks = ARRAY_SIZE(rockchip_vpu_clk_names)
+};
+
 const struct hantro_variant px30_vpu_variant = {
 	.enc_offset = 0x0,
 	.enc_fmts = rockchip_vpu_enc_fmts,
-- 
2.36.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
