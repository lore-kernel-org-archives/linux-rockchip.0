Return-Path: <SRS0=5KZ+=PZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C5CC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Nov 2021 18:39:11 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7438361165
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Nov 2021 18:39:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7438361165
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8IxmYcdFvuoz0zjfeF4LRB6cK6kBZcX/eW55DUSn328=; b=QmGLhMB73QEYjW
	PaTeQxH3Hiw10jEjlskawOE8AURs40eF6Wi8v7Vs+xi0w1XjL1nm+dImy/TJEISwIr8/unfJUmvIh
	OwZ5D+5O9XQped0z2svBqrkjMYi3QzTvg09/oc9LhN0sltfGYiTxJ6uQvnOoXHgxE7B9vFlz6Yvmp
	hs2tW33exBJMZ4X2jobpar7sgCXnvNKFrN24v0lcjqG5/GHmqBGEVEKrk1C2vSh2FHxexfSv3g71w
	mYYBwTXhLeH+t2b7YdcuZws6rf5rxtAqLiabFPhqlZ70Lz8rn1/XR8ierRH9LE3m07Z6Ecs66fj1b
	XuepUpqnzatuPvkfmCZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mjQaq-00DXV2-CO; Sat, 06 Nov 2021 18:39:08 +0000
Received: from mail-io1-xd2b.google.com ([2607:f8b0:4864:20::d2b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mjQaG-00DXAX-IH; Sat, 06 Nov 2021 18:38:34 +0000
Received: by mail-io1-xd2b.google.com with SMTP id c3so1033860iob.6;
 Sat, 06 Nov 2021 11:38:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rgiz15qYX3oEufyKXbQCuXrDK3Q1VWC1lY06kwDb9uA=;
 b=Pdy/fAbBPGgnB9d8h7vSQwsHYEe1V9h6UucxVA1D6ty//nVA+aQoK47FPUw+STsqyI
 zV1brbquXV3HfSbl2qvZ6GkzN6m7wWtU6nGP2Cth4GIqTQkKYqS4mNQLCw5cMU0YUvO8
 EKcFtaQ3OvTw6Cgpt4ozdrVXUMldcOEOCSQ5tVjLnTTzWALkeYayX7VWeGyZjfFQGHLy
 v+nmTSIXl/dRblUwLJ3XrBLwlIi3LwBwJeu4nahKUZIDltg+rh/0snEgGOhj821rbJp4
 ZMi8p4ljukWYn8Iw5xDZGxlXQoSTn4JUrz9Pye9tzKcsTJQpOkQukp63azWHvEClVNrW
 Ky2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rgiz15qYX3oEufyKXbQCuXrDK3Q1VWC1lY06kwDb9uA=;
 b=PVOH+9POUAMaUfVekG9kazv42JuCdtgHruNMj5NXUxGHyrVRjUWTrH0KW8U9J5vv2J
 UqVDyqVGTUDPlgISwVpgolqc0VUbMzDZO1xGM+B0F2UdiFaJeRorMTN6hmLJCMRHUqYj
 E7L1eHhIgSu8kDI/HRXFNG+5y3XbXLYvf/m704wMm6+UwrzCqS3bDNIJbjRE5baIiOSk
 jbQPJm9SG4n16Ci4ryuMt15LjhNflQNOnDt2SJWQyPNoH+M6vcs3cUaerTJ/zVffEo9K
 Mlh+XbSeTXVhSsTXseacaxZzOpfeh2OMRz987em7RjFH4gn9c2nNZ977lo88XNBCO0fA
 5mHA==
X-Gm-Message-State: AOAM533j+kxWp47iGAi7w12TmVY1XtyEKCVz7GJgaBSE8Iuwv5cOIi/m
 9a1kZzWkb8i4+T6OqP4l3AU=
X-Google-Smtp-Source: ABdhPJxv6RK3Ow5lFD8v0rWXtK/tue2/IC9cGteE5D1sQHZ/alZ94eoGOc8QtRyW04SbWj8D0MMetA==
X-Received: by 2002:a6b:5105:: with SMTP id f5mr5060039iob.216.1636223911922; 
 Sat, 06 Nov 2021 11:38:31 -0700 (PDT)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:64ba:1c0f:6d36:c11d])
 by smtp.gmail.com with ESMTPSA id o10sm7174077ilu.49.2021.11.06.11.38.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 06 Nov 2021 11:38:31 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: tharvey@gateworks.com, frieder.schrempf@kontron.de, marek.vasut@gmail.com,
 jagan@amarulasolutions.com, aford@beaconembedded.com,
 cstevens@beaconembedded.com, Adam Ford <aford173@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heiko Stuebner <heiko@sntech.de>, Lucas Stach <l.stach@pengutronix.de>,
 Joakim Zhang <qiangqing.zhang@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Alice Guo <alice.guo@nxp.com>,
 linux-rockchip@lists.infradead.org (open list:HANTRO VPU CODEC DRIVER),
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), 
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/FREESCALE IMX / MXC
 ARM ARCHITECTURE), linux-kernel@vger.kernel.org (open list),
 linux-staging@lists.linux.dev (open list:STAGING SUBSYSTEM)
Subject: [RFC 3/5] media: hantro: Rename ROCKCHIP_VPU_ENC_FMT to
 HANTRO_VPU_ENC_FMT
Date: Sat,  6 Nov 2021 13:37:59 -0500
Message-Id: <20211106183802.893285-4-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211106183802.893285-1-aford173@gmail.com>
References: <20211106183802.893285-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211106_113832_627676_83E005B9 
X-CRM114-Status: GOOD (  14.26  )
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

The H1 encoder used on some Rockchip devices appears to be the
same or similar H1 encoder used on the i.MX8M Mini, so let's
rename the supported formats to a more generic term like
HANTRO_VPU_ENC_FMT.

There are no functional changes.

Signed-off-by: Adam Ford <aford173@gmail.com>
---
 drivers/staging/media/hantro/hantro_hw.h      | 16 ++++++------
 .../staging/media/hantro/rockchip_vpu_hw.c    | 26 +++++++++----------
 2 files changed, 21 insertions(+), 21 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index ae7c3fff760c..c276ecd57066 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -199,16 +199,16 @@ struct hantro_codec_ops {
 /**
  * enum hantro_enc_fmt - source format ID for hardware registers.
  *
- * @ROCKCHIP_VPU_ENC_FMT_YUV420P: Y/CbCr 4:2:0 planar format
- * @ROCKCHIP_VPU_ENC_FMT_YUV420SP: Y/CbCr 4:2:0 semi-planar format
- * @ROCKCHIP_VPU_ENC_FMT_YUYV422: YUV 4:2:2 packed format (YUYV)
- * @ROCKCHIP_VPU_ENC_FMT_UYVY422: YUV 4:2:2 packed format (UYVY)
+ * @HANTRO_VPU_ENC_FMT_YUV420P: Y/CbCr 4:2:0 planar format
+ * @HANTRO_VPU_ENC_FMT_YUV420SP: Y/CbCr 4:2:0 semi-planar format
+ * @HANTRO_VPU_ENC_FMT_YUYV422: YUV 4:2:2 packed format (YUYV)
+ * @HANTRO_VPU_ENC_FMT_UYVY422: YUV 4:2:2 packed format (UYVY)
  */
 enum hantro_enc_fmt {
-	ROCKCHIP_VPU_ENC_FMT_YUV420P = 0,
-	ROCKCHIP_VPU_ENC_FMT_YUV420SP = 1,
-	ROCKCHIP_VPU_ENC_FMT_YUYV422 = 2,
-	ROCKCHIP_VPU_ENC_FMT_UYVY422 = 3,
+	HANTRO_VPU_ENC_FMT_YUV420P = 0,
+	HANTRO_VPU_ENC_FMT_YUV420SP = 1,
+	HANTRO_VPU_ENC_FMT_YUYV422 = 2,
+	HANTRO_VPU_ENC_FMT_UYVY422 = 3,
 };
 
 extern const struct hantro_variant imx8mm_vpu_g2_variant;
diff --git a/drivers/staging/media/hantro/rockchip_vpu_hw.c b/drivers/staging/media/hantro/rockchip_vpu_hw.c
index d4f52957cc53..7c8dc211dbc8 100644
--- a/drivers/staging/media/hantro/rockchip_vpu_hw.c
+++ b/drivers/staging/media/hantro/rockchip_vpu_hw.c
@@ -21,26 +21,26 @@
  * Supported formats.
  */
 
-static const struct hantro_fmt rockchip_vpu_enc_fmts[] = {
+static const struct hantro_fmt HANTRO_VPU_ENC_FMTS[] = {
 	{
 		.fourcc = V4L2_PIX_FMT_YUV420M,
 		.codec_mode = HANTRO_MODE_NONE,
-		.enc_fmt = ROCKCHIP_VPU_ENC_FMT_YUV420P,
+		.enc_fmt = HANTRO_VPU_ENC_FMT_YUV420P,
 	},
 	{
 		.fourcc = V4L2_PIX_FMT_NV12M,
 		.codec_mode = HANTRO_MODE_NONE,
-		.enc_fmt = ROCKCHIP_VPU_ENC_FMT_YUV420SP,
+		.enc_fmt = HANTRO_VPU_ENC_FMT_YUV420SP,
 	},
 	{
 		.fourcc = V4L2_PIX_FMT_YUYV,
 		.codec_mode = HANTRO_MODE_NONE,
-		.enc_fmt = ROCKCHIP_VPU_ENC_FMT_YUYV422,
+		.enc_fmt = HANTRO_VPU_ENC_FMT_YUYV422,
 	},
 	{
 		.fourcc = V4L2_PIX_FMT_UYVY,
 		.codec_mode = HANTRO_MODE_NONE,
-		.enc_fmt = ROCKCHIP_VPU_ENC_FMT_UYVY422,
+		.enc_fmt = HANTRO_VPU_ENC_FMT_UYVY422,
 	},
 	{
 		.fourcc = V4L2_PIX_FMT_JPEG,
@@ -478,8 +478,8 @@ const struct hantro_variant rk3036_vpu_variant = {
  */
 const struct hantro_variant rk3066_vpu_variant = {
 	.enc_offset = 0x0,
-	.enc_fmts = rockchip_vpu_enc_fmts,
-	.num_enc_fmts = ARRAY_SIZE(rockchip_vpu_enc_fmts),
+	.enc_fmts = HANTRO_VPU_ENC_FMTS,
+	.num_enc_fmts = ARRAY_SIZE(HANTRO_VPU_ENC_FMTS),
 	.dec_offset = 0x400,
 	.dec_fmts = rk3066_vpu_dec_fmts,
 	.num_dec_fmts = ARRAY_SIZE(rk3066_vpu_dec_fmts),
@@ -498,8 +498,8 @@ const struct hantro_variant rk3066_vpu_variant = {
 
 const struct hantro_variant rk3288_vpu_variant = {
 	.enc_offset = 0x0,
-	.enc_fmts = rockchip_vpu_enc_fmts,
-	.num_enc_fmts = ARRAY_SIZE(rockchip_vpu_enc_fmts),
+	.enc_fmts = HANTRO_VPU_ENC_FMTS,
+	.num_enc_fmts = ARRAY_SIZE(HANTRO_VPU_ENC_FMTS),
 	.dec_offset = 0x400,
 	.dec_fmts = rk3288_vpu_dec_fmts,
 	.num_dec_fmts = ARRAY_SIZE(rk3288_vpu_dec_fmts),
@@ -534,8 +534,8 @@ const struct hantro_variant rk3328_vpu_variant = {
 
 const struct hantro_variant rk3399_vpu_variant = {
 	.enc_offset = 0x0,
-	.enc_fmts = rockchip_vpu_enc_fmts,
-	.num_enc_fmts = ARRAY_SIZE(rockchip_vpu_enc_fmts),
+	.enc_fmts = HANTRO_VPU_ENC_FMTS,
+	.num_enc_fmts = ARRAY_SIZE(HANTRO_VPU_ENC_FMTS),
 	.dec_offset = 0x400,
 	.dec_fmts = rk3399_vpu_dec_fmts,
 	.num_dec_fmts = ARRAY_SIZE(rk3399_vpu_dec_fmts),
@@ -551,8 +551,8 @@ const struct hantro_variant rk3399_vpu_variant = {
 
 const struct hantro_variant px30_vpu_variant = {
 	.enc_offset = 0x0,
-	.enc_fmts = rockchip_vpu_enc_fmts,
-	.num_enc_fmts = ARRAY_SIZE(rockchip_vpu_enc_fmts),
+	.enc_fmts = HANTRO_VPU_ENC_FMTS,
+	.num_enc_fmts = ARRAY_SIZE(HANTRO_VPU_ENC_FMTS),
 	.dec_offset = 0x400,
 	.dec_fmts = rk3399_vpu_dec_fmts,
 	.num_dec_fmts = ARRAY_SIZE(rk3399_vpu_dec_fmts),
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
