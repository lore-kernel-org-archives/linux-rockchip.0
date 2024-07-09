Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9376EC2BD09
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Jul 2024 12:33:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kplclFa9lF4HyegQeo2b4MB7l13WO/ZM0rLL2y8WpbE=; b=FisfV8Bj7qNq9q
	jmBopj5BLgfdhRHqd7K7vZyP6Xm6N8+WlTS8tkxaPevE//fWyxu5A09Y+/SSOd5VCTa8Yvnn9BivI
	Q0JMZJ4s8zJrQ0bnvLR9rHIyX+ieyKdert8n+jZ6YUvKX6goa+x+j/R84e4ZhvMIvXbKe8cnSo2wk
	ycGMbxKXWiilCpsqA1zUQjRcYDvBSsBVuJwj982oANEBKdbXrmPEhFenBER3dxcNxDx5qLuSXXc+M
	5hYxx1pQHG48axxrw/xvlsJpJB3/dmGar9rhqMXo3AE4yTUf4TvOoxZofKPzwdSkWlkN8vui3BWEn
	HrBG+vZYXqakOitil2Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRA2A-00000007981-1Ib6;
	Tue, 09 Jul 2024 12:33:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRA0a-000000078LE-44vq;
	Tue, 09 Jul 2024 12:31:52 +0000
Received: from i5e860d18.versanet.de ([94.134.13.24] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sRA0T-00074P-LW; Tue, 09 Jul 2024 14:31:41 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com,
	sboyd@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	quentin.schulz@cherry.de,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 2/6] clk: add driver for generic clock generators
Date: Tue,  9 Jul 2024 14:31:17 +0200
Message-Id: <20240709123121.1452394-3-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240709123121.1452394-1-heiko@sntech.de>
References: <20240709123121.1452394-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240709_053149_032326_86525399 
X-CRM114-Status: GOOD (  24.87  )
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

In contrast to fixed clocks that are described as ungateable, boards
sometimes use additional clock generators for things like PCIe reference
clocks, that need actual supplies to get enabled and enable-gpios to be
toggled for them to work.

This adds a driver for those generic unconfigurable clock generators.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/clk/Kconfig         |   7 ++
 drivers/clk/Makefile        |   1 +
 drivers/clk/clk-generator.c | 133 ++++++++++++++++++++++++++++++++++++
 3 files changed, 141 insertions(+)
 create mode 100644 drivers/clk/clk-generator.c

diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
index 3e9099504fad4..76c53ddc472ce 100644
--- a/drivers/clk/Kconfig
+++ b/drivers/clk/Kconfig
@@ -247,6 +247,13 @@ config COMMON_CLK_GEMINI
 	  This driver supports the SoC clocks on the Cortina Systems Gemini
 	  platform, also known as SL3516 or CS3516.
 
+config COMMON_CLK_GENERATOR
+	tristate "Clock driver for generic clock generators"
+	depends on GPIOLIB && REGULATOR
+	help
+	  This driver supports generic clock generators that are not
+	  configurable but need supplies to be enabled to run.
+
 config COMMON_CLK_LAN966X
 	tristate "Generic Clock Controller driver for LAN966X SoC"
 	depends on HAS_IOMEM
diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index 4abe16c8ccdfe..9cb0801155771 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -36,6 +36,7 @@ obj-$(CONFIG_COMMON_CLK_FIXED_MMIO)	+= clk-fixed-mmio.o
 obj-$(CONFIG_COMMON_CLK_FSL_FLEXSPI)	+= clk-fsl-flexspi.o
 obj-$(CONFIG_COMMON_CLK_FSL_SAI)	+= clk-fsl-sai.o
 obj-$(CONFIG_COMMON_CLK_GEMINI)		+= clk-gemini.o
+obj-$(CONFIG_COMMON_CLK_GENERATOR)	+= clk-generator.o
 obj-$(CONFIG_COMMON_CLK_ASPEED)		+= clk-aspeed.o
 obj-$(CONFIG_MACH_ASPEED_G6)		+= clk-ast2600.o
 obj-$(CONFIG_ARCH_HIGHBANK)		+= clk-highbank.o
diff --git a/drivers/clk/clk-generator.c b/drivers/clk/clk-generator.c
new file mode 100644
index 0000000000000..99737bab1f5ad
--- /dev/null
+++ b/drivers/clk/clk-generator.c
@@ -0,0 +1,133 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2024 Heiko Stuebner <heiko@sntech.de>
+ *
+ * Generic unconfigurable clock generators
+ */
+
+#include <linux/clk-provider.h>
+#include <linux/err.h>
+#include <linux/gpio/consumer.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/regulator/consumer.h>
+#include <linux/slab.h>
+
+struct clk_generator {
+	struct device *dev;
+	struct clk_hw hw;
+	u32 rate;
+	struct regulator *supply;
+	struct gpio_desc *enable_gpio;
+};
+
+#define to_clk_generator(_hw) container_of(_hw, struct clk_generator, hw)
+
+static int clk_generator_prepare(struct clk_hw *hw)
+{
+	return regulator_enable(to_clk_generator(hw)->supply);
+}
+
+static void clk_generator_unprepare(struct clk_hw *hw)
+{
+	regulator_disable(to_clk_generator(hw)->supply);
+}
+
+static int clk_generator_enable(struct clk_hw *hw)
+{
+	gpiod_set_value(to_clk_generator(hw)->enable_gpio, 1);
+	return 0;
+}
+
+static void clk_generator_disable(struct clk_hw *hw)
+{
+	gpiod_set_value(to_clk_generator(hw)->enable_gpio, 0);
+}
+
+static unsigned long clk_generator_recalc_rate(struct clk_hw *hw,
+					       unsigned long parent_rate)
+{
+	return to_clk_generator(hw)->rate;
+}
+
+const struct clk_ops clk_generator_ops = {
+	.prepare = clk_generator_prepare,
+	.unprepare = clk_generator_unprepare,
+	.enable = clk_generator_enable,
+	.disable = clk_generator_disable,
+	.recalc_rate = clk_generator_recalc_rate,
+};
+
+static int clk_generator_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct clk_generator *clkgen;
+	const char *clk_name;
+	int ret;
+
+	clkgen = devm_kzalloc(dev, sizeof(*clkgen), GFP_KERNEL);
+	if (!clkgen)
+		return -ENOMEM;
+
+	clkgen->dev = dev;
+
+	if (device_property_read_u32(dev, "clock-frequency", &clkgen->rate))
+		return -EIO;
+
+	ret = device_property_read_string(dev, "clock-output-names", &clk_name);
+	if (ret)
+		clk_name = fwnode_get_name(dev->fwnode);
+
+	clkgen->supply = devm_regulator_get_optional(dev, "vdd");
+	if (IS_ERR(clkgen->supply)) {
+		if (PTR_ERR(clkgen->supply) != -ENODEV)
+			return dev_err_probe(dev, PTR_ERR(clkgen->supply),
+					     "failed to get regulator\n");
+		clkgen->supply = NULL;
+	}
+
+	clkgen->enable_gpio = devm_gpiod_get_optional(dev, "enable",
+						      GPIOD_OUT_LOW);
+	if (IS_ERR(clkgen->enable_gpio))
+		return dev_err_probe(dev, PTR_ERR(clkgen->enable_gpio),
+				     "failed to get gpio\n");
+
+	ret = gpiod_direction_output(clkgen->enable_gpio, 0);
+	if (ret < 0)
+		return ret;
+
+	clkgen->hw.init = CLK_HW_INIT_NO_PARENT(clk_name, &clk_generator_ops, 0);
+
+	/* register the clock */
+	ret = devm_clk_hw_register(dev, &clkgen->hw);
+	if (ret)
+		return dev_err_probe(dev, ret,
+				     "failed to register clock\n");
+
+	ret = devm_of_clk_add_hw_provider(dev, of_clk_hw_simple_get,
+					  &clkgen->hw);
+	if (ret)
+		return dev_err_probe(dev, ret,
+				     "failed to register clock provider\n");
+
+	return 0;
+}
+
+static const struct of_device_id clk_generator_ids[] = {
+	{ .compatible = "clock-generator" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, clk_generator_ids);
+
+static struct platform_driver clk_generator_driver = {
+	.driver = {
+		.name = "clk_generator",
+		.of_match_table = clk_generator_ids,
+	},
+	.probe = clk_generator_probe,
+};
+module_platform_driver(clk_generator_driver);
+
+MODULE_AUTHOR("Heiko Stuebner <heiko@sntech.de>");
+MODULE_DESCRIPTION("Clock-generator driver");
+MODULE_LICENSE("GPL");
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
