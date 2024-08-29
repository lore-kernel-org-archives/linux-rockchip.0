Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53699CA0EC5
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Aug 2024 21:33:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3wOHigzGw2VD0+86L6FW5cF3q5JV8//adgkQvSVxOv0=; b=hEVYTg51kIUoAa
	259QfjK//uNvkwZeLMK1xIQV677uwIYCd0UwK9b7QIoRzkmbCOoNYZtv9RnQIol3ik2NKyl1F/DJr
	2iCtb/XNh7JtFRTSMfjifEZtpcxieX7NltQ3B65ZMCE9/PzAJt/LHz5d3sVS+3n3WXfq4T1Nlpqse
	f1MQFqSInnjDTYgz+LfVUB05ld/jwviN/fb5ELopM6rcEgywtiSz4FK9lo+8aaoR053oOyGknctPX
	zfDYUL1Zmfjuq44UOjxErrq+w4qJr43lY/vXZ4rjsa6ZNomazibfYvOkS/OGDOIN/Z6hetRDBFm2/
	JisYqiOWpeQgyMofKe4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjmlu-00000003hzD-2sbT;
	Thu, 29 Aug 2024 21:33:38 +0000
Received: from mail-oi1-x236.google.com ([2607:f8b0:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjmlj-00000003hvJ-26XB
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Aug 2024 21:33:33 +0000
Received: by mail-oi1-x236.google.com with SMTP id 5614622812f47-3df0700d88dso704742b6e.1
        for <linux-rockchip@lists.infradead.org>; Thu, 29 Aug 2024 14:33:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724967206; x=1725572006; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2bLoa02QaMw+6jbm5yDVoBRh24tqxi3Y0tnDd2hUx6Q=;
        b=fbmYt/04QcXbbV9GCx8ZW9rYuKicpei2+/4lr7i04PMH5P2/G9wegKd7f6eLBIi2Y5
         lRVpmKJzACYbUA2Y/NZLsHIssElOmWojNBCEGxMfLyx8Z9wPyE8RHZWN2FszDsbRfzKl
         7VSXRzC/FuFKYDQI/0dYhNnHUK69v4DsEo9elymJWKUYWvxdHifp5fGOIMybFQDdtQHw
         iUTy3t67mXr/h/58Oa8LWUdXEQg9g15CBKqqQf857qAmug54mmp+U/pQqQ6CnGkvBfF+
         VJoB8fWbMdjqnM9RhOla19nOlayhYyb+jYnZ9oEiOmMCwX+G0b0JoFsBoA8LMvFNd8fX
         80YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724967206; x=1725572006;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2bLoa02QaMw+6jbm5yDVoBRh24tqxi3Y0tnDd2hUx6Q=;
        b=g7jtsfoOYp+m7t/GObHtTUOA13FKwe6Cwa+kjifY9rEVJLzmjH+FjYyr7XXdeiVvkq
         e2mlEERRIHDIkZgejSrWRXGWgslLaCJrt2LNF20k4wFyNG5ca1DjK5qsaZAQv7hQtAJ0
         qziOeT/hKd/v0Zp9y8zaH3Z5JfJVef4NiiszlhPKL4+rZq/oGQvUdSzyocfttfbGJd6+
         9SkPibdWtoh2os46eQcTOtK3BqVL3vH6rr563w/Ps6n31KOR4syVq9JHpT1gTMmLRPIk
         Q8j1Vctwc/EPH0dUV4qOci9IS5ibkKwRPjNg+4j5+onQDPM6nyZrG+lXR4pi2VHc0EGi
         yvhg==
X-Gm-Message-State: AOJu0YzUuNhtXYL9R8TM+QbAlubvvNJcRE+vksU25tp5AOHsAFJ641z1
	xlMBvyhMCxM/LSX5jPhDYM8p2U93Ucufo6zz53woGEgsNc0R2/3vruZhEA==
X-Google-Smtp-Source: AGHT+IFQn/G+LdySZ3m0FPhE1TDeHsgvaLeN3qaosQYBEW8sqPG1T26BPuoB1mHVHs7o4k1bNDOhIA==
X-Received: by 2002:a05:6808:144c:b0:3da:e219:bf with SMTP id 5614622812f47-3df05ee060fmr5063714b6e.43.1724967206184;
        Thu, 29 Aug 2024 14:33:26 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3df11865de3sm93097b6e.42.2024.08.29.14.33.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2024 14:33:25 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	broonie@kernel.org,
	lgirdwood@gmail.com,
	sre@kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	lee@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [RFC 2/5] mfd: bq257xx: Add support for BQ25703 core driver
Date: Thu, 29 Aug 2024 16:30:59 -0500
Message-Id: <20240829213102.448047-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240829213102.448047-1-macroalpha82@gmail.com>
References: <20240829213102.448047-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_143327_576357_9140C915 
X-CRM114-Status: GOOD (  22.04  )
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

From: Chris Morgan <macromorgan@hotmail.com>

The Texas Instruments BQ25703A is an integrated charger manager and
boost converter.

The MFD driver initalizes the device for the regulator driver
and power supply driver.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/mfd/Kconfig         |  11 ++++
 drivers/mfd/Makefile        |   1 +
 drivers/mfd/bq257xx.c       | 118 +++++++++++++++++++++++++++++++++++
 include/linux/mfd/bq257xx.h | 120 ++++++++++++++++++++++++++++++++++++
 4 files changed, 250 insertions(+)
 create mode 100644 drivers/mfd/bq257xx.c
 create mode 100644 include/linux/mfd/bq257xx.h

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index bc8be2e593b6..712951ae7341 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -1537,6 +1537,17 @@ config MFD_TI_LMU
 	  LM36274.  It consists of backlight, LED and regulator driver.
 	  It provides consistent device controls for lighting functions.
 
+config MFD_BQ257XX
+	tristate "TI BQ257XX Buck/Boost Charge Controller"
+	depends on I2C
+	select MFD_CORE
+	select REGMAP_I2C
+	help
+	  Support Texas Instruments BQ25703 Buck/Boost converter with
+	  charge controller. It consists of regulators that provide
+	  system voltage and OTG voltage, and a charger manager for
+	  batteries containing one or more cells.
+
 config MFD_OMAP_USB_HOST
 	bool "TI OMAP USBHS core and TLL driver"
 	depends on USB_EHCI_HCD_OMAP || USB_OHCI_HCD_OMAP3
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index 02b651cd7535..90bc65d83c5f 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -13,6 +13,7 @@ obj-$(CONFIG_MFD_SM501)		+= sm501.o
 obj-$(CONFIG_ARCH_BCM2835)	+= bcm2835-pm.o
 obj-$(CONFIG_MFD_BCM590XX)	+= bcm590xx.o
 obj-$(CONFIG_MFD_BD9571MWV)	+= bd9571mwv.o
+obj-$(CONFIG_MFD_BQ257XX)	+= bq257xx.o
 obj-$(CONFIG_MFD_CROS_EC_DEV)	+= cros_ec_dev.o
 obj-$(CONFIG_MFD_CS42L43)	+= cs42l43.o
 obj-$(CONFIG_MFD_CS42L43_I2C)	+= cs42l43-i2c.o
diff --git a/drivers/mfd/bq257xx.c b/drivers/mfd/bq257xx.c
new file mode 100644
index 000000000000..c612262f9a1e
--- /dev/null
+++ b/drivers/mfd/bq257xx.c
@@ -0,0 +1,118 @@
+// SPDX-License-Identifier: GPL-2.0
+/* BQ257XX MFD Driver
+ * Copyright (C) 2024 Chris Morgan <macromorgan@hotmail.com>
+ * Based off of BQ256XX Battery Charger Driver and
+ * Rockchip RK808 MFD Driver
+ */
+
+#include <linux/device.h>
+#include <linux/i2c.h>
+#include <linux/mfd/bq257xx.h>
+#include <linux/mfd/core.h>
+#include <linux/regmap.h>
+
+static const struct regmap_range bq25703_readonly_reg_ranges[] = {
+	regmap_reg_range(BQ25703_CHARGER_STATUS, BQ25703_MANUFACT_DEV_ID),
+};
+
+static const struct regmap_access_table bq25703_writeable_regs = {
+	.no_ranges = bq25703_readonly_reg_ranges,
+	.n_no_ranges = ARRAY_SIZE(bq25703_readonly_reg_ranges),
+};
+
+static const struct regmap_range bq25703_volatile_reg_ranges[] = {
+	regmap_reg_range(BQ25703_CHARGE_OPTION_0, BQ25703_IIN_HOST),
+	regmap_reg_range(BQ25703_CHARGER_STATUS, BQ25703_ADC_OPTION),
+};
+
+static const struct regmap_access_table bq25703_volatile_regs = {
+	.yes_ranges = bq25703_volatile_reg_ranges,
+	.n_yes_ranges = ARRAY_SIZE(bq25703_volatile_reg_ranges),
+};
+
+static const struct regmap_config bq25703_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 16,
+	.max_register = BQ25703_ADC_OPTION,
+	.cache_type = REGCACHE_RBTREE,
+	.wr_table = &bq25703_writeable_regs,
+	.volatile_table = &bq25703_volatile_regs,
+	.val_format_endian = REGMAP_ENDIAN_LITTLE,
+};
+
+static const struct mfd_cell bq25703_cells[] = {
+	MFD_CELL_NAME("bq257xx-regulator"),
+	MFD_CELL_NAME("bq257xx-charger"),
+};
+
+static int bq257xx_probe(struct i2c_client *client)
+{
+	struct device *dev = &client->dev;
+	struct bq257xx_device *bq;
+	const struct mfd_cell *cells;
+	int nr_cells;
+	int ret = 0;
+
+	bq = devm_kzalloc(dev, sizeof(*bq), GFP_KERNEL);
+	if (!bq)
+		return -ENOMEM;
+
+	bq->client = client;
+	bq->dev = dev;
+	bq->variant = (long)i2c_get_match_data(client);
+
+	switch (bq->variant) {
+	case BQ25703A:
+		bq->regmap_cfg = &bq25703_regmap_config;
+		cells = bq25703_cells;
+		nr_cells = ARRAY_SIZE(bq25703_cells);
+		break;
+	default:
+		dev_err(dev, "Unsupported BQ257XX ID %ld\n", bq->variant);
+		return -EINVAL;
+	}
+
+	bq->regmap = devm_regmap_init_i2c(client, bq->regmap_cfg);
+
+	if (IS_ERR(bq->regmap)) {
+		dev_err(dev, "Failed to allocate register map\n");
+		return PTR_ERR(bq->regmap);
+	}
+
+	i2c_set_clientdata(client, bq);
+
+	ret = devm_mfd_add_devices(&client->dev, PLATFORM_DEVID_AUTO,
+				   cells, nr_cells, NULL, 0, NULL);
+	if (ret) {
+		dev_err(&client->dev, "failed to add MFD devices %d\n", ret);
+		return ret;
+	}
+
+	return ret;
+}
+
+static const struct i2c_device_id bq257xx_i2c_ids[] = {
+	{ "bq25703a" },
+	{}
+};
+MODULE_DEVICE_TABLE(i2c, bq257xx_i2c_ids);
+
+static const struct of_device_id bq257xx_of_match[] = {
+	{ .compatible = "ti,bq25703a", .data = (void *)BQ25703A, },
+	{}
+};
+MODULE_DEVICE_TABLE(of, bq257xx_of_match);
+
+static struct i2c_driver bq257xx_driver = {
+	.driver = {
+		.name = "bq257xx",
+		.of_match_table = bq257xx_of_match,
+	},
+	.probe = bq257xx_probe,
+	.id_table = bq257xx_i2c_ids,
+};
+module_i2c_driver(bq257xx_driver);
+
+MODULE_DESCRIPTION("bq257xx buck/boost/charger MFD driver");
+MODULE_AUTHOR("Chris Morgan <macromorgan@hotmail.com>");
+MODULE_LICENSE("GPL");
diff --git a/include/linux/mfd/bq257xx.h b/include/linux/mfd/bq257xx.h
new file mode 100644
index 000000000000..51f6501c6441
--- /dev/null
+++ b/include/linux/mfd/bq257xx.h
@@ -0,0 +1,120 @@
+/* SPDX-License-Identifier: GPL-2.0
+ * Register definitions for TI BQ257XX
+ * Heavily based off of BQ256XX Battery Charger Driver
+ * Copyright (C) 2020 Texas Instruments Incorporated - http://www.ti.com/
+ */
+
+#define BQ257XX_MANUFACTURER			"Texas Instruments"
+
+#define BQ25703_CHARGE_OPTION_0			0x00
+#define BQ25703_CHARGE_CURRENT			0x02
+#define BQ25703_MAX_CHARGE_VOLT			0x04
+#define BQ25703_OTG_VOLT			0x06
+#define BQ25703_OTG_CURRENT			0x08
+#define BQ25703_INPUT_VOLTAGE			0x0a
+#define BQ25703_MIN_VSYS			0x0c
+#define BQ25703_IIN_HOST			0x0e
+#define BQ25703_CHARGER_STATUS			0x20
+#define BQ25703_PROCHOT_STATUS			0x22
+#define BQ25703_IIN_DPM				0x24
+#define BQ25703_ADCIBAT_CHG			0x28
+#define BQ25703_ADCIINCMPIN			0x2a
+#define BQ25703_ADCVSYSVBAT			0x2c
+#define BQ25703_MANUFACT_DEV_ID			0x2e
+#define BQ25703_CHARGE_OPTION_1			0x30
+#define BQ25703_CHARGE_OPTION_2			0x32
+#define BQ25703_CHARGE_OPTION_3			0x34
+#define BQ25703_ADC_OPTION			0x3a
+
+#define BQ25703_EN_LWPWR			BIT(15)
+#define BQ25703_WDTMR_ADJ_MASK			GENMASK(14, 13)
+#define BQ25703_WDTMR_DISABLE			0
+#define BQ25703_WDTMR_5_SEC			1
+#define BQ25703_WDTMR_88_SEC			2
+#define BQ25703_WDTMR_175_SEC			3
+
+#define BQ25703_ICHG_MASK			GENMASK(12, 6)
+#define BQ25703_ICHG_STEP_UA			64000
+#define BQ25703_ICHG_MIN_UA			64000
+#define BQ25703_ICHG_MAX_UA			8128000
+
+#define BQ25703_MAX_CHARGE_VOLT_MASK		GENMASK(15, 4)
+#define BQ25703_VBATREG_STEP_UV			16000
+#define BQ25703_VBATREG_MIN_UV			1024000
+#define BQ25703_VBATREG_MAX_UV			19200000
+
+#define BQ25703_OTG_VOLT_MASK			GENMASK(13, 6)
+#define BQ25703_OTG_VOLT_STEP_UV		64000
+#define BQ25703_OTG_VOLT_MIN_UV			4480000
+#define BQ25703_OTG_VOLT_MAX_UV			20800000
+#define BQ25703_OTG_VOLT_NUM_VOLT		256
+
+#define BQ25703_OTG_CUR_MASK			GENMASK(14, 8)
+#define BQ25703_OTG_CUR_STEP_UA			50000
+#define BQ25703_OTG_CUR_MAX_UA			6350000
+
+#define BQ25703_MINVSYS_MASK			GENMASK(13, 8)
+#define BQ25703_MINVSYS_STEP_UV			256000
+#define BQ25703_MINVSYS_MIN_UV			1024000
+#define BQ25703_MINVSYS_MAX_UV			16128000
+
+#define BQ25703_STS_AC_STAT			BIT(15)
+#define BQ25703_STS_IN_FCHRG			BIT(10)
+#define BQ25703_STS_IN_PCHRG			BIT(9)
+#define BQ25703_STS_FAULT_ACOV			BIT(7)
+#define BQ25703_STS_FAULT_BATOC			BIT(6)
+#define BQ25703_STS_FAULT_ACOC			BIT(5)
+
+#define BQ25703_IINDPM_MASK			GENMASK(14, 8)
+#define BQ25703_IINDPM_STEP_UA			50000
+#define BQ25703_IINDPM_MIN_UA			50000
+#define BQ25703_IINDPM_MAX_UA			6400000
+#define BQ25703_IINDPM_DEFAULT_UA		3300000
+#define BQ25703_IINDPM_OFFSET_UA		50000
+
+#define BQ25703_ADCIBAT_DISCHG_MASK		GENMASK(6, 0)
+#define BQ25703_ADCIBAT_CHG_MASK		GENMASK(14, 8)
+#define BQ25703_ADCIBAT_CHG_STEP_UA		64000
+#define BQ25703_ADCIBAT_DIS_STEP_UA		256000
+
+#define BQ25703_ADCIIN				GENMASK(15, 8)
+#define BQ25703_ADCIINCMPIN_STEP		50000
+
+#define BQ25703_ADCVSYS_MASK			GENMASK(15, 8)
+#define BQ25703_ADCVBAT_MASK			GENMASK(7, 0)
+#define BQ25703_ADCVSYSVBAT_OFFSET_UV		2880000
+#define BQ25703_ADCVSYSVBAT_STEP		64000
+
+#define BQ25703_ADC_CH_MASK			GENMASK(7, 0)
+#define BQ25703_ADC_CONV_EN			BIT(15)
+#define BQ25703_ADC_START			BIT(14)
+#define BQ25703_ADC_FULL_SCALE			BIT(13)
+#define BQ25703_ADC_CMPIN_EN			BIT(7)
+#define BQ25703_ADC_VBUS_EN			BIT(6)
+#define BQ25703_ADC_PSYS_EN			BIT(5)
+#define BQ25703_ADC_IIN_EN			BIT(4)
+#define BQ25703_ADC_IDCHG_EN			BIT(3)
+#define BQ25703_ADC_ICHG_EN			BIT(2)
+#define BQ25703_ADC_VSYS_EN			BIT(1)
+#define BQ25703_ADC_VBAT_EN			BIT(0)
+
+#define BQ25703_EN_OTG_MASK			BIT(12)
+
+enum bq257xx_id {
+	BQ25703A,
+};
+
+/**
+ * struct bq257xx_device -
+ * @client: i2c client structure
+ * @regmap: register map structure
+ * @dev: device structure
+ * @regmap_cfg: device specific regmap cfg
+ */
+struct bq257xx_device {
+	struct i2c_client *client;
+	struct regmap *regmap;
+	struct device *dev;
+	const struct regmap_config *regmap_cfg;
+	long variant;
+};
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
