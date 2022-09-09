Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EA36C6FA8A
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Sep 2022 17:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SIps/QOFjGSkyyoSI4FPKcf0dRPhtf2qG67TQj5U60A=; b=gYA886bwlhRuDZ
	DtVdLF5oHjp4eifBEch97lH+AsAphLGCNS3ZasnHYm3AVBPmZDEWNApLJYsLmCuNWd6af8V3TLlAu
	a7ywrAr17dU/Wc+vm7gQyPE24fBIBAqZgzFNamo8vV9dYqVohIqMRiCRcS3aPWqnhZ1K8tXDTdd/V
	TpLGzBOU7Vg/ivWOvdZ5HbehBGbJSlppimy3Z8hUEjTTHiRuW52mk0YPeW5TAHCmmhIHtvWoefTtf
	pnNGzsQRJbOn/6ZdO5Usls6RuAkpAoqAD2cducwKptm9k18pg+iuEGu72BxGXWQo+URkVEcPPuPmZ
	R2qq3IbWoj9cZ8+ZtTFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWiE7-000txG-EB; Fri, 09 Sep 2022 17:55:39 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWiE1-000tmn-8x
	for linux-rockchip@lists.infradead.org; Fri, 09 Sep 2022 17:55:36 +0000
Received: from jupiter.universe (dyndsl-095-033-168-128.ewe-ip-backbone.de [95.33.168.128])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 53BEE6601FD0;
	Fri,  9 Sep 2022 18:55:29 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1662746129;
	bh=UP5o/tvjF82X745/6YwLJBWyLQY3SW00yYxIUB5+Do8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=hJONBOPAMr6HM9uY4kDOYbV7C2m6PikhItKE1iO8TQnTQv1tQAQQet4B5BLEOvvud
	 zk9rmXVz5u7nQa96jsfyRWLGJIoyLTByI8J5fqYAoD1r/Mi2yteQMcwMfmWm2ExQii
	 f4VBSI5A9BkJTolFHI1T1XeHlRx5L4UY+m8DecFZ6QgUeSrKWU/e3B1aRSDrQUw6WW
	 dxgC5qZXkadzajHhpikFuQnhVVZtc0UK2xFH/PSQ1FLPrjyy9F2BoDPN+1K3LJwcYw
	 ctZXJja0FxVNm73A1cfbg4hFGd7Nazq7pG7IoxNvRqpm36/+4X1wJxFYRVz8U3qWrr
	 tsKzNfBprG4QA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 1AC8C48016E; Fri,  9 Sep 2022 19:55:27 +0200 (CEST)
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
Subject: [PATCHv3 04/14] regulator: rk808: reduce 'struct rk808' usage
Date: Fri,  9 Sep 2022 19:55:12 +0200
Message-Id: <20220909175522.179175-5-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220909175522.179175-1-sebastian.reichel@collabora.com>
References: <20220909175522.179175-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_105533_496558_F42F264F 
X-CRM114-Status: GOOD (  18.00  )
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
