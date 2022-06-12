Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AAACC43334
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Jun 2022 15:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8444bRMykNlwmaKQ3+tKrAby5Sz2dTWNpn2StP1mXr8=; b=DjAY5lbhwxqVB6
	AC/6th8IqNmedl/WgbTLdpdF8+SxGTn7gQBI8VngZtVmToww0HXg9ZUzcWTHu+NpsFSVi0TWJebr6
	FDcJFFxFDsDD0MMNUQxV3EUgO2wqCD+h6UEpHsGxAV1xit2pKkKIQ4aLH8wcHbjG0WqbPKlAHq1OU
	wC7B0Yc8G8JqqXrZarLd/1xv8AjGGxos9XMGxVhOCwiWsdw/aC/oc0p+mBraqowAvo+ONiQd74QnV
	YxYnJX+aivYZegjhsrJ9tDGlNE88cU7nH/tnlcoyz5+XvNlO2FSim7NucrLt2uPrNgzA67SQ92p0P
	nMVg4RiBP2PlcvREQr+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0PvS-00H0Vi-Dv; Sun, 12 Jun 2022 15:54:54 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0PvF-00H0OO-TK; Sun, 12 Jun 2022 15:54:43 +0000
Received: by mail-ej1-x630.google.com with SMTP id m20so6723708ejj.10;
        Sun, 12 Jun 2022 08:54:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=yu3zJrhDtAIjX/JKOisZTmOJ2HJDDEs7iY4VN6uLHbw=;
        b=DjFhspefxnMPvrtG/Cq54juBFoMZEnZdNH0qgLkwgXorAY7kJKL8wRquMTwe7BXZZR
         yQ2GIETAe/tqKAI9RcKxHB8LrQnAblBbB3NgVfFmh2fAFmU6DFk96WeIEkCN3N2rHdaH
         Nv3gYpWFJBw61IXDe8XDkpAtuoePEM003GiozBojYP5PhdC3IUrjwzhab/rJa5oNiRA6
         1UW0LL8E8NtbIryj9KlkAIm3UAaXeOg9tfc8y3/C6rXXnwao5/L/UKvoyqIneoKFGqMu
         O1M3FpXhwX4b+gWdybOeLuz1N1bPFomUKUiverj14enBu2EWyfeEONA/QDUUeKlQRZGX
         S9tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yu3zJrhDtAIjX/JKOisZTmOJ2HJDDEs7iY4VN6uLHbw=;
        b=IkK3J9K+rReEUIbXXw/LqXSeOYK3mWVVcGE9pv+lCAghButwHkJE7kaMotthfjTxhK
         8xHlJwiX2AJrMZl+mWEGGGLXs6B/YOt+4dCE56n9IQH3asXuMUytD+zk4Tqaujg3ky6F
         AcP7FKnG5yk4q54zPkoaalPTd8QRvDLeBVzA5JwhbXSNy6Vb9vmKzCgFWwGFY1ZFcIws
         5GMX/EEVH0GdGP0e3tiMZpYtRApIDdL8PHK8vjekUALYbkXiq5Tyh+WbB1G0Q6i9k9te
         NDJWx5AfmkSBe+zZt56vNuBwc1b0QvY3Uf1oiIgCAYyNLjrEX/81H1ad3Rx3IJ2QqsVL
         u1aQ==
X-Gm-Message-State: AOAM530JadGFpFc5cWXRro+sobMMwwhonMliwt5XeGAH5C8BIkfFqc5w
	G5XxLrpMyhL9rwgGt7R0oG2O0eqGfQQ=
X-Google-Smtp-Source: ABdhPJwGAuXg6rH05QmyRFfY9N1PE2VKrU+kgTIyjJ+KjV0DxbpO4OnSXeXX61PYBG8rkxAUYHYvqQ==
X-Received: by 2002:a17:906:7304:b0:6ff:a76:5b09 with SMTP id di4-20020a170906730400b006ff0a765b09mr50690145ejc.193.1655049280527;
        Sun, 12 Jun 2022 08:54:40 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id o1-20020a1709064f8100b006f3ef214de7sm2609459eju.77.2022.06.12.08.54.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jun 2022 08:54:40 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 2/3] media: hantro: Add support for RK356x encoder
Date: Sun, 12 Jun 2022 17:53:45 +0200
Message-Id: <20220612155346.16288-3-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220612155346.16288-1-frattaroli.nicolas@gmail.com>
References: <20220612155346.16288-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220612_085442_005981_B49BC2D7 
X-CRM114-Status: GOOD (  15.78  )
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
index ac232b5f7825..1112e8d0c821 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -638,6 +638,7 @@ static const struct of_device_id of_hantro_match[] = {
 	{ .compatible = "rockchip,rk3288-vpu", .data = &rk3288_vpu_variant, },
 	{ .compatible = "rockchip,rk3328-vpu", .data = &rk3328_vpu_variant, },
 	{ .compatible = "rockchip,rk3399-vpu", .data = &rk3399_vpu_variant, },
+	{ .compatible = "rockchip,rk3568-vepu", .data = &rk3568_vepu_variant, },
 	{ .compatible = "rockchip,rk3568-vpu", .data = &rk3568_vpu_variant, },
 #endif
 #ifdef CONFIG_VIDEO_HANTRO_IMX8M
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index 52a960f6fa4a..8c7eb5591446 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -306,6 +306,7 @@ extern const struct hantro_variant rk3066_vpu_variant;
 extern const struct hantro_variant rk3288_vpu_variant;
 extern const struct hantro_variant rk3328_vpu_variant;
 extern const struct hantro_variant rk3399_vpu_variant;
+extern const struct hantro_variant rk3568_vepu_variant;
 extern const struct hantro_variant rk3568_vpu_variant;
 extern const struct hantro_variant sama5d4_vdec_variant;
 extern const struct hantro_variant sunxi_vpu_variant;
diff --git a/drivers/staging/media/hantro/rockchip_vpu_hw.c b/drivers/staging/media/hantro/rockchip_vpu_hw.c
index fc96501f3bc8..b39813d53e57 100644
--- a/drivers/staging/media/hantro/rockchip_vpu_hw.c
+++ b/drivers/staging/media/hantro/rockchip_vpu_hw.c
@@ -417,6 +417,14 @@ static const struct hantro_codec_ops rk3399_vpu_codec_ops[] = {
 	},
 };
 
+static const struct hantro_codec_ops rk3568_vepu_codec_ops[] = {
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
+	.codec_ops = rk3568_vepu_codec_ops,
+	.irqs = rk3568_vepu_irqs,
+	.num_irqs = ARRAY_SIZE(rk3568_vepu_irqs),
+	.init = rockchip_vpu_hw_init,
+	.clk_names = rockchip_vpu_clk_names,
+	.num_clocks = ARRAY_SIZE(rockchip_vpu_clk_names)
+};
+
 const struct hantro_variant rk3568_vpu_variant = {
 	.dec_offset = 0x400,
 	.dec_fmts = rk3399_vpu_dec_fmts,
-- 
2.36.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
