Return-Path: <SRS0=hzxT=DT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2681C433DF
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2020 21:20:39 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 53D552076E
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2020 21:20:39 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="zqhpeLMA";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="TBMJVW5E"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 53D552076E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5bq+v4XZgYh8jgClhGPd9xGv2v4F7Udhm8wEy1F+5ro=; b=zqhpeLMAgxtRyY5+rG11KLfYs
	1JIN/MTDk12qI0Nj9bquSV33AgiC/vSsT7ZbPAOJNCU5XlqwkicFgfNcAODOhFuMfLfXa3rSr7R/Z
	6iKWdvA1KK//Xe0E8IhalAPPjkbPyU9XVjVrnaTQYf2B2RlOmEqazxn9874z57FbH2pHAeJKlNb/d
	tsxt8ebbkhoQWqIZGIyQiMoOMcj6uTWK4FX4F4d2jSbPOuH5RovlE8aC11aJHCA6atZfp8bZ0+S2f
	eg4crMr3ewPsdxJ/DuX1N8cOT8MaY1+nimMSFglUCo0RcpiRDKtpj//TdNtDOmL3aMjTk2FP0rwNL
	JI8ZVZCwA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kS5FC-00089X-Ge; Mon, 12 Oct 2020 21:20:34 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kS5F9-00083L-Ui
 for linux-rockchip@merlin.infradead.org; Mon, 12 Oct 2020 21:20:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=q3ZgcUy3NCs6hrms9lj0fMegbOZ/oiRuBvhkb+62J3I=; b=TBMJVW5ErvmeVQCnA9GEw5NoES
 QESeb9wrqQLrl4vuU1SLY+CybM/mQZ26k6mdabMmhXyWysXh3gYsmElhHsVJloGqM2ZUYjZ5NkitP
 WIUpeHJqCrcbr1g0CGEfIrfOEMoFv0P+foi4X4SL2vuFoB/JbWHkY10B8mYKtLGlbJpk6YlP7cXCo
 VwjJj5eMCKdtcpHCvgTkEwvXP1aDZ+aR1Dv8LWTfTn9uDln69Nj2bbq/+SINDh1FYLwD7di2RrCzb
 C108lDzSejrWDAY+O4KbGY7VWmefLjECMsICXZfOUxOsSUYpksgOz4tI8MFl2J3RW8mOKqeHRlTBZ
 aZuPLN2g==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kS4uJ-0004ie-Kg
 for linux-rockchip@lists.infradead.org; Mon, 12 Oct 2020 20:59:04 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 693811F44C37
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH 06/18] media: hantro: imx8mq: simplify ctrlblk reset logic
Date: Mon, 12 Oct 2020 23:59:45 +0300
Message-Id: <20201012205957.889185-7-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201012205957.889185-1-adrian.ratiu@collabora.com>
References: <20201012205957.889185-1-adrian.ratiu@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201012_215859_993319_DEA49B6B 
X-CRM114-Status: GOOD (  21.51  )
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
Cc: Fruehberger Peter <Peter.Fruehberger@de.bosch.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 kuhanh.murugasen.krishnan@intel.com, Daniel Vetter <daniel@ffwll.ch>,
 kernel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The G1 and G2 cores on imx8mq share a common "control block" used
to reset and enable the core clocks as well as enable functioning
via ctrl FUSE registers (these are not the FUSEs on the VPU cores,
they are just used to enable/disable the cores and allow the real
VPU FUSE regs to become available).

The problem is that, while the cores can be operated independently
from one another (different config reg mem regions, separate IRQs),
they can not be reset or powered down independently as the current
code implies. This has been a source for many bugs and frustration
when trying to enable G2 which this driver does not support yet.

So we simplify the ctrlblk reset logic to always reset both cores,
exactly like the vendor linux-imx provided driver "hantrodec" does
for this SoC.

Going forward, this simplified code should be moved in the future to
its own reset controller driver as the reset framework also supports
shared reset resources so the runtime PM logic can disable both cores
when none of them are in use (this is not done yet because only G1
is supported in the driver so there is no need to account for G2).

Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
 drivers/staging/media/hantro/hantro.h       |  2 -
 drivers/staging/media/hantro/imx8m_vpu_hw.c | 74 +++++++--------------
 2 files changed, 24 insertions(+), 52 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro.h b/drivers/staging/media/hantro/hantro.h
index bb442eb1974e..2dd4362d4080 100644
--- a/drivers/staging/media/hantro/hantro.h
+++ b/drivers/staging/media/hantro/hantro.h
@@ -167,7 +167,6 @@ hantro_vdev_to_func(struct video_device *vdev)
  * @reg_bases:		Mapped addresses of VPU registers.
  * @enc_base:		Mapped address of VPU encoder register for convenience.
  * @dec_base:		Mapped address of VPU decoder register for convenience.
- * @ctrl_base:		Mapped address of VPU control block.
  * @vpu_mutex:		Mutex to synchronize V4L2 calls.
  * @irqlock:		Spinlock to synchronize access to data structures
  *			shared with interrupt handlers.
@@ -187,7 +186,6 @@ struct hantro_dev {
 	void __iomem **reg_bases;
 	void __iomem *enc_base;
 	void __iomem *dec_base;
-	void __iomem *ctrl_base;
 
 	struct mutex vpu_mutex;	/* video_device lock */
 	spinlock_t irqlock;
diff --git a/drivers/staging/media/hantro/imx8m_vpu_hw.c b/drivers/staging/media/hantro/imx8m_vpu_hw.c
index c222de075ef4..b2a401a33992 100644
--- a/drivers/staging/media/hantro/imx8m_vpu_hw.c
+++ b/drivers/staging/media/hantro/imx8m_vpu_hw.c
@@ -24,34 +24,13 @@
 #define CTRL_G1_PP_FUSE		0x0c
 #define CTRL_G2_DEC_FUSE	0x10
 
-static void imx8m_soft_reset(struct hantro_dev *vpu, u32 reset_bits)
-{
-	u32 val;
-
-	/* Assert */
-	val = readl(vpu->ctrl_base + CTRL_SOFT_RESET);
-	val &= ~reset_bits;
-	writel(val, vpu->ctrl_base + CTRL_SOFT_RESET);
-
-	udelay(2);
-
-	/* Release */
-	val = readl(vpu->ctrl_base + CTRL_SOFT_RESET);
-	val |= reset_bits;
-	writel(val, vpu->ctrl_base + CTRL_SOFT_RESET);
-}
-
-static void imx8m_clk_enable(struct hantro_dev *vpu, u32 clock_bits)
-{
-	u32 val;
-
-	val = readl(vpu->ctrl_base + CTRL_CLOCK_ENABLE);
-	val |= clock_bits;
-	writel(val, vpu->ctrl_base + CTRL_CLOCK_ENABLE);
-}
-
-static int imx8mq_runtime_resume(struct hantro_dev *vpu)
+/*
+ * Due to a HW limitation, both G1 and G2 VPU cores on imx8mq need to be reset
+ * together via their unified ctrl block.
+ */
+static int imx8mq_ctrlblk_reset(struct hantro_dev *vpu)
 {
+	void __iomem *ctrl_base = vpu->reg_bases[vpu->variant->num_regs - 1];
 	int ret;
 
 	ret = clk_bulk_prepare_enable(vpu->variant->num_clocks, vpu->clocks);
@@ -60,13 +39,18 @@ static int imx8mq_runtime_resume(struct hantro_dev *vpu)
 		return ret;
 	}
 
-	imx8m_soft_reset(vpu, RESET_G1 | RESET_G2);
-	imx8m_clk_enable(vpu, CLOCK_G1 | CLOCK_G2);
+	/* reset HW and ungate clocks via ctrl block */
+	writel(RESET_G1 | RESET_G2, ctrl_base + CTRL_SOFT_RESET);
+	writel(CLOCK_G1 | CLOCK_G2, ctrl_base + CTRL_CLOCK_ENABLE);
 
-	/* Set values of the fuse registers */
-	writel(0xffffffff, vpu->ctrl_base + CTRL_G1_DEC_FUSE);
-	writel(0xffffffff, vpu->ctrl_base + CTRL_G1_PP_FUSE);
-	writel(0xffffffff, vpu->ctrl_base + CTRL_G2_DEC_FUSE);
+	/*
+	 * enable fuse functionalities for each core, these are not real fuses
+	 * but registers which enable the cores and makes accesible their real
+	 * read-only fuse registers describing supported features.
+	 */
+	writel(0xffffffff, ctrl_base + CTRL_G1_DEC_FUSE);
+	writel(0xffffffff, ctrl_base + CTRL_G1_PP_FUSE);
+	writel(0xffffffff, ctrl_base + CTRL_G2_DEC_FUSE);
 
 	clk_bulk_disable_unprepare(vpu->variant->num_clocks, vpu->clocks);
 
@@ -148,19 +132,9 @@ static irqreturn_t imx8m_vpu_g1_irq(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
-static int imx8mq_vpu_hw_init(struct hantro_dev *vpu)
+static void imx8m_vpu_reset(struct hantro_ctx *ctx)
 {
-	vpu->dec_base = vpu->reg_bases[0];
-	vpu->ctrl_base = vpu->reg_bases[vpu->variant->num_regs - 1];
-
-	return 0;
-}
-
-static void imx8m_vpu_g1_reset(struct hantro_ctx *ctx)
-{
-	struct hantro_dev *vpu = ctx->dev;
-
-	imx8m_soft_reset(vpu, RESET_G1);
+	imx8mq_ctrlblk_reset(ctx->dev);
 }
 
 /*
@@ -170,19 +144,19 @@ static void imx8m_vpu_g1_reset(struct hantro_ctx *ctx)
 static const struct hantro_codec_ops imx8mq_vpu_codec_ops[] = {
 	[HANTRO_MODE_MPEG2_DEC] = {
 		.run = hantro_g1_mpeg2_dec_run,
-		.reset = imx8m_vpu_g1_reset,
+		.reset = imx8m_vpu_reset,
 		.init = hantro_mpeg2_dec_init,
 		.exit = hantro_mpeg2_dec_exit,
 	},
 	[HANTRO_MODE_VP8_DEC] = {
 		.run = hantro_g1_vp8_dec_run,
-		.reset = imx8m_vpu_g1_reset,
+		.reset = imx8m_vpu_reset,
 		.init = hantro_vp8_dec_init,
 		.exit = hantro_vp8_dec_exit,
 	},
 	[HANTRO_MODE_H264_DEC] = {
 		.run = hantro_g1_h264_dec_run,
-		.reset = imx8m_vpu_g1_reset,
+		.reset = imx8m_vpu_reset,
 		.init = hantro_h264_dec_init,
 		.exit = hantro_h264_dec_exit,
 	},
@@ -209,8 +183,8 @@ const struct hantro_variant imx8mq_vpu_variant = {
 	.codec = HANTRO_MPEG2_DECODER | HANTRO_VP8_DECODER |
 		 HANTRO_H264_DECODER,
 	.codec_ops = imx8mq_vpu_codec_ops,
-	.init = imx8mq_vpu_hw_init,
-	.runtime_resume = imx8mq_runtime_resume,
+	.init = imx8mq_ctrlblk_reset,
+	.runtime_resume = imx8mq_ctrlblk_reset,
 	.irqs = imx8mq_irqs,
 	.num_irqs = ARRAY_SIZE(imx8mq_irqs),
 	.clk_names = imx8mq_clk_names,
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
