Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C199EC61DA4
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Jan 2023 18:14:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S+DaRpR3MZ1a/rdd3UuRcF31bP5mKNG0zRCHtVpkhoo=; b=lNWt612oJBJrVP
	fTTji306baIOZ6ApsfSDdh6smiQ7+GKwz/qAZtjIaYu1yge9qbuqgYxYTcJvhRnywP8OtELwWf0a6
	wdbeKob/Y7iA/MI+G8PZcIKzJPANgjR0WHoRc5MV2/p3CZ++3jmFIQ3huVBmtuWP0OHbqNC8fRrd3
	UTY4Qw+up1ATjkFhloL5NaV9EmFOtqiG/zJSHVsbsvXiVXlBFGBoIsycLeSutejQSDGPBIVLWAcdE
	50SMn/I69nbxfxaT8LNrUx6kVOqeu4y1/uhrVjd/GJMsSEpj80Ukz7mRKGyIHlZ3cbIqYI4E/rUvq
	hzoagQmGI7RSJyYmMhAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLTEj-00G0PD-If; Fri, 27 Jan 2023 18:14:05 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLTE6-00G05P-Bv
	for linux-rockchip@lists.infradead.org; Fri, 27 Jan 2023 18:13:31 +0000
Received: from jupiter.universe (dyndsl-095-033-159-051.ewe-ip-backbone.de [95.33.159.51])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 743CD6602E9F;
	Fri, 27 Jan 2023 18:13:20 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1674843200;
	bh=a+siEWTrJAt1hnOUNn1EZg3w7XVtF2oWl2llWNtJ73w=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=HuDxftE8Nju/KRWpGMJa6bjSET+VgS4Wz28KK08poS0bhee7N5Opf9r1GaA9v9BWR
	 b1CPLY/hzfpJLRdmdAhGZa1Vx9wEJ+NLWkLtQg55O1qR11PcDL163PI37Z+Plc5g9K
	 AQha10moYMl78SxRNACGMDGwz3kaN3jhg2lwNtOmJWFUBMi/IBAQ3/QkIPJOuKBA3I
	 GqKTtQpJlap2P3ea77derGYJgpjBRfQH2Xa0Dx65vWpvMkH1hxv3/IShqAVoONf1k/
	 +LW8J2behtCKapiaZl/jsHOQW4rDyB3Ht8vldr6LWHdN9Wgh3kwrRkVadrLxDvtVYP
	 JJoUONAzvL8ow==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 33792480119; Fri, 27 Jan 2023 19:13:17 +0100 (CET)
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
Subject: [PATCHv6 03/11] mfd: rk808: use dev_err_probe
Date: Fri, 27 Jan 2023 19:12:36 +0100
Message-Id: <20230127181244.160887-4-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230127181244.160887-1-sebastian.reichel@collabora.com>
References: <20230127181244.160887-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230127_101326_711240_D131C356 
X-CRM114-Status: GOOD (  14.17  )
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

Also drop possibly incorrect printing of chip id registers
while touching the error message.

Acked-for-MFD-by: Lee Jones <lee@kernel.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/mfd/rk808.c | 48 +++++++++++++++------------------------------
 1 file changed, 16 insertions(+), 32 deletions(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index 4f5dca76bb54..01d8303fccbe 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -669,18 +669,12 @@ static int rk808_probe(struct i2c_client *client)
 
 	/* Read chip variant */
 	msb = i2c_smbus_read_byte_data(client, pmic_id_msb);
-	if (msb < 0) {
-		dev_err(&client->dev, "failed to read the chip id at 0x%x\n",
-			RK808_ID_MSB);
-		return msb;
-	}
+	if (msb < 0)
+		return dev_err_probe(&client->dev, msb, "failed to read the chip id MSB\n");
 
 	lsb = i2c_smbus_read_byte_data(client, pmic_id_lsb);
-	if (lsb < 0) {
-		dev_err(&client->dev, "failed to read the chip id at 0x%x\n",
-			RK808_ID_LSB);
-		return lsb;
-	}
+	if (lsb < 0)
+		return dev_err_probe(&client->dev, lsb, "failed to read the chip id LSB\n");
 
 	rk808->variant = ((msb << 8) | lsb) & RK8XX_ID_MSK;
 	dev_info(&client->dev, "chip id: 0x%x\n", (unsigned int)rk808->variant);
@@ -729,44 +723,34 @@ static int rk808_probe(struct i2c_client *client)
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
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
