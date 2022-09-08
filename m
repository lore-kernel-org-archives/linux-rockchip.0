Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B0CDECAAD3
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Sep 2022 00:31:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ma/BYH0u9ZBGnyDrsuCRbqRcTRxugpnfVfOpagE9AlE=; b=MjmDzxv/2l5aS/
	waDe9arZnJJ2zXUntJNFg/FKxzvQGcR2X7DStF+At44VGVlODygrSKuyNFmr3A2Bba/ha8dSbs3rk
	jI4EyFex/KtIzGKWxz2oJtVHDKtliXtD7M5LQHBrPC0oprT+f8VUS6ANqtr4YFSiHYxSc3Ms2RBS0
	DgxDThlRYCivhxp6NDjJmHWU3y1T0KqqA7buRr7/fAY/B5WJJtZE3X/0hi8Gtt9++hdwLvwAHEIQB
	1a8XNUhKFsFH9d91X2yyQALC0JvrmXWJ0r0clIUlaheubsotRgtyfcsmbLJc6GIu6Drr5LUHt5N7k
	PF5IP70cGmEPy2yfla0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oW5S7-00DFsg-4l; Thu, 08 Sep 2022 00:31:31 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oW5Ry-00DFQx-BP
	for linux-rockchip@lists.infradead.org; Thu, 08 Sep 2022 00:31:24 +0000
Received: from jupiter.universe (dyndsl-095-033-158-249.ewe-ip-backbone.de [95.33.158.249])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id BC8076601F80;
	Thu,  8 Sep 2022 01:31:14 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1662597074;
	bh=TH5RKawR8fUzI9ml8ZupcHOujoAZfQCPkmxXhLYxYXk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=GuB/f8o/u+ITQE3vCmryUVKLmiG1nzpeVNf2hF52sQTCjK+C0nIAawpweJu3CEJ0h
	 Dgam1zZzBBBHkc1v2NSlwFg981d/cA+xp+D8J4qR5JcnWbAVHX0f19Hf8vyAlqkTDK
	 DbGeqwcVj8zeBnJPDWvFe+J53eJU3PtOPYQzjShQEzRauOS0QWspf67eg9+0Bn4CUN
	 3BrPlt0gkOlFG9Q6buTlwImHqCupgBv1NnoChXZaFnAX30PzzT1aWa7VOYFP9hCtnz
	 Pj9HtxVvZRzHZq5tHMPJ2qJad3zO6aorJD7M6+WNXv0rmzufDnadJnh5ty4rqb5ldz
	 NKgNKnXWG9Txg==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 7713A4807A1; Thu,  8 Sep 2022 02:31:09 +0200 (CEST)
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
Subject: [PATCHv2 11/13] regulator: rk808: Use dev_err_probe
Date: Thu,  8 Sep 2022 02:31:05 +0200
Message-Id: <20220908003107.220143-12-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220908003107.220143-1-sebastian.reichel@collabora.com>
References: <20220908003107.220143-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_173122_565943_DA8C550F 
X-CRM114-Status: GOOD (  14.19  )
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

Print error message for potential EPROBE_DEFER error using
dev_err_probe, which captures the reason in
/sys/kernel/debug/devices_deferred and otherwise silences
the message.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/regulator/rk808-regulator.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/regulator/rk808-regulator.c b/drivers/regulator/rk808-regulator.c
index ce9c64cadeba..fa9fc1aa1ae3 100644
--- a/drivers/regulator/rk808-regulator.c
+++ b/drivers/regulator/rk808-regulator.c
@@ -1343,11 +1343,9 @@ static int rk808_regulator_probe(struct platform_device *pdev)
 	for (i = 0; i < nregulators; i++) {
 		rk808_rdev = devm_regulator_register(&pdev->dev,
 						     &regulators[i], &config);
-		if (IS_ERR(rk808_rdev)) {
-			dev_err(&pdev->dev,
-				"failed to register %d regulator\n", i);
-			return PTR_ERR(rk808_rdev);
-		}
+		if (IS_ERR(rk808_rdev))
+			return dev_err_probe(&pdev->dev, PTR_ERR(rk808_rdev),
+					     "failed to register %d regulator\n", i);
 	}
 
 	return 0;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
