Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B0E7C61D97
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Jan 2023 18:14:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x404NDAhQXZ9dCtq0tiba5uFeOiKkE/btqsyaPSIkQw=; b=H9hJXDXVavshX2
	RyBPl0mnPwkqLdUwHkzrYwscP/M1RaQIq4CcviRocH6hb+H+PphTUqXC/XdpuMQuIMXPr9crnLIPg
	UF6H4iKmxwq4YKEzuz34Csw5MHaX+OIoe7/vK4QaboEi16MmjG+zmLM3t7X/jkBaf0mE9mmSlsuqc
	pNmtbWdW1j7gIgU7sgw9xErly6SiswoJGvTLTiCvwubaZ8PaIjZsViPTDyV4bwOmZ/217MrxX405z
	5IFFoRjnqn0/TZehHcU29pdkqck5JE/iMBRjRkubki5w7/9qACmaxt4uY6iMvxpecZYRpYhQInXM5
	IrPyMs26ZzPxDYwNcq1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLTEm-00G0R9-60; Fri, 27 Jan 2023 18:14:08 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLTE9-00G09g-UY
	for linux-rockchip@lists.infradead.org; Fri, 27 Jan 2023 18:13:33 +0000
Received: from jupiter.universe (dyndsl-095-033-159-051.ewe-ip-backbone.de [95.33.159.51])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 98BC06602EF9;
	Fri, 27 Jan 2023 18:13:22 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1674843202;
	bh=9rE2HgKmRAH+SJoDhQbhjvcEwP97vdVP224TpEpstFo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=JMoHjlKw/eUw42Kzijh/G6Dkeo9QmuxD4V+34AnZoYl3RxUHNwcdMYbmvJLX3Tng7
	 M0xXLdHNjCa3BWEZ867D8o+KrpIOzkwr8ribS0s6Dl+5ilwkJzFv8SbBXYTMNsWHg6
	 vQtH9dOqmAy747vivgRXPeSb9P2OaaOYJ5E0nmCeSFrp4CsU/f0OyuKhzmjR6wbw4w
	 m23iXvwDGevo2IjEwKNcuSszWuL0ay+lKfr1thphsn6KlRTxnj3/jd4GBPgNkZcJ6c
	 YxEcg+1w32EJqSuPk0V6o4EdP23DVc/1xFTo5XKcs43CL7Byso9gywJ9Yu8OHAvIGh
	 W/eqE5jEsAgTw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 3A3FA48011C; Fri, 27 Jan 2023 19:13:17 +0100 (CET)
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
Subject: [PATCHv6 06/11] mfd: rk8xx-i2c: use device_get_match_data
Date: Fri, 27 Jan 2023 19:12:39 +0100
Message-Id: <20230127181244.160887-7-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230127181244.160887-1-sebastian.reichel@collabora.com>
References: <20230127181244.160887-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230127_101330_360921_E2B01CC1 
X-CRM114-Status: GOOD (  16.95  )
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

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/mfd/rk8xx-core.c |  2 -
 drivers/mfd/rk8xx-i2c.c  | 89 +++++++++++++++++-----------------------
 2 files changed, 37 insertions(+), 54 deletions(-)

diff --git a/drivers/mfd/rk8xx-core.c b/drivers/mfd/rk8xx-core.c
index c52f5fa1a4da..21c6484a951c 100644
--- a/drivers/mfd/rk8xx-core.c
+++ b/drivers/mfd/rk8xx-core.c
@@ -596,8 +596,6 @@ int rk8xx_probe(struct device *dev, int variant, unsigned int irq, struct regmap
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
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
