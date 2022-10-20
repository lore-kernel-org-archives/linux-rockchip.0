Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DBADC41535
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Oct 2022 20:43:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dxKQQOKbmGtQXcSp966zcO2zOqxW98LuqyragE7goIE=; b=fFM4/I/JJyOVt2
	JsIYe6RTItMiHWqMbh+QhaqD2eDA5wWD7ZxWCYub/CzYxMNtaJCov5rbmjIuqtM+NDEsD7bEkGPfx
	NuuowiS6StIf9pd5galxhwwDgSA2MJRgrEo4/bDxk8TgJ+S9zBA0NGulULE2ejfW6VJxJdmz7wKxp
	g5vg41VL2q6KxTUJU6rSKcPYekr6qeVaeD8LZyeQE3w6G7wVilM+xMAR+FkY+lMJm6DM//HMKbJDG
	rRZb/BleRhXSTKDTdX++pJw8Rde1+gz8AZVMnoY5D3k4mfACGfiVY0r1MtO2ef99wdsSlHB0NCNnb
	Pfhy1a/GQe/p5PGm8qPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olcNb-001kQl-3m; Thu, 20 Oct 2022 20:43:03 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olcNX-001kNJ-R9
	for linux-rockchip@lists.infradead.org; Thu, 20 Oct 2022 20:43:01 +0000
Received: from jupiter.universe (dyndsl-091-096-059-009.ewe-ip-backbone.de [91.96.59.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8BA8A66024E8;
	Thu, 20 Oct 2022 21:42:54 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1666298574;
	bh=s6um36bR3kLKecIG+7jDV13ngBnOF98lUyD4ZvCww6w=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=oU13qj5DC0Wiuj19fSfuFOYcdSJAPIxrIiFXqAOBPXsySh3cRojkQwBLOaNA7G0QG
	 wrTQVn+LZSoZMP7NSIL4vls7I85vn0f9mMYQjYGVGJ5TTuntGHuo3zvJ1m4xilqV9J
	 hCOayxd5eLSjVCRnosi0ASWJvZvmqhDm4JWErZ6Y27o9jIKSfDOM3JvsgUfFpe09yf
	 aV7kN5nc6DZfAyhKNlDq6uCvqNWr2prb11wuKRv6u38tAGcMiBm+498spARmOHYl1B
	 v8tyqmuew8CW7/gLUIe94+jxgfO1nKTu1WHO2WceM1dcvm0BVIJ96boG4kac/oECxg
	 +bcfBWSuTPEWA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 50001480896; Thu, 20 Oct 2022 22:42:52 +0200 (CEST)
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
Subject: [PATCHv4 01/13] clk: RK808: reduce 'struct rk808' usage
Date: Thu, 20 Oct 2022 22:42:39 +0200
Message-Id: <20221020204251.108565-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221020204251.108565-1-sebastian.reichel@collabora.com>
References: <20221020204251.108565-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221020_134300_175442_2DE4455A 
X-CRM114-Status: GOOD (  18.14  )
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
