Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA305C4167D
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Oct 2022 20:43:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SIps/QOFjGSkyyoSI4FPKcf0dRPhtf2qG67TQj5U60A=; b=dYFPcnNLgi4GKM
	KfPwXhU3SQRTcHwIuhZFxsDtVlnjcne81daFKxVfp9agVAcGsNgA3dhbwPWWbIfVvFLOq+esOu77w
	mnYBNq6Pm4wccy915TXt7OTp7R8mm4R7uoYbBR9wanfJIYE0Fw/PGi9JN6kYMVvKD8fs0SzKAulO+
	vmZ+PiD9rM3rwbwEFBjr6Dfb3Q9vjwqWEhhRivrxNFiibLG4+SEbDKBzJp6HWw0yGP+iKY0aXUyN9
	otrjnnEEBT3L022szn2SvOeykGQRQLhOBQUEk2ZvqQQl1RnHFhJh9w8GsuKbxj+tZ9IT6MXL4zY0T
	e0OGlVwvinUpoKQ9KGpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olcNd-001kSo-5M; Thu, 20 Oct 2022 20:43:05 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olcNY-001kNM-Ap
	for linux-rockchip@lists.infradead.org; Thu, 20 Oct 2022 20:43:03 +0000
Received: from jupiter.universe (dyndsl-091-096-059-009.ewe-ip-backbone.de [91.96.59.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9AFB8660250A;
	Thu, 20 Oct 2022 21:42:54 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1666298574;
	bh=UP5o/tvjF82X745/6YwLJBWyLQY3SW00yYxIUB5+Do8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=lyOVSWyKlZo3CKhTdjNO4jIL6KMkKJhWK2bhpQLW15YPV5+wGEJpJ3d5R0BP76Ihe
	 /WNrklAWhUrXxJV44uwj3sX3KNEHYXXUmmgaH4FmqKtJnHML4tcg7ObEAT8uICLwvP
	 5a4AdXNTGFC8v/GGinsYweRC7mm9F2s3zInQqZetU0d0xrz8qrWx9cjif3bOfZOxwp
	 qwI5Wi/ySVgqfYEEA9Bhi1knzOepvxpekeZ2vofyGQc9WemQub/2LJGk4B20HMy6aW
	 9i1EAnPDEXyTIo3PKWNWeJ7BhhEt0U/VhLZolFVrrSchlLeLpVzs5obXSrFiGPM5lC
	 sUOmgmKeUpj2g==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 52567480897; Thu, 20 Oct 2022 22:42:52 +0200 (CEST)
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
Subject: [PATCHv4 02/13] regulator: rk808: reduce 'struct rk808' usage
Date: Thu, 20 Oct 2022 22:42:40 +0200
Message-Id: <20221020204251.108565-3-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221020204251.108565-1-sebastian.reichel@collabora.com>
References: <20221020204251.108565-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221020_134300_543903_76CEEB2C 
X-CRM114-Status: GOOD (  17.59  )
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

Acked-by: Mark Brown <broonie@kernel.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/regulator/rk808-regulator.c | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/regulator/rk808-regulator.c b/drivers/regulator/rk808-regulator.c
index 127dc2e2e690..ce9c64cadeba 100644
--- a/drivers/regulator/rk808-regulator.c
+++ b/drivers/regulator/rk808-regulator.c
@@ -14,7 +14,6 @@
 
 #include <linux/delay.h>
 #include <linux/gpio.h>
-#include <linux/i2c.h>
 #include <linux/module.h>
 #include <linux/of_device.h>
 #include <linux/of_gpio.h>
@@ -1286,19 +1285,23 @@ static int rk808_regulator_dt_parse_pdata(struct device *dev,
 static int rk808_regulator_probe(struct platform_device *pdev)
 {
 	struct rk808 *rk808 = dev_get_drvdata(pdev->dev.parent);
-	struct i2c_client *client = rk808->i2c;
 	struct regulator_config config = {};
 	struct regulator_dev *rk808_rdev;
 	struct rk808_regulator_data *pdata;
 	const struct regulator_desc *regulators;
+	struct regmap *regmap;
 	int ret, i, nregulators;
 
+	regmap = dev_get_regmap(pdev->dev.parent, NULL);
+	if (!regmap)
+		return -ENODEV;
+
 	pdata = devm_kzalloc(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
 	if (!pdata)
 		return -ENOMEM;
 
-	ret = rk808_regulator_dt_parse_pdata(&pdev->dev, &client->dev,
-					     rk808->regmap, pdata);
+	ret = rk808_regulator_dt_parse_pdata(&pdev->dev, pdev->dev.parent,
+					     regmap, pdata);
 	if (ret < 0)
 		return ret;
 
@@ -1326,21 +1329,22 @@ static int rk808_regulator_probe(struct platform_device *pdev)
 		nregulators = RK818_NUM_REGULATORS;
 		break;
 	default:
-		dev_err(&client->dev, "unsupported RK8XX ID %lu\n",
+		dev_err(&pdev->dev, "unsupported RK8XX ID %lu\n",
 			rk808->variant);
 		return -EINVAL;
 	}
 
-	config.dev = &client->dev;
+	config.dev = &pdev->dev;
+	config.dev->of_node = pdev->dev.parent->of_node;
 	config.driver_data = pdata;
-	config.regmap = rk808->regmap;
+	config.regmap = regmap;
 
 	/* Instantiate the regulators */
 	for (i = 0; i < nregulators; i++) {
 		rk808_rdev = devm_regulator_register(&pdev->dev,
 						     &regulators[i], &config);
 		if (IS_ERR(rk808_rdev)) {
-			dev_err(&client->dev,
+			dev_err(&pdev->dev,
 				"failed to register %d regulator\n", i);
 			return PTR_ERR(rk808_rdev);
 		}
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
