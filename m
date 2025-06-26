Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0EEDC7EE33
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Jun 2025 21:31:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7E8X86DKJOJuxBHBQt/pEABlJvZ35duuZbKRXRvsNzU=; b=C7n6JtJEocTmAd
	HFGjW/E+BCaWdQhf0iS9XoVie+b59iTDGinUkD4NGbWk4m+zhieU4uh+bGEjuopoKSYpaI3ruxrfz
	CkYG46BNrvpJMycUEI+aEUHNVMn+WpkZ6CpZcC+Q2i4Oie2iKLhZMzYwas6DKKx9ngT9TmD9rzZZ/
	2mFdBuX2P5dlw6d57JniDZbQDWpTMGMSYJRBxpepRqsrAAIusTgqp1JBp+qZeWDiLXMYzwP1JpiBr
	p955DvxGgfj3lXrKX0o/zOKx/p/UHgc1FMAJAUaopfFE9EXfr5ZRyXjpNixOYvCbvISxpeIJiqD8h
	oxHJWRyDHr7otiHVFJAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUuBJ-0000000CqHf-20ro;
	Thu, 26 Jun 2025 21:30:53 +0000
Received: from mail-oo1-xc30.google.com ([2607:f8b0:4864:20::c30])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUshc-0000000Cf1A-2bs4
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Jun 2025 19:56:10 +0000
Received: by mail-oo1-xc30.google.com with SMTP id 006d021491bc7-611b246727cso375170eaf.0
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Jun 2025 12:56:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750967767; x=1751572567; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S2nJMywOhw7Zd8eC2O3g7tAJAQSlLbrE7mdKTgKRmEc=;
        b=TSbvdr4ahOoFWvgmnSK6ZrUFIr4asHh9W2d7eDf5RQME+k4Kr8r1m7hX8V/zaJhZs9
         M1lWXApZ2+RUWfCs3D76nvuk5zGgwYPZ7XoNRHVf4+N0wVq6VYV4SbsgGHQA3iKTfZgT
         D7tEpk+FX9h9/J6zq0YrRVQsQfQWKPi+SxhhOmjwO5MxEM2pvbnPjySPCoh9EoFHjgCU
         Va90nERwfA2MLoI14oTerE109D5o0xCAWOiZb7jUy2arMBtzmNJTNj5wQXIDo4OQwHjv
         Ybo+sL1937+KIZPYdO2yt9eUj5L2ko9Enw2mfHSfCTsLISrQ7JQLUCC9rIx3FHudtOA4
         C7QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750967767; x=1751572567;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S2nJMywOhw7Zd8eC2O3g7tAJAQSlLbrE7mdKTgKRmEc=;
        b=HqLtYwN8cgEZpuJdLA/BcAhJOh2WFd4xZNyeXnabdAp7TWZrln+7sExwH3RA+4LhxM
         m3FMQE73ORspJCLJ/P9w3nJ9nTRlkj2k/HgUeeHzN2OhITZ4mpUwN8MSeQD7fkfTVX/4
         YovFeLAhB2hXNLhuJOqE/fQa5W6g3uJ9dAme6hXTqXYvH5jShkMz2Gc6j9dnMWWrq1NS
         Vm3woapYczl8ZhyvTfenjN3+VYrduGwaMZxfLqD7E27Ozs29FhYc308w9NH6ybAclQWC
         YytwJgpqBAJSUdYcYMDGeSMcbPFG3DuHVjZfk3duhZbfiIcDkVEgWTYbOAGEQmoyDsxG
         VK8w==
X-Gm-Message-State: AOJu0YySumpuYXWYCoVPRTQubKxmN/XCSV0wRiu3m5G9Cqf26S3o38qc
	OeOs9ow+C/qJcb3Jz523FN8JXDM92zQOyPaUcbizEB8FV+XvKLP6Qtvc
X-Gm-Gg: ASbGncuv6oWmMKz4p2pHcRaABD2Lfmb/0BUIQRmyDB87LmCNYrhfUvRNgqyLgf1DaY4
	5vvNXhtyvk+R7BoeZU5FoLXPUW09hUBnDpEv9AWkjEAUbWZTJAbiPEm+0xiJGA0bTPWmkraWX4K
	a+i5kMJgRRVoDMwKVGaJ0hjCP1xWRPY6EVLEy8yxuSYmXiqX1DywMZ/jHJgN9J62glaC7M5m1C7
	MFUnUgWzcmCGmysf8OEmG2NwLbQWxAvx7hnFJwjjWHkg7A19ydnFSWaCBYtEUAG1X8Ee/wODWk9
	MXdezY2iIbIpwISaNwt59Lz596ErRuTSGXjLx0BxcFrheS9bVeiMEhHKoIokeQjNPC3mt45QgTH
	4LMgO9Q==
X-Google-Smtp-Source: AGHT+IF1QfYTkXwWFLks4qnJTWjP0ryBkdZQIwk4OCDuFUSqKLzNEXl2wZIR9gyZcVbJCJtNse0+Lw==
X-Received: by 2002:a4a:ee83:0:b0:611:11a3:7eac with SMTP id 006d021491bc7-611b90e5288mr460773eaf.3.1750967767394;
        Thu, 26 Jun 2025 12:56:07 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:f978:7e9c:c207:c035])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-611b8582352sm66915eaf.22.2025.06.26.12.56.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jun 2025 12:56:06 -0700 (PDT)
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
Subject: [PATCH V4 2/5] mfd: bq257xx: Add support for BQ25703A core driver
Date: Thu, 26 Jun 2025 14:53:40 -0500
Message-ID: <20250626195343.54653-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250626195343.54653-1-macroalpha82@gmail.com>
References: <20250626195343.54653-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_125608_680133_2DCEA257 
X-CRM114-Status: GOOD (  20.33  )
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
 drivers/mfd/bq257xx.c       | 104 ++++++++++++++++++++++++++++++++++
 include/linux/mfd/bq257xx.h | 108 ++++++++++++++++++++++++++++++++++++
 4 files changed, 224 insertions(+)
 create mode 100644 drivers/mfd/bq257xx.c
 create mode 100644 include/linux/mfd/bq257xx.h

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 6fb3768e3d71..d8b39e8a8a17 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -1585,6 +1585,17 @@ config MFD_TI_LMU
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
index 79495f9f3457..06da932cce5d 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -13,6 +13,7 @@ obj-$(CONFIG_MFD_SM501)		+= sm501.o
 obj-$(CONFIG_ARCH_BCM2835)	+= bcm2835-pm.o
 obj-$(CONFIG_MFD_BCM590XX)	+= bcm590xx.o
 obj-$(CONFIG_MFD_BD9571MWV)	+= bd9571mwv.o
+obj-$(CONFIG_MFD_BQ257XX)	+= bq257xx.o
 obj-$(CONFIG_MFD_CGBC)		+= cgbc-core.o
 obj-$(CONFIG_MFD_CROS_EC_DEV)	+= cros_ec_dev.o
 obj-$(CONFIG_MFD_CS42L43)	+= cs42l43.o
diff --git a/drivers/mfd/bq257xx.c b/drivers/mfd/bq257xx.c
new file mode 100644
index 000000000000..27fbb64110ed
--- /dev/null
+++ b/drivers/mfd/bq257xx.c
@@ -0,0 +1,104 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * BQ257XX Core Driver
+ * Copyright (C) 2024 Chris Morgan <macromorgan@hotmail.com>
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
+	struct bq257xx_device *ddata;
+	const struct mfd_cell *cells;
+	int nr_cells;
+	int ret;
+
+	ddata = devm_kzalloc(&client->dev, sizeof(*ddata), GFP_KERNEL);
+	if (!ddata)
+		return -ENOMEM;
+
+	ddata->client = client;
+
+	cells = bq25703_cells;
+	nr_cells = ARRAY_SIZE(bq25703_cells);
+	ddata->regmap = devm_regmap_init_i2c(client, &bq25703_regmap_config);
+	if (IS_ERR(ddata->regmap)) {
+		dev_err(&client->dev, "Failed to allocate register map\n");
+		return PTR_ERR(ddata->regmap);
+	}
+
+	i2c_set_clientdata(client, ddata);
+
+	ret = devm_mfd_add_devices(&client->dev, PLATFORM_DEVID_AUTO,
+				   cells, nr_cells, NULL, 0, NULL);
+	if (ret) {
+		dev_err(&client->dev, "Failed to register child devices %d\n", ret);
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
+	{ .compatible = "ti,bq25703a" },
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
+MODULE_DESCRIPTION("bq257xx buck/boost/charger driver");
+MODULE_AUTHOR("Chris Morgan <macromorgan@hotmail.com>");
+MODULE_LICENSE("GPL");
diff --git a/include/linux/mfd/bq257xx.h b/include/linux/mfd/bq257xx.h
new file mode 100644
index 000000000000..153a96248f32
--- /dev/null
+++ b/include/linux/mfd/bq257xx.h
@@ -0,0 +1,108 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Register definitions for TI BQ257XX
+ * Copyright (C) 2020 Texas Instruments Incorporated - http://www.ti.com/
+ */
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
+struct bq257xx_device {
+	struct i2c_client *client;
+	struct regmap *regmap;
+};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
