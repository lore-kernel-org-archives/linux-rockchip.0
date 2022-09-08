Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8FC0C6FA8A
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Sep 2022 00:31:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dxKQQOKbmGtQXcSp966zcO2zOqxW98LuqyragE7goIE=; b=Ijbv+bzHCO/K13
	k/RnC11czJEI8sr/9/ef4AjMhX4X3eShe0QdDjfs3uHbsfBwU+007kKUnoATyk/6ZcFWIyfldX79a
	k6QFT2Husr3sjdBLSPqT9WtpJFeP9WCA0VCJZQ72ulf282OiwI2EJS8Z4vbvLI6LtJ2Sm916H4YHv
	PTI0xHjAIVFO6mn2q74zyC/rlEZDg5UOgFFKvGORj8MwhZ3Nc0TuxEpUu5GziN4V3GyBjB4xZ5ndG
	vkX0SntsUy7lqSYWiYmlQImC6EY5GP30hujHjKhIzysKG1/PNOiuRvsI9O7YV722LgxkW88/wshcR
	c95fjv2NJ1eF1FSe25og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oW5Rw-00DFOV-TG; Thu, 08 Sep 2022 00:31:20 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oW5Rt-00DEeK-A6
	for linux-rockchip@lists.infradead.org; Thu, 08 Sep 2022 00:31:19 +0000
Received: from jupiter.universe (dyndsl-095-033-158-249.ewe-ip-backbone.de [95.33.158.249])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 2A11E6601F73;
	Thu,  8 Sep 2022 01:31:12 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1662597072;
	bh=s6um36bR3kLKecIG+7jDV13ngBnOF98lUyD4ZvCww6w=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=WYYVNw+P6EjESS8iyfTIUrLMUrgPIjnakwk/cB6dV2Ns1nVCGbEQQzMzdLS+PoX/M
	 f6jtJAGjsAPnr3YoGZJNYkYdcFvqNECjzGTPVTmSZAEQLen2zn0k0u4HBg1hOTaLC2
	 Mkm+508szCNHlt8qlSEJd2oLlreODGW4cr4XcUJikVvauwWbUzMxPvujVwPUFVQxKS
	 MPYAhn3PmF1rfvxPnaMYfD1CLq31iSYRTudd8Y0Zes5quYvSrBPoEf6bL9zARAPK5j
	 g4JwMekRZSSS/He4gI8jKNxnqQAUAYjGEvLYcOTJ8rpgUDpn/W0NxOHiXTozTZDoaS
	 80t8lkMiT3vLA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 61B754805BD; Thu,  8 Sep 2022 02:31:09 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lee Jones <lee@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCHv2 03/13] clk: RK808: reduce 'struct rk808' usage
Date: Thu,  8 Sep 2022 02:30:57 +0200
Message-Id: <20220908003107.220143-4-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220908003107.220143-1-sebastian.reichel@collabora.com>
References: <20220908003107.220143-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_173117_649070_90750477 
X-CRM114-Status: GOOD (  18.44  )
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

Reduce usage of 'struct rk808' (driver data of the parent MFD), so
that only the chip variant field is still being accessed directly.
This allows restructuring the MFD driver to support SPI based
PMICs.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/clk/clk-rk808.c | 34 ++++++++++++++++------------------
 1 file changed, 16 insertions(+), 18 deletions(-)

diff --git a/drivers/clk/clk-rk808.c b/drivers/clk/clk-rk808.c
index 32f833d732ed..f7412b137e5e 100644
--- a/drivers/clk/clk-rk808.c
+++ b/drivers/clk/clk-rk808.c
@@ -12,10 +12,9 @@
 #include <linux/slab.h>
 #include <linux/platform_device.h>
 #include <linux/mfd/rk808.h>
-#include <linux/i2c.h>
 
 struct rk808_clkout {
-	struct rk808 *rk808;
+	struct regmap		*regmap;
 	struct clk_hw		clkout1_hw;
 	struct clk_hw		clkout2_hw;
 };
@@ -31,9 +30,8 @@ static int rk808_clkout2_enable(struct clk_hw *hw, bool enable)
 	struct rk808_clkout *rk808_clkout = container_of(hw,
 							 struct rk808_clkout,
 							 clkout2_hw);
-	struct rk808 *rk808 = rk808_clkout->rk808;
 
-	return regmap_update_bits(rk808->regmap, RK808_CLK32OUT_REG,
+	return regmap_update_bits(rk808_clkout->regmap, RK808_CLK32OUT_REG,
 				  CLK32KOUT2_EN, enable ? CLK32KOUT2_EN : 0);
 }
 
@@ -52,10 +50,9 @@ static int rk808_clkout2_is_prepared(struct clk_hw *hw)
 	struct rk808_clkout *rk808_clkout = container_of(hw,
 							 struct rk808_clkout,
 							 clkout2_hw);
-	struct rk808 *rk808 = rk808_clkout->rk808;
 	uint32_t val;
 
-	int ret = regmap_read(rk808->regmap, RK808_CLK32OUT_REG, &val);
+	int ret = regmap_read(rk808_clkout->regmap, RK808_CLK32OUT_REG, &val);
 
 	if (ret < 0)
 		return ret;
@@ -93,9 +90,8 @@ static int rk817_clkout2_enable(struct clk_hw *hw, bool enable)
 	struct rk808_clkout *rk808_clkout = container_of(hw,
 							 struct rk808_clkout,
 							 clkout2_hw);
-	struct rk808 *rk808 = rk808_clkout->rk808;
 
-	return regmap_update_bits(rk808->regmap, RK817_SYS_CFG(1),
+	return regmap_update_bits(rk808_clkout->regmap, RK817_SYS_CFG(1),
 				  RK817_CLK32KOUT2_EN,
 				  enable ? RK817_CLK32KOUT2_EN : 0);
 }
@@ -115,10 +111,9 @@ static int rk817_clkout2_is_prepared(struct clk_hw *hw)
 	struct rk808_clkout *rk808_clkout = container_of(hw,
 							 struct rk808_clkout,
 							 clkout2_hw);
-	struct rk808 *rk808 = rk808_clkout->rk808;
 	unsigned int val;
 
-	int ret = regmap_read(rk808->regmap, RK817_SYS_CFG(1), &val);
+	int ret = regmap_read(rk808_clkout->regmap, RK817_SYS_CFG(1), &val);
 
 	if (ret < 0)
 		return 0;
@@ -153,18 +148,21 @@ static const struct clk_ops *rkpmic_get_ops(long variant)
 static int rk808_clkout_probe(struct platform_device *pdev)
 {
 	struct rk808 *rk808 = dev_get_drvdata(pdev->dev.parent);
-	struct i2c_client *client = rk808->i2c;
-	struct device_node *node = client->dev.of_node;
+	struct device *dev = &pdev->dev;
 	struct clk_init_data init = {};
 	struct rk808_clkout *rk808_clkout;
 	int ret;
 
-	rk808_clkout = devm_kzalloc(&client->dev,
+	dev->of_node = pdev->dev.parent->of_node;
+
+	rk808_clkout = devm_kzalloc(dev,
 				    sizeof(*rk808_clkout), GFP_KERNEL);
 	if (!rk808_clkout)
 		return -ENOMEM;
 
-	rk808_clkout->rk808 = rk808;
+	rk808_clkout->regmap = dev_get_regmap(pdev->dev.parent, NULL);
+	if (!rk808_clkout->regmap)
+		return -ENODEV;
 
 	init.parent_names = NULL;
 	init.num_parents = 0;
@@ -173,10 +171,10 @@ static int rk808_clkout_probe(struct platform_device *pdev)
 	rk808_clkout->clkout1_hw.init = &init;
 
 	/* optional override of the clockname */
-	of_property_read_string_index(node, "clock-output-names",
+	of_property_read_string_index(dev->of_node, "clock-output-names",
 				      0, &init.name);
 
-	ret = devm_clk_hw_register(&client->dev, &rk808_clkout->clkout1_hw);
+	ret = devm_clk_hw_register(dev, &rk808_clkout->clkout1_hw);
 	if (ret)
 		return ret;
 
@@ -185,10 +183,10 @@ static int rk808_clkout_probe(struct platform_device *pdev)
 	rk808_clkout->clkout2_hw.init = &init;
 
 	/* optional override of the clockname */
-	of_property_read_string_index(node, "clock-output-names",
+	of_property_read_string_index(dev->of_node, "clock-output-names",
 				      1, &init.name);
 
-	ret = devm_clk_hw_register(&client->dev, &rk808_clkout->clkout2_hw);
+	ret = devm_clk_hw_register(dev, &rk808_clkout->clkout2_hw);
 	if (ret)
 		return ret;
 
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
