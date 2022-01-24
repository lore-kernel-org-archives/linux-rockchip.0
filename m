Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11C96C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jan 2022 02:36:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ccaRDTrUPKkRflkQZcJ8N/EyVd7ZcMV6FEdvmDv8mUQ=; b=D6Ps8vVptz4NvH
	6TJokwTFmBsatz+xu6R1iu2VYuCdCPDhTfyuQDmzIIikVF/pgqgPx8p4fzCGfm7LxQFsu64pLOGKM
	vvbwW1yjRNj6nBUh601OXl5QSyJ6S5syJmp0UWPqAY/rqAlRGnsy/dxuHzAb9ma8hfKfKfoycmYJk
	jf5a+kRSXWM1iyXRlqdfamy+8y4UwOwMMBcK1Jat/wpui6cCl8uf7/3ZVEqEd2hgvrNXEwesWJQvp
	pWKhuUMNAQdZICHWF854tMogqUml/VVa3UqGdUAzilsc28FPkUCDKwW5cglolsXutNURme2FiQEV4
	ixLShPL25AVVKj3SfR/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nBpDB-0023zO-CN; Mon, 24 Jan 2022 02:36:05 +0000
Received: from mail-io1-xd33.google.com ([2607:f8b0:4864:20::d33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBp98-0021kM-AN; Mon, 24 Jan 2022 02:31:55 +0000
Received: by mail-io1-xd33.google.com with SMTP id a12so17770926iod.9;
 Sun, 23 Jan 2022 18:31:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=py21+nfXCxvH9ed7Sw22S2QRAUR7jaIm1Q/EYwP+WYo=;
 b=da5jAzAfPPfk7mp4wncKvvJCkduKpIsOZSGZ4OC4dqDZ/6Md4hsvMmGsFAXJBLgQLJ
 P5mPJjhdeaaoS7l/uzxg0e/NbeInrpL4Ikdy7c19AhUAZBVGHP2oKNz5K5MzKyuxsJxl
 2ivf5v7yHpBAw75VUsuSnqcH16Djq+vyvLo9jmPMpgoXYoLfkBZFv2iO7tuyvD19k3b1
 s7qmOLY1siN8qT/ycFjkm65zbIq0f2/IQm1sZP8w1pAI9WHUvk/bwae694GpdWMZObv8
 psFvVslJeDiGo9C30C+SE+i/cLLG6mFsrIw++B1UVOLdnA9Yhv5hoX1sv2yZDMzbRGn7
 W/HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=py21+nfXCxvH9ed7Sw22S2QRAUR7jaIm1Q/EYwP+WYo=;
 b=a9ZiisYQAPTvNQuCr4cfNtE90iyItJCS76qaqu0wj19hjPGDtcG1iX84LH5fiLfqDr
 ZC2BDlDtWmcSFkwPsD42olcZ9CZjLWZccE0fR0lH30lUismWacJUb1Pd0tZW8v6/Dvnn
 Fygufdijxxlii9MS/8ytHNAbfysYWnnkBCtFwaJ0FGwg1zq4UGbUjUkoWK7IWCBXHbD+
 tWFxABt3MLlF4ZLaeE6cnsfBEIHjlM2ZYvmsPsCnnhy3zfeVpi4qQfLqcJWxYDsFpGSQ
 g24qnF62aFkx1O4gcA70ER3P78xK3FwybutSC6Vu/nyGWe+WalVYDVhKhNi/m0x340tE
 fOLw==
X-Gm-Message-State: AOAM5322ETM0XZtvdUhkK7kdEZ525zLFg0oRRtirVvTnbs4Qm5bdKZfO
 mwqyPvD8HUOJxVFawdUwwTcDIz0KRp4=
X-Google-Smtp-Source: ABdhPJwUjw8XT5/iEV0iZ2cPeS0gZ9iHkopEETPmY56ydUqeJ6JKeUC8o3B9CTZsNY/bhPBfUXxbHg==
X-Received: by 2002:a02:29cc:: with SMTP id p195mr5841271jap.134.1642991513028; 
 Sun, 23 Jan 2022 18:31:53 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:582d:ad0e:e5a6:94b6])
 by smtp.gmail.com with ESMTPSA id w4sm6625633ilq.56.2022.01.23.18.31.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 23 Jan 2022 18:31:52 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org, shawnguo@kernel.org,
 aford@beaconembedded.com, Adam Ford <aford173@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lucas Stach <l.stach@pengutronix.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-staging@lists.linux.dev
Subject: [PATCH V3 09/10] media: hantro: Add support for i.MX8MM Hantro-G1
Date: Sun, 23 Jan 2022 20:31:23 -0600
Message-Id: <20220124023125.414794-10-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220124023125.414794-1-aford173@gmail.com>
References: <20220124023125.414794-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220123_183154_390338_9D64A530 
X-CRM114-Status: GOOD (  11.86  )
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

The i.MX8MM has a Hantro G1 video decoder similar to the
imx8mq but lacks the post-processor present in the imx8mq.
Add support in the driver for it with the post-processing
removed.

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index a670ddd29c4c..b281ac4fb79c 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -615,6 +615,7 @@ static const struct of_device_id of_hantro_match[] = {
 	{ .compatible = "rockchip,rk3399-vpu", .data = &rk3399_vpu_variant, },
 #endif
 #ifdef CONFIG_VIDEO_HANTRO_IMX8M
+	{ .compatible = "nxp,imx8mm-vpu-g1", .data = &imx8mm_vpu_g1_variant, },
 	{ .compatible = "nxp,imx8mq-vpu", .data = &imx8mq_vpu_variant, },
 	{ .compatible = "nxp,imx8mq-vpu-g1", .data = &imx8mq_vpu_g1_variant },
 	{ .compatible = "nxp,imx8mq-vpu-g2", .data = &imx8mq_vpu_g2_variant },
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index f0bd2ffe290b..c00b46e06055 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -299,6 +299,7 @@ enum hantro_enc_fmt {
 	ROCKCHIP_VPU_ENC_FMT_UYVY422 = 3,
 };
 
+extern const struct hantro_variant imx8mm_vpu_g1_variant;
 extern const struct hantro_variant imx8mq_vpu_g1_variant;
 extern const struct hantro_variant imx8mq_vpu_g2_variant;
 extern const struct hantro_variant imx8mq_vpu_variant;
diff --git a/drivers/staging/media/hantro/imx8m_vpu_hw.c b/drivers/staging/media/hantro/imx8m_vpu_hw.c
index 849ea7122d47..9802508bade2 100644
--- a/drivers/staging/media/hantro/imx8m_vpu_hw.c
+++ b/drivers/staging/media/hantro/imx8m_vpu_hw.c
@@ -327,3 +327,15 @@ const struct hantro_variant imx8mq_vpu_g2_variant = {
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
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
