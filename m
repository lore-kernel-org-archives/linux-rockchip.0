Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C159BC83F27
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jul 2025 17:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nXoNrn15/oZkzPw3yctINj0egzDdfDDCOTTNuuztmQc=; b=safAlWvWiz4iT3
	blJvUIfbOyj1rLAi6zX/8EB6gE4Ouh/VRvA2XKsmGYH2yZ178gBe+ZTZbxs5kG5f+f0zoP2NNx8Iu
	5McqIWDuu+4cHMAOTn2fbYn7cJGF6cHFlU2IE5m88dpJV5ULEEWaxKTIeUpDgmQhWhVgYjqdEXZmT
	t4R1KYE8ZsvCTSvLrcSQtsuNNgaDNO5SxWWbI5SkgSYtMnN3qs/lgnWcGjRl50tAZ+waa3SWvLTKi
	xDTtEqLdoYKZlq7dkTUCuoorWrzi4ESa07U+FMtNzaBHSnBAdbLv8g6JPG9prZFr9b77XpwPrgmH2
	DE+kBFXTNSMG5MMzh93w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueGLf-000000034ws-1Qai;
	Tue, 22 Jul 2025 17:00:15 +0000
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueGCL-0000000342s-3X7g
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Jul 2025 16:50:39 +0000
Received: by mail-ot1-x336.google.com with SMTP id 46e09a7af769-72c47631b4cso4192664a34.1
        for <linux-rockchip@lists.infradead.org>; Tue, 22 Jul 2025 09:50:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753203037; x=1753807837; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9a9Jk+vOMvVx0BnxTyEuby9NcTo1TaK4G2C5CMSCa6E=;
        b=gb55L+BLZxq3/uPE7DUqGMAQHXhPewDmh0IDEkEjO0EENBK0Ja9e3HWey9DaY+YhK3
         GTwFLE4sdOFuvuZJVqFuOtNxjkUDrDrjsoj3Ib5XM+UwCs23mCkuNrP4HGExAIep5LN+
         mtHxxWF76yEkwEONk7I38dPemCiM35i3u9X4P1+uBY1ugrT0Rc3O5mIZWt7EIOYb3CFc
         DRSU+AFCZAhgCxdNZmEhzb3pE+CfIJSIPw75GgkmERwCnGrmDcTsS2In55Z4Ldj+La0a
         5bYklUGTlOYUqgtByyGeGrk0DIaJgdwICPib+Fwf+f8VVSlJtM1gQrbVt/aQOsIiU5hj
         MZfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753203037; x=1753807837;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9a9Jk+vOMvVx0BnxTyEuby9NcTo1TaK4G2C5CMSCa6E=;
        b=u8jFMueSiaqFCP/9lyukGU6GHMTCQjB+/bb5NtQbL4+y9uD7pFr2U+M2/cWTElMMhO
         WU8bwJ3rlLOLPfB0y9u6obE6tlN3MO/G3DsqPOWv/g1QqbBN+dkz7LG0sr+mIzB4NMmd
         zMDl0fgLeBdJaC8V/xEJEANua9kYK0HF2rcsaa0tL7NK5YoYeaPwVTUYBT8JCj5d5a9M
         YCb40/MRoyLJmOUOpn8hJ+hcL095Bkg/meDXpv32o/NcvJK71Kg4UVkRvCr3etNOVvFy
         CwAVQ9B5EM2qutGYqZiVyu0e/LwmHb8QIxp2628D/mfnx7oO6LwbnJfLPg4RksOCLVf0
         w25Q==
X-Gm-Message-State: AOJu0YzlVSEy/aUK8BeiaEIpVqZiOpV/XWJZDvYUbM0Ki3R8C8FCaGle
	C0vV82i+/oZinaCfPrcbZQBTGRosFtnppYbbyX4P2MjJwyVn2mF3l99m
X-Gm-Gg: ASbGncunJglGkd78yUJNs09PhCA55hP/RFNczjBxXgcPoMJ5aeQYQaE79Rz3WXVI4zV
	eGp8i/lSCp1dpMIDw48eLuPv1zW/l2jKeYUcn7SSMudRLJIWr5fMIY2EIv4VEIXv96mXDRyYAuG
	mZmwG19vasiyuuONmm8wIQi9n85Cxvfhq29aSVCqvtanrvIfFsWMyXzEeZwLedILIR9X92p3dZG
	f3PAblWX4HN6uNlhkiS6/e1ART4asJKMU8aLpScog+0ibxSGELhQLcT9XCM8tjX+oNQlp5dFRPv
	Ew5SCn4oPmy0OjO4zEjuferW5nFiukevWyAWRPSbtlw7yoaeyIu5mhfokyTJpjv36RApDchHZ9f
	LlGq2xQpijJc6jrdrYlkqP/rNqwSgm48nqp3q/iWGXA==
X-Google-Smtp-Source: AGHT+IFIZEAKigzvHX2YVGvGqkRBpxE4AmHN+1zh9M4r2jHkbZeZXXSM1URaKw/fh4Ts8cg1kyAKxA==
X-Received: by 2002:a05:6808:250a:b0:400:32b9:7926 with SMTP id 5614622812f47-41d032fc802mr15432099b6e.6.1753203036733;
        Tue, 22 Jul 2025 09:50:36 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:a130:f3a0:d203:abc8])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-41fd59531d8sm2935217b6e.42.2025.07.22.09.50.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Jul 2025 09:50:36 -0700 (PDT)
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
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v5 2/5] mfd: bq257xx: Add support for BQ25703A core driver
Date: Tue, 22 Jul 2025 11:48:09 -0500
Message-ID: <20250722164813.2110874-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250722164813.2110874-1-macroalpha82@gmail.com>
References: <20250722164813.2110874-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_095037_888067_01A92B34 
X-CRM114-Status: GOOD (  20.31  )
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
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/mfd/Kconfig         |  11 ++++
 drivers/mfd/Makefile        |   1 +
 drivers/mfd/bq257xx.c       |  97 ++++++++++++++++++++++++++++++++
 include/linux/mfd/bq257xx.h | 108 ++++++++++++++++++++++++++++++++++++
 4 files changed, 217 insertions(+)
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
index 000000000000..03325a04d44b
--- /dev/null
+++ b/drivers/mfd/bq257xx.c
@@ -0,0 +1,97 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * BQ257XX Core Driver
+ * Copyright (C) 2025 Chris Morgan <macromorgan@hotmail.com>
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
+static int bq257xx_probe(struct i2c_client *client)
+{
+	struct bq257xx_device *ddata;
+	struct mfd_cell cells[] = {
+		MFD_CELL_NAME("bq257xx-regulator"),
+		MFD_CELL_NAME("bq257xx-charger"),
+	};
+	int ret;
+
+	ddata = devm_kzalloc(&client->dev, sizeof(*ddata), GFP_KERNEL);
+	if (!ddata)
+		return -ENOMEM;
+
+	ddata->client = client;
+	ddata->regmap = devm_regmap_init_i2c(client, &bq25703_regmap_config);
+	if (IS_ERR(ddata->regmap)) {
+		return dev_err_probe(&client->dev, PTR_ERR(ddata->regmap),
+				     "Failed to allocate register map\n");
+	}
+
+	i2c_set_clientdata(client, ddata);
+
+	ret = devm_mfd_add_devices(&client->dev, PLATFORM_DEVID_AUTO,
+				   cells, ARRAY_SIZE(cells), NULL, 0, NULL);
+	if (ret)
+		return dev_err_probe(&client->dev, ret,
+				     "Failed to register child devices\n");
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
