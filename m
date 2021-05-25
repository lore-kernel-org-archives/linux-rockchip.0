Return-Path: <SRS0=lIs5=KU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6207C2B9F8
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 May 2021 15:45:15 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 67605613E6
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 May 2021 15:45:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 67605613E6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bXtIsLRkl4kKSIQ+lujVdD5D28U19SU+ClMwDuqBMG0=; b=XbdN39QcIL3yPM
	b7SGGBE8Pw3tRsfqKxKCnoVHQcmff0hnyqOVAorvu8BnBnMSe8ADHfzi6khvGPMmoLTQG37Qa5Y8p
	Iz6FyrHV8p6Y8toxXX56ETWcBbvVUvgnW6oPfwRBWOXo0rF9veJi+zU6ZDjdIWGzgsWjzzGWxzwUP
	mHQ1ZYqjCSVPIhdWCFwIBOkr8KUzoyCsrYCSWk82pVAj/VgC3yfVNvuW6b2s7ac0Xy0nMnciusS8b
	1Jm7Addg542PV0EFTfjOX+NuPndGoAimR3cKalfKNELrrBNAVG2pQ8WR91OwI9vLrX5XsY4mJHfqb
	kXaMeiboq/g9CEYi6oDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llZF1-006733-Ah; Tue, 25 May 2021 15:45:11 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llYtU-005xQX-AP; Tue, 25 May 2021 15:22:58 +0000
Received: by mail-ed1-x531.google.com with SMTP id g7so24544472edm.4;
 Tue, 25 May 2021 08:22:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jnFLOy9hjOHw4JROlHPDAo4HEdlEJqV6yVCmx9E7WOE=;
 b=oa9lM0axOA6a8j8/i3nk3fXMoTXlmmiLWvhNkLN+nYIK5YQjn61rpphcXQdThsYdVj
 ngLYS5BOVGnxCQgI4Yz/RwDC6w02DdFipoQSoM45ahKa0pRIpOzRCE08dDL8aWoF+S6P
 bIzPuS7LCVu2j++NKqGzzVHaTYsc0lfQgiXxNnmHWsAGNi9Affh05Bq9BhpgeaQrDRmV
 VBXUzVBIn1tJDILupIL4RGPLtf+Xw0nGOg8AW3bvSbNdYeYla91BnLy3ZXs/b5ke15SJ
 3N+D02V872xzNju3cVNgyf9OPJrR9GPn4XJ6eVqLEyZDJf1j+eGAZTG3qnwaTqaSMfVN
 FHeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jnFLOy9hjOHw4JROlHPDAo4HEdlEJqV6yVCmx9E7WOE=;
 b=ZFm6rfDShi9seVMI9IgKQj+XtvHGljtMaNqlaXf3AgGeBkXeHDp0EiPIKXnLY0Z+Yj
 GGAQaGkd5+w+xsqvWJJEaydLopC+Eug1sYN5FZkDdZzAf933TSTeW1pADkiGSsp/o3Gs
 dYAhIqXw92F0Amj4lhj+4cviq0P9wJ50BQcNuYTYryPMZOzm2s66OPh7NfrCtFp4E2nO
 hYmcaJYeQPxNLJMe84Rf9cwMhN7PNqdvFI+o3QbAE2o8/OUvJU4vdU+G6t08zpsaYNLJ
 Kc7ecHIUcOqb0v77bahBZw5g9XE71nrzOlxUjs9M9t2/MEVKn5IeHr4hG59x0OORCAYB
 cE2g==
X-Gm-Message-State: AOAM532JaFY12s57irJKmj9lW8F3mh1NjpSnfXMNgaoJnmSszdJQzAFw
 rUatmmD9JPnGASf2m9Wvqw==
X-Google-Smtp-Source: ABdhPJzDbtN0x4SCapimaWgBqEVuQDZAoY1t1mav7kl1qZ2LhBOHzWEBRnS37VTdBle6YLSXA3xCdA==
X-Received: by 2002:a05:6402:281:: with SMTP id
 l1mr32126552edv.58.1621956174713; 
 Tue, 25 May 2021 08:22:54 -0700 (PDT)
Received: from localhost.localdomain ([2a02:810b:f40:e00:b55:da44:4fe2:2760])
 by smtp.googlemail.com with ESMTPSA id
 e23sm11212945eds.2.2021.05.25.08.22.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 May 2021 08:22:54 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Cc: Alex Bee <knaerzche@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
Subject: [PATCH 05/10] media: hantro: add support for Rockchip RK3036
Date: Tue, 25 May 2021 17:22:20 +0200
Message-Id: <20210525152225.154302-6-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210525152225.154302-1-knaerzche@gmail.com>
References: <20210525152225.154302-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_082256_409341_D81185C3 
X-CRM114-Status: GOOD (  18.87  )
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

Add a new RK3036 variant which reflect this differences.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 drivers/staging/media/hantro/hantro_drv.c    |  1 +
 drivers/staging/media/hantro/hantro_hw.h     |  1 +
 drivers/staging/media/hantro/rk3288_vpu_hw.c | 49 ++++++++++++++++++++
 3 files changed, 51 insertions(+)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index 38ea7b24036e..4f3c08e85bb8 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -490,6 +490,7 @@ static const struct of_device_id of_hantro_match[] = {
 	{ .compatible = "rockchip,rk3328-vpu", .data = &rk3328_vpu_variant, },
 	{ .compatible = "rockchip,rk3288-vpu", .data = &rk3288_vpu_variant, },
 	{ .compatible = "rockchip,rk3066-vpu", .data = &rk3066_vpu_variant, },
+	{ .compatible = "rockchip,rk3036-vpu", .data = &rk3036_vpu_variant, },
 #endif
 #ifdef CONFIG_VIDEO_HANTRO_IMX8M
 	{ .compatible = "nxp,imx8mq-vpu", .data = &imx8mq_vpu_variant, },
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index de2bc367a15a..d8d6b0d3c3b3 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -164,6 +164,7 @@ extern const struct hantro_variant rk3399_vpu_variant;
 extern const struct hantro_variant rk3328_vpu_variant;
 extern const struct hantro_variant rk3288_vpu_variant;
 extern const struct hantro_variant rk3066_vpu_variant;
+extern const struct hantro_variant rk3036_vpu_variant;
 extern const struct hantro_variant imx8mq_vpu_variant;
 extern const struct hantro_variant sama5d4_vdec_variant;
 
diff --git a/drivers/staging/media/hantro/rk3288_vpu_hw.c b/drivers/staging/media/hantro/rk3288_vpu_hw.c
index 29805c4bd92f..c4684df4e012 100644
--- a/drivers/staging/media/hantro/rk3288_vpu_hw.c
+++ b/drivers/staging/media/hantro/rk3288_vpu_hw.c
@@ -174,6 +174,13 @@ static irqreturn_t rk3288_vepu_irq(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
+static int rk3036_vpu_hw_init(struct hantro_dev *vpu)
+{
+	/* Bump ACLKs to max. possible freq. to improve performance. */
+	clk_set_rate(vpu->clocks[0].clk, RK3066_ACLK_MAX_FREQ);
+	return 0;
+}
+
 static int rk3066_vpu_hw_init(struct hantro_dev *vpu)
 {
 	/* Bump ACLKs to max. possible freq. to improve performance. */
@@ -209,6 +216,27 @@ static void rk3288_vpu_enc_reset(struct hantro_ctx *ctx)
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
@@ -269,6 +297,10 @@ static const struct hantro_codec_ops rk3288_vpu_codec_ops[] = {
  * VPU variant.
  */
 
+static const struct hantro_irq rk3036_irqs[] = {
+	{ "vdpu", hantro_g1_irq },
+};
+
 static const struct hantro_irq rk3288_irqs[] = {
 	{ "vepu", rk3288_vepu_irq },
 	{ "vdpu", hantro_g1_irq },
@@ -283,6 +315,23 @@ static const char * const rk3288_clk_names[] = {
 	"aclk", "hclk"
 };
 
+const struct hantro_variant rk3036_vpu_variant = {
+	.dec_offset = 0x400,
+	.dec_fmts = rk3066_vpu_dec_fmts,
+	.num_dec_fmts = ARRAY_SIZE(rk3066_vpu_dec_fmts),
+	.postproc_fmts = rk3288_vpu_postproc_fmts,
+	.num_postproc_fmts = ARRAY_SIZE(rk3288_vpu_postproc_fmts),
+	.postproc_regs = &hantro_g1_postproc_regs,
+	.codec = HANTRO_MPEG2_DECODER | HANTRO_VP8_DECODER |
+		 HANTRO_H264_DECODER,
+	.codec_ops = rk3036_vpu_codec_ops,
+	.irqs = rk3036_irqs,
+	.num_irqs = ARRAY_SIZE(rk3036_irqs),
+	.init = rk3036_vpu_hw_init,
+	.clk_names = rk3288_clk_names,
+	.num_clocks = ARRAY_SIZE(rk3288_clk_names)
+};
+
 const struct hantro_variant rk3066_vpu_variant = {
 	.enc_offset = 0x0,
 	.enc_fmts = rk3288_vpu_enc_fmts,
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
