Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7699C43334
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jul 2022 18:31:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3qpt1ZnbN7mJSJOa4WNFHfIZUZYNbh+qpmEhiVGP2fs=; b=quGPEPfNxHiIfZ
	M/QvPPRujP9JHaNV8PdRQs5iHRQp86la20lD8+/kKoJEvxFqFNHMALq5b9Tu06ZtIekYIeAYgXvJA
	Yy2FLlK5gJwu8LX7DVpwK5ckvRBg7PvXudvnmL3sVyvpX4U2S0BVxX7QrUkhmrPDggxRQK27KZ8Rd
	0xK9irURdiWjZIYqDFSE5V8kUKb5IRQqQvitV0f8XG/VxG5TqVdwvlrIXZ8+0FT+0AImNs9x1gB+X
	jgkv1yFiCYrIw01Q1yJy8GXP+Y+ANh0rAmDTxavXDDAA4lZA+elez2VXPc/UjIoV1Y7dyjvhGKr2g
	iF9BzOfcU7qdvnHaUsjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o99nl-00BxnZ-8t; Wed, 06 Jul 2022 18:31:05 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o99m8-00Bwyp-0K; Wed, 06 Jul 2022 18:29:25 +0000
Received: by mail-wr1-x436.google.com with SMTP id z12so13614141wrq.7;
        Wed, 06 Jul 2022 11:29:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/ipO2NkMUMMvxvzZn2ltri7y+IHfLy0+fza0bQjlk34=;
        b=lkGkOKrNCzdbqRpsx09FoK7d/OanN8Jr9CgkeEcU8CM5aoHdA6Pvhu74nWGVd50Und
         hIfGjNZqe3qCQ25Qgt27NJgQXnGTSa47OFddWoEBSdwb7s5pbP9so+VzOBfHwLBUvSOj
         K/WRLDMeQgAacHo3Xfy0WPdCPHUQRS04LN/j912/BOdpLVJCrfcvu+8YP5coRQzOLy/b
         VWZz78ujP3oOQFeHy0E9BJ3czWex1efyuk4h7eh/+O6QBaR5iuB2s1uvdml7ikROky0s
         ue8NB3jiiaMQCMMi043vRnOB0zZAHPQIw1cAAnhzvMecpLGjaoVrG+LsKk7TWSH3LQ8B
         SKnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/ipO2NkMUMMvxvzZn2ltri7y+IHfLy0+fza0bQjlk34=;
        b=LfyxAbYKwvtFgWMNnd7Lhorov8XG9OdEEmBQzIlzJ+/iVhZG8gJeNdmm4qOsupNh5w
         39IGUc0DnZotMXuCD6ivPnqrppJ4exi1VaV+CUgCGFBhcZ5v9s5pr5JluG4m9WJVb08j
         2M1Mr1L0Pe5kFZq3uSE9uxvyOzGMHFopspJVN3qK5NYsxUidX2SKXyUgDOAkavf1OIPX
         OxLkBzjvHvbSO0oCo96avDQlmppHWQL7FzbZrAnF4C1sg6uzoNb2hydneztCYDv4lzcP
         qRL6pBoVi/73g/5sYt9SijFVuF1RqEj35AJJ62e3Fuv6rKH4tUCjGXNC5E/VJlWkYPaM
         9w6Q==
X-Gm-Message-State: AJIora8Av2mTIB59SzTqpfDZNZBr7b9crQtW0Wh2nAMQnZml3zI38r0f
	dYRq/Erxy9j+qaI0G42tLaI=
X-Google-Smtp-Source: AGRyM1ux1QIOhjvHQjtoROyzGjFt6VIyFfhw6EWam9o2tDucO6Mufz2phavnv2wM30ROS89HUqHXWg==
X-Received: by 2002:a5d:64ad:0:b0:21b:b412:a34b with SMTP id m13-20020a5d64ad000000b0021bb412a34bmr39603551wrp.161.1657132160349;
        Wed, 06 Jul 2022 11:29:20 -0700 (PDT)
Received: from kista.localdomain (213-161-3-76.dynamic.telemach.net. [213.161.3.76])
        by smtp.gmail.com with ESMTPSA id r15-20020a0560001b8f00b0021d74906683sm5142406wru.28.2022.07.06.11.29.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 11:29:20 -0700 (PDT)
From: Jernej Skrabec <jernej.skrabec@gmail.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de
Cc: mchehab@kernel.org,
	hverkuil-cisco@xs4all.nl,
	benjamin.gaignard@collabora.com,
	nicolas.dufresne@collabora.com,
	gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	linux-staging@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Jernej Skrabec <jernej.skrabec@gmail.com>
Subject: [PATCH v3 7/7] media: hantro: sunxi: Enable 10-bit decoding
Date: Wed,  6 Jul 2022 20:29:01 +0200
Message-Id: <20220706182901.78949-8-jernej.skrabec@gmail.com>
X-Mailer: git-send-email 2.37.0
In-Reply-To: <20220706182901.78949-1-jernej.skrabec@gmail.com>
References: <20220706182901.78949-1-jernej.skrabec@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_112924_089969_10FE9451 
X-CRM114-Status: GOOD (  10.10  )
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

Now that infrastructure for 10-bit decoding exists, enable it for
Allwinner H6.

Tested-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
---
 drivers/staging/media/hantro/sunxi_vpu_hw.c | 27 +++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/staging/media/hantro/sunxi_vpu_hw.c b/drivers/staging/media/hantro/sunxi_vpu_hw.c
index fbeac81e59e1..02ce8b064a8f 100644
--- a/drivers/staging/media/hantro/sunxi_vpu_hw.c
+++ b/drivers/staging/media/hantro/sunxi_vpu_hw.c
@@ -23,12 +23,39 @@ static const struct hantro_fmt sunxi_vpu_postproc_fmts[] = {
 			.step_height = 32,
 		},
 	},
+	{
+		.fourcc = V4L2_PIX_FMT_P010,
+		.codec_mode = HANTRO_MODE_NONE,
+		.postprocessed = true,
+		.frmsize = {
+			.min_width = FMT_MIN_WIDTH,
+			.max_width = FMT_UHD_WIDTH,
+			.step_width = 32,
+			.min_height = FMT_MIN_HEIGHT,
+			.max_height = FMT_UHD_HEIGHT,
+			.step_height = 32,
+		},
+	},
 };
 
 static const struct hantro_fmt sunxi_vpu_dec_fmts[] = {
 	{
 		.fourcc = V4L2_PIX_FMT_NV12_4L4,
 		.codec_mode = HANTRO_MODE_NONE,
+		.match_depth = true,
+		.frmsize = {
+			.min_width = FMT_MIN_WIDTH,
+			.max_width = FMT_UHD_WIDTH,
+			.step_width = 32,
+			.min_height = FMT_MIN_HEIGHT,
+			.max_height = FMT_UHD_HEIGHT,
+			.step_height = 32,
+		},
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_P010_4L4,
+		.codec_mode = HANTRO_MODE_NONE,
+		.match_depth = true,
 		.frmsize = {
 			.min_width = FMT_MIN_WIDTH,
 			.max_width = FMT_UHD_WIDTH,
-- 
2.37.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
