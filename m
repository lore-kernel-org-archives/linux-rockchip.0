Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F1A7C7EE3A
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Jun 2025 21:15:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j3GzppBF7MOxTLqek+gWIh71dpjgxpbMutsBE96jCsc=; b=PB5zqsxwDnypIC
	aH74Mu3vietCZWYhC8wlsf9BzP2zZOX7B3X4YeHUvlXiKIoxq1nYRs8eonPTi3zbO2GPZ1l3Je623
	vUQqBiLqsIBCcfo9R+SqrT5LHRoZntWI2XFDc3YKu2LF0NmBUvDusZQ9JWBc57OnZrnKx9jXr/P3U
	jCORjzZnfW6sbaf7/rJ5OS1rban0moAFEeCitTBmc5UwsAo4q02SYuVuqsWRIR6hUq3zBSCVSu+UR
	kexDdFxDXMv+jE6UBy0NC81NKby5cWg3iK/EVgonS+4SQ1xGqp0BDIREckmDLvebZ0PpKDfbraaFT
	WO3Uh1cW6xj3WgzOTGZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uToVs-00000003zTY-1Cgz;
	Mon, 23 Jun 2025 21:15:36 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTjyg-00000003PRL-3iZd
	for linux-rockchip@bombadil.infradead.org;
	Mon, 23 Jun 2025 16:25:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=bE/VSQwUqsUSgxDurcv65dzlzK9yg98M1pQULytqQNc=; b=cAxlMnNa5Dt0IccxvZnUjei8yC
	UTQgfzcsYtI/9ccUiRZNR4Qajdp/ldoEe8qAYvmJ08viCupyFiLN20UteC09m9Pz0pw4sSPNrytCk
	PssoxForpx+O1L4KAu8bchM6cBiyMmkwkoJNEd1RB68qhT24VV1OPK49h32K/PyCYsVkg4VyuX+DO
	MNRbCi/XJr77f6NJ01I5GG0RcwGNoRMVuTORyhkwaBpc/VpiqFEgaERtv5ce5nXI6pbYu1KzqazB8
	VmAjxM7pjnYEXwoSjWX9Ct4JfUHkPMorci0vfSm9kzSXQ02bhDeaaks4O8gcyMTZTP+bblp9njX+D
	6NtnW9Hw==;
Received: from mail-oi1-x231.google.com ([2607:f8b0:4864:20::231])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTjyd-00000005FfE-2Z86
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Jun 2025 16:25:01 +0000
Received: by mail-oi1-x231.google.com with SMTP id 5614622812f47-40ad1f7c23bso1791623b6e.2
        for <linux-rockchip@lists.infradead.org>; Mon, 23 Jun 2025 09:24:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750695897; x=1751300697; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bE/VSQwUqsUSgxDurcv65dzlzK9yg98M1pQULytqQNc=;
        b=QgzGO38/Eg7soNCk+ALf8AgO9XI731l/RZKMq78m0TICn95YXyY88mIWAEN41TLy1O
         rJQoTaLuhcJotduDoU7+Iy0OxMUFL4bsyLMURHtlb8ekbFjjV5jiCIFqjmU3q1oExMzp
         vQSTIVMAuDQLCGksc74NIxji1o1pKCD/DIp4nutCFd4LQLvDIZwtCQEpODZqXCOV8nuV
         2WyIUQYr+EvtQ496TEiVuWwbsHYqOpjaoyanYNaI5zYqYrB4jxejhtR1geWrNOXa+Tfq
         1GdD/0auif6a1ncCUu28kM1OiaPXKJ9o/JCRz+1dJTpCKf8ZDW4pvtmPhtw4p8LaGRAb
         lYcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750695897; x=1751300697;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bE/VSQwUqsUSgxDurcv65dzlzK9yg98M1pQULytqQNc=;
        b=QYnHIXul8YOnPkrAU7zhz7uJbi0xvY0t24mNY7bZJY9buSIVqrLQKCVzUjveX3VmJs
         ecAM3HaMwu0cfFGCOudnAmwBWMiLYfnprevIm1YZfbeYuYqAa0YC+0SPmqZ5ThMFErWv
         WCqTEChu3AGWbAaNt/rQbx8xpGbTdboFNILtCUKv/hUs4R1VjAT6Ow9vteBliXjd5Kyr
         sR5POMdMX+hiKpSCu3r56mg5djwdK92ASktFkalCcrzvx6Y3DZVjhfRvEPzHaeW5h0N2
         UkUl7Okou3WvVSm6BZfVJTb/qrW736EAujvS+tQv8xN5KN/PydasYhL9+urBYwss2sjD
         XfGg==
X-Gm-Message-State: AOJu0YzDav8+NRB4VX7ToUnm//hkmB3SsVs3APeOxK8R59v8f44PUXD1
	NlLV9EJx5MrALcC/3l6FcoSHtgahcGecWSLOYhnRVWMtBplwdkBfs9AZ
X-Gm-Gg: ASbGnctubzbH6LWNEWbjmqyuVvSEoOLy/9BzyVPR/t98y9HItaTBD1RFofHD4eUrRu7
	HHtZMUH0ir4ZQZRewcXUTpL0NYvmUOlA8JrbbQ/nS/WlMQhveMFDYWY3mwxQeoRa9c/x7mt2Egt
	kcYhCxOVXF48gBSI513eQaZmPRP8zALrCCQk6jmmsJ9hxZBdpaR2OzLHvyxw0BT3ocR4SiF3tMw
	sBuYt6I7i+rtsWwAQilNMuz/yv7sctp4jmPR4OTRHe3D3WsAxpjUGKCNSiyNulmSmflA7/wC5+a
	cUSGOBG4tSktE418MAlfAlEl4KueNGQKtgF9l75uEcHCN5If/EFSA6TvUZK5Rz21KL4cV/jTGJ8
	7QuZwMA==
X-Google-Smtp-Source: AGHT+IEyNlYYYEw0jtUMR828uFlRRvNG1fa3ZJD1W0IvhRnecGbB83rA3AV2U09osMRUnWxUZ2z0rQ==
X-Received: by 2002:a05:6808:2201:b0:3fa:3a0:137b with SMTP id 5614622812f47-40ac7006f6cmr9213109b6e.29.1750695896783;
        Mon, 23 Jun 2025 09:24:56 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:61a2:e42d:d809:3616])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40ac6ced44esm1427308b6e.24.2025.06.23.09.24.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jun 2025 09:24:56 -0700 (PDT)
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
Subject: [PATCH V3 4/5] regulator: bq257xx: Add bq257xx boost regulator driver
Date: Mon, 23 Jun 2025 11:22:22 -0500
Message-ID: <20250623162223.184304-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250623162223.184304-1-macroalpha82@gmail.com>
References: <20250623162223.184304-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_172459_831898_6576337D 
X-CRM114-Status: GOOD (  24.10  )
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
index 000000000000..cae08fbba9f8
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
+	.name = "usb_otg_vbus",
+	.of_match = of_match_ptr("usb-otg-vbus"),
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
