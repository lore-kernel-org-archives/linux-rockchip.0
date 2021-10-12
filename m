Return-Path: <SRS0=t7eY=PA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1AB15C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Oct 2021 14:36:59 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D439660E8B
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Oct 2021 14:36:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D439660E8B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DOqG+nNeLFF3HAdy6w0hu7mD+fBoCMc+5HqwdevpK8U=; b=tctFM5/ZFYuuYK
	HhgBLZ97NO69+r6foMQ2Uvb1ffl9hMziMlt7CnZIXDpjGvikI6TLI0pU09BvXsWx835hOBT/bZTJ7
	5h8ohjmK5nEsikwY492p29N3P6YZ6OFVMlbUILOZ73vdHcXe95g/usLPWd8+UK0JLkpzYdnQ3/lSi
	e2VL4ER1IUgeqm5PodaHnscXhfAj9WqDwCdOo6qLZ8bZ5TKF4ecAXtuq+4IgFdz/hoQfKqJ8qJT1h
	pujOPvxQfgH2DtLHcGWCbv1ewPJFLbmUdHPjLpva5U6b4jLuyQSNRmC6dbDjw5lBWGAhop0nvY8g2
	D+7BjPcdohlGaeDULsJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maItj-00DD4e-Jj; Tue, 12 Oct 2021 14:36:55 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maIsv-00DCis-B1; Tue, 12 Oct 2021 14:36:07 +0000
Received: from benjamin-XPS-13-9310.. (unknown
 [IPv6:2a01:e0a:4cb:a870:dcd8:9f87:c3be:dc06])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 572AA1F43BC9;
 Tue, 12 Oct 2021 15:36:03 +0100 (BST)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org, p.zabel@pengutronix.de, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 jernej.skrabec@gmail.com, hverkuil-cisco@xs4all.nl, jc@kynesim.co.uk,
 ezequiel@vanguardiasur.com.ar
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v2 3/4] media: hantro: Use syscon instead of 'ctrl' register
Date: Tue, 12 Oct 2021 16:35:51 +0200
Message-Id: <20211012143552.661751-4-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211012143552.661751-1-benjamin.gaignard@collabora.com>
References: <20211012143552.661751-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211012_073605_668855_C5E0890F 
X-CRM114-Status: GOOD (  19.16  )
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
Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

Please note that the only purpose of this commit is to allow to test
G2 hardware block for IMX8MQ until a proper solution isuing power domain
can be found. Do not merge it.

---
 drivers/staging/media/hantro/hantro.h       |  5 ++-
 drivers/staging/media/hantro/imx8m_vpu_hw.c | 48 +++++++++++++--------
 2 files changed, 34 insertions(+), 19 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro.h b/drivers/staging/media/hantro/hantro.h
index c2e2dca38628..20478988a55e 100644
--- a/drivers/staging/media/hantro/hantro.h
+++ b/drivers/staging/media/hantro/hantro.h
@@ -13,6 +13,7 @@
 #define HANTRO_H_
 
 #include <linux/platform_device.h>
+#include <linux/regmap.h>
 #include <linux/videodev2.h>
 #include <linux/wait.h>
 #include <linux/clk.h>
@@ -170,7 +171,7 @@ hantro_vdev_to_func(struct video_device *vdev)
  * @reg_bases:		Mapped addresses of VPU registers.
  * @enc_base:		Mapped address of VPU encoder register for convenience.
  * @dec_base:		Mapped address of VPU decoder register for convenience.
- * @ctrl_base:		Mapped address of VPU control block.
+ * @ctrl_base:		Regmap of VPU control block.
  * @vpu_mutex:		Mutex to synchronize V4L2 calls.
  * @irqlock:		Spinlock to synchronize access to data structures
  *			shared with interrupt handlers.
@@ -189,7 +190,7 @@ struct hantro_dev {
 	void __iomem **reg_bases;
 	void __iomem *enc_base;
 	void __iomem *dec_base;
-	void __iomem *ctrl_base;
+	struct regmap *ctrl_base;
 
 	struct mutex vpu_mutex;	/* video_device lock */
 	spinlock_t irqlock;
diff --git a/drivers/staging/media/hantro/imx8m_vpu_hw.c b/drivers/staging/media/hantro/imx8m_vpu_hw.c
index ea919bfb9891..ec0b16d12b54 100644
--- a/drivers/staging/media/hantro/imx8m_vpu_hw.c
+++ b/drivers/staging/media/hantro/imx8m_vpu_hw.c
@@ -7,6 +7,7 @@
 
 #include <linux/clk.h>
 #include <linux/delay.h>
+#include <linux/mfd/syscon.h>
 
 #include "hantro.h"
 #include "hantro_jpeg.h"
@@ -25,30 +26,28 @@
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
@@ -65,9 +64,9 @@ static int imx8mq_runtime_resume(struct hantro_dev *vpu)
 	imx8m_clk_enable(vpu, CLOCK_G1 | CLOCK_G2);
 
 	/* Set values of the fuse registers */
-	writel(0xffffffff, vpu->ctrl_base + CTRL_G1_DEC_FUSE);
-	writel(0xffffffff, vpu->ctrl_base + CTRL_G1_PP_FUSE);
-	writel(0xffffffff, vpu->ctrl_base + CTRL_G2_DEC_FUSE);
+	regmap_write(vpu->ctrl_base, CTRL_G1_DEC_FUSE, 0xffffffff);
+	regmap_write(vpu->ctrl_base, CTRL_G1_PP_FUSE, 0xffffffff);
+	regmap_write(vpu->ctrl_base, CTRL_G2_DEC_FUSE, 0xffffffff);
 
 	clk_bulk_disable_unprepare(vpu->variant->num_clocks, vpu->clocks);
 
@@ -189,7 +188,22 @@ static irqreturn_t imx8m_vpu_g2_irq(int irq, void *dev_id)
 
 static int imx8mq_vpu_hw_init(struct hantro_dev *vpu)
 {
-	vpu->ctrl_base = vpu->reg_bases[vpu->variant->num_regs - 1];
+	struct device_node *np = vpu->dev->of_node;
+
+	vpu->ctrl_base = syscon_regmap_lookup_by_phandle(np, "nxp,imx8m-vpu-ctrl");
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
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
