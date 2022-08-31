Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F093C0502C
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Aug 2022 21:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3EAD5hStBaOHnxdu5KaUDWiu9ai4uo2JcZE48d3dNnw=; b=chJ+fSgDy2zL++
	6n4uomFEXV8AIFKnIrQ2neTkHoyRQcxMn/8Xiq83INydUXbXFrCtD977HrmzEcYO70tpw3XlX6D2o
	t8vGSHS80Iv9D522RwiGaPLEDcHmnj87e04wMn0sI0Li0pcjvJw91nT97DOjxlZuoF7hIRci1aJo6
	J0fsK3eOYR3uoHgdFHFr5xNwCMUkqtkMX+bmSsfUMmHUkRlS3i9ydRi7fuD9053mPVW2XlZdyBBEc
	KFZKBZ8UQ3PUytw3fXQSeaQIXBc1NVXaQf511yXaTpWGFCOcbedH2y5TyfUhzYXr7nwMvXGZklnzH
	SQGLS2pExb/Y0RRHbjOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTVfm-008Lye-I0; Wed, 31 Aug 2022 21:54:58 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTVfi-008Ltr-TW
	for linux-rockchip@lists.infradead.org; Wed, 31 Aug 2022 21:54:56 +0000
Received: from jupiter.universe (dyndsl-091-096-057-024.ewe-ip-backbone.de [91.96.57.24])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 5733A6601DF5;
	Wed, 31 Aug 2022 22:54:45 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1661982885;
	bh=xRma2ETMM0olKUTQ9twqk7M53dgq+Xn0+iYfdk15l2U=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cxwpgh3NwSEO8ERU50SzpwKurAaSO/Wac2etpDgb6izeuLxIpwL/WNrOskN7lWhdU
	 +QVZOtfHa2LQajvQ7zeta9F8T5fpRjtyLHFC/sPx6/I0kOgthSQSXzsXkrVtUEvaol
	 JToxMlE004SJi83B+zciceaDzldMFlToXUOdBHB9aO590qzKFMaRtKbHZ6TnnUONlo
	 mBG77VJRtlgibj6UGAVtcTrm/ZQ/GefI7UZSFGvmvJR9U1dgvH6rTN4DXbeSigO269
	 pqLju7ZOFGbssUzkDMx2U7fcLkTREv23Ak6FzmIoXF8h9yJpE+q4r35r6KQ/FHMh38
	 vCoGa2dR9EjSQ==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 3233A4805C2; Wed, 31 Aug 2022 23:54:43 +0200 (CEST)
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
Subject: [PATCH 02/13] mfd: rk808: use dev_err_probe
Date: Wed, 31 Aug 2022 23:54:26 +0200
Message-Id: <20220831215437.117880-3-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220831215437.117880-1-sebastian.reichel@collabora.com>
References: <20220831215437.117880-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220831_145455_204405_B07EF490 
X-CRM114-Status: GOOD (  14.18  )
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

Use dev_err_probe instead of dev_err in probe function,
which simplifies code a little bit and prints the error
code.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/mfd/rk808.c | 50 ++++++++++++++++-----------------------------
 1 file changed, 18 insertions(+), 32 deletions(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index c17fea1d48ca..e793de9146f7 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -650,18 +650,14 @@ static int rk808_probe(struct i2c_client *client,
 
 	/* Read chip variant */
 	msb = i2c_smbus_read_byte_data(client, pmic_id_msb);
-	if (msb < 0) {
-		dev_err(&client->dev, "failed to read the chip id at 0x%x\n",
-			RK808_ID_MSB);
-		return msb;
-	}
+	if (msb < 0)
+		return dev_err_probe(&client->dev, msb, "failed to read the chip id at 0x%x\n",
+				     RK808_ID_MSB);
 
 	lsb = i2c_smbus_read_byte_data(client, pmic_id_lsb);
-	if (lsb < 0) {
-		dev_err(&client->dev, "failed to read the chip id at 0x%x\n",
-			RK808_ID_LSB);
-		return lsb;
-	}
+	if (lsb < 0)
+		return dev_err_probe(&client->dev, lsb, "failed to read the chip id at 0x%x\n",
+				     RK808_ID_LSB);
 
 	rk808->variant = ((msb << 8) | lsb) & RK8XX_ID_MSK;
 	dev_info(&client->dev, "chip id: 0x%x\n", (unsigned int)rk808->variant);
@@ -710,44 +706,34 @@ static int rk808_probe(struct i2c_client *client,
 	i2c_set_clientdata(client, rk808);
 
 	rk808->regmap = devm_regmap_init_i2c(client, rk808->regmap_cfg);
-	if (IS_ERR(rk808->regmap)) {
-		dev_err(&client->dev, "regmap initialization failed\n");
-		return PTR_ERR(rk808->regmap);
-	}
+	if (IS_ERR(rk808->regmap))
+		return dev_err_probe(&client->dev, PTR_ERR(rk808->regmap),
+				     "regmap initialization failed\n");
 
-	if (!client->irq) {
-		dev_err(&client->dev, "No interrupt support, no core IRQ\n");
-		return -EINVAL;
-	}
+	if (!client->irq)
+		return dev_err_probe(&client->dev, -EINVAL, "No interrupt support, no core IRQ\n");
 
 	ret = devm_regmap_add_irq_chip(&client->dev, rk808->regmap, client->irq,
 				       IRQF_ONESHOT, -1,
 				       rk808->regmap_irq_chip, &rk808->irq_data);
-	if (ret) {
-		dev_err(&client->dev, "Failed to add irq_chip %d\n", ret);
-		return ret;
-	}
+	if (ret)
+		return dev_err_probe(&client->dev, ret, "Failed to add irq_chip\n");
 
 	for (i = 0; i < nr_pre_init_regs; i++) {
 		ret = regmap_update_bits(rk808->regmap,
 					pre_init_reg[i].addr,
 					pre_init_reg[i].mask,
 					pre_init_reg[i].value);
-		if (ret) {
-			dev_err(&client->dev,
-				"0x%x write err\n",
-				pre_init_reg[i].addr);
-			return ret;
-		}
+		if (ret)
+			return dev_err_probe(&client->dev, ret, "0x%x write err\n",
+					     pre_init_reg[i].addr);
 	}
 
 	ret = devm_mfd_add_devices(&client->dev, PLATFORM_DEVID_NONE,
 			      cells, nr_cells, NULL, 0,
 			      regmap_irq_get_domain(rk808->irq_data));
-	if (ret) {
-		dev_err(&client->dev, "failed to add MFD devices %d\n", ret);
-		return ret;
-	}
+	if (ret)
+		return dev_err_probe(&client->dev, ret, "failed to add MFD devices\n");
 
 	if (of_property_read_bool(np, "rockchip,system-power-controller")) {
 		ret = devm_register_sys_off_handler(&client->dev,
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
