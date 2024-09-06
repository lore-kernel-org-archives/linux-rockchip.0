Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C0E0CE7AEB
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 08:38:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EyONM/TvIbKfFUpHELQq5gSuoK1vKSWj4DkeCadGupU=; b=E+PVY1z7pRAbfG
	87s2n1iQUWwL0xKw2SD1jfALz0w1/FV5T17CVV1+34zZZ2n7SdVtP5QS9DQm2kTMGdLnwFESoJFqN
	wLLSnPiWQXqgQu6sjDW1rqD9sCbh6oiZTUCiLliRIty4dwCXd4vZos0TsMZPG6t4ugGdmM8aJ+b88
	5NRYYCCltV1CX6i+d1uKfrax0aNBiweJCRyWig2m8xNTfhdEtApAvDCz83mcZgDBlYZXvs/FQAhyK
	UfUOolc84sUOr6N6haJhwli7Pp1NCgUKfmoObGXr58hPA7/Ae63E/CeW9X+Ot78DvPP6uXdSgzjm6
	VhDHlk29FQcLMAhgV/rA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smUTy-0000000BMdj-2VJn;
	Fri, 06 Sep 2024 08:38:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smUHU-0000000BIrp-2IH5;
	Fri, 06 Sep 2024 08:25:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=TqxynQHVtMcMYcTlZ9c4J6WTyfOvhuPEE/JTjaFof8c=; b=LrwR39eWNErCClWorqwywiKGQ/
	1GEu1mZ94vd80Hw7neS0f8eUCbl3DgBfeBqcdxTnKpTKQL28GB1vF5QWgDCqewuxA3KsR5Wxl0Izk
	my12JGWFhQqsVU+SDODqWcMVUOPVL13eMDsqWdbQVK7Pcs/hOBYThYJBme8dzGX6slp767eMHngMk
	Szz2KFavkd9JuLMHV4di7wPMs91JjUjr1Eu1nfgMtYFls1jGqRN9ygN7zkdPSrJZv8YQ4p6K8FTFz
	SutLlTk9IhKQxaGvV6ZrVhCXm4mot1uNguWCU/SLCZB2F/YGiqUyHfRbsxMAWHaRVnc/Ldyh7IzWP
	TPcCTkAw==;
Received: from i5e860d0f.versanet.de ([94.134.13.15] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1smUHP-0000jF-R6; Fri, 06 Sep 2024 10:25:19 +0200
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
Subject: [PATCH v4 3/5] clk: clk-gpio: use dev_err_probe for gpio-get failure
Date: Fri,  6 Sep 2024 10:25:09 +0200
Message-ID: <20240906082511.2963890-4-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240906082511.2963890-1-heiko@sntech.de>
References: <20240906082511.2963890-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_012524_779681_0F31C9AA 
X-CRM114-Status: GOOD (  13.96  )
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
