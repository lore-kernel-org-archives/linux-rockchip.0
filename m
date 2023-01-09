Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B51AC678D9
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Jan 2023 17:27:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LZQpmbYCbL3qsa7nfoRXCERLy/iv5YmL0k4pGzTG7M8=; b=AT2J3orXhilQW6
	iKHtl3uksKqrUDI53tEs4nNJ/ywhdyaV6AkBDrhu+dPwd5T30PL7eufMBKZkNulGe3qXBGB85Lyge
	hwZ97jqdghucm9NpVEhBimsOjoqWMvnmxd3l2NIgX+gGzAgh4iV6tUnssLLyaYwGo2AmcbME9kC9U
	uyRGJzjiGe7TBGWCAcfr3ilaeuWBtzqx2qOccYeqUX4oFFzyEmmYLUpjvh5vLk3RyH9aHCtuZEtwV
	FliaAKJUB9EPqjrOk7dL3VWKCz6Z51ZdesKahGYfYR81HeN1J7rqtjirLgEwQKd7srtQtxqdGgAj6
	8gLdqvEoucC9B812hcLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEvvq-002u91-Kv; Mon, 09 Jan 2023 17:27:34 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEvvn-002u5c-DY
	for linux-rockchip@lists.infradead.org; Mon, 09 Jan 2023 17:27:33 +0000
Received: from jupiter.universe (dyndsl-037-138-188-006.ewe-ip-backbone.de [37.138.188.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C29DB6602D6B;
	Mon,  9 Jan 2023 17:27:26 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1673285247;
	bh=5Zn8aDYnrSMF2mwEGl5Y8i472oI3FD8C2W/ATAfeeeA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=GpS9tEAuamtrw/R6rprOUl3aM8PEHpgrLagzhzaAHLF2Bo2NvIDO3MGwUiGYFa5L4
	 3XwjRlQ034V2E9YPr48PQHlIsOTp68pUJU/he+ZrE8x7fpYX4cRMD5JKhqh1OgAZ45
	 1h48gL19d9mXz7/0ofcZ4aloqGrVxokt6CudkNDBMxBnzmgcXsnovM9/YHN0JnZiVZ
	 4XOjoWFEpPFwXZtACxEPCXvQheuw3OmZkkPa9g11TuaZBdsVg8svWfKGksNpCFQhek
	 V5bxAa3DmKtLS3FQZzU3HggNv1O6W42jlc4MCW1FzlKFuO3ol4Lvp9ZP4wO2WP6uLe
	 2HTBsyR14lbUQ==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 5C8F348011C; Mon,  9 Jan 2023 18:27:24 +0100 (CET)
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
Subject: [PATCHv5 04/10] mfd: rk808: replace 'struct i2c_client' with 'struct device'
Date: Mon,  9 Jan 2023 18:27:17 +0100
Message-Id: <20230109172723.60304-5-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230109172723.60304-1-sebastian.reichel@collabora.com>
References: <20230109172723.60304-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_092731_608083_AD00F558 
X-CRM114-Status: GOOD (  13.31  )
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
index 01d8303fccbe..695a3fe6b9e0 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -576,7 +576,7 @@ static int rk808_power_off(struct sys_off_data *data)
 	}
 	ret = regmap_update_bits(rk808->regmap, reg, bit, bit);
 	if (ret)
-		dev_err(&rk808->i2c->dev, "Failed to shutdown device!\n");
+		dev_err(rk808->dev, "Failed to shutdown device!\n");
 
 	return NOTIFY_DONE;
 }
@@ -599,7 +599,7 @@ static int rk808_restart(struct sys_off_data *data)
 	}
 	ret = regmap_update_bits(rk808->regmap, reg, bit, bit);
 	if (ret)
-		dev_err(&rk808->i2c->dev, "Failed to restart device!\n");
+		dev_err(rk808->dev, "Failed to restart device!\n");
 
 	return NOTIFY_DONE;
 }
@@ -719,7 +719,7 @@ static int rk808_probe(struct i2c_client *client)
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
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
