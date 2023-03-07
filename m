Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 869FCC6FD1E
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Mar 2023 15:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lqt95xpvXDWJTOWD5vJPioVC0t58T84nZD4ACk8FksY=; b=Vzppjy9oEOGgi7
	xt+eIbQDSp7MH5n0ti6JmhGPneSimsLh0GhRgtEwcMwHh5WPIX+KXhp9sPQ8pik5qnq27EB/3jMKO
	xN4gcaumoDK/x5t12kDXlsnX6DBjXZ2oZoa4WdOmkTXLP9019L/jaerAcZApzhzqTYcLj+bW4MAZV
	mFXyIfjX1Dm2DJDZ4LkGpHZR7hvgKLt1Jcli/SgNxzfzlg31ZmbVOmiy8gi0Gypg+TJ0oi5R5fKss
	Y4wS+Q3rKUwSPn8eq5Lm25nxmWTzzDU7ezzU9nSD/L/4ecFOa4BkEwPyR+r78Lwh9Pskw/pFcC2vr
	waku0w2sAtxl+yWhuZNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZZMg-001GRt-0j; Tue, 07 Mar 2023 15:36:34 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZZMZ-001GN0-UH
	for linux-rockchip@lists.infradead.org; Tue, 07 Mar 2023 15:36:31 +0000
Received: from jupiter.universe (dyndsl-091-248-189-073.ewe-ip-backbone.de [91.248.189.73])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id A9B916602FEB;
	Tue,  7 Mar 2023 15:36:23 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1678203383;
	bh=564l3WGAORurb/WvqPnweL63+s5Hi9qqK6QdPsqoKNo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=AHkJWqXr8nTHwl07g2gpouO6iiwKEZXE6D0MtOf5v4wO9Ec2fNMLa1DQQ3ZDHDsY/
	 RHs7jjIWpDtLteWCmdVChKeKx/FgTZzCenylKIPeZgmRYpMBdt2Bk078ZcIW3snx5Z
	 4RLofhV5wIkcqM2X9MNsxbR0IMG7/dzTQICYfZ+iTdKtZ04xF+co/hYGTaIrhmrtfi
	 H/+3XAvSXNINAmFuuAaENy/Yufti068C55rqq4WSyBoKsg7NZ5NKab9KKHcHQlLIi4
	 CV0iFbC9ANAunFl717TqFtwtYM4nasvpp0i3G7mCgMGG345+b7bSwOxNjAMBBZRpzu
	 QClofWeGFSAwA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 2C59248011E; Tue,  7 Mar 2023 16:36:19 +0100 (CET)
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
Subject: [PATCHv7 06/11] mfd: rk8xx-i2c: use device_get_match_data
Date: Tue,  7 Mar 2023 16:36:12 +0100
Message-Id: <20230307153617.643260-7-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230307153617.643260-1-sebastian.reichel@collabora.com>
References: <20230307153617.643260-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_073628_278143_F74E3EB9 
X-CRM114-Status: GOOD (  16.87  )
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

Simplify the device identification logic by supplying the relevant
information via of_match_data. This also removes the dev_info()
printing the chip version, since that's supplied by the match data
now.

Due to lack of hardware this change is compile-tested only.

Acked-for-MFD-by: Lee Jones <lee@kernel.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/mfd/rk8xx-core.c |  2 -
 drivers/mfd/rk8xx-i2c.c  | 89 +++++++++++++++++-----------------------
 2 files changed, 37 insertions(+), 54 deletions(-)

diff --git a/drivers/mfd/rk8xx-core.c b/drivers/mfd/rk8xx-core.c
index 5c0a5acef34c..ddf2052c5190 100644
--- a/drivers/mfd/rk8xx-core.c
+++ b/drivers/mfd/rk8xx-core.c
@@ -597,8 +597,6 @@ int rk8xx_probe(struct device *dev, int variant, unsigned int irq, struct regmap
 		return -EINVAL;
 	}
 
-	dev_info(dev, "chip id: 0x%x\n", (unsigned int)rk808->variant);
-
 	if (!irq)
 		return dev_err_probe(dev, -EINVAL, "No interrupt support, no core IRQ\n");
 
diff --git a/drivers/mfd/rk8xx-i2c.c b/drivers/mfd/rk8xx-i2c.c
index 6d121b589fec..2822bfa8a04a 100644
--- a/drivers/mfd/rk8xx-i2c.c
+++ b/drivers/mfd/rk8xx-i2c.c
@@ -16,6 +16,11 @@
 #include <linux/of.h>
 #include <linux/regmap.h>
 
+struct rk8xx_i2c_platform_data {
+	const struct regmap_config *regmap_cfg;
+	int variant;
+};
+
 static bool rk808_is_volatile_reg(struct device *dev, unsigned int reg)
 {
 	/*
@@ -103,66 +108,46 @@ static const struct regmap_config rk817_regmap_config = {
 	.volatile_reg = rk817_is_volatile_reg,
 };
 
-static int rk8xx_i2c_get_variant(struct i2c_client *client)
-{
-	u8 pmic_id_msb, pmic_id_lsb;
-	int msb, lsb;
-
-	if (of_device_is_compatible(client->dev.of_node, "rockchip,rk817") ||
-	    of_device_is_compatible(client->dev.of_node, "rockchip,rk809")) {
-		pmic_id_msb = RK817_ID_MSB;
-		pmic_id_lsb = RK817_ID_LSB;
-	} else {
-		pmic_id_msb = RK808_ID_MSB;
-		pmic_id_lsb = RK808_ID_LSB;
-	}
+static const struct rk8xx_i2c_platform_data rk805_data = {
+	.regmap_cfg = &rk805_regmap_config,
+	.variant = RK805_ID,
+};
+
+static const struct rk8xx_i2c_platform_data rk808_data = {
+	.regmap_cfg = &rk808_regmap_config,
+	.variant = RK808_ID,
+};
 
-	/* Read chip variant */
-	msb = i2c_smbus_read_byte_data(client, pmic_id_msb);
-	if (msb < 0)
-		return dev_err_probe(&client->dev, msb, "failed to read the chip id MSB\n");
+static const struct rk8xx_i2c_platform_data rk809_data = {
+	.regmap_cfg = &rk817_regmap_config,
+	.variant = RK809_ID,
+};
 
-	lsb = i2c_smbus_read_byte_data(client, pmic_id_lsb);
-	if (lsb < 0)
-		return dev_err_probe(&client->dev, lsb, "failed to read the chip id LSB\n");
+static const struct rk8xx_i2c_platform_data rk817_data = {
+	.regmap_cfg = &rk817_regmap_config,
+	.variant = RK817_ID,
+};
 
-	return ((msb << 8) | lsb) & RK8XX_ID_MSK;
-}
+static const struct rk8xx_i2c_platform_data rk818_data = {
+	.regmap_cfg = &rk818_regmap_config,
+	.variant = RK818_ID,
+};
 
 static int rk8xx_i2c_probe(struct i2c_client *client)
 {
-	const struct regmap_config *regmap_cfg;
+	const struct rk8xx_i2c_platform_data *data;
 	struct regmap *regmap;
-	int variant;
 
-	variant = rk8xx_i2c_get_variant(client);
-	if (variant < 0)
-		return variant;
-
-	switch (variant) {
-	case RK805_ID:
-		regmap_cfg = &rk805_regmap_config;
-		break;
-	case RK808_ID:
-		regmap_cfg = &rk808_regmap_config;
-		break;
-	case RK818_ID:
-		regmap_cfg = &rk818_regmap_config;
-		break;
-	case RK809_ID:
-	case RK817_ID:
-		regmap_cfg = &rk817_regmap_config;
-		break;
-	default:
-		return dev_err_probe(&client->dev, -EINVAL, "Unsupported RK8XX ID %x\n", variant);
-	}
+	data = device_get_match_data(&client->dev);
+	if (!data)
+		return -ENODEV;
 
-	regmap = devm_regmap_init_i2c(client, regmap_cfg);
+	regmap = devm_regmap_init_i2c(client, data->regmap_cfg);
 	if (IS_ERR(regmap))
 		return dev_err_probe(&client->dev, PTR_ERR(regmap),
 				     "regmap initialization failed\n");
 
-	return rk8xx_probe(&client->dev, variant, client->irq, regmap);
+	return rk8xx_probe(&client->dev, data->variant, client->irq, regmap);
 }
 
 static void rk8xx_i2c_shutdown(struct i2c_client *client)
@@ -173,11 +158,11 @@ static void rk8xx_i2c_shutdown(struct i2c_client *client)
 static SIMPLE_DEV_PM_OPS(rk8xx_i2c_pm_ops, rk8xx_suspend, rk8xx_resume);
 
 static const struct of_device_id rk8xx_i2c_of_match[] = {
-	{ .compatible = "rockchip,rk805" },
-	{ .compatible = "rockchip,rk808" },
-	{ .compatible = "rockchip,rk809" },
-	{ .compatible = "rockchip,rk817" },
-	{ .compatible = "rockchip,rk818" },
+	{ .compatible = "rockchip,rk805", .data = &rk805_data },
+	{ .compatible = "rockchip,rk808", .data = &rk808_data },
+	{ .compatible = "rockchip,rk809", .data = &rk809_data },
+	{ .compatible = "rockchip,rk817", .data = &rk817_data },
+	{ .compatible = "rockchip,rk818", .data = &rk818_data },
 	{ },
 };
 MODULE_DEVICE_TABLE(of, rk8xx_i2c_of_match);
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
