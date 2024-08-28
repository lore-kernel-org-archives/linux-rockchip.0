Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FD96C54E71
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 10:17:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EyONM/TvIbKfFUpHELQq5gSuoK1vKSWj4DkeCadGupU=; b=Sevi8jqAUhcSl+
	boUZ9381/LVbFDXH3s4vKSZ7XZrCzRsHAPeTHi2Of+7sVvhOf/x2kQK9S9fKUlk+b3wabkzcTfatD
	FUJDH5jerDZ7v5w3qCZ/2jaermVm2X8B8Kh4QWsW0hu90etcazCWImBBLeDPEk3cpxyCl+zfdanEO
	5bRaasAjWLGpA0xAmXCvNCc+kMRnOs849aWJE3OZDrCvX1zAQKz1yuf7eZUbuGwPPYQc2kMZFU9Wc
	aZwv6XqiW2gqlp/AgNVwsPTijrJ2eUk2lcp/ckZ6TVPlwop0dwcqE2yTkf2HoG+rayQZND1orP9Pv
	4+RPdqEAPwb7Nfiu6qtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjFjm-0000000EtHE-1csu;
	Wed, 28 Aug 2024 10:17:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjFhx-0000000EsRV-2Ilk;
	Wed, 28 Aug 2024 10:15:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=TqxynQHVtMcMYcTlZ9c4J6WTyfOvhuPEE/JTjaFof8c=; b=F/STKZbs9HYU2hW/BAcH9J8QdX
	npIMSwV+jCcbEuetF3pk9E3pVByxVRdfkfgtCyH7M+t0C08UyXZ2HDGTUnCcWGj90h6Z5FSuqoc8D
	CohnJ9sfqeb9wByiNVfzvF0w8qcR9NCa4cYXcSJd89oXdQ7rdrpbmqPmezwKDUzErp3CYytTvYoo0
	P3KtVBdolN6fE5eeZ9pjUJRmg4171zp0cdnhZS6V+I++bX33/5ISNhlTo8Fc5u/rb2qGswd7hWeeY
	7xENuFKrAoQZuG1eDR3h13YG6AqGWweSnt3Gt1V6zcWg0/BMQQJt3MjNzhuph/oKTCQ+ZhOts0obN
	VZrmIMrw==;
Received: from i5e8616cd.versanet.de ([94.134.22.205] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sjFht-0004M3-8q; Wed, 28 Aug 2024 12:15:17 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com,
	sboyd@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-clk@vger.kernel.org,
	heiko@sntech.de,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v3 3/5] clk: clk-gpio: use dev_err_probe for gpio-get failure
Date: Wed, 28 Aug 2024 12:15:01 +0200
Message-ID: <20240828101503.1478491-4-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240828101503.1478491-1-heiko@sntech.de>
References: <20240828101503.1478491-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_031521_607352_13DC7A33 
X-CRM114-Status: GOOD (  14.01  )
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

This is a real driver and dev_err_probe will hide the distinction between
EPROBE_DEFER and other errors automatically, so there is no need to
open-code this.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/clk/clk-gpio.c | 15 +++------------
 1 file changed, 3 insertions(+), 12 deletions(-)

diff --git a/drivers/clk/clk-gpio.c b/drivers/clk/clk-gpio.c
index 98415782f9a2..cda362a2eca0 100644
--- a/drivers/clk/clk-gpio.c
+++ b/drivers/clk/clk-gpio.c
@@ -200,7 +200,6 @@ static int gpio_clk_driver_probe(struct platform_device *pdev)
 	struct gpio_desc *gpiod;
 	struct clk_hw *hw;
 	bool is_mux;
-	int ret;
 
 	is_mux = of_device_is_compatible(node, "gpio-mux-clock");
 
@@ -212,17 +211,9 @@ static int gpio_clk_driver_probe(struct platform_device *pdev)
 
 	gpio_name = is_mux ? "select" : "enable";
 	gpiod = devm_gpiod_get(dev, gpio_name, GPIOD_OUT_LOW);
-	if (IS_ERR(gpiod)) {
-		ret = PTR_ERR(gpiod);
-		if (ret == -EPROBE_DEFER)
-			pr_debug("%pOFn: %s: GPIOs not yet available, retry later\n",
-					node, __func__);
-		else
-			pr_err("%pOFn: %s: Can't get '%s' named GPIO property\n",
-					node, __func__,
-					gpio_name);
-		return ret;
-	}
+	if (IS_ERR(gpiod))
+		return dev_err_probe(dev, PTR_ERR(gpiod),
+				     "Can't get '%s' named GPIO property\n", gpio_name);
 
 	if (is_mux)
 		hw = clk_hw_register_gpio_mux(dev, gpiod);
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
