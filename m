Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35B45C54EAA
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Jan 2023 18:14:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LZQpmbYCbL3qsa7nfoRXCERLy/iv5YmL0k4pGzTG7M8=; b=DLWrbln4ftKnVW
	JCOBjkOyeIkkNCZOjta5Hy7V60L5GLrFnwiFVsV/XmcSbJ6ewsgh0khG6INAIgPiUYf0gRvo351hQ
	n/1W5m88uqj5dyPXaGtM5VIWDcrD07yH32PKq9Gy/QMcUylYQ4/2O07kzHowGGuzQodiiZMenB4Me
	IXDQMVs/2XsA42NB2GsGsUhYKOFaZ0P0AfBG1IY8THi7fAmI3eeTHLB3Ef88b+CD9rDDv0AsG4KHY
	BJm6HC9sUCryAegZ04yLwCA0x8jLY2zMpsHZBU4Cf0tWt2NBrGwK1C6mONmkvqhf8WtfhP80t51OK
	fe5PX0JSiR/63Cf+Mfng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLTEg-00G0NJ-42; Fri, 27 Jan 2023 18:14:02 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLTE6-00G05U-BA
	for linux-rockchip@lists.infradead.org; Fri, 27 Jan 2023 18:13:30 +0000
Received: from jupiter.universe (dyndsl-095-033-159-051.ewe-ip-backbone.de [95.33.159.51])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 787F96602EA0;
	Fri, 27 Jan 2023 18:13:20 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1674843200;
	bh=5Zn8aDYnrSMF2mwEGl5Y8i472oI3FD8C2W/ATAfeeeA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=PWfcrt+miNRKODV57/D7ZZ0JuNFEpoyzOOU75IGBF+TlRpdbTFlSj3TbxW7s61WiC
	 VyRNvguFFjLgumYhA0Jqsb3QRIBkObFchyukvqsafzCRhz8VjmyihknKzxtpkHjE9F
	 i2KdVr1kwnzaGW0C1gNPrkAC9Ptfs/nJbf1OkLK4/UrGuwnK0HDVr5wT5aJ+b5MJYg
	 Eq6VVxAkThjItvmJ9abF23I7rjVkqnzaNwffMooymoN+PlWMG2zSRoEUAIEv0Fn7x6
	 xbfdKbe+wWVR5vc2UklP3XabXiAI1RsCsUbtcRmg6IPOxK3IAViY8HN342sJRrGSkm
	 lwvgtR4pnb+4Q==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 3594E48011A; Fri, 27 Jan 2023 19:13:17 +0100 (CET)
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
Subject: [PATCHv6 04/11] mfd: rk808: replace 'struct i2c_client' with 'struct device'
Date: Fri, 27 Jan 2023 19:12:37 +0100
Message-Id: <20230127181244.160887-5-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230127181244.160887-1-sebastian.reichel@collabora.com>
References: <20230127181244.160887-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230127_101326_697613_24EBD702 
X-CRM114-Status: GOOD (  13.40  )
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
