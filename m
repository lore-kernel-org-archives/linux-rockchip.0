Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06118C38145
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Sep 2022 00:31:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iUmZkWROOvIUSVEJ7Q10DNqyo17/A6Ey5tnDHUpzfg0=; b=iHreshNwZu/8NU
	wHpjBiDoiRptl2vebTimNBKJ+uUc2Qa2o5guKfv1sAMykNXHJ33WYtMaYr7OG4J41zT28od8pqjen
	VwEQVcpgtJnj2CfLB3SgrktRhxSvtF+HjYN5RYiLOieyLl+7X4RQmzxv/7dBw/uDar5Cu8GJk8tDP
	p+GfpLZON1TUNcFUbx//+fel/PjO7QMRznXZwbyGs6zwBmGUeXrjxU+2N5DVNx3p5JCfFnIMXqbDJ
	Sp/63JZQYSOgpoEOABKYRQYuAdS/Pif20OJsZlS7AC9lkQW4rNflY4jY95yjoLjRebLMV28PejmnH
	AeHr+DNoeHrCqLkHKJxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oW5S6-00DFnF-9T; Thu, 08 Sep 2022 00:31:30 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oW5Rw-00DFGG-D5
	for linux-rockchip@lists.infradead.org; Thu, 08 Sep 2022 00:31:22 +0000
Received: from jupiter.universe (dyndsl-095-033-158-249.ewe-ip-backbone.de [95.33.158.249])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 982DE6601F7A;
	Thu,  8 Sep 2022 01:31:14 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1662597074;
	bh=R4fBrM9rqeqbOvgCgAUdSKO4cpSM8keuJE8guAqZn9c=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=LOwWVmBWiQVRVTO6zo3fKOvF9Rk9FrhbJ3RNKtI4cUHG7K3Z2Zp++Z9cMkxV4RwWW
	 10vLw6tNVLlpFOL92UExgikieztSg+1/WYblDhrunWb3xFcIZNrhLzQyU/e3eYUPN5
	 zduFG5069Pk++YpmZnUnkEQIVWkv4TO/e1jz/VAHSjWUBVtiNyZJYcdvKumCtrR+Yx
	 iOqgs7LcQbqwSu7NhsAAP5khXRB9GW48+lNt5zu5a8rolARon5eRYjFRfN30KHq4KO
	 VcXpBhZ4uj+ZLdPfUXT1HdGdkn3HN06SkVHhO1WOdxr980EnpgYV4WEqbeNbSPbeyI
	 XtevuMQx/Xr4A==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 68FDC4805C0; Thu,  8 Sep 2022 02:31:09 +0200 (CEST)
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
Subject: [PATCHv2 06/13] mfd: rk808: replace 'struct i2c_client' with 'struct device'
Date: Thu,  8 Sep 2022 02:31:00 +0200
Message-Id: <20220908003107.220143-7-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220908003107.220143-1-sebastian.reichel@collabora.com>
References: <20220908003107.220143-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_173120_604302_09C7AF71 
X-CRM114-Status: GOOD (  14.22  )
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

Put 'struct device' pointer into the MFD platform_data instead
of the 'struct i2c_client' pointer. This simplifies the code
and prepares the MFD for SPI support.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/mfd/rk808.c       | 6 +++---
 include/linux/mfd/rk808.h | 2 +-
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index e793de9146f7..7baa0e484ac0 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -556,7 +556,7 @@ static int rk808_power_off(struct sys_off_data *data)
 	}
 	ret = regmap_update_bits(rk808->regmap, reg, bit, bit);
 	if (ret)
-		dev_err(&rk808->i2c->dev, "Failed to shutdown device!\n");
+		dev_err(rk808->dev, "Failed to shutdown device!\n");
 
 	return NOTIFY_DONE;
 }
@@ -579,7 +579,7 @@ static int rk808_restart(struct sys_off_data *data)
 	}
 	ret = regmap_update_bits(rk808->regmap, reg, bit, bit);
 	if (ret)
-		dev_err(&rk808->i2c->dev, "Failed to restart device!\n");
+		dev_err(rk808->dev, "Failed to restart device!\n");
 
 	return NOTIFY_DONE;
 }
@@ -702,7 +702,7 @@ static int rk808_probe(struct i2c_client *client,
 		return -EINVAL;
 	}
 
-	rk808->i2c = client;
+	rk808->dev = &client->dev;
 	i2c_set_clientdata(client, rk808);
 
 	rk808->regmap = devm_regmap_init_i2c(client, rk808->regmap_cfg);
diff --git a/include/linux/mfd/rk808.h b/include/linux/mfd/rk808.h
index 58602032e642..9937b068fa82 100644
--- a/include/linux/mfd/rk808.h
+++ b/include/linux/mfd/rk808.h
@@ -696,7 +696,7 @@ enum {
 };
 
 struct rk808 {
-	struct i2c_client		*i2c;
+	struct device			*dev;
 	struct regmap_irq_chip_data	*irq_data;
 	struct regmap			*regmap;
 	long				variant;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
