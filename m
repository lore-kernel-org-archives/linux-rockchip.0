Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4CB9C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jan 2022 17:25:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o48amnKLgUtqUtz1UwsMyNuiMY2+OxFBdMqcLlFxISA=; b=njgsx0K35iDC5z
	5HxqvX8NOWQrh8fkdfFGyj1JqcR7HIVH8/a5ayVY3U5u/v0/IkwXhe7gtslBUZVi+8xeiLRdtCMif
	FbNJB+gKdHgX1X9EogZ6joxSwF3qLMR2VddQEjN6GI2RC9s6tlp/VOsQy90JDSZce6gQWWGm8VDWl
	VsyrIQfCqY282E1DwNvgyQHwBrulAD2vNVTUDHmo2i2b0Odnpq0x+C6q8CnwNcNM86BEh6rSwDjJu
	U9v14mxv68dw84w0k775lzz14xeW67nL0NRQ1hst8dmoTuE7Vq/MY+hyo7mve9wcBPbSc4tpqRn3Y
	FYEPPX6ECZYj0KapaoQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCPZg-008yw4-K8; Tue, 25 Jan 2022 17:25:44 +0000
Received: from mail-io1-xd2f.google.com ([2607:f8b0:4864:20::d2f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCPNB-008tTO-Ho; Tue, 25 Jan 2022 17:12:51 +0000
Received: by mail-io1-xd2f.google.com with SMTP id i62so8791234ioa.1;
 Tue, 25 Jan 2022 09:12:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XdxEZ7YOE8VCe+Ly6ca0cU/orZy3e2bgmci5GFke7S4=;
 b=Nf/57L7y2j6kymmxNnIEbBlYSt3knUksoS+BuxMQ/gMtOGsDWiNXTF+NovrOH6T9R0
 5nxuHmzxDb1qNm0qbxAKkfFWqK9ClBgIPADGPG96ccn2T+NVvKEFsG5Kjt80egTfm89X
 xO1BlhMa9ziZ7eL6OmnRHjZKwzMHa8IednpTfriJ4PBuuFGOuISgxhHbYoSayQtJ3oIG
 jwA+oF1Jtzrs4XRG0CTdNqgBS3QZL0qEN5Sbq1H5281AaDOlIBfMeNtqdmj2rkbeyFVt
 hveJXHXr8iiBAeMSdH6ghTdWccf1xw6+ohFe831H2J14+HM50hsovnVwio6S7fMR+4qb
 YYaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XdxEZ7YOE8VCe+Ly6ca0cU/orZy3e2bgmci5GFke7S4=;
 b=WmRXXAqwEvCMTaLf+N3esfHY2Fpfk/SrGJTbtkO6zTzOztSkDESAibKtXdsEbmZfpA
 sQ+dGL77EUPAfC/VhtwHuFemV7dShkxGTfzaOzjbtCi6qo8RNh/S7Csgvqy2T++vUGOt
 UIeX2qtZinuIUOOaPEWwTb3bEjABMs9C7bmObGBAHHCO+OD2xu6wJ3mt+wn2bL1tiQSa
 jV8eZ+/+jsW4ZF8ZRBC+HVhdLJbCnRcnYTDdsZeJOOSnU54eqWEKhkNhGH7LoGoKRUx8
 084CqJsOiwWskbecHvQWjRm4CLNClauOJGq2rZZ4otKPEUZ+SK9vszqo6FXD8zBAvFwi
 atSQ==
X-Gm-Message-State: AOAM533i4YB5YcPltTbTYr5DgWDsxWfyFU51/8WRafec5oTgi2rImmAp
 sF0jJhhbAwPyov9PVSOqgbM=
X-Google-Smtp-Source: ABdhPJwZ3uFCY2UY3PIrcdmD6IkV07uqs3j1K+i9dUSqnDgifh7kXW2qt7LOwNYp7nowhjXrJwqaXQ==
X-Received: by 2002:a02:cb01:: with SMTP id j1mr3442600jap.194.1643130768156; 
 Tue, 25 Jan 2022 09:12:48 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:6592:b6fe:71b1:9f4c])
 by smtp.gmail.com with ESMTPSA id m14sm8090291iov.0.2022.01.25.09.12.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Jan 2022 09:12:47 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: aford@beaconembedded.com, cphealy@gmail.com,
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
Subject: [PATCH V4 10/11] media: hantro: Add support for i.MX8MM Hantro-G1
Date: Tue, 25 Jan 2022 11:11:27 -0600
Message-Id: <20220125171129.472775-11-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220125171129.472775-1-aford173@gmail.com>
References: <20220125171129.472775-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220125_091249_653531_C5A1F435 
X-CRM114-Status: GOOD (  12.00  )
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
Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index f56e8b3efada..8f020ba15194 100644
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
