Return-Path: <SRS0=J32z=IP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC982C433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Mar 2021 17:33:19 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7DC6464EBD
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Mar 2021 17:33:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7DC6464EBD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0dATggbuAFw2CKBhuYMpWmQ5uuv03VzJcOW69gJEBsA=; b=kcIec7t+HDG1vfDscZwzGkmQe
	Vgdz3bv+ubUUFvfJtt6tfHR/zhUEJmTxHEehO3lYCjVmnM+aZEhVgRC2/aGjNJ8QNHwCgsYkarBrD
	a5aZEiM/d8TyPg0PybDDowU16HJy+5gROBiZsDlKR6hZ9jcrAtknGigcm9Kcx0WjLQn+RV6Cbkocv
	KBn93LDBSAr3+ijNDg/u0KHPZuIF9oe+3gHH9RrHz6WjAofCF3sjpi9sgh+So+ELAW2e9UZnPqoj1
	XP4XqtwxPqjp2uFmJGMXxA2q9F1YGP0YRkPR0nUo/QE3MDPaHSObnuYQM4luKKBaDQFS1XJCn5FMi
	4evTWVGXA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lMa2i-003dZE-B7; Wed, 17 Mar 2021 17:33:12 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lMa25-003dJV-Ij; Wed, 17 Mar 2021 17:32:35 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: benjamin.gaignard)
 with ESMTPSA id 10B6B1F4545C
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, lee.jones@linaro.org, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 jernej.skrabec@siol.net, hverkuil-cisco@xs4all.nl, emil.l.velikov@gmail.com
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org, kernel@collabora.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v5 03/13] media: hantro: Use syscon instead of 'ctrl' register
Date: Wed, 17 Mar 2021 18:31:52 +0100
Message-Id: <20210317173202.107519-4-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210317173202.107519-1-benjamin.gaignard@collabora.com>
References: <20210317173202.107519-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210317_173233_700819_7D6F672A 
X-CRM114-Status: GOOD (  18.27  )
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

In order to be able to share the control hardware block between
VPUs use a syscon instead a ioremap it in the driver.
To keep the compatibility with older DT if 'nxp,imx8mq-vpu-ctrl'
phandle is not found look at 'ctrl' reg-name.
With the method it becomes useless to provide a list of register
names so remove it.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
version 5:
 - use syscon instead of VPU reset driver.
 - if DT doesn't provide syscon keep backward compatibilty by using
   'ctrl' reg-name.
 drivers/staging/media/hantro/hantro.h       |  5 +-
 drivers/staging/media/hantro/imx8m_vpu_hw.c | 52 ++++++++++++---------
 2 files changed, 34 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro.h b/drivers/staging/media/hantro/hantro.h
index 65f9f7ea7dcf..a99a96b84b5e 100644
--- a/drivers/staging/media/hantro/hantro.h
+++ b/drivers/staging/media/hantro/hantro.h
@@ -13,6 +13,7 @@
 #define HANTRO_H_
 
 #include <linux/platform_device.h>
+#include <linux/regmap.h>
 #include <linux/videodev2.h>
 #include <linux/wait.h>
 #include <linux/clk.h>
@@ -167,7 +168,7 @@ hantro_vdev_to_func(struct video_device *vdev)
  * @reg_bases:		Mapped addresses of VPU registers.
  * @enc_base:		Mapped address of VPU encoder register for convenience.
  * @dec_base:		Mapped address of VPU decoder register for convenience.
- * @ctrl_base:		Mapped address of VPU control block.
+ * @ctrl_base:		Regmap of VPU control block.
  * @vpu_mutex:		Mutex to synchronize V4L2 calls.
  * @irqlock:		Spinlock to synchronize access to data structures
  *			shared with interrupt handlers.
@@ -186,7 +187,7 @@ struct hantro_dev {
 	void __iomem **reg_bases;
 	void __iomem *enc_base;
 	void __iomem *dec_base;
-	void __iomem *ctrl_base;
+	struct regmap *ctrl_base;
 
 	struct mutex vpu_mutex;	/* video_device lock */
 	spinlock_t irqlock;
diff --git a/drivers/staging/media/hantro/imx8m_vpu_hw.c b/drivers/staging/media/hantro/imx8m_vpu_hw.c
index c222de075ef4..bd9d135dd440 100644
--- a/drivers/staging/media/hantro/imx8m_vpu_hw.c
+++ b/drivers/staging/media/hantro/imx8m_vpu_hw.c
@@ -7,6 +7,7 @@
 
 #include <linux/clk.h>
 #include <linux/delay.h>
+#include <linux/mfd/syscon.h>
 
 #include "hantro.h"
 #include "hantro_jpeg.h"
@@ -24,30 +25,28 @@
 #define CTRL_G1_PP_FUSE		0x0c
 #define CTRL_G2_DEC_FUSE	0x10
 
+static const struct regmap_config ctrl_regmap_ctrl = {
+	.reg_bits = 32,
+	.val_bits = 32,
+	.reg_stride = 0x14,
+};
+
 static void imx8m_soft_reset(struct hantro_dev *vpu, u32 reset_bits)
 {
-	u32 val;
-
 	/* Assert */
-	val = readl(vpu->ctrl_base + CTRL_SOFT_RESET);
-	val &= ~reset_bits;
-	writel(val, vpu->ctrl_base + CTRL_SOFT_RESET);
+	regmap_update_bits(vpu->ctrl_base, CTRL_SOFT_RESET, reset_bits, 0);
 
 	udelay(2);
 
 	/* Release */
-	val = readl(vpu->ctrl_base + CTRL_SOFT_RESET);
-	val |= reset_bits;
-	writel(val, vpu->ctrl_base + CTRL_SOFT_RESET);
+	regmap_update_bits(vpu->ctrl_base, CTRL_SOFT_RESET,
+			   reset_bits, reset_bits);
 }
 
 static void imx8m_clk_enable(struct hantro_dev *vpu, u32 clock_bits)
 {
-	u32 val;
-
-	val = readl(vpu->ctrl_base + CTRL_CLOCK_ENABLE);
-	val |= clock_bits;
-	writel(val, vpu->ctrl_base + CTRL_CLOCK_ENABLE);
+	regmap_update_bits(vpu->ctrl_base, CTRL_CLOCK_ENABLE,
+			   clock_bits, clock_bits);
 }
 
 static int imx8mq_runtime_resume(struct hantro_dev *vpu)
@@ -64,9 +63,9 @@ static int imx8mq_runtime_resume(struct hantro_dev *vpu)
 	imx8m_clk_enable(vpu, CLOCK_G1 | CLOCK_G2);
 
 	/* Set values of the fuse registers */
-	writel(0xffffffff, vpu->ctrl_base + CTRL_G1_DEC_FUSE);
-	writel(0xffffffff, vpu->ctrl_base + CTRL_G1_PP_FUSE);
-	writel(0xffffffff, vpu->ctrl_base + CTRL_G2_DEC_FUSE);
+	regmap_write(vpu->ctrl_base, CTRL_G1_DEC_FUSE, 0xffffffff);
+	regmap_write(vpu->ctrl_base, CTRL_G1_PP_FUSE, 0xffffffff);
+	regmap_write(vpu->ctrl_base, CTRL_G2_DEC_FUSE, 0xffffffff);
 
 	clk_bulk_disable_unprepare(vpu->variant->num_clocks, vpu->clocks);
 
@@ -150,8 +149,22 @@ static irqreturn_t imx8m_vpu_g1_irq(int irq, void *dev_id)
 
 static int imx8mq_vpu_hw_init(struct hantro_dev *vpu)
 {
-	vpu->dec_base = vpu->reg_bases[0];
-	vpu->ctrl_base = vpu->reg_bases[vpu->variant->num_regs - 1];
+	struct device_node *np = vpu->dev->of_node;
+
+	vpu->ctrl_base = syscon_regmap_lookup_by_phandle(np, "nxp,imx8mq-vpu-ctrl");
+	if (IS_ERR(vpu->ctrl_base)) {
+		struct resource *res;
+		void __iomem *ctrl;
+
+		res = platform_get_resource_byname(vpu->pdev, IORESOURCE_MEM, "ctrl");
+		ctrl = devm_ioremap_resource(vpu->dev, res);
+		if (IS_ERR(ctrl))
+			return PTR_ERR(ctrl);
+
+		vpu->ctrl_base = devm_regmap_init_mmio(vpu->dev, ctrl, &ctrl_regmap_ctrl);
+		if (IS_ERR(vpu->ctrl_base))
+			return PTR_ERR(vpu->ctrl_base);
+	}
 
 	return 0;
 }
@@ -198,7 +211,6 @@ static const struct hantro_irq imx8mq_irqs[] = {
 };
 
 static const char * const imx8mq_clk_names[] = { "g1", "g2", "bus" };
-static const char * const imx8mq_reg_names[] = { "g1", "g2", "ctrl" };
 
 const struct hantro_variant imx8mq_vpu_variant = {
 	.dec_fmts = imx8m_vpu_dec_fmts,
@@ -215,6 +227,4 @@ const struct hantro_variant imx8mq_vpu_variant = {
 	.num_irqs = ARRAY_SIZE(imx8mq_irqs),
 	.clk_names = imx8mq_clk_names,
 	.num_clocks = ARRAY_SIZE(imx8mq_clk_names),
-	.reg_names = imx8mq_reg_names,
-	.num_regs = ARRAY_SIZE(imx8mq_reg_names)
 };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
