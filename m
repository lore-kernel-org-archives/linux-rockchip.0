Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C185DC7EE3A
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Jun 2025 21:31:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JeXL0iDw22jFtV/gTpPF9bGkMXNcC4NqnjoVCjKSntk=; b=k9pmC5pFzDLkI0
	yFDOc5KlIHkUmsaOolafFRTBqQ6qT3JA5tb0U9lHwGwTifHUWzFow7yPCL4a2CTcjLnj9fcrdyunA
	mr6N5ScoizzkpjBezWGd1FZY3KoHS/Zxg2hVuIrguw1StRhJWT+evj8N+RfWPSFNntTHV6E6T+RUK
	XnGsMr1b+/RmElmBULBAvbipglCKrib97Licfr3q7t6RIvToeOJAkrYlDf9F/2o/+vT/jGt4PdjnV
	RlQxo10zLYFHp18DHao1LY44yEcrHMtffdyzR35iBWvd9xau0o6YFpRC+U8IVpHGIlQL2I+SdvIdQ
	zSy2wITLFnmXffsHEJKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUuBK-0000000CqIL-2Q2s;
	Thu, 26 Jun 2025 21:30:54 +0000
Received: from mail-oo1-xc35.google.com ([2607:f8b0:4864:20::c35])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUshd-0000000Cf24-3Bk5
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Jun 2025 19:56:11 +0000
Received: by mail-oo1-xc35.google.com with SMTP id 006d021491bc7-6119b103132so951325eaf.1
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Jun 2025 12:56:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750967769; x=1751572569; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YmkgCUBj4lvNVPkSsn/9LMKgTPA6Ld/yuc09gXxyro0=;
        b=D+sO/0ww+G6XujDiSIaM2h8UPXbyp/LCcRzynUT2kitoaWdPuN+tXk3aUvrbQK+Nys
         qeT/my7P4cMRerM8LjFXZqxzh6SO58W/278qha6xoPdghVIVtGNY5QU0K4FlVxFV3ubn
         0GVAB4jXz6kxWHIV+pV2GKLaiNlZZ9o7k1tMEIog0hOSiuVE17m73UA15x4SB4RqfmoK
         5LyYOr4a8GKf3/ELvZd9BrbwRODpL3PWD9LiWZG8nBYT/611v3Nh/q9EePhuzOhlP8Uw
         x1hiLt6XA8e9Ys++Mcy8IB38b7mcfH8B+A8c8oe+C7S4nD/FCfGwkdjwF72iUGJDgAqz
         mW8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750967769; x=1751572569;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YmkgCUBj4lvNVPkSsn/9LMKgTPA6Ld/yuc09gXxyro0=;
        b=D3Bow/l05TYP23jqnL3sDkGzDo22qGpXY1ulk8Azm5Q/rexA+jR9onnPHuWuKEbYds
         Ay1Rw/3BtzLPTkVfLht6EIWg006wdpvyv32PdMYEv97LvsZ88Ji73EvVIf3FJ+BgTw8q
         N55r6jRSH9DSpC2SM136rDh0qLnS9C44wMNna0ZWH8eVwZIAma+S8vT1F0cLcGF9ruyh
         Q9UEyKwMtGw2uinoTQ0e8PsG7ujeAS3N+XFgvUxIsnd04m1V3jdZSLm/tbVo7NPwxlyj
         liMGOy4PxNjGHimKYaYXUa4W+Msb99FwITr/LJzSfHi3AsXHBozxNlHViJL7k4TYN8e4
         BjHA==
X-Gm-Message-State: AOJu0Yy87CUEBgpXUUD5u0TTeXowpNq4O9RucrxFeli8X5LGPasGMeBp
	glb6/I+aiLA9f89q1nmUUDlJPqFMQ5pvgqahz402obKiRIVFPVyJgeeR
X-Gm-Gg: ASbGncsXJhE2kMBgQJUZ2G/OVTz6sEOM0CinhQG9akcwRetZLG6Tb2GM58NsthlE0mq
	NCXff0bTUCpgj+1AZBd5CMI6yhYAK94pTfsz1POn2ZdqBCvmzRJvVA9AKFg1hXUqKoKNUQkjvT7
	S9SYPOcG85RbKoQBHgHEEM7hc6IgONakrfvVKdmGZG5azA4yNWO6H2IMG65KIUZi1BerRwx+BFx
	98BdRo8fHKYDYbJWfq+vkoBmoQRnB1NtjdLpp4RFyB0Pln+pOAX7dkWqI9J5TDUfxVg293PBxFh
	2dO1OUR52rDke8OltbNqCSFeTx99M/GtfwjnSswJZYyTGolrzhQId8/V+dz3vUV5Ym3Hy0Kc6Z1
	reX76k4bFnvZgejtp
X-Google-Smtp-Source: AGHT+IEDxcRf4HUXnbJ9+y2UGbPBf72I1hiEy/x6RlDEctyQ1WyAEFYDllkAuX7xRxZI+YjRddsS2A==
X-Received: by 2002:a05:6820:2d43:b0:611:ae2b:4d24 with SMTP id 006d021491bc7-611b95cddbamr277301eaf.0.1750967768850;
        Thu, 26 Jun 2025 12:56:08 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:f978:7e9c:c207:c035])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-611b8582352sm66915eaf.22.2025.06.26.12.56.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jun 2025 12:56:08 -0700 (PDT)
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
Subject: [PATCH V4 4/5] regulator: bq257xx: Add bq257xx boost regulator driver
Date: Thu, 26 Jun 2025 14:53:42 -0500
Message-ID: <20250626195343.54653-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250626195343.54653-1-macroalpha82@gmail.com>
References: <20250626195343.54653-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_125609_826919_AC4A0019 
X-CRM114-Status: GOOD (  24.29  )
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

Add support for the boost regulator found in the Texas Instruments
BQ25703. The boost regulator is capable of outputting between 4.48
and 20.8 volts and between 0 and 6.35 amps.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Reviewed-by: Mark Brown <broonie@kernel.org>
---
 drivers/regulator/Kconfig             |   8 ++
 drivers/regulator/Makefile            |   1 +
 drivers/regulator/bq257xx-regulator.c | 189 ++++++++++++++++++++++++++
 3 files changed, 198 insertions(+)
 create mode 100644 drivers/regulator/bq257xx-regulator.c

diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
index 6d8988387da4..53cd33afe6d5 100644
--- a/drivers/regulator/Kconfig
+++ b/drivers/regulator/Kconfig
@@ -297,6 +297,14 @@ config REGULATOR_BD96801
 	  This driver can also be built as a module. If so, the module
 	  will be called bd96801-regulator.
 
+config REGULATOR_BQ257XX
+	tristate "TI BQ257XX regulator family"
+	depends on MFD_BQ257XX
+	depends on GPIOLIB || COMPILE_TEST
+	help
+	  Say Y to enable support for the boost regulator function of
+	  the BQ257XX family of charger circuits.
+
 config REGULATOR_CPCAP
 	tristate "Motorola CPCAP regulator"
 	depends on MFD_CPCAP
diff --git a/drivers/regulator/Makefile b/drivers/regulator/Makefile
index c0bc7a0f4e67..d6024189a248 100644
--- a/drivers/regulator/Makefile
+++ b/drivers/regulator/Makefile
@@ -38,6 +38,7 @@ obj-$(CONFIG_REGULATOR_BD71828) += bd71828-regulator.o
 obj-$(CONFIG_REGULATOR_BD718XX) += bd718x7-regulator.o
 obj-$(CONFIG_REGULATOR_BD9571MWV) += bd9571mwv-regulator.o
 obj-$(CONFIG_REGULATOR_BD957XMUF) += bd9576-regulator.o
+obj-$(CONFIG_REGULATOR_BQ257XX) += bq257xx-regulator.o
 obj-$(CONFIG_REGULATOR_DA903X)	+= da903x-regulator.o
 obj-$(CONFIG_REGULATOR_BD96801) += bd96801-regulator.o
 obj-$(CONFIG_REGULATOR_DA9052)	+= da9052-regulator.o
diff --git a/drivers/regulator/bq257xx-regulator.c b/drivers/regulator/bq257xx-regulator.c
new file mode 100644
index 000000000000..5ccead8e0cfb
--- /dev/null
+++ b/drivers/regulator/bq257xx-regulator.c
@@ -0,0 +1,189 @@
+// SPDX-License-Identifier: GPL-2.0
+/* BQ257XX Battery Charger Driver
+ * Copyright (C) 2024 Chris Morgan <macromorgan@hotmail.com>
+ * Based off of BQ256XX Battery Charger driver and
+ * RK808 Regulator driver.
+ */
+
+#include <linux/bitfield.h>
+#include <linux/err.h>
+#include <linux/gpio/consumer.h>
+#include <linux/mfd/bq257xx.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+#include <linux/regulator/driver.h>
+#include <linux/regulator/of_regulator.h>
+
+struct bq257xx_reg_data {
+	struct bq257xx_device *bq;
+	struct regulator_dev *bq257xx_reg;
+	struct gpio_desc *otg_en_gpio;
+	struct regulator_desc desc;
+};
+
+static int bq25703_vbus_get_cur_limit(struct regulator_dev *rdev)
+{
+	struct bq257xx_reg_data *pdata = rdev_get_drvdata(rdev);
+	int ret;
+	unsigned int reg;
+
+	ret = regmap_read(pdata->bq->regmap, BQ25703_OTG_CURRENT, &reg);
+	if (ret)
+		return ret;
+	return FIELD_GET(BQ25703_OTG_CUR_MASK, reg) * BQ25703_OTG_CUR_STEP_UA;
+}
+
+/*
+ * Check if the minimum current and maximum current requested are
+ * sane values, then set the register accordingly.
+ */
+static int bq25703_vbus_set_cur_limit(struct regulator_dev *rdev,
+				      int min_uA, int max_uA)
+{
+	struct bq257xx_reg_data *pdata = rdev_get_drvdata(rdev);
+	unsigned int reg;
+
+	if ((min_uA > BQ25703_OTG_CUR_MAX_UA) || (max_uA < 0))
+		return -EINVAL;
+
+	reg = (max_uA / BQ25703_OTG_CUR_STEP_UA);
+
+	/* Catch rounding errors since our step is 50000uA. */
+	if ((reg * BQ25703_OTG_CUR_STEP_UA) < min_uA)
+		return -EINVAL;
+
+	return regmap_write(pdata->bq->regmap, BQ25703_OTG_CURRENT,
+			    FIELD_PREP(BQ25703_OTG_CUR_MASK, reg));
+}
+
+static int bq25703_vbus_enable(struct regulator_dev *rdev)
+{
+	struct bq257xx_reg_data *pdata = rdev_get_drvdata(rdev);
+
+	if (pdata->otg_en_gpio)
+		gpiod_set_value_cansleep(pdata->otg_en_gpio, 1);
+	return regulator_enable_regmap(rdev);
+}
+
+static int bq25703_vbus_disable(struct regulator_dev *rdev)
+{
+	struct bq257xx_reg_data *pdata = rdev_get_drvdata(rdev);
+
+	if (pdata->otg_en_gpio)
+		gpiod_set_value_cansleep(pdata->otg_en_gpio, 0);
+	return regulator_disable_regmap(rdev);
+}
+
+static const struct regulator_ops bq25703_vbus_ops = {
+	.enable = bq25703_vbus_enable,
+	.disable = bq25703_vbus_disable,
+	.is_enabled = regulator_is_enabled_regmap,
+	.list_voltage = regulator_list_voltage_linear,
+	.get_voltage_sel = regulator_get_voltage_sel_regmap,
+	.set_voltage_sel = regulator_set_voltage_sel_regmap,
+	.get_current_limit = bq25703_vbus_get_cur_limit,
+	.set_current_limit = bq25703_vbus_set_cur_limit,
+};
+
+static const struct regulator_desc bq25703_vbus_desc = {
+	.name = "vbus",
+	.of_match = of_match_ptr("vbus"),
+	.regulators_node = of_match_ptr("regulators"),
+	.type = REGULATOR_VOLTAGE,
+	.owner = THIS_MODULE,
+	.ops = &bq25703_vbus_ops,
+	.min_uV = BQ25703_OTG_VOLT_MIN_UV,
+	.uV_step = BQ25703_OTG_VOLT_STEP_UV,
+	.n_voltages = BQ25703_OTG_VOLT_NUM_VOLT,
+	.enable_mask = BQ25703_EN_OTG_MASK,
+	.enable_reg = BQ25703_CHARGE_OPTION_3,
+	.enable_val = BQ25703_EN_OTG_MASK,
+	.disable_val = 0,
+	.vsel_reg = BQ25703_OTG_VOLT,
+	.vsel_mask = BQ25703_OTG_VOLT_MASK,
+};
+
+/* Get optional GPIO for OTG regulator enable. */
+static void bq257xx_reg_dt_parse_gpio(struct platform_device *pdev)
+{
+	struct device_node *child, *subchild;
+	struct bq257xx_reg_data *pdata = platform_get_drvdata(pdev);
+
+	child = of_get_child_by_name(pdev->dev.of_node,
+				     pdata->desc.regulators_node);
+	if (!child)
+		return;
+
+	subchild = of_get_child_by_name(child, pdata->desc.of_match);
+	if (!subchild)
+		return;
+
+	of_node_put(child);
+
+	pdata->otg_en_gpio = devm_fwnode_gpiod_get_index(&pdev->dev,
+							 of_fwnode_handle(subchild),
+							 "enable", 0,
+							 GPIOD_OUT_LOW,
+							 pdata->desc.of_match);
+
+	of_node_put(subchild);
+
+	if (IS_ERR_OR_NULL(pdata->otg_en_gpio)) {
+		dev_err(&pdev->dev, "Error getting enable gpio: %ld\n",
+			PTR_ERR(pdata->otg_en_gpio));
+		return;
+	}
+}
+
+static int bq257xx_regulator_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct bq257xx_device *bq = dev_get_drvdata(pdev->dev.parent);
+	struct bq257xx_reg_data *pdata;
+	struct device_node *np = dev->of_node;
+	struct regulator_init_data *init_data;
+	struct regulator_config cfg = {};
+
+	pdev->dev.of_node = pdev->dev.parent->of_node;
+	pdev->dev.of_node_reused = true;
+
+	pdata = devm_kzalloc(&pdev->dev, sizeof(struct bq257xx_reg_data), GFP_KERNEL);
+	if (!pdata)
+		return -ENOMEM;
+
+	pdata->bq = bq;
+	pdata->desc = bq25703_vbus_desc;
+
+	platform_set_drvdata(pdev, pdata);
+	bq257xx_reg_dt_parse_gpio(pdev);
+
+	cfg.dev = &pdev->dev;
+	cfg.init_data = init_data;
+	cfg.driver_data = pdata;
+	cfg.of_node = np;
+	cfg.regmap = dev_get_regmap(pdev->dev.parent, NULL);
+	if (!cfg.regmap)
+		return -ENODEV;
+
+	pdata->bq257xx_reg = devm_regulator_register(dev, &pdata->desc, &cfg);
+	if (IS_ERR(pdata->bq257xx_reg)) {
+		return dev_err_probe(&pdev->dev, PTR_ERR(pdata->bq257xx_reg),
+				     "error registering bq257xx regulator");
+	}
+
+	return 0;
+}
+
+static struct platform_driver bq257xx_reg_driver = {
+	.driver = {
+		.name = "bq257xx-regulator",
+	},
+	.probe = bq257xx_regulator_probe,
+};
+
+module_platform_driver(bq257xx_reg_driver);
+
+MODULE_DESCRIPTION("bq257xx regulator driver");
+MODULE_AUTHOR("Chris Morgan <macromorgan@hotmail.com>");
+MODULE_LICENSE("GPL");
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
