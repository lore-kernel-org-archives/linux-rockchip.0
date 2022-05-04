Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6946DC43217
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 May 2022 21:33:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RBh27Vo+PiMGl/OnUFF99MSDAMTbgc5r4IrtCphQEes=; b=we4Y/5lPSLJbcq
	xaVB9CuitB5e6VOy5YE6rZYxupBgECG1bMq46Jf/p8dd0TVKnWdhmeYJJfHxzvZqMTF3VraAWBKEP
	ay38yAMcE5WuLziuKHmZ9CkFfM3m3kVExNQMjbwtVSdrcInMePGtBMOjMkaV8FBw6TMFWhAbNfMRO
	eqyUCYz8FG7MOtd1/ugaPYAsx3G/IQIgHYoe4Lp+jLl2UNmAoBDB1XYynOUXyjRhytRPMtMDU7EoS
	jA7LpzcMtZh56aSk3ZqwU/Tzz0g98w+2IJRaxlsO1iqajulbFH3k9UnLB4KDAhPujj9IoHVLOEt4m
	3f4cgFLlEvgUueaaiXxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmMci-00Cp4Q-VW; Wed, 04 May 2022 21:33:29 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmMcJ-00CooQ-V8; Wed, 04 May 2022 21:33:05 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id 089C41F44B1B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1651699976;
 bh=DdTo/IHVksNFaY0C3OZeNK8F/zY5vBwcncoBBVcwOBM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KBupv5Z7FDKZDfpXGWIfS1Z9tOybmQpS/YNWKg6RazHBWNhpK8kOP4xJWUJBepxGs
 AErYih7Sa/TN4gcSAINce1mpoTnVrqfa8DEILX5EtzzLPucxJ56VrehltcIc4HY7Ti
 7CExl6xbP466Y2c78cC6yTgQNTeHpSswhBlN6n317lUWS0ET/DFiO2wzuZzPDcMEnF
 BcS2nSxXMik4PrkzVh7r67OPLMDK5arDWk73F5yE2zAoO5AHXeZ+HAkAlwslgWZU33
 mzLd9fYRZSN+u21H8NNQcwbzghaP0xQw3Bqqd0qVhWPrOCVJsxnsKs/f6SeVwg3KpV
 iiVUeEesb5T8Q==
Received: by jupiter.universe (Postfix, from userid 1000)
 id 2FB3948146C; Wed,  4 May 2022 23:32:53 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@lists.collabora.co.uk,
 Sebastian Reichel <sebastian.reichel@collabora.com>, kernel@collabora.com,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCHv2 01/21] dt-bindings: pinctrl: rockchip: add rk3588
Date: Wed,  4 May 2022 23:32:31 +0200
Message-Id: <20220504213251.264819-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220504213251.264819-1-sebastian.reichel@collabora.com>
References: <20220504213251.264819-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_143304_159666_FCCB8480 
X-CRM114-Status: GOOD (  10.23  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Add compatible string for rk3588 pin controller. No other changes
are required, since the new controller can use the old binding.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
index b0eae3a67ab1..e62fb5e9db76 100644
--- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
@@ -44,6 +44,7 @@ properties:
       - rockchip,rk3368-pinctrl
       - rockchip,rk3399-pinctrl
       - rockchip,rk3568-pinctrl
+      - rockchip,rk3588-pinctrl
       - rockchip,rv1108-pinctrl
 
   rockchip,grf:
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
