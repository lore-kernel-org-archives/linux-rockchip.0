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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C35DC433E7
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2020 21:20:38 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AF8432076E
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2020 21:20:37 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="xBtcQECi";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="fKchRi52"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AF8432076E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ugQpIP3IazuNtVSb9eZSUZkpjmXcsH4BDIfiIRK2vy4=; b=xBtcQECibUVHNAh4hDTUJ8pEH
	WK/0fdsrsXrNe3UTSzOFMnLqS8l8dqRuyNU8VPUyA6iQoRPA6snofVjeHv0m4gMus1INhNaL21VYw
	m0yJxE7fHSRAPaseyStNineJeYhxxk9yCUHF5+kghsf9Rf0/8hivjbz3zfnd0l1TZe7w2AflwnDoU
	YttHl+o/NI3E2/s9LxtxryfNjwbsgQ0yVb15VCOIxZpAbs4gxv56QShLguZP3050iqYGCl8K3aKBh
	12wJvgjsTqQbThe8lxs5RdItituoD/scbT8ILruNHiLbJkVSxPRDcFSL+2d+JvlMlmbu25079EN+c
	PgWULvhfg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kS5FB-000892-Ia; Mon, 12 Oct 2020 21:20:33 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kS5F7-00083L-Uv
 for linux-rockchip@merlin.infradead.org; Mon, 12 Oct 2020 21:20:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=RBQBzyT3i4XT9gF93Bn8tqSfoz86BdfZ/+ltI/mn5E4=; b=fKchRi520IddGQvnoQwYraI2F0
 190AkiswkHRZT1DyACetQxzM1fRLfbBSNxuYDlZgRidjERwBIjAq4ZO/mt6/w4L1paohU9aJCogXu
 yj541rgYmrJHAU01RYqqaJrHtp64PMrXJSUxguQ1PHCL046KxPVdJzjZmNVi0rcIIqTZbMRMS+Ocx
 coWyx1RZ49PPsHt52uJNm6XdLyJCrFy9P0JyRA6FFZYs7MH/9Qjk8YR7kfyyq92FXjOioQ7yBcBEc
 Pag06bf1bWI1+qktU9CbYGrmmf2Y/aJRF7wHCZTVqWKCs1fY9a0pOSwEDfK5Y9basLKRoA2EvS0Wi
 V7+RJSsA==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kS4uL-0004jB-5Y
 for linux-rockchip@lists.infradead.org; Mon, 12 Oct 2020 20:59:09 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 921D81F44C3F
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH 08/18] media: hantro: add initial MMIO regmap infrastructure
Date: Mon, 12 Oct 2020 23:59:47 +0300
Message-Id: <20201012205957.889185-9-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201012205957.889185-1-adrian.ratiu@collabora.com>
References: <20201012205957.889185-1-adrian.ratiu@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201012_215901_510902_1D1264EF 
X-CRM114-Status: GOOD (  24.53  )
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

This creates regmaps on top of the memory mapped regions for encoders
and decoders and converts the helpers in hantro.h to do their R/W via
these regmaps.

In itself this indirection layer is quite useless, but the key is the
field API also initialized using the regmaps which is currently empty.

Further changes can define any necessary regmap field APIs for various
HW revisions like G1, G2 or configure the fields for different HW reg
layouts to support newer HW revisions like VC8000D.

No regmap is defined for the ctrl registers of imx8m because their
usage is very simple and there is no known register layout divergence.

Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 drivers/staging/media/hantro/Makefile        |   1 +
 drivers/staging/media/hantro/hantro.h        |  35 +++--
 drivers/staging/media/hantro/hantro_drv.c    |  15 +-
 drivers/staging/media/hantro/hantro_regmap.c | 144 +++++++++++++++++++
 drivers/staging/media/hantro/hantro_regmap.h |  23 +++
 5 files changed, 206 insertions(+), 12 deletions(-)
 create mode 100644 drivers/staging/media/hantro/hantro_regmap.c
 create mode 100644 drivers/staging/media/hantro/hantro_regmap.h

diff --git a/drivers/staging/media/hantro/Makefile b/drivers/staging/media/hantro/Makefile
index 743ce08eb184..52bc0ee73569 100644
--- a/drivers/staging/media/hantro/Makefile
+++ b/drivers/staging/media/hantro/Makefile
@@ -9,6 +9,7 @@ hantro-vpu-y += \
 		hantro_h1_jpeg_enc.o \
 		hantro_g1_h264_dec.o \
 		hantro_g1_mpeg2_dec.o \
+		hantro_regmap.o \
 		hantro_g1_vp8_dec.o \
 		rk3399_vpu_hw_jpeg_enc.o \
 		rk3399_vpu_hw_mpeg2_dec.o \
diff --git a/drivers/staging/media/hantro/hantro.h b/drivers/staging/media/hantro/hantro.h
index 2dd4362d4080..c5425cd5ac84 100644
--- a/drivers/staging/media/hantro/hantro.h
+++ b/drivers/staging/media/hantro/hantro.h
@@ -16,6 +16,7 @@
 #include <linux/videodev2.h>
 #include <linux/wait.h>
 #include <linux/clk.h>
+#include <linux/regmap.h>
 
 #include <media/v4l2-ctrls.h>
 #include <media/v4l2-device.h>
@@ -28,6 +29,8 @@
 
 struct hantro_ctx;
 struct hantro_codec_ops;
+struct hantro_regmap_dec_fields;
+struct hantro_regmap_enc_fields;
 
 #define HANTRO_JPEG_ENCODER	BIT(0)
 #define HANTRO_ENCODERS		0x0000ffff
@@ -165,8 +168,12 @@ hantro_vdev_to_func(struct video_device *vdev)
  *			dev_ macros.
  * @clocks:		Array of clock handles.
  * @reg_bases:		Mapped addresses of VPU registers.
- * @enc_base:		Mapped address of VPU encoder register for convenience.
- * @dec_base:		Mapped address of VPU decoder register for convenience.
+ * @regs_enc:		MMIO regmap of VPU encoder block for convenience.
+ * @regs_dec:		MMIO regmap of VPU decoder block for convenience.
+ * @reg_fields_dec:	Decoder regfields inside above regamp region.
+ * @reg_fields_enc:	Encoder regfields inside above regamp region.
+ * @core_hw_dec_rev	Runtime detected HW decoder core revision.
+ * @core_hw_enc_rev	Runtime detected HW encoder core revision.
  * @vpu_mutex:		Mutex to synchronize V4L2 calls.
  * @irqlock:		Spinlock to synchronize access to data structures
  *			shared with interrupt handlers.
@@ -184,8 +191,12 @@ struct hantro_dev {
 	struct clk_bulk_data *clocks;
 	struct reset_control *reset;
 	void __iomem **reg_bases;
-	void __iomem *enc_base;
-	void __iomem *dec_base;
+	struct regmap *regs_dec;
+	struct regmap *regs_enc;
+	struct hantro_regmap_fields_dec *reg_fields_dec;
+	struct hantro_regmap_fields_enc *reg_fields_enc;
+	u32 core_hw_dec_rev;
+	u32 core_hw_enc_rev;
 
 	struct mutex vpu_mutex;	/* video_device lock */
 	spinlock_t irqlock;
@@ -329,20 +340,22 @@ static inline void vepu_write_relaxed(struct hantro_dev *vpu,
 				      u32 val, u32 reg)
 {
 	vpu_debug(6, "0x%04x = 0x%08x\n", reg / 4, val);
-	writel_relaxed(val, vpu->enc_base + reg);
+	regmap_write(vpu->regs_enc, reg, val);
 }
 
 static inline void vepu_write(struct hantro_dev *vpu, u32 val, u32 reg)
 {
 	vpu_debug(6, "0x%04x = 0x%08x\n", reg / 4, val);
-	writel(val, vpu->enc_base + reg);
+	regmap_write(vpu->regs_enc, reg, val);
 }
 
 static inline u32 vepu_read(struct hantro_dev *vpu, u32 reg)
 {
-	u32 val = readl(vpu->enc_base + reg);
+	u32 val;
 
+	regmap_read(vpu->regs_enc, reg, &val);
 	vpu_debug(6, "0x%04x = 0x%08x\n", reg / 4, val);
+
 	return val;
 }
 
@@ -350,20 +363,22 @@ static inline void vdpu_write_relaxed(struct hantro_dev *vpu,
 				      u32 val, u32 reg)
 {
 	vpu_debug(6, "0x%04x = 0x%08x\n", reg / 4, val);
-	writel_relaxed(val, vpu->dec_base + reg);
+	regmap_write(vpu->regs_dec, reg, val);
 }
 
 static inline void vdpu_write(struct hantro_dev *vpu, u32 val, u32 reg)
 {
 	vpu_debug(6, "0x%04x = 0x%08x\n", reg / 4, val);
-	writel(val, vpu->dec_base + reg);
+	regmap_write(vpu->regs_dec, reg, val);
 }
 
 static inline u32 vdpu_read(struct hantro_dev *vpu, u32 reg)
 {
-	u32 val = readl(vpu->dec_base + reg);
+	u32 val;
 
+	regmap_read(vpu->regs_dec, reg, &val);
 	vpu_debug(6, "0x%04x = 0x%08x\n", reg / 4, val);
+
 	return val;
 }
 
diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index 3734efa80a7e..e225515d6985 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -28,6 +28,7 @@
 #include "hantro_v4l2.h"
 #include "hantro.h"
 #include "hantro_hw.h"
+#include "hantro_regmap.h"
 
 #define DRIVER_NAME "hantro-vpu"
 
@@ -782,8 +783,6 @@ static int hantro_probe(struct platform_device *pdev)
 		if (IS_ERR(vpu->reg_bases[i]))
 			return PTR_ERR(vpu->reg_bases[i]);
 	}
-	vpu->enc_base = vpu->reg_bases[0] + vpu->variant->enc_offset;
-	vpu->dec_base = vpu->reg_bases[0] + vpu->variant->dec_offset;
 
 	ret = dma_set_coherent_mask(vpu->dev, DMA_BIT_MASK(32));
 	if (ret) {
@@ -829,6 +828,18 @@ static int hantro_probe(struct platform_device *pdev)
 	pm_runtime_use_autosuspend(vpu->dev);
 	pm_runtime_enable(vpu->dev);
 
+	ret = hantro_regmap_init_dec(vpu);
+	if (ret) {
+		dev_err(&pdev->dev, "Failed to init decoder regmap\n");
+		goto err_clk_unprepare;
+	}
+
+	ret = hantro_regmap_init_enc(vpu);
+	if (ret) {
+		dev_err(&pdev->dev, "Failed to init encoder regmap\n");
+		goto err_clk_unprepare;
+	}
+
 	ret = v4l2_device_register(&pdev->dev, &vpu->v4l2_dev);
 	if (ret) {
 		dev_err(&pdev->dev, "Failed to register v4l2 device\n");
diff --git a/drivers/staging/media/hantro/hantro_regmap.c b/drivers/staging/media/hantro/hantro_regmap.c
new file mode 100644
index 000000000000..890e443688e2
--- /dev/null
+++ b/drivers/staging/media/hantro/hantro_regmap.c
@@ -0,0 +1,144 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Hantro VPU codec driver
+ *
+ * Copyright (C) 2020 Collabora, Ltd.
+ *
+ */
+
+#include "hantro.h"
+#include "hantro_regmap.h"
+
+/**
+ * struct regmap_config - hantro regmap configuration, for now just a single cfg
+ * is used for all registers and fields, in the future this can be granularised
+ * to have different configs for eg enc, dec, pp, each with its own checks and
+ * valiations (bounds, read/write enforcement and so on)
+ */
+struct regmap_config hantro_regmap_dec = {
+	.reg_bits = 32,
+	.val_bits = 32,
+	.reg_stride = 4,
+	/* all hantro accesses are sequential, even with respect to irq ctx */
+	.disable_locking = true,
+	.name = "hantro_regmap_dec",
+};
+
+struct regmap_config hantro_regmap_enc = {
+	.reg_bits = 32,
+	.val_bits = 32,
+	.reg_stride = 4,
+	.disable_locking = true,
+	.name = "hantro_regmap_enc",
+};
+
+struct hantro_field_enc {
+	/* TODO: populate encoder fields */
+};
+
+struct hantro_field_dec {
+	/* TODO: populate decoder fields */
+};
+
+#define INIT_FIELD_CFG(f, codec, conf) ({					\
+		vpu->reg_fields_##codec->(f) = devm_regmap_field_alloc(vpu->dev,\
+						     vpu->regs_##codec,		\
+						     field->(conf)); \
+	if (IS_ERR(vpu->reg_fields_##codec->f)) {				\
+		dev_warn(vpu->dev, "Couldn't create regmap field " #f "\n");	\
+		return PTR_ERR(vpu->reg_fields_##codec->f);			\
+	}})
+
+#define INIT_DEC_FIELD(f) INIT_FIELD_CFG(f, dec, cfg_##f)
+#define INIT_ENC_FIELD(f) INIT_FIELD_CFG(f, enc, cfg_##f)
+
+static int hantro_regmap_fields_init_dec(struct hantro_dev *vpu,
+					 const struct hantro_field_dec *field)
+{
+	vpu->reg_fields_dec = devm_kzalloc(vpu->dev, sizeof(*vpu->reg_fields_dec),
+					   GFP_KERNEL);
+	if (!vpu->reg_fields_dec)
+		return -ENOMEM;
+
+	/* TODO: add decoder fields */
+
+	return 0;
+}
+
+static int hantro_regmap_fields_init_enc(struct hantro_dev *vpu,
+					 const struct hantro_field_enc *field)
+{
+	vpu->reg_fields_enc = devm_kzalloc(vpu->dev, sizeof(*vpu->reg_fields_enc),
+					   GFP_KERNEL);
+	if (!vpu->reg_fields_enc)
+		return -ENOMEM;
+
+	/* TODO: add encoder fields */
+
+	return 0;
+}
+
+int hantro_regmap_init_enc(struct hantro_dev *vpu)
+{
+	const struct hantro_field_enc *field = NULL;
+	void __iomem *enc_base = vpu->reg_bases[0] + vpu->variant->enc_offset;
+	int ret;
+
+	if (!vpu->variant->enc_fmts)
+		return 0;
+
+	ret = clk_bulk_enable(vpu->variant->num_clocks, vpu->clocks);
+	if (ret) {
+		dev_err(vpu->dev, "Failed to enable clocks\n");
+		return ret;
+	}
+
+	vpu->core_hw_enc_rev = (readl(enc_base) >> 16) & 0xffff;
+	vpu_debug(0, "Detected hantro encoder revision %x\n",
+		  vpu->core_hw_enc_rev);
+
+	clk_bulk_disable(vpu->variant->num_clocks, vpu->clocks);
+
+	vpu->regs_enc = devm_regmap_init_mmio(vpu->dev, enc_base,
+					      &hantro_regmap_enc);
+	if (IS_ERR(vpu->regs_enc)) {
+		ret = PTR_ERR(vpu->regs_enc);
+		dev_err(vpu->dev, "Failed to create encoder regmap: %d\n", ret);
+		return ret;
+	}
+
+	return hantro_regmap_fields_init_enc(vpu, field);
+}
+
+int hantro_regmap_init_dec(struct hantro_dev *vpu)
+{
+	const struct hantro_field_dec *field = NULL;
+	void __iomem *dec_base = vpu->reg_bases[0] + vpu->variant->dec_offset;
+	int ret;
+
+	if (!vpu->variant->dec_fmts)
+		return 0;
+
+	ret = clk_bulk_enable(vpu->variant->num_clocks, vpu->clocks);
+	if (ret) {
+		dev_err(vpu->dev, "Failed to enable clocks\n");
+		return ret;
+	}
+
+	vpu->core_hw_dec_rev = (readl(dec_base) >> 16) & 0xffff;
+
+	vpu_debug(0, "Detected hantro decoder revision %x\n",
+		  vpu->core_hw_dec_rev);
+
+	clk_bulk_disable(vpu->variant->num_clocks, vpu->clocks);
+
+	vpu->regs_dec = devm_regmap_init_mmio(vpu->dev, dec_base,
+					      &hantro_regmap_dec);
+	if (IS_ERR(vpu->regs_dec)) {
+		ret = PTR_ERR(vpu->regs_dec);
+		dev_err(vpu->dev, "Failed to create decoder regmap: %d\n", ret);
+		return ret;
+	}
+
+	return hantro_regmap_fields_init_dec(vpu, field);
+}
diff --git a/drivers/staging/media/hantro/hantro_regmap.h b/drivers/staging/media/hantro/hantro_regmap.h
new file mode 100644
index 000000000000..52668a8bafb9
--- /dev/null
+++ b/drivers/staging/media/hantro/hantro_regmap.h
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Hantro VPU codec driver
+ *
+ * Copyright (C) 2020 Collabora, Ltd.
+ *
+ */
+
+#ifndef HANTRO_REGMAP_H_
+#define HANTRO_REGMAP_H_
+
+struct hantro_regmap_fields_dec {
+	/* TODO: populate decoder fields */
+};
+
+struct hantro_regmap_fields_enc {
+	/* TODO: populate encoder fields */
+};
+
+int hantro_regmap_init_dec(struct hantro_dev *vpu);
+int hantro_regmap_init_enc(struct hantro_dev *vpu);
+
+#endif /* HANTRO_REGMAP_H_ */
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
