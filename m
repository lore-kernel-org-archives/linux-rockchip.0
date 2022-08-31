Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61626ECAAD5
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Aug 2022 21:55:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iVGjvwVBzeZmv1631MZm9s7uSIndSoK1f/U3WFkjIPI=; b=s4sP/gd9YQ3b8Q
	Qfgh9VvBwQz+s7iGEh7mLx6XSh8eK7SMJzhhJUeQb12dbN0TlZVH1litdcvLaRoC/T2cxQ7xK8g2D
	EYeop9i0lQZ3cPNNi9doS9YOnmDTajLCyLAzFuuWhuYTO5rUKN54EGnQq5yyO+zlFnNKXtG7zGFPI
	M3mitQxQRpUZFIlOeSWOOUn+UneKgiGPKulzRcItKD0WCqQChT8o/e4HuQWkRZoJJzOs63zjHFxXz
	eOoxaIYKURj7CFm8h0ON+ksue3rlKeTPHukmLueOTme1mrIKqkbKBSMX5LadnaILlEAaBHxd0d/6L
	afAdPrz8ZMpQFYroZ5OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTVfw-008M5h-VR; Wed, 31 Aug 2022 21:55:08 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTVfn-008Lym-FR
	for linux-rockchip@lists.infradead.org; Wed, 31 Aug 2022 21:55:02 +0000
Received: from jupiter.universe (dyndsl-091-096-057-024.ewe-ip-backbone.de [91.96.57.24])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 79BDA6601EAA;
	Wed, 31 Aug 2022 22:54:47 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1661982887;
	bh=zj4EycsA2up3moyNszlj5tFIZU3qPDoqX2acH/vKHBY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=JO7V20XeyEkqpd7XnIy8ZTyadpIPHhvJMckDr62JmG5AI/s/aJ5StEUvpC2uB/ZvY
	 e0Gfbh+R5bTZilV789Y6KNoAfdSLxJgOD+D53m7SKnbcP7QYFf3wjez1b/BX8EKPZE
	 GzO8QaYpWUg18Jzd1PSXRj8GS3sfjlzOStLOHSL41bxXXQAFY41O7cVwcjdxoqJVp5
	 L8qr/SMz738sxsOlOb8K4eLVOTjOkbjKzH1GbYf2pyCoKa5n7R4/WBIMalK0McI6VK
	 e69bD1tzosB5PX0gG+lC16DoCwyglVm6lDqbNLe/aKZ+QEXpQj3Shi/6PZcdl18kgo
	 OizTHtbRzmJBQ==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 4C013481743; Wed, 31 Aug 2022 23:54:43 +0200 (CEST)
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
Subject: [PATCH 13/13] ASoC: rk817: Remove 'select REGMAP_I2C'
Date: Wed, 31 Aug 2022 23:54:37 +0200
Message-Id: <20220831215437.117880-14-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220831215437.117880-1-sebastian.reichel@collabora.com>
References: <20220831215437.117880-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220831_145459_752040_05F10045 
X-CRM114-Status: GOOD (  12.76  )
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

With the changed rk808 driver (it now can be used with either SPI
or I2C) a configuration without I2C is possible in theory. In that
case selecting REGMAP_I2C is not ok. Since the audio codec driver
does not really care about the regmap binding just drop the select.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 sound/soc/codecs/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/sound/soc/codecs/Kconfig b/sound/soc/codecs/Kconfig
index d16b4efb88a7..646494973cfd 100644
--- a/sound/soc/codecs/Kconfig
+++ b/sound/soc/codecs/Kconfig
@@ -1192,7 +1192,6 @@ config SND_SOC_RK3328
 config SND_SOC_RK817
 	tristate "Rockchip RK817 audio CODEC"
 	depends on MFD_RK808
-	select REGMAP_I2C
 
 config SND_SOC_RL6231
 	tristate
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
