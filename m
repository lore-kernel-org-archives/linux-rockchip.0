Return-Path: <SRS0=faov=GK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9365EC433DB
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jan 2021 13:41:53 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 53EBC22B45
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jan 2021 13:41:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 53EBC22B45
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jD/YvMTSXK19pWz7X60sDXdjT9e6fQk8kRWhvbvfMe0=; b=PYShO9FErIKY147v1zUSESrYm
	8hdSIG3yz8QNAn2zrG/vcn+gFVaajiTxksCSoOHgymITTy9/ImSM0KxLviG1RBSD48kpDCKrIpMqC
	LkyH1PFcOtYOqzV07p8j7+z2ChP2bHgtGz7rCJ2FmTb44SSKEbS02axcTYLfA4FMbZwi2JtUpZHd4
	MPzxKkP7CSFb63GpcVB+zmC49CPWxAs33iSeJ3AlgirDiaybvESBiRhCur4kr6KcCzJ2C3fArI6tM
	BWUopIbUGRVXxQwLVV/V63jY4CEWrCXdQiWaBdj6lir2ovHHIKpIYjKqBHsbsGr3Ms0BIqiMVV/qw
	pPbitKd2A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kxVXv-0003Z0-S7; Thu, 07 Jan 2021 13:41:47 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kxVXW-0003P5-DP; Thu, 07 Jan 2021 13:41:23 +0000
X-Originating-IP: 93.29.109.196
Received: from localhost.localdomain (196.109.29.93.rev.sfr.net
 [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 37DC0C0003;
 Thu,  7 Jan 2021 13:41:20 +0000 (UTC)
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 5/5] media: hantro: Add support for the Rockchip PX30
Date: Thu,  7 Jan 2021 14:41:01 +0100
Message-Id: <20210107134101.195426-6-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210107134101.195426-1-paul.kocialkowski@bootlin.com>
References: <20210107134101.195426-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210107_084122_742682_733CBC64 
X-CRM114-Status: GOOD (  15.96  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Jacob Chen <jacob-chen@iotwrt.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The PX30 SoC includes both the VDPU2 and VEPU2 blocks which are similar
to the RK3399 (Hantro G1/H1 with shuffled registers).

Besides taking an extra clock, it also shares an interrupt with the IOMMU
so it's necessary to request the interrupt shared.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 drivers/staging/media/hantro/hantro_drv.c    |  5 +++--
 drivers/staging/media/hantro/hantro_hw.h     |  1 +
 drivers/staging/media/hantro/rk3399_vpu_hw.c | 21 ++++++++++++++++++++
 3 files changed, 25 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index e5f200e64993..076a7782b476 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -472,6 +472,7 @@ static const struct v4l2_file_operations hantro_fops = {
 
 static const struct of_device_id of_hantro_match[] = {
 #ifdef CONFIG_VIDEO_HANTRO_ROCKCHIP
+	{ .compatible = "rockchip,px30-vpu", .data = &px30_vpu_variant, },
 	{ .compatible = "rockchip,rk3399-vpu", .data = &rk3399_vpu_variant, },
 	{ .compatible = "rockchip,rk3328-vpu", .data = &rk3328_vpu_variant, },
 	{ .compatible = "rockchip,rk3288-vpu", .data = &rk3288_vpu_variant, },
@@ -796,8 +797,8 @@ static int hantro_probe(struct platform_device *pdev)
 			return -ENXIO;
 
 		ret = devm_request_irq(vpu->dev, irq,
-				       vpu->variant->irqs[i].handler, 0,
-				       dev_name(vpu->dev), vpu);
+				       vpu->variant->irqs[i].handler,
+				       IRQF_SHARED, dev_name(vpu->dev), vpu);
 		if (ret) {
 			dev_err(vpu->dev, "Could not request %s IRQ.\n",
 				irq_name);
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index 34c9e4649a25..07f516fd7a2e 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -148,6 +148,7 @@ enum hantro_enc_fmt {
 	RK3288_VPU_ENC_FMT_UYVY422 = 3,
 };
 
+extern const struct hantro_variant px30_vpu_variant;
 extern const struct hantro_variant rk3399_vpu_variant;
 extern const struct hantro_variant rk3328_vpu_variant;
 extern const struct hantro_variant rk3288_vpu_variant;
diff --git a/drivers/staging/media/hantro/rk3399_vpu_hw.c b/drivers/staging/media/hantro/rk3399_vpu_hw.c
index 7a7962cf771e..4112f98baa60 100644
--- a/drivers/staging/media/hantro/rk3399_vpu_hw.c
+++ b/drivers/staging/media/hantro/rk3399_vpu_hw.c
@@ -220,3 +220,24 @@ const struct hantro_variant rk3328_vpu_variant = {
 	.clk_names = rk3399_clk_names,
 	.num_clocks = ARRAY_SIZE(rk3399_clk_names),
 };
+
+static const char * const px30_clk_names[] = {
+	"aclk", "hclk", "sclk"
+};
+
+const struct hantro_variant px30_vpu_variant = {
+	.enc_offset = 0x0,
+	.enc_fmts = rk3399_vpu_enc_fmts,
+	.num_enc_fmts = ARRAY_SIZE(rk3399_vpu_enc_fmts),
+	.dec_offset = 0x400,
+	.dec_fmts = rk3399_vpu_dec_fmts,
+	.num_dec_fmts = ARRAY_SIZE(rk3399_vpu_dec_fmts),
+	.codec = HANTRO_JPEG_ENCODER | HANTRO_MPEG2_DECODER |
+		 HANTRO_VP8_DECODER,
+	.codec_ops = rk3399_vpu_codec_ops,
+	.irqs = rk3399_irqs,
+	.num_irqs = ARRAY_SIZE(rk3399_irqs),
+	.init = rk3399_vpu_hw_init,
+	.clk_names = px30_clk_names,
+	.num_clocks = ARRAY_SIZE(px30_clk_names)
+};
-- 
2.30.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
