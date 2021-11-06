Return-Path: <SRS0=5KZ+=PZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6828FC433FE
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Nov 2021 18:38:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 33DCE611C0
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Nov 2021 18:38:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 33DCE611C0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=76FE0QwB8A36cugaYbZQVTI08HW8cCFlxO+L3ZhtMFs=; b=P4QzQWvP4J14ZL
	tT9559ZvIR6tOpJyjkZ20c6ZR1t5zlFw+cw10oC3spmodp1mubkZQGfU6isezLuzxXw5ChfnllTmi
	v7ANd2ldN7KCE33VgwaK86hm1Yy9rARYM4zG9ECCgwqLMURkvLckxKnaKerr1QV94E0Y+gpz2Xvkk
	an2Rc3RM82+hjOoLQb2ro8rPGdLh8gfU6mtlOZBYjo77RbQ/yxYTAkbtMusR6GD0S0avrvKiGfwB8
	VMxIRfJDmx9aFzppQHWbNsshtveU0q+x6XBwJ0cq3Wdyl7Hq5wDPTbUZ4ooRWiozePVPMToEDAgl3
	XOrrK9aC5RoQiNc/88nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mjQaQ-00DXGx-68; Sat, 06 Nov 2021 18:38:42 +0000
Received: from mail-io1-xd2a.google.com ([2607:f8b0:4864:20::d2a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mjQaB-00DX6r-7V; Sat, 06 Nov 2021 18:38:28 +0000
Received: by mail-io1-xd2a.google.com with SMTP id q203so14358143iod.12;
 Sat, 06 Nov 2021 11:38:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2iJtZJ59mXT9HiN2pJfQsmwuO5Ay/oLqEZ6B5Z1rez8=;
 b=huL1Q3RvPdZLwL1B4VD0yy5iqN7qjeLgouX1nzKV0MSpP0rVbF90g2QC8IjJNhdHjq
 FMq2Yd7oKI0UN9tJXgi3ggp2hHZTwWvfgV2si5l8Zr7FZGfWNS9gzLHsApN/S9JF6LvH
 JlqCZqSyy9ucvo33CyOiCn4ix9dm3s1isL0Kt842XKPUlbT1nEE9Rh+rlSTgxe5x8ira
 WFmxUTutS/OJ5TdoNIJ0/tu13QmV9anSg1HTDSADba1FpWeKugG+tp0knW25v7vddqPr
 59akRJduQNwYuFo9bGvIK9JM0Whwaemcmsfhvth/NhsBplpSXOklAo9iDSlWb+01JemD
 bYrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2iJtZJ59mXT9HiN2pJfQsmwuO5Ay/oLqEZ6B5Z1rez8=;
 b=ESzPt/usfCM7urqt1WbZl9/b22fv3V8KBiYW5u5ZYIhxm6DuLdOKNTKicehN63rU6I
 01yjhCvjK0t25BF+fawwzyVj42zFmCXQpCKH/3VPUvpHJYfi6Z6C4lCCz+Vo6VWvUvZG
 K/tMmF6px8ajqdX1GmUhVICVYe1MNram1utY7m21QrPTtDabVODhMPJk5ysxD+14wxCJ
 a+ON+PYkNqMsLMUiTZqn9FrUn5SJ0WXlUWk0sXjH2MqUQkVE1k9tRJGQQ3IPL+1wvk68
 K4m3O+6ZYcTju1wYy+6MmEIYBxX+jGxv+PpZ89J6U12d0MyAQuHC+puXkeEowau5u4gi
 HwKA==
X-Gm-Message-State: AOAM53102eR8Omv1nTNqVn5t4/wmwldI/UU87GzkZjFrY7KpNVrqVpZh
 atvzO4IEO+74ffPCvfSNrpI=
X-Google-Smtp-Source: ABdhPJx+3o8EMj0oD3At5r5C4UYWXVHdIWZvD5zqRZY7WaiqCTJIaEEqcNhP8aFmdRXtqKPplM1Apg==
X-Received: by 2002:a05:6638:1687:: with SMTP id
 f7mr15382311jat.96.1636223906311; 
 Sat, 06 Nov 2021 11:38:26 -0700 (PDT)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:64ba:1c0f:6d36:c11d])
 by smtp.gmail.com with ESMTPSA id o10sm7174077ilu.49.2021.11.06.11.38.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 06 Nov 2021 11:38:25 -0700 (PDT)
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
 Joakim Zhang <qiangqing.zhang@nxp.com>, Alice Guo <alice.guo@nxp.com>,
 Peng Fan <peng.fan@nxp.com>,
 linux-rockchip@lists.infradead.org (open list:HANTRO VPU CODEC DRIVER),
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), 
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/FREESCALE IMX / MXC
 ARM ARCHITECTURE), linux-kernel@vger.kernel.org (open list),
 linux-staging@lists.linux.dev (open list:STAGING SUBSYSTEM)
Subject: [RFC 1/5] media: hantro: Add support for i.MX8M Mini
Date: Sat,  6 Nov 2021 13:37:57 -0500
Message-Id: <20211106183802.893285-2-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211106183802.893285-1-aford173@gmail.com>
References: <20211106183802.893285-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211106_113827_295083_A5C45231 
X-CRM114-Status: GOOD (  15.69  )
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
---
 drivers/staging/media/hantro/hantro_drv.c   |  2 +
 drivers/staging/media/hantro/hantro_hw.h    |  2 +
 drivers/staging/media/hantro/imx8m_vpu_hw.c | 60 +++++++++++++++++++++
 3 files changed, 64 insertions(+)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index fb82b9297a2b..2aa1c520be50 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -592,6 +592,8 @@ static const struct of_device_id of_hantro_match[] = {
 	{ .compatible = "rockchip,rk3399-vpu", .data = &rk3399_vpu_variant, },
 #endif
 #ifdef CONFIG_VIDEO_HANTRO_IMX8M
+	{ .compatible = "nxp,imx8mm-vpu", .data = &imx8mm_vpu_variant, },
+	{ .compatible = "nxp,imx8mm-vpu-g2", .data = &imx8mm_vpu_g2_variant },
 	{ .compatible = "nxp,imx8mq-vpu", .data = &imx8mq_vpu_variant, },
 	{ .compatible = "nxp,imx8mq-vpu-g2", .data = &imx8mq_vpu_g2_variant },
 #endif
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index 267a6d33a47b..ae7c3fff760c 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -211,6 +211,8 @@ enum hantro_enc_fmt {
 	ROCKCHIP_VPU_ENC_FMT_UYVY422 = 3,
 };
 
+extern const struct hantro_variant imx8mm_vpu_g2_variant;
+extern const struct hantro_variant imx8mm_vpu_variant;
 extern const struct hantro_variant imx8mq_vpu_g2_variant;
 extern const struct hantro_variant imx8mq_vpu_variant;
 extern const struct hantro_variant px30_vpu_variant;
diff --git a/drivers/staging/media/hantro/imx8m_vpu_hw.c b/drivers/staging/media/hantro/imx8m_vpu_hw.c
index ea919bfb9891..c819609d14d1 100644
--- a/drivers/staging/media/hantro/imx8m_vpu_hw.c
+++ b/drivers/staging/media/hantro/imx8m_vpu_hw.c
@@ -242,6 +242,32 @@ static const struct hantro_codec_ops imx8mq_vpu_g2_codec_ops[] = {
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
+};
+
 /*
  * VPU variants.
  */
@@ -257,6 +283,11 @@ static const struct hantro_irq imx8mq_g2_irqs[] = {
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
@@ -289,3 +320,32 @@ const struct hantro_variant imx8mq_vpu_g2_variant = {
 	.clk_names = imx8mq_clk_names,
 	.num_clocks = ARRAY_SIZE(imx8mq_clk_names),
 };
+
+const struct hantro_variant imx8mm_vpu_variant = {
+	.dec_fmts = imx8m_vpu_dec_fmts,
+	.num_dec_fmts = ARRAY_SIZE(imx8m_vpu_dec_fmts),
+	.postproc_fmts = imx8m_vpu_postproc_fmts,
+	.num_postproc_fmts = ARRAY_SIZE(imx8m_vpu_postproc_fmts),
+	.postproc_regs = &hantro_g1_postproc_regs,
+	.codec = HANTRO_MPEG2_DECODER | HANTRO_VP8_DECODER |
+		 HANTRO_H264_DECODER,
+	.codec_ops = imx8mm_vpu_codec_ops,
+	.irqs = imx8mq_irqs,
+	.num_irqs = ARRAY_SIZE(imx8mq_irqs),
+	.clk_names = imx8mm_g1_clk_names,
+	.num_clocks = ARRAY_SIZE(imx8mm_g1_clk_names),
+	.reg_names = imx8mm_g1_reg_names,
+	.num_regs = ARRAY_SIZE(imx8mm_g1_reg_names)
+};
+
+const struct hantro_variant imx8mm_vpu_g2_variant = {
+	.dec_offset = 0x0,
+	.dec_fmts = imx8m_vpu_g2_dec_fmts,
+	.num_dec_fmts = ARRAY_SIZE(imx8m_vpu_g2_dec_fmts),
+	.codec = HANTRO_HEVC_DECODER,
+	.codec_ops = imx8mm_vpu_g2_codec_ops,
+	.irqs = imx8mq_g2_irqs,
+	.num_irqs = ARRAY_SIZE(imx8mq_g2_irqs),
+	.clk_names = imx8mm_g2_clk_names,
+	.num_clocks = ARRAY_SIZE(imx8mm_g2_reg_names),
+};
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
