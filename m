Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2850CC3DA59
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Jul 2024 11:05:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ty4OdGPULnwy151wUcW2vk+z/J0vwF7Ifl199AHlY+Q=; b=CkUxmND99D/SuK
	uwjersSLX2cNqj+s+dMHHfzWyVmtPtQcob58FLn9Pgwr7utfejt/W+ofkSFUYaeejImPKjtkb1AiF
	IiNTeKSiEiAp0q/WVmIswFZTzcJfOtTdw/75t/S2I2QPebi89/wDwY91hdWxKuUGXxkLgWuRcCoUF
	8UacLRURQSPnvtvem99tmMTj08h3uXaszp3/wDSNABwXgbt7uRqw1eFW+B8cFu6BkYRYDai6M9grw
	uIn5GuuKKbAVgBCTQUQDxZZP0tR0oL2UxAIK52anY+FgW/ZkeL/QIwQlFOej/Hxq7f5/GB0Gx2673
	vlSmO+Y8M9FHrQOFEszA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTJW2-00000006oWa-1hVH;
	Mon, 15 Jul 2024 11:05:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTJV9-00000006o9b-1hlD;
	Mon, 15 Jul 2024 11:04:16 +0000
Received: from i5e860d09.versanet.de ([94.134.13.9] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sTJV4-0006GM-5V; Mon, 15 Jul 2024 13:04:10 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com,
	sboyd@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 2/3] clk: add driver for voltage controlled oscillators
Date: Mon, 15 Jul 2024 13:02:50 +0200
Message-Id: <20240715110251.261844-3-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240715110251.261844-1-heiko@sntech.de>
References: <20240715110251.261844-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240715_040415_467390_62977AE7 
X-CRM114-Status: GOOD (  25.22  )
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
sometimes use additional oscillators for things like PCIe reference
clocks, that need actual supplies to get enabled and enable-gpios to be
toggled for them to work.

This adds a driver for those generic voltage controlled oscillators,
that can show up in schematics looking like

         ----------------
Enable - | 100MHz,3.3V, | - VDD
         |    3225      |
   GND - |              | - OUT
         ----------------

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/clk/Kconfig   |  10 ++++
 drivers/clk/Makefile  |   1 +
 drivers/clk/clk-vco.c | 133 ++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 144 insertions(+)
 create mode 100644 drivers/clk/clk-vco.c

diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
index 3e9099504fad4..e93a380b6ee47 100644
--- a/drivers/clk/Kconfig
+++ b/drivers/clk/Kconfig
@@ -414,6 +414,16 @@ config COMMON_CLK_VC7
 	  Renesas Versaclock7 is a family of configurable clock generator
 	  and jitter attenuator ICs with fractional and integer dividers.
 
+config COMMON_CLK_VCO
+	tristate "Clock driver for voltage controlled oscillators"
+	depends on GPIOLIB && REGULATOR
+	help
+	  This driver supports generic voltage controlled oscillators that
+	  are not configurable but need supplies to be enabled to run.
+	  Generally they need a supply voltage to be enabled and may also
+	  require a separate enable pin, though in a lot of cases, vdd
+	  and enable control might be tied to the same supply.
+
 config COMMON_CLK_STM32F
 	def_bool COMMON_CLK && (MACH_STM32F429 || MACH_STM32F469 || MACH_STM32F746)
 	help
diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index 4abe16c8ccdfe..ca7b7b7ddfd8d 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -79,6 +79,7 @@ obj-$(CONFIG_COMMON_CLK_SI521XX)	+= clk-si521xx.o
 obj-$(CONFIG_COMMON_CLK_VC3)		+= clk-versaclock3.o
 obj-$(CONFIG_COMMON_CLK_VC5)		+= clk-versaclock5.o
 obj-$(CONFIG_COMMON_CLK_VC7)		+= clk-versaclock7.o
+obj-$(CONFIG_COMMON_CLK_VCO)		+= clk-vco.o
 obj-$(CONFIG_COMMON_CLK_WM831X)		+= clk-wm831x.o
 obj-$(CONFIG_COMMON_CLK_XGENE)		+= clk-xgene.o
 
diff --git a/drivers/clk/clk-vco.c b/drivers/clk/clk-vco.c
new file mode 100644
index 0000000000000..f7fe2bc627f36
--- /dev/null
+++ b/drivers/clk/clk-vco.c
@@ -0,0 +1,133 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2024 Heiko Stuebner <heiko@sntech.de>
+ *
+ * Generic voltage controlled oscillator
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
+struct clk_vco {
+	struct device *dev;
+	struct clk_hw hw;
+	u32 rate;
+	struct regulator *supply;
+	struct gpio_desc *enable_gpio;
+};
+
+#define to_clk_vco(_hw) container_of(_hw, struct clk_vco, hw)
+
+static int clk_vco_prepare(struct clk_hw *hw)
+{
+	return regulator_enable(to_clk_vco(hw)->supply);
+}
+
+static void clk_vco_unprepare(struct clk_hw *hw)
+{
+	regulator_disable(to_clk_vco(hw)->supply);
+}
+
+static int clk_vco_enable(struct clk_hw *hw)
+{
+	gpiod_set_value(to_clk_vco(hw)->enable_gpio, 1);
+	return 0;
+}
+
+static void clk_vco_disable(struct clk_hw *hw)
+{
+	gpiod_set_value(to_clk_vco(hw)->enable_gpio, 0);
+}
+
+static unsigned long clk_vco_recalc_rate(struct clk_hw *hw,
+					       unsigned long parent_rate)
+{
+	return to_clk_vco(hw)->rate;
+}
+
+const struct clk_ops clk_vco_ops = {
+	.prepare = clk_vco_prepare,
+	.unprepare = clk_vco_unprepare,
+	.enable = clk_vco_enable,
+	.disable = clk_vco_disable,
+	.recalc_rate = clk_vco_recalc_rate,
+};
+
+static int clk_vco_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct clk_vco *clkgen;
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
+		return dev_err_probe(dev, -EIO, "failed to get clock-frequency");
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
+		return dev_err_probe(dev, ret, "failed to set gpio output");
+
+	clkgen->hw.init = CLK_HW_INIT_NO_PARENT(clk_name, &clk_vco_ops, 0);
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
+static const struct of_device_id clk_vco_ids[] = {
+	{ .compatible = "voltage-oscillator" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, clk_vco_ids);
+
+static struct platform_driver clk_vco_driver = {
+	.driver = {
+		.name = "clk_vco",
+		.of_match_table = clk_vco_ids,
+	},
+	.probe = clk_vco_probe,
+};
+module_platform_driver(clk_vco_driver);
+
+MODULE_AUTHOR("Heiko Stuebner <heiko@sntech.de>");
+MODULE_DESCRIPTION("Voltage controlled oscillator driver");
+MODULE_LICENSE("GPL");
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
