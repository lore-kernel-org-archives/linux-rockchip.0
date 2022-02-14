Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95D4CC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Feb 2022 21:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=705GMmsOk3nj7GP+0ceekbdUBASfVjt6Pcj6RSgBT5U=; b=3OliJmJ8lWbK7H
	vgpwM/Yp/vC/LM4ejeIqhjQsbmpgWdA6ADjf7m/oJvCSdX20FcXPvRXTvU6X/+1yJSjcMNhUgJk69
	sz05ALTWpLg35FKrMXd2TzDP54NZml3K+hIIAyjkcF3ygjTFhTCBB9E/4bIf1QSBOsgpeN+kgW5/D
	1JnMZFfG+xUxbY+k+XnqG46SKswNJ9KdtNVgl4Ri/+o9Awnhl7x1+y6QQTCvZMotytgxIpIEn7DjU
	cGSBVHY50bAHQoUddTcqyL1GRhlOegXo3lSn58kGm3i8rLUwQEvuwedkMzfMxcRv744ASqSOjD4gN
	vPP2v93mOnCrMm5ALhmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJj8a-00H6kZ-QU; Mon, 14 Feb 2022 21:44:00 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJiuF-00H1EC-9w
 for Linux-rockchip@lists.infradead.org; Mon, 14 Feb 2022 21:29:13 +0000
Received: by mail-lj1-x230.google.com with SMTP id d2so1745125ljl.1
 for <Linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 13:29:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CkXrAzUFSY/e5T9rKqwMBznq2Sq4ji4dfshU2pB68VY=;
 b=ikMA6Pao2D4vOKU4mdw3H/jO6uD6kWySYHOyurn/qC3yp4V+W5XRU7Moe7zmqFY2op
 LoNKUPbagZHGE+SgbdlcDKgLBH6cnqHaiu8ux0gy7Va/Gbi+bmdjV0fbpycEzFeVbib2
 OxSMqPgXQ2aSKM/Th7Noj2fBNz92q6m/sq7jzExQEkV9WOWkfv7ahByt9YBLm4emRirx
 8VVHg3cO9dzkwrZ224qNKamxZqFV0ve+P5bNi2FT7dQrSjKi1ta945nVUKr/cWSiHFD2
 dffnGFmsUUWWB6HLL2hBTcTDCgwyJAne9QXmhrZmCwdlWgEbjDe3+/Du4KAx74KdpnMG
 CB2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CkXrAzUFSY/e5T9rKqwMBznq2Sq4ji4dfshU2pB68VY=;
 b=qmPEKIU2HwqQDhMQen3Wuy+QcYeXcSBIqaA5CL9OHBj2vCm9b6ZFfBvGEtOIpNNYFF
 2WmkyN+rymuvEgmDHtUMi4L5o9UHRHWqEusyu+UkPZlzOkrMdbv8TdAkdf9K9UCUs4ct
 Qjh4impdLNWv/pP+oTGx/Ftc8Ziof06zX1HRKoW5sn5Wg2JWwz1/7sBV3pz6LGmdec85
 29IiZld2ldzr9u6iw7TKshKMiZ/1+QN5tEjYhZux1ToC0xWbbwdGKTB+U0ll0opD8jYG
 UDGv6fy3aWZ3sIN63BQo3TiU80kGZuMXH/EGKhOTxOwJ1wEa/DxBGQbZdMdcvizN2snA
 fIwg==
X-Gm-Message-State: AOAM530ZypA/7Ty+Sn7cpbcmJKmu/Eg6mYMlyGt9iFidziDiqvynAuW7
 WlsHoPLrNx7/3mlUIL2z70GeYyHn1n+jww==
X-Google-Smtp-Source: ABdhPJx8zS75cmKpRFetRZGNVYIjjCd1PRU3OHm8pQBavNjPfZDe4n/6b7rNfBm0iqqtn4IRturZ6Q==
X-Received: by 2002:a05:651c:168c:: with SMTP id
 bd12mr47042ljb.63.1644874148685; 
 Mon, 14 Feb 2022 13:29:08 -0800 (PST)
Received: from localhost (31-178-191-245.dynamic.chello.pl. [31.178.191.245])
 by smtp.gmail.com with ESMTPSA id
 m28sm650982ljc.1.2022.02.14.13.29.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 14 Feb 2022 13:29:08 -0800 (PST)
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
To: linux-media@vger.kernel.org,
	Linux-rockchip@lists.infradead.org
Cc: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Subject: [PATCH v2 1/3] media: hantro: Add support for Hantro G1 on RK356x
Date: Mon, 14 Feb 2022 22:29:53 +0100
Message-Id: <20220214212955.1178947-1-piotr.oniszczuk@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_132911_428315_85BF1DDF 
X-CRM114-Status: GOOD (  11.06  )
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

RK356x has Hantro G1 video decoder capable to decode MPEG2/H.264/VP8
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
