Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37BCDC43217
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Oct 2022 20:43:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O7ohxbHD2UyanfMvwCjHq5j1+N58Kq5Mu9IIrrfsHkE=; b=BSjqfM8PzF9ZG/
	T59jEsInlc8luV+kUkADbzv2MOvSKZ1mPcHOyX5geIjeyoAHooCxNbjxfYWgB83pc2oGrRlY6HSAt
	Q15w4RN7jhQ6QvPSFhdiATSwjmATKbKrz0UEWSg4TUWgqhSAO1SLe6ZAIn872KiOSDui1RAkLRfYz
	CZtouXzpE31ML07QwrJa+zFPWkaGQ+LIp9CGNXtR4jlPrzBZk2tpqKJRfH0nDbj0+98pkVZa1aVVR
	aJtV7/BI4e8Ke++LZFl8KuCYM181ch6ogDyOIX/FUqisc75pz4EVZxRO6w3v/U9b+kDn3/0W8MupC
	iZMhcdpiZL5SwTr7A3Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olcNh-001kVk-Rt; Thu, 20 Oct 2022 20:43:09 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olcNc-001kRn-JV
	for linux-rockchip@lists.infradead.org; Thu, 20 Oct 2022 20:43:07 +0000
Received: from jupiter.universe (dyndsl-091-096-059-009.ewe-ip-backbone.de [91.96.59.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 7DFE96602544;
	Thu, 20 Oct 2022 21:42:57 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1666298577;
	bh=ufnEoBIW4CTlDBjILfeMeTTKD/EZUayw8ybMcQdQgWI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kgATtfN9RU2fN3U0bZLh9Ddl2xWUteYSXJ0Wn08PPHNU5UdGF2Hz7K2OBhzbv05yU
	 VUHXfJS9xHQgl78grpCOJSvqmmpx/h47OQMzE0uYIsA76fxH+loLwbunceso0R3Zpg
	 tbolzjbMuOOJt+vaEJuBQR72f/4mT58U613he5OCPup+8BQJHEsyDl83MGLee1aOzU
	 ViZlM3v6+VxEQtzIujp3rl91G2WxvRknVvohLx/6M2jsdFQ5hUkJhqf5zTlxINmxeo
	 EflpWPk3WL3x7wUAA+VWGmmflRYULnBfJ3myxMEN55z+2pgs5yM5NJoRkE9Sbx7nx2
	 tdcTe44x7BUfg==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 5B25B48089B; Thu, 20 Oct 2022 22:42:52 +0200 (CEST)
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
Subject: [PATCHv4 06/13] mfd: rk808: replace 'struct i2c_client' with 'struct device'
Date: Thu, 20 Oct 2022 22:42:44 +0200
Message-Id: <20221020204251.108565-7-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221020204251.108565-1-sebastian.reichel@collabora.com>
References: <20221020204251.108565-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221020_134304_811034_40DD1826 
X-CRM114-Status: GOOD (  13.72  )
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

Acked-for-MFD-by: Lee Jones <lee@kernel.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/mfd/rk808.c       | 6 +++---
 include/linux/mfd/rk808.h | 2 +-
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index 5e0e5f320525..b154ca96d812 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -570,7 +570,7 @@ static int rk808_power_off(struct sys_off_data *data)
 	}
 	ret = regmap_update_bits(rk808->regmap, reg, bit, bit);
 	if (ret)
-		dev_err(&rk808->i2c->dev, "Failed to shutdown device!\n");
+		dev_err(rk808->dev, "Failed to shutdown device!\n");
 
 	return NOTIFY_DONE;
 }
@@ -593,7 +593,7 @@ static int rk808_restart(struct sys_off_data *data)
 	}
 	ret = regmap_update_bits(rk808->regmap, reg, bit, bit);
 	if (ret)
-		dev_err(&rk808->i2c->dev, "Failed to restart device!\n");
+		dev_err(rk808->dev, "Failed to restart device!\n");
 
 	return NOTIFY_DONE;
 }
@@ -714,7 +714,7 @@ static int rk808_probe(struct i2c_client *client,
 		return -EINVAL;
 	}
 
-	rk808->i2c = client;
+	rk808->dev = &client->dev;
 	i2c_set_clientdata(client, rk808);
 
 	rk808->regmap = devm_regmap_init_i2c(client, rk808->regmap_cfg);
diff --git a/include/linux/mfd/rk808.h b/include/linux/mfd/rk808.h
index 9af1f3105f80..a89ddd9ba68e 100644
--- a/include/linux/mfd/rk808.h
+++ b/include/linux/mfd/rk808.h
@@ -787,7 +787,7 @@ enum {
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
