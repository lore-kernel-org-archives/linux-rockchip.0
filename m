Return-Path: <SRS0=bEZ5=LI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D058FC2B9F4
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Jun 2021 21:35:31 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8C18A61166
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Jun 2021 21:35:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8C18A61166
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UM4k6G/nUTzlH/twf2ELn23VgZL8SpBri5V1MV51cPM=; b=kMcp1HCiPlbsw1
	/X9oBtqg+j1f6JEqd321eDJ2MGC+Xxsuap5cdktOqF83BpuILgatP7WLyqH5ULbc9dN6dBH74clij
	h/2Qpi1lS0lQL/Dj8EC/rpmgOzvDMDPQNQufLF3gFaWYJ2PgB7Pe2oMd3LwKUoSiZ4GZjOUGsxHqa
	NGPPtSeo5PexyzkWY5HQrCjyV/PfC9JIvX4FxjRTrqeo1wHiYWTpApk/OMRhEVkaVSGgrQ4MZcIL6
	75cn11QgXiewR5MlP39ExoOQGQ2K2f4GGKZCwxhz9sjoHBMsjAkfNbaT314ycPodYJLKoOU1qWG77
	8bTlNMWemQ5thaBIp3kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lsuEw-00GFWl-DJ; Mon, 14 Jun 2021 21:35:26 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lsuD2-00GEfM-QA; Mon, 14 Jun 2021 21:33:30 +0000
Received: by mail-wr1-x42c.google.com with SMTP id o3so15996301wri.8;
 Mon, 14 Jun 2021 14:33:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=O9ExEfI8smsY8pVgfSWlbEFVVdj0jjSRoSg8s9hKtvk=;
 b=tG+4H7tXI41JWsmLa497HX1A4+INNIzuHIu1RhC2v5dj4CuQmaQFVOrTF4AVU1/Fqy
 g84438Zb1aJZp9pkF/saIlcFjCj8ERu4R21BVagEmmqmsmGG+4LgrWCfZ6qzQVUxsKhr
 8DbBIZCmJ67qOe+I8Cf02mhtpIzSbrTKFv01R8HqII28L1fNdQad34gN7ty24/tFotex
 OEhwX6IIexKS2S62mfwsJG2nQl7pkatU67CSkbM01BY8DBChc2wTmpnqZHiiZIoYFmVV
 kuMzf8+cmhduqO3DxtZ8mXm38E5taLhtlt1HReTo/5fHSMjqGXsVm9esWGXcdrSZWES+
 bo+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=O9ExEfI8smsY8pVgfSWlbEFVVdj0jjSRoSg8s9hKtvk=;
 b=UbnjJZLUsBo6eVDkF1paiJu5h9OYQvco/3BGrsOyEtvanlvHoA3J5kG1GbZjTK7xpO
 fS2GFnL5tHOQrfe645f1rMhMU+2g1piA2cCsJZrxI37qX2k+Wv3q80l1iTsW1sz8hrzT
 bzkErMwbnjK4gtTGkjI+cEoydH57BeTgOY3vCcoobFd95obqzjldNsprOhsJytiN6WUX
 y3fj7Q0FLRJrbSUvyOfZjoSGyKjf52pDAoeQc6mMBe9k2uiJNUMUACuAtUMzoc62EQmv
 cqbzbOKcA1OVGw7bIqtKt1ncKzKu0E5hM3vF03wTG5FvTyDto8zcz1WqwMbGl+tEFDKW
 0/pw==
X-Gm-Message-State: AOAM533H+mwAzCeEWGVOvz3Q/awNJPWZKmv1aNQzPZ/0QFGABT5usbfN
 Sock8mWxV21uanhpwiiasQ==
X-Google-Smtp-Source: ABdhPJyG/RKWAmir0AONi40wwGGCi5zze6Jpy3mkSnZJxvYvTK7ygDVhLwgJ7QdHqeEd01Zb7BcBew==
X-Received: by 2002:adf:f3c1:: with SMTP id g1mr1323477wrp.252.1623706407550; 
 Mon, 14 Jun 2021 14:33:27 -0700 (PDT)
Received: from localhost.localdomain ([91.67.75.139])
 by smtp.googlemail.com with ESMTPSA id g23sm989525wmk.3.2021.06.14.14.33.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Jun 2021 14:33:27 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Cc: Alex Bee <knaerzche@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 6/6] media: hantro: add support for Rockchip RK3036
Date: Mon, 14 Jun 2021 23:32:15 +0200
Message-Id: <20210614213215.99389-7-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210614213215.99389-1-knaerzche@gmail.com>
References: <20210525152225.154302-1-knaerzche@gmail.com>
 <20210614213215.99389-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210614_143328_923482_BBD07D2E 
X-CRM114-Status: GOOD (  18.21  )
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

RK3036's VPU IP block is the same as RK3288 has, except that it doesn't
have an encoder, decoding is supported up to 1920x1088 only and the axi
clock can be set to 300 MHz max.

Add a new RK3036 variant which reflects these differences.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
---

 Changes in v3:
 - collect Reviewed-tag

 Changes in v2:
 - rename rk3036_irqs -> rockchip_vdpu1_irqs
 - fix spelling error

 drivers/staging/media/hantro/hantro_drv.c     |  1 +
 drivers/staging/media/hantro/hantro_hw.h      |  1 +
 .../staging/media/hantro/rockchip_vpu_hw.c    | 49 +++++++++++++++++++
 3 files changed, 51 insertions(+)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index aaef66c4c795..31d8449ca1d2 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -582,6 +582,7 @@ static const struct v4l2_file_operations hantro_fops = {
 
 static const struct of_device_id of_hantro_match[] = {
 #ifdef CONFIG_VIDEO_HANTRO_ROCKCHIP
+	{ .compatible = "rockchip,rk3036-vpu", .data = &rk3036_vpu_variant, },
 	{ .compatible = "rockchip,rk3066-vpu", .data = &rk3066_vpu_variant, },
 	{ .compatible = "rockchip,rk3288-vpu", .data = &rk3288_vpu_variant, },
 	{ .compatible = "rockchip,rk3328-vpu", .data = &rk3328_vpu_variant, },
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index 77df0eba4e6f..5dcf65805396 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -205,6 +205,7 @@ enum hantro_enc_fmt {
 
 extern const struct hantro_variant imx8mq_vpu_g2_variant;
 extern const struct hantro_variant imx8mq_vpu_variant;
+extern const struct hantro_variant rk3036_vpu_variant;
 extern const struct hantro_variant rk3066_vpu_variant;
 extern const struct hantro_variant rk3288_vpu_variant;
 extern const struct hantro_variant rk3328_vpu_variant;
diff --git a/drivers/staging/media/hantro/rockchip_vpu_hw.c b/drivers/staging/media/hantro/rockchip_vpu_hw.c
index b370b5e802fa..3ccc16413f42 100644
--- a/drivers/staging/media/hantro/rockchip_vpu_hw.c
+++ b/drivers/staging/media/hantro/rockchip_vpu_hw.c
@@ -244,6 +244,13 @@ static irqreturn_t rockchip_vpu2_vepu_irq(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
+static int rk3036_vpu_hw_init(struct hantro_dev *vpu)
+{
+	/* Bump ACLK to max. possible freq. to improve performance. */
+	clk_set_rate(vpu->clocks[0].clk, RK3066_ACLK_MAX_FREQ);
+	return 0;
+}
+
 static int rk3066_vpu_hw_init(struct hantro_dev *vpu)
 {
 	/* Bump ACLKs to max. possible freq. to improve performance. */
@@ -297,6 +304,27 @@ static void rockchip_vpu2_enc_reset(struct hantro_ctx *ctx)
 /*
  * Supported codec ops.
  */
+static const struct hantro_codec_ops rk3036_vpu_codec_ops[] = {
+	[HANTRO_MODE_H264_DEC] = {
+		.run = hantro_g1_h264_dec_run,
+		.reset = hantro_g1_reset,
+		.init = hantro_h264_dec_init,
+		.exit = hantro_h264_dec_exit,
+	},
+	[HANTRO_MODE_MPEG2_DEC] = {
+		.run = hantro_g1_mpeg2_dec_run,
+		.reset = hantro_g1_reset,
+		.init = hantro_mpeg2_dec_init,
+		.exit = hantro_mpeg2_dec_exit,
+	},
+	[HANTRO_MODE_VP8_DEC] = {
+		.run = hantro_g1_vp8_dec_run,
+		.reset = hantro_g1_reset,
+		.init = hantro_vp8_dec_init,
+		.exit = hantro_vp8_dec_exit,
+	},
+};
+
 static const struct hantro_codec_ops rk3066_vpu_codec_ops[] = {
 	[HANTRO_MODE_JPEG_ENC] = {
 		.run = hantro_h1_jpeg_enc_run,
@@ -378,6 +406,10 @@ static const struct hantro_codec_ops rk3399_vpu_codec_ops[] = {
  * VPU variant.
  */
 
+static const struct hantro_irq rockchip_vdpu1_irqs[] = {
+	{ "vdpu", hantro_g1_irq },
+};
+
 static const struct hantro_irq rockchip_vpu1_irqs[] = {
 	{ "vepu", rockchip_vpu1_vepu_irq },
 	{ "vdpu", hantro_g1_irq },
@@ -401,6 +433,23 @@ static const char * const rockchip_vpu_clk_names[] = {
 	"aclk", "hclk"
 };
 
+const struct hantro_variant rk3036_vpu_variant = {
+	.dec_offset = 0x400,
+	.dec_fmts = rk3066_vpu_dec_fmts,
+	.num_dec_fmts = ARRAY_SIZE(rk3066_vpu_dec_fmts),
+	.postproc_fmts = rockchip_vpu1_postproc_fmts,
+	.num_postproc_fmts = ARRAY_SIZE(rockchip_vpu1_postproc_fmts),
+	.postproc_regs = &hantro_g1_postproc_regs,
+	.codec = HANTRO_MPEG2_DECODER | HANTRO_VP8_DECODER |
+		 HANTRO_H264_DECODER,
+	.codec_ops = rk3036_vpu_codec_ops,
+	.irqs = rockchip_vdpu1_irqs,
+	.num_irqs = ARRAY_SIZE(rockchip_vdpu1_irqs),
+	.init = rk3036_vpu_hw_init,
+	.clk_names = rockchip_vpu_clk_names,
+	.num_clocks = ARRAY_SIZE(rockchip_vpu_clk_names)
+};
+
 /*
  * Despite this variant has separate clocks for decoder and encoder,
  * it's still required to enable all four of them for either decoding
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
