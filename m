Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63178C4167D
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Oct 2022 20:43:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OU+H4/mW3LiNDULk/yUY3DV7Ra/3oeNAHR4pIOuxotw=; b=uAWrMZUoVglOVf
	XUrLMX9dP+4MMOo1/QD/6H+TCT3QV3NeMmP/qXSzwCSDGF+ocCDrcA5hoD6Xx7Y3ba2y4n3Bn/wV8
	vsMaD0+l/gWc60TbaX7vJfpvNmL/mjq1pNjymVt81myww3zicWJVrX67yredCi9hhF9t1yEXZzKSM
	KljgQpaZLNT9YmJ/ctgMvaX9hTUWyQnRz+tCFLfcBhk4Oi8kyBf+5GFX96RX3imokjAhhJjHd2a6/
	KfPaRb6R5IlYWXQs2Yq9LIVvu1at7lCE1qXY8Skxeld3IrvS2iXQ3hfFaSA8Ntzp4UOsDhyPDdaOv
	ss6e/tnANun8wLWTU2yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olcNd-001kTS-Ru; Thu, 20 Oct 2022 20:43:05 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olcNY-001kNP-BG
	for linux-rockchip@lists.infradead.org; Thu, 20 Oct 2022 20:43:03 +0000
Received: from jupiter.universe (dyndsl-091-096-059-009.ewe-ip-backbone.de [91.96.59.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id B3227660252D;
	Thu, 20 Oct 2022 21:42:54 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1666298574;
	bh=Dmpj3FvbFbooH0xr/mAewEFx/soj7LsJn0sCs3wKPuc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=jOC6LY2aWniXRLRhOwwN4Su56GODnqeDJ5eyx8s+aVg2/7FEEwXQImE+N3dSO2R59
	 b7WqwpDYPKSgHcxlpiOD9S9dS32bGBW7uPCiHbh5bC+fHMzX47IpaZQLxrt8+mGmhf
	 JFkkURVCGP+KHqWL9ekGFmzjbAm3Kuti/v3VyRwojUJNU883j+UWGY5twh8rkezwIY
	 NrGyRb6p9FDq0gsfMwibkn2n6m5nIwoUHAt5ocQFDav6PsLbSyqMYV/6bPMMUrvy2k
	 0J3a0vrx3LmF3qnEclDlYJyAGKykkUGXcONABokVz+89ymN8Hd4BlFtE3rM0Cg2C7h
	 hOp0R07mGwMFQ==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 5704C480899; Thu, 20 Oct 2022 22:42:52 +0200 (CEST)
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
Subject: [PATCHv4 04/13] mfd: rk808: convert to device managed resources
Date: Thu, 20 Oct 2022 22:42:42 +0200
Message-Id: <20221020204251.108565-5-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221020204251.108565-1-sebastian.reichel@collabora.com>
References: <20221020204251.108565-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221020_134300_665399_EA5F191B 
X-CRM114-Status: GOOD (  18.12  )
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

Fully convert the driver to device managed resources.

Acked-for-MFD-by: Lee Jones <lee@kernel.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/mfd/rk808.c | 64 ++++++++++++++++-----------------------------
 1 file changed, 22 insertions(+), 42 deletions(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index e00da7c7e3b1..e2e7a2c85019 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -541,13 +541,11 @@ static const struct regmap_irq_chip rk818_irq_chip = {
 	.init_ack_masked = true,
 };
 
-static struct i2c_client *rk808_i2c_client;
-
-static void rk808_pm_power_off(void)
+static int rk808_power_off(struct sys_off_data *data)
 {
+	struct rk808 *rk808 = data->cb_data;
 	int ret;
 	unsigned int reg, bit;
-	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
 
 	switch (rk808->variant) {
 	case RK805_ID:
@@ -568,16 +566,18 @@ static void rk808_pm_power_off(void)
 		bit = DEV_OFF;
 		break;
 	default:
-		return;
+		return NOTIFY_DONE;
 	}
 	ret = regmap_update_bits(rk808->regmap, reg, bit, bit);
 	if (ret)
-		dev_err(&rk808_i2c_client->dev, "Failed to shutdown device!\n");
+		dev_err(&rk808->i2c->dev, "Failed to shutdown device!\n");
+
+	return NOTIFY_DONE;
 }
 
-static int rk808_restart_notify(struct notifier_block *this, unsigned long mode, void *cmd)
+static int rk808_restart(struct sys_off_data *data)
 {
-	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
+	struct rk808 *rk808 = data->cb_data;
 	unsigned int reg, bit;
 	int ret;
 
@@ -593,16 +593,11 @@ static int rk808_restart_notify(struct notifier_block *this, unsigned long mode,
 	}
 	ret = regmap_update_bits(rk808->regmap, reg, bit, bit);
 	if (ret)
-		dev_err(&rk808_i2c_client->dev, "Failed to restart device!\n");
+		dev_err(&rk808->i2c->dev, "Failed to restart device!\n");
 
 	return NOTIFY_DONE;
 }
 
-static struct notifier_block rk808_restart_handler = {
-	.notifier_call = rk808_restart_notify,
-	.priority = 192,
-};
-
 static void rk8xx_shutdown(struct i2c_client *client)
 {
 	struct rk808 *rk808 = i2c_get_clientdata(client);
@@ -739,9 +734,9 @@ static int rk808_probe(struct i2c_client *client,
 		return -EINVAL;
 	}
 
-	ret = regmap_add_irq_chip(rk808->regmap, client->irq,
-				  IRQF_ONESHOT, -1,
-				  rk808->regmap_irq_chip, &rk808->irq_data);
+	ret = devm_regmap_add_irq_chip(&client->dev, rk808->regmap, client->irq,
+				       IRQF_ONESHOT, -1,
+				       rk808->regmap_irq_chip, &rk808->irq_data);
 	if (ret) {
 		dev_err(&client->dev, "Failed to add irq_chip %d\n", ret);
 		return ret;
@@ -765,17 +760,23 @@ static int rk808_probe(struct i2c_client *client,
 			      regmap_irq_get_domain(rk808->irq_data));
 	if (ret) {
 		dev_err(&client->dev, "failed to add MFD devices %d\n", ret);
-		goto err_irq;
+		return ret;
 	}
 
 	if (of_property_read_bool(np, "rockchip,system-power-controller")) {
-		rk808_i2c_client = client;
-		pm_power_off = rk808_pm_power_off;
+		ret = devm_register_sys_off_handler(&client->dev,
+				    SYS_OFF_MODE_POWER_OFF_PREPARE, SYS_OFF_PRIO_HIGH,
+				    &rk808_power_off, rk808);
+		if (ret)
+			return dev_err_probe(&client->dev, ret,
+					     "failed to register poweroff handler\n");
 
 		switch (rk808->variant) {
 		case RK809_ID:
 		case RK817_ID:
-			ret = register_restart_handler(&rk808_restart_handler);
+			ret = devm_register_sys_off_handler(&client->dev,
+							    SYS_OFF_MODE_RESTART, SYS_OFF_PRIO_HIGH,
+							    &rk808_restart, rk808);
 			if (ret)
 				dev_warn(&client->dev, "failed to register rst handler, %d\n", ret);
 			break;
@@ -786,26 +787,6 @@ static int rk808_probe(struct i2c_client *client,
 	}
 
 	return 0;
-
-err_irq:
-	regmap_del_irq_chip(client->irq, rk808->irq_data);
-	return ret;
-}
-
-static void rk808_remove(struct i2c_client *client)
-{
-	struct rk808 *rk808 = i2c_get_clientdata(client);
-
-	regmap_del_irq_chip(client->irq, rk808->irq_data);
-
-	/**
-	 * pm_power_off may points to a function from another module.
-	 * Check if the pointer is set by us and only then overwrite it.
-	 */
-	if (pm_power_off == rk808_pm_power_off)
-		pm_power_off = NULL;
-
-	unregister_restart_handler(&rk808_restart_handler);
 }
 
 static int __maybe_unused rk8xx_suspend(struct device *dev)
@@ -862,7 +843,6 @@ static struct i2c_driver rk808_i2c_driver = {
 		.pm = &rk8xx_pm_ops,
 	},
 	.probe    = rk808_probe,
-	.remove   = rk808_remove,
 	.shutdown = rk8xx_shutdown,
 };
 
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
