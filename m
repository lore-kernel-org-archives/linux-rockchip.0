Return-Path: <SRS0=Ct0Y=KW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79AB4C47089
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 17:07:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3402A6124C
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 17:07:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3402A6124C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hAUfj8DKY7txgkNqGbTXy5xLO03j/1ZVLbmAtOh+e0Q=; b=iJ38g8X1lxjskw
	P6pS6BsV4IY6xC4esC7fBjVUQ5gG68IYmNhxYk75GAwj/Rck2hjvdF7lZjM3B/yiCsrBXNtFHywgS
	uUCPF73wjfqn1VWC5SvzRxnwV/Mg+zi2D7gJIx1s0E+2Tx+IPelYuNf4SjQGYNkiNNBscgCTnpz4e
	W6nnrg1xtGrL0MJd5jGfDZ/7UzR6Iz6vM2iIJ9+uMlN2AtHDSzuOAbSp814H4LX6oYY5HKj5yYKiw
	pi/M/mUVxmG3J3skuB9ilmwxyS6oo4idF7BVecbvOxbr+vf/yjLZoyVmzbz87Ml8X3OWDonde1Wl/
	5u8mw8FYvRngnA9aWZ8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmJTo-007vtY-KW; Thu, 27 May 2021 17:07:32 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmICN-007KMZ-Jf; Thu, 27 May 2021 15:45:32 +0000
Received: by mail-ej1-x635.google.com with SMTP id l3so846395ejc.4;
 Thu, 27 May 2021 08:45:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yNDXks9FLR1I5yslIUR5VMwMt2vdynAEYi3WAzNuIhY=;
 b=ncyQy3M9qBDJzY5vF/S1HSzx/jwBbS/sZ18FCaJIY0QmuxnuKy6Nw39Af+ur2XPCeU
 cUAuZItPTeR903uCj2gYnNSmi1pgjTdBLB5Gz1zHjElN0IDM4XpN7EJOGIFbQSST7G7D
 Fz6ScxZr0CJpqq+EGMXOAgC+XSJMKsoP1Wkg/I7EdtMy4C+kWThmzC/DenjSDKTcBbRS
 179gDcPh080+junPRS5niCTiKSyL1hCqfNFdQXJMq2cIJ5zIQEV5njD4kTk0VDIW8CcK
 2nuXbnfF6Hg8pcDqjxRN6GDDpn4XAiy/6oqL1xDc1aRVA+mgQMPsffTW7sEDT5QJg+r3
 i7EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yNDXks9FLR1I5yslIUR5VMwMt2vdynAEYi3WAzNuIhY=;
 b=Mf1enF993YbJ/ZGZDjfep6IxVUMMIArbp/D2NO4FCUMTrCe1gpTWY+Ys/aOaG5rz5Z
 uwh842s9K/ObEmD6LA9Tg/Ue/I8NOGiAF0lILUdEAeH/6Xxa93AHTFNVPJAHlAeo0sP6
 93H+5WkBFY0NZ/ozYbqaCcVIKPdf1WvrIj/mf092dLGt5qBgMmwslG37ibi58tafqEdo
 1ipxgiCVkZaTj8FQsLZPBN+fYQoBghFOMB2V+yrUrxzxCfD4EeelHtm0ewQAzRBIb3Wv
 t+mnhftPC/TQbB99DKk1mQBMK6QVrEoE8rrlCJOOH7Fpmc+Y/rqrOpuwqFnnVQ8U8p0U
 g+ng==
X-Gm-Message-State: AOAM530rpZ+PCBb2amB+K80mGQ5Gm9xM21yiF/oJse7Fqc6bH354O1nU
 ii9FioXmFtpojp0rCk997w==
X-Google-Smtp-Source: ABdhPJxyulIDT7lZSx+lDZc2lTMakSrt9KZVAuVh6gIHusstZGS92ceQkIkm8InG6m1lyq5JmMXkJQ==
X-Received: by 2002:a17:906:454b:: with SMTP id
 s11mr4489001ejq.3.1622130324450; 
 Thu, 27 May 2021 08:45:24 -0700 (PDT)
Received: from localhost.localdomain ([2a02:810b:f40:e00:fefd:4d98:c981:7f97])
 by smtp.googlemail.com with ESMTPSA id
 u6sm1178826ejr.55.2021.05.27.08.45.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 May 2021 08:45:24 -0700 (PDT)
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
Subject: [PATCH v2 07/12] media: hantro: add support for Rockchip RK3036
Date: Thu, 27 May 2021 17:44:50 +0200
Message-Id: <20210527154455.358869-8-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210527154455.358869-1-knaerzche@gmail.com>
References: <20210525152225.154302-1-knaerzche@gmail.com>
 <20210527154455.358869-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210527_084527_700908_1AABBF78 
X-CRM114-Status: GOOD (  19.34  )
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

 Changes in v2:
 - rename rk3036_irqs -> rockchip_vdpu1_irqs
 - fix spelling error

 drivers/staging/media/hantro/hantro_drv.c     |  1 +
 drivers/staging/media/hantro/hantro_hw.h      |  1 +
 .../staging/media/hantro/rockchip_vpu_hw.c    | 49 +++++++++++++++++++
 3 files changed, 51 insertions(+)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index ae6d970b7536..64cb91d102cc 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -486,6 +486,7 @@ static const struct v4l2_file_operations hantro_fops = {
 
 static const struct of_device_id of_hantro_match[] = {
 #ifdef CONFIG_VIDEO_HANTRO_ROCKCHIP
+	{ .compatible = "rockchip,rk3036-vpu", .data = &rk3036_vpu_variant, },
 	{ .compatible = "rockchip,rk3066-vpu", .data = &rk3066_vpu_variant, },
 	{ .compatible = "rockchip,rk3288-vpu", .data = &rk3288_vpu_variant, },
 	{ .compatible = "rockchip,rk3328-vpu", .data = &rk3328_vpu_variant, },
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index 0da8da753447..f44dc5921e87 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -161,6 +161,7 @@ enum hantro_enc_fmt {
 };
 
 extern const struct hantro_variant imx8mq_vpu_variant;
+extern const struct hantro_variant rk3036_vpu_variant;
 extern const struct hantro_variant rk3066_vpu_variant;
 extern const struct hantro_variant rk3288_vpu_variant;
 extern const struct hantro_variant rk3328_vpu_variant;
diff --git a/drivers/staging/media/hantro/rockchip_vpu_hw.c b/drivers/staging/media/hantro/rockchip_vpu_hw.c
index deb263de8fec..d4b048d3b6b9 100644
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
