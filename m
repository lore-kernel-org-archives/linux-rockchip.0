Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2ADB7CD98CF
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Jun 2026 15:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=crQSqXSsoHv/KLSoQjNFmHdK9sun7OkBqny1YTIUCis=; b=WtLRXldu4YYNvM
	UFKWpxVYoaaLGXuxiUkCZUPvtfCH53tqJSNxbJWpRoalKKnHKXgIN2nlY4tKITG4CzVg/LQkNbdTI
	+8yf5I4uZ1trZ9IYCubC7cBxXhjj7xn3yUqi33QbeH9dtViJicWwKfMG2KQnSUIyEEHhfI5ZdXtFF
	3LIo4jOAZU+EK425k+SqIhFJKJ9xFUDEwrTILkmJ7Zy0cGJcDqJBcH+qugMTVh9Hom3MZTk/ChXho
	al7+B/u9f/YUz4HwuTld5CnmMLb+1yxZzWI2zC+NX5YhieXNRgbmS5okavzvUCCPi4SbLSqpSmpRO
	IiVOpDiaIN2lVjp51fgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY3u4-0000000B9vc-3nOk;
	Fri, 12 Jun 2026 15:34:40 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY3u2-0000000B9r9-0X3c
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Jun 2026 15:34:39 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-490aebf33e9so5329595e9.3
        for <linux-rockchip@lists.infradead.org>; Fri, 12 Jun 2026 08:34:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1781278476; x=1781883276; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C77dw0Vtz8mOpBkQCeTh06vcPM193z5oy1TKnaUahRI=;
        b=ZP1OS7a5N/Q4blGw2uPgzuXrUJrjkHlI52dlJUvecUek8tyjOveltayolPO8geb6kU
         LM9ZB/4g8ga93fERqMFenv63Fc3mL5MIQYmYS1HUG2vzaFz69sEFHMBQzC92DOj+ZoXm
         6YprRbkuXyFQteXD+CDotZt/CSbCAo9AgRstvVeKYgM+Y+b9d4+x3gPjODp1Bm6ZA1QX
         AHRAvsTts6dMc33qdxYi/C/+n1Y5SurDEu9N+ans3+ZPduMUaTTZ+LdUj9sb+bNTZcHP
         whNyQc2ozNuASBOXYK5k7uejHwrttC5kDWnooBc3bGLJGLFVqRnWJDAgD4ZgypOg6WSa
         6MJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781278476; x=1781883276;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=C77dw0Vtz8mOpBkQCeTh06vcPM193z5oy1TKnaUahRI=;
        b=MSDVdE7Kurbb7IEM5nJRLNyuUZF4ZoZlsY5LG1ByIRiDdFpG1Bbjde8JHvKdvi5uWm
         31sANfOiemUk7U0x9I33Cij92rh4arYLh/Fvq0r79dngeadEQVENZNtPLod8/UFPl7Vi
         wAlvKK8vmVp0MdsrjZdwygIPvREHTOLZbHw9kIHLqK1DDCduBNRymU+nAByUB1k0gxmn
         ASMwNBvmHqrfaqPW+S1vY8a68xJQaY96PFKiri6tzCXSxO+SM1uliQiZIRQ2jjDApi3Y
         sryxPL5f0LIWe6whrG+SnJA8hnnYqgEzqZEeb2K+/HPmgJieJi8kz/90Pfb9/OUChDIi
         /dSg==
X-Forwarded-Encrypted: i=1; AFNElJ8GJd4z6cNRDs34ZucZNAGSSspqAGiGo/k4s137qNGKio8oYdrJpId+IbHmmURBDofl32cKBj054rqVUkRs8w==@lists.infradead.org
X-Gm-Message-State: AOJu0YwiV11xv7R3ShFPqklcD2T8z1SwzlwHiVchwHuBn9b0CBY3zHhK
	FG7f90blAt27UveEW0tMAQt4YZRpSSZ+yG9Njnj1wom+EdJ7hu1EPNryy/Xa4VJALXrqoRmyPWV
	bUmQcMEk=
X-Gm-Gg: Acq92OHIj81NK7JG6d/X7CZ+oKWGBQ+6qOBi/uFufFZcTIRIuvIafZeZDBcBDbf7YDp
	dfZVJUaJrYUG0oE6zl7WvZxu52TvMgTYQMN3BzfGV7LGTaS5Tng5QvAGFoaUBBBP3mo22q5kEBq
	h8Zy4iPFJNRsllDAErAs8jtmGe60bOduhSYoqsalE6DiP6MbCm4a6A1Exs25Femj3w2qNZEGtVB
	CkfS6zbm0QzdeP7mBgF4hjtUnnM7AVgnPdFtoYI9enEdzUHZZ1MQegBlx985Xw2CzLDoGc9J18W
	QpoZFAe00mZtussGTUEHTDf5uPIKImLLz52Q5EDkOIEpIR7PB3+l81owk3KLfLSY4q754RhcRkE
	9sBZ11WhUliPvyrHkR6TNQkuk7hFtiZe55UpEG1dp8tMxmDJL9SwzjHEeHBxtcbbElF67uSoN2+
	sKB5wbRFFLIplpO2VYqVtIf6+epQPGOPZ/8eE0L51F
X-Received: by 2002:a05:600c:314a:b0:490:bcc1:4edb with SMTP id 5b1f17b1804b1-490ec504eb5mr40584955e9.27.1781278475899;
        Fri, 12 Jun 2026 08:34:35 -0700 (PDT)
Received: from alchark-surface.localdomain ([5.194.92.128])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4606f2b0d28sm6916641f8f.20.2026.06.12.08.34.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 08:34:35 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Fri, 12 Jun 2026 19:34:17 +0400
Subject: [PATCH 4/4] regulator: Add support for UGREEN NASync DH2300 MCU
 SATA power gate
MIME-Version: 1.0
Message-Id: <20260612-dh2300-mcu-v1-4-ab8db1617bc0@flipper.net>
References: <20260612-dh2300-mcu-v1-0-ab8db1617bc0@flipper.net>
In-Reply-To: <20260612-dh2300-mcu-v1-0-ab8db1617bc0@flipper.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5555; i=alchark@flipper.net;
 h=from:subject:message-id; bh=pO9z3jMa8HkpZeV2bnc4gj2kfzujnJX0LE3K/RZ5nqM=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTpqP1teOQo+XzpyZz3a8S6NxuJ2Xouu9r2skcvSt115
 ZL/+YVfOiayMIhxMViKKbLM/bbEdqoR36xdHh5fYeawMoEMkRZpYAACFga+3MS8UiMdIz1TbUM9
 QyMdYx0jBi5OAZjqqecZ/ulqxO3/Z1LLxZzMcW3LYx4OufxULvOPre7GwcFdK/plXRgZJok4hS7
 ULmCdczdQd1nZrtkbHSxXPTfLcP8l/Zf90dsXrAA=
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_083438_203227_153A0B4A 
X-CRM114-Status: GOOD (  23.00  )
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

Add a driver for the SATA drive-bay power gate function of the UGREEN
NASync DH2300 embedded controller (HC32F005 MCU).

This is a simple on/off regulator, controlled by bit 0 of register 0x41,
with inverted polarity (0 = enabled, 1 = disabled). Boot-time default is
disabled, so this driver is required to use the NAS functionality.

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 MAINTAINERS                                     |  1 +
 drivers/regulator/Kconfig                       | 12 ++++
 drivers/regulator/Makefile                      |  1 +
 drivers/regulator/ugreen-dh2300-mcu-regulator.c | 80 +++++++++++++++++++++++++
 4 files changed, 94 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 9578a06fe651..2fc84be86e46 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -27638,6 +27638,7 @@ M:	Alexey Charkov <alchark@flipper.net>
 S:	Maintained
 F:	Documentation/devicetree/bindings/mfd/ugreen,dh2300-mcu.yaml
 F:	drivers/mfd/ugreen-dh2300-mcu.c
+F:	drivers/regulator/ugreen-dh2300-mcu-regulator.c
 
 UHID USERSPACE HID IO DRIVER
 M:	David Rheinsberg <david@readahead.eu>
diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
index a54a549196fe..e692ff864806 100644
--- a/drivers/regulator/Kconfig
+++ b/drivers/regulator/Kconfig
@@ -1812,6 +1812,18 @@ config REGULATOR_TWL4030
 	  This driver supports the voltage regulators provided by
 	  this family of companion chips.
 
+config REGULATOR_UGREEN_DH2300_MCU
+	tristate "UGREEN NASync DH2300 MCU SATA power regulator"
+	depends on MFD_UGREEN_DH2300_MCU
+	help
+	  Say yes here to enable support for the SATA drive-bay power gate of
+	  the UGREEN NASync DH2300 embedded controller. The regulator is a
+	  sub-device of the ugreen-dh2300-mcu MFD core and is normally consumed
+	  by the SATA controllers via their target-supply.
+
+	  This driver can also be built as a module. If so, the module will be
+	  called ugreen-dh2300-mcu-regulator.
+
 config REGULATOR_UNIPHIER
 	tristate "UniPhier regulator driver"
 	depends on ARCH_UNIPHIER || COMPILE_TEST
diff --git a/drivers/regulator/Makefile b/drivers/regulator/Makefile
index 134eee274dbf..44956d795923 100644
--- a/drivers/regulator/Makefile
+++ b/drivers/regulator/Makefile
@@ -206,6 +206,7 @@ obj-$(CONFIG_REGULATOR_TPS6594) += tps6594-regulator.o
 obj-$(CONFIG_REGULATOR_TPS65132) += tps65132-regulator.o
 obj-$(CONFIG_REGULATOR_TPS68470) += tps68470-regulator.o
 obj-$(CONFIG_REGULATOR_TWL4030) += twl-regulator.o twl6030-regulator.o
+obj-$(CONFIG_REGULATOR_UGREEN_DH2300_MCU) += ugreen-dh2300-mcu-regulator.o
 obj-$(CONFIG_REGULATOR_UNIPHIER) += uniphier-regulator.o
 obj-$(CONFIG_REGULATOR_RZG2L_VBCTRL) += renesas-usb-vbus-regulator.o
 obj-$(CONFIG_REGULATOR_VCTRL) += vctrl-regulator.o
diff --git a/drivers/regulator/ugreen-dh2300-mcu-regulator.c b/drivers/regulator/ugreen-dh2300-mcu-regulator.c
new file mode 100644
index 000000000000..69fda90f7ace
--- /dev/null
+++ b/drivers/regulator/ugreen-dh2300-mcu-regulator.c
@@ -0,0 +1,80 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * SATA drive-bay power gate for the UGREEN NASync DH2300 embedded controller
+ * (HC32F005 MCU).
+ *
+ * The microcontroller gates the SATA bay power rail through register 0x41.
+ * The polarity is inverted: writing 0 enables the rail, writing 1 disables it
+ * (the controller latches "off" out of reset).
+ */
+
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+#include <linux/regulator/driver.h>
+#include <linux/regulator/of_regulator.h>
+
+#define UGREEN_DH2300_MCU_REG_SATA_POWER	0x41
+
+static const struct regulator_ops ugreen_dh2300_sata_ops = {
+	.enable = regulator_enable_regmap,
+	.disable = regulator_disable_regmap,
+	.is_enabled = regulator_is_enabled_regmap,
+};
+
+static const struct regulator_desc ugreen_dh2300_sata_desc = {
+	.name = "sata-power",
+	.enable_is_inverted = true,
+	.enable_mask = 0x01,
+	.enable_reg = UGREEN_DH2300_MCU_REG_SATA_POWER,
+	.supply_name = "vin",
+	.ops = &ugreen_dh2300_sata_ops,
+	.type = REGULATOR_VOLTAGE,
+	.owner = THIS_MODULE,
+};
+
+static int ugreen_dh2300_mcu_regulator_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct regulator_config config = { };
+	struct regulator_dev *rdev;
+	struct device_node *np;
+
+	np = of_get_child_by_name(dev->parent->of_node, "regulator");
+	if (!np)
+		return dev_err_probe(dev, -ENODEV,
+				     "missing regulator child node\n");
+
+	config.dev = dev;
+	config.of_node = np;
+	config.regmap = dev_get_regmap(dev->parent, NULL);
+	if (!config.regmap) {
+		of_node_put(np);
+		return dev_err_probe(dev, -ENODEV,
+				     "no regmap available from parent\n");
+	}
+
+	config.init_data = of_get_regulator_init_data(dev, np,
+						      &ugreen_dh2300_sata_desc);
+
+	rdev = devm_regulator_register(dev, &ugreen_dh2300_sata_desc, &config);
+	of_node_put(np);
+	if (IS_ERR(rdev))
+		return dev_err_probe(dev, PTR_ERR(rdev),
+				     "failed to register regulator\n");
+
+	return 0;
+}
+
+static struct platform_driver ugreen_dh2300_mcu_regulator_driver = {
+	.driver = {
+		.name = "ugreen-dh2300-mcu-regulator",
+	},
+	.probe = ugreen_dh2300_mcu_regulator_probe,
+};
+module_platform_driver(ugreen_dh2300_mcu_regulator_driver);
+
+MODULE_DESCRIPTION("UGREEN NASync DH2300 MCU SATA power regulator");
+MODULE_LICENSE("GPL");

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
