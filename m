Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B44D9ECAAD5
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Sep 2022 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iVGjvwVBzeZmv1631MZm9s7uSIndSoK1f/U3WFkjIPI=; b=BFtXRjoikcLWXr
	zxT6/kkyq+ms90Nm/Q83WkHRyQoKejZTkSbgcA4oS/LBpB2WpB3YdT++l+9crNDsN7TmAUD/b1/6e
	5hybInsi9LhXDix3poJvYbg13JEn1Adllh5xpQhRSN67HL8KQmhd7GVOFS01jmOT6Y5nrGq9lSKBD
	jWNBkUrSo18lLA15WC1eql5fgC9p33NsBYlAZrQMYQ8XQdPlkqIcpjey5+mjDNKIK2BF7HHeQuzYA
	BP3D1qsqBDOtjmI/s0/ZdGRH8yh0wLZ5bbPWjVdCINDYLJet4j0VGY9IbgdYuYNleu1UF5wtFv2DY
	OF8Zo8g9mj2AbtxJTi2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWiED-000u3S-GL; Fri, 09 Sep 2022 17:55:45 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWiE5-000trm-NL
	for linux-rockchip@lists.infradead.org; Fri, 09 Sep 2022 17:55:42 +0000
Received: from jupiter.universe (dyndsl-095-033-168-128.ewe-ip-backbone.de [95.33.168.128])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 416B46601FE1;
	Fri,  9 Sep 2022 18:55:31 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1662746131;
	bh=zj4EycsA2up3moyNszlj5tFIZU3qPDoqX2acH/vKHBY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=MiWbmw6lJqq57f1P6ndUwH1TPNFKvN0WzRvkot+BkJnEe8hcoHlUVXnJHQRWu4UQp
	 S6QPYe/lBObDkAoiyItJCQEHj/pFUxPLW6z7Ahxg4vyYmXwJW1FpV47vTbM10RZHG4
	 vTCrxlMMu1UDN1ChVYB6ulFAe1QB16kHtuQeCDpzB1R1cfZWirn+S2Hm03bznUVBET
	 aGurrt57XENBDlmJ3+VHQbsn5WwQXucmVkl1cIVvUcNQN1g0JZupeV4gIPGY8GSvuy
	 xEG1QhCmkeheKDW+OP4W3ps/91Yiq8QH8EijeViG8tNAuNtVYa0a8wGeRGWpC/xIkJ
	 5fdL7zOahgR8g==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 30D694805AA; Fri,  9 Sep 2022 19:55:27 +0200 (CEST)
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
Subject: [PATCHv3 14/14] ASoC: rk817: Remove 'select REGMAP_I2C'
Date: Fri,  9 Sep 2022 19:55:22 +0200
Message-Id: <20220909175522.179175-15-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220909175522.179175-1-sebastian.reichel@collabora.com>
References: <20220909175522.179175-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_105538_011243_D2960172 
X-CRM114-Status: GOOD (  12.69  )
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
