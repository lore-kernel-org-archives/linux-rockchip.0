Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDE5BC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Dec 2021 04:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qaB+jBYlZ12JwBOd9jb0HJZ7QiC1GpPJdoiE8I3iI9g=; b=dDhccbNCVHUhw0
	BvDhXGH0d/gt/W3yLpyQD6htWF6JlNZ/DzLvsmRFCfCYSDAeOATDcE+auVSW40gQes4n3uLvnD49l
	VtkJF+94ELXjPbk8nbfz3if3/kFXv762yXdAajQ9+YQHmLB6Gldss2ox1XWB93GpXITsar3+qPfbQ
	xAQiHVkiRW1n6n7qgqvCwKt0qkZvQ5eHEJa4ZIYkwZtTtL4LcibBTHq2twrz+7BzRN8iOryKivl3p
	vtv2QzNFlc2AcT34cXDmm0/hEk1AG1lepusns9Z2FCKXViJGCFnk4figWQk/23SSYmjpi84XStsW5
	5pimft7kY8Ewvq+msuuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msdXm-00AsZz-PY; Thu, 02 Dec 2021 04:18:02 +0000
Received: from mail-il1-x12b.google.com ([2607:f8b0:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msdXR-00AsTb-CH; Thu, 02 Dec 2021 04:17:42 +0000
Received: by mail-il1-x12b.google.com with SMTP id r2so27627088ilb.10;
 Wed, 01 Dec 2021 20:17:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7v2+oft1GyYB1gu7XPgznWpvyo9VLPmaTWLL02YmVJw=;
 b=Gupu/bzhRAKFcPwbw5mC7IDkKK8us81cRORt6i+p7IoMrk8zDKiV5GV8qkktwNHnUA
 2ZL83W7wFPJAMVjV8jq+Dw6vo9zSTTGEZtqpnnFPhHj70hTf1Njo5jjZdqQ6WBb4KCRj
 x0PtXchV37xjSFhuYOpDjf4v2cZlXyfSW3UOhmF/AO/I1oS9nDCLOqicvkiWFB8YFhRd
 pfPPB6f50rCbIiry07JjWOL3qS6HQDn9O61TV/sqFY8cxPjPZe6qTZTrP7k1pPERTFTL
 9fdduFoyW+g75vcKrj9iTIjJCQWUZMjggTA5hphpMJQTG1PW3VirtI/hAKFmjhJn9U85
 WwNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7v2+oft1GyYB1gu7XPgznWpvyo9VLPmaTWLL02YmVJw=;
 b=4svWOf5SknsGaouSO6Da2zgwgkAGqR+adbijqMhnzMSzedYvTX8O5YBh+elJ+PWrqV
 V3xTvmOAR24j2N6yTntyYPcfCjTqtPynpfbBJ99CLggiF7rCebSNxtGr+lg9xMPjdjHm
 TmUndGX3a3LpmXbTAwpk0CBb3anNQci1H6tUxuYS3NK6YlQ2YbS8aJDD6P1Mqckrtbbz
 aFqEgMvIZ1Pvkd/I94EeWQdLi4LoFOcPJo1KYXktDL3NXIHNavT+RNLQlZ4lkvb/2PvJ
 KY1mpwwUxp0c9SQlXg+9/C5j//r1W7gydmUSVeDcIxKWhtvWuStN87uRCKq23QihIGPv
 iMhQ==
X-Gm-Message-State: AOAM530Jnv1ZiLb3aue2Q4DeYj4OA472LIrHlNurX5WEF1py1VjPXj0z
 4oJFcmpn9CAcJ7QbmnWXpuA=
X-Google-Smtp-Source: ABdhPJwyqu5GR98KMLnf7FhHNm5+n5eVJzHi8UAH/XrT//TI/a/UD/bGqdf0toD3ZEVtLzF9P54kEg==
X-Received: by 2002:a92:c5ad:: with SMTP id r13mr12527595ilt.53.1638418659259; 
 Wed, 01 Dec 2021 20:17:39 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:c405:2c26:c2b8:506e])
 by smtp.gmail.com with ESMTPSA id t14sm1030603ilh.62.2021.12.01.20.17.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Dec 2021 20:17:38 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: ezequiel@vanguardiasur.com.ar, tharvey@gateworks.com, nicolas@ndufresne.ca,
 aford@beaconembedded.com, hverkuil-cisco@xs4all.nl,
 Adam Ford <aford173@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev
Subject: [RFC V3 1/2] media: hantro: Add support for i.MX8M Mini
Date: Wed,  1 Dec 2021 22:16:26 -0600
Message-Id: <20211202041627.291625-2-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211202041627.291625-1-aford173@gmail.com>
References: <20211202041627.291625-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211201_201741_446351_43E24052 
X-CRM114-Status: GOOD (  14.48  )
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

The i.MX8M Mini has a similar implementation of the Hantro G1 and
G2 decoders, but the Mini uses the vpu-blk-ctrl for handling the
VPU resets through the power domain system.  As such, there are
functions present in the 8MQ that are not applicable to the Mini
which requires the driver to have a different compatible flags.

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index ab2467998d29..44b604d25a33 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -608,6 +608,8 @@ static const struct of_device_id of_hantro_match[] = {
 	{ .compatible = "rockchip,rk3399-vpu", .data = &rk3399_vpu_variant, },
 #endif
 #ifdef CONFIG_VIDEO_HANTRO_IMX8M
+	{ .compatible = "nxp,imx8mm-vpu", .data = &imx8mm_vpu_variant, },
+	{ .compatible = "nxp,imx8mm-vpu-g2", .data = &imx8mm_vpu_g2_variant },
 	{ .compatible = "nxp,imx8mq-vpu", .data = &imx8mq_vpu_variant, },
 	{ .compatible = "nxp,imx8mq-vpu-g2", .data = &imx8mq_vpu_g2_variant },
 #endif
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index dbe51303724b..05cfafd9f1d7 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -299,6 +299,8 @@ enum hantro_enc_fmt {
 	ROCKCHIP_VPU_ENC_FMT_UYVY422 = 3,
 };
 
+extern const struct hantro_variant imx8mm_vpu_g2_variant;
+extern const struct hantro_variant imx8mm_vpu_variant;
 extern const struct hantro_variant imx8mq_vpu_g2_variant;
 extern const struct hantro_variant imx8mq_vpu_variant;
 extern const struct hantro_variant px30_vpu_variant;
diff --git a/drivers/staging/media/hantro/imx8m_vpu_hw.c b/drivers/staging/media/hantro/imx8m_vpu_hw.c
index 1a43f6fceef9..871df29dcfc7 100644
--- a/drivers/staging/media/hantro/imx8m_vpu_hw.c
+++ b/drivers/staging/media/hantro/imx8m_vpu_hw.c
@@ -271,6 +271,38 @@ static const struct hantro_codec_ops imx8mq_vpu_g2_codec_ops[] = {
 	},
 };
 
+static const struct hantro_codec_ops imx8mm_vpu_codec_ops[] = {
+	[HANTRO_MODE_MPEG2_DEC] = {
+		.run = hantro_g1_mpeg2_dec_run,
+		.init = hantro_mpeg2_dec_init,
+		.exit = hantro_mpeg2_dec_exit,
+	},
+	[HANTRO_MODE_VP8_DEC] = {
+		.run = hantro_g1_vp8_dec_run,
+		.init = hantro_vp8_dec_init,
+		.exit = hantro_vp8_dec_exit,
+	},
+	[HANTRO_MODE_H264_DEC] = {
+		.run = hantro_g1_h264_dec_run,
+		.init = hantro_h264_dec_init,
+		.exit = hantro_h264_dec_exit,
+	},
+};
+
+static const struct hantro_codec_ops imx8mm_vpu_g2_codec_ops[] = {
+	[HANTRO_MODE_HEVC_DEC] = {
+		.run = hantro_g2_hevc_dec_run,
+		.init = hantro_hevc_dec_init,
+		.exit = hantro_hevc_dec_exit,
+	},
+	[HANTRO_MODE_VP9_DEC] = {
+		.run = hantro_g2_vp9_dec_run,
+		.done = hantro_g2_vp9_dec_done,
+		.init = hantro_vp9_dec_init,
+		.exit = hantro_vp9_dec_exit,
+	},
+};
+
 /*
  * VPU variants.
  */
@@ -286,6 +318,11 @@ static const struct hantro_irq imx8mq_g2_irqs[] = {
 static const char * const imx8mq_clk_names[] = { "g1", "g2", "bus" };
 static const char * const imx8mq_reg_names[] = { "g1", "g2", "ctrl" };
 
+static const char * const imx8mm_g1_clk_names[] = { "g1", "bus" };
+static const char * const imx8mm_g1_reg_names[] = { "g1" };
+static const char * const imx8mm_g2_clk_names[] = { "g2", "bus" };
+static const char * const imx8mm_g2_reg_names[] = { "g2" };
+
 const struct hantro_variant imx8mq_vpu_variant = {
 	.dec_fmts = imx8m_vpu_dec_fmts,
 	.num_dec_fmts = ARRAY_SIZE(imx8m_vpu_dec_fmts),
@@ -321,3 +358,31 @@ const struct hantro_variant imx8mq_vpu_g2_variant = {
 	.clk_names = imx8mq_clk_names,
 	.num_clocks = ARRAY_SIZE(imx8mq_clk_names),
 };
+
+const struct hantro_variant imx8mm_vpu_variant = {
+	.dec_fmts = imx8m_vpu_dec_fmts,
+	.num_dec_fmts = ARRAY_SIZE(imx8m_vpu_dec_fmts),
+	.codec = HANTRO_MPEG2_DECODER | HANTRO_VP8_DECODER |
+		 HANTRO_H264_DECODER,
+	.codec_ops = imx8mm_vpu_codec_ops,
+	.irqs = imx8mq_irqs,
+	.num_irqs = ARRAY_SIZE(imx8mq_irqs),
+	.clk_names = imx8mm_g1_clk_names,
+	.num_clocks = ARRAY_SIZE(imx8mm_g1_clk_names),
+	.reg_names = imx8mm_g1_reg_names,
+	.num_regs = ARRAY_SIZE(imx8mm_g1_reg_names),
+};
+
+const struct hantro_variant imx8mm_vpu_g2_variant = {
+	.dec_offset = 0x0,
+	.dec_fmts = imx8m_vpu_g2_dec_fmts,
+	.num_dec_fmts = ARRAY_SIZE(imx8m_vpu_g2_dec_fmts),
+	.codec = HANTRO_HEVC_DECODER | HANTRO_VP9_DECODER,
+	.codec_ops = imx8mq_vpu_g2_codec_ops,
+	.irqs = imx8mq_g2_irqs,
+	.num_irqs = ARRAY_SIZE(imx8mq_g2_irqs),
+	.clk_names = imx8mm_g2_clk_names,
+	.num_clocks = ARRAY_SIZE(imx8mm_g2_clk_names),
+	.reg_names = imx8mm_g2_reg_names,
+	.num_regs = ARRAY_SIZE(imx8mm_g2_reg_names),
+};
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
