Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDC47C25B75
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 May 2024 12:18:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1djA5ADs8aBDSJm7R3YOKV+aG30ErkoQpwoKa9WmQ/I=; b=kn0BegJRZtDGY0
	8+Hn3wIs4xDW9ykKjcG8bSmK3dPPXupg5c9XzTVBIs2WFIJoOkbKZKkpJ+7W6Cbzr4Ef8hhoefxPh
	PlqOuKeCSzebHZzgZELNbvpYSgrLPiqlcTBdmpX3wY9agak0zXGVH2JtFgsbpkkRKVXnHp8CwMDeK
	UqA65WmKjVIRMVQucBRizwjFODtYY6sMVK8J1jBVDKnMsWjD+aTjIdgzDU0EEDP6l4E0Lberwb410
	DXlMTNHg7Ev8DgRWYOLykcGxT90Rmbd3LWm9I+9DI5X2I2JdNU+kLqunENsp2kWhAVB6XLXSy0x2z
	87pLBbtpNzFgvEFtwW0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7Da4-00000001TjT-4ABa;
	Wed, 15 May 2024 12:18:01 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7DZy-00000001TfT-0ujh;
	Wed, 15 May 2024 12:17:55 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-51f12ccff5eso9337276e87.1;
        Wed, 15 May 2024 05:17:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715775466; x=1716380266; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AKjMVOygJf4llOz3yuoJ/FqsNMdulqX0kUVtShPdWBE=;
        b=Nz6NBz6BMhWvLRfXSfPt8o2oT/PFS7wWrDEmxJ0e7CHwEnrr4thasN6/NZfRTtsgUu
         1uJGZKBOGEdqXkVtlSNhXiPopuE0LPEkEh6h8clRexCBnYgiGBipHuh6tGPVHRo6atqX
         3Ra/keBxxyratmHI6R7vKnnLMvdO+KtRUXqAn6rQ8ZlUBO94MsEwp19WPf+iqcIB8tNF
         H1aXLJNMQl4ZN5oN++Ye9ixgCdRws8YV28h6Dkgs6FM50AQPYOb9iLkyTapHT7LHzY4b
         3ajaH9fcNtSeH8FXI0EpDpqsLBK+9Tal1ocac++CbwrN2yhaX4gUO7ptL8ZUfYYX4aKs
         LfLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715775466; x=1716380266;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AKjMVOygJf4llOz3yuoJ/FqsNMdulqX0kUVtShPdWBE=;
        b=Y8TWYGw47zcgc/RVFgmuUCpTH70hLOMyxXT6aAPzu3GaxvQpnKmjg1zZx3FJwrp3w5
         l1dxOnlfsssDp2UHtB7D2suuau4wlBxgtlWwZImk6bf0UjAzqFQ0Cgk+Ax1KQ+Tbho9Z
         AbOsNB6N7NGZLu2S+AixF+pAfzw8RJauCtfLq1l9LcjRqeLZyAMEAUtLcb+kToSa9X/O
         8Jjd+CqG2MBusmqlHXmJBV5Z0TOp+CpD2SLUbDuiPamL03L1vmn62thwoapohGLcbaco
         QQLD86HwRPWeG7Seg6MNB54ryWlWyXxazu40R4nTGaHz1UeLi2PnqDII7vSMK4wBHdio
         0L6Q==
X-Forwarded-Encrypted: i=1; AJvYcCW0i7ksPpkIWXBPxQNKmaB0C1N+2XYNIiIHmWZFMwylm5qvl/rf9ISP8cPGHQtMevHh9dkQdxKuo+kRauCmoK+kIgLsiWtjUsqw28p5c/cRUrOtYahW7J/4AQwyVFPzWKsxTz/xLduF4UQXcbq3+jk/e6N4yjjgCYM=
X-Gm-Message-State: AOJu0Yxxsg6FYg1rWi6hiLUf8PgIY/WbGpJnvlBpJz0mDWxa1ksWd45T
	Ws52jOYTMEBmKSTojrcB2EcZgwSdwxFwAdn8N+bjevtgGgaHqOfm
X-Google-Smtp-Source: AGHT+IEu6eXZiI2FM1gcXLheGWZY8zbpBrIt2I18KCAhXjSTZmF8Yk917x+UEnxKTYPurWvm+UHEGA==
X-Received: by 2002:ac2:5df1:0:b0:51b:4204:2f51 with SMTP id 2adb3069b0e04-5220ff71f7dmr10085290e87.8.1715775466187;
        Wed, 15 May 2024 05:17:46 -0700 (PDT)
Received: from yoga-710.tas.nnz-ipc.net ([178.218.200.115])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-521f35ad684sm2515614e87.3.2024.05.15.05.17.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 May 2024 05:17:45 -0700 (PDT)
From: Dmitry Yashin <dmt.yashin@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>
Cc: Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Jianqun Xu <jay.xu@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dmitry Yashin <dmt.yashin@gmail.com>
Subject: [PATCH 1/3] pinctrl: rockchip: update rk3308 iomux routes
Date: Wed, 15 May 2024 17:16:32 +0500
Message-ID: <20240515121634.23945-2-dmt.yashin@gmail.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20240515121634.23945-1-dmt.yashin@gmail.com>
References: <20240515121634.23945-1-dmt.yashin@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_051754_283041_3C83030E 
X-CRM114-Status: GOOD (  10.58  )
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

Some of the rk3308 iomux routes in rk3308_mux_route_data belong to
the rk3308b SoC. Remove them and correct i2c3 routes.

Fixes: 7825aeb7b208 ("pinctrl: rockchip: add rk3308 SoC support")
Signed-off-by: Dmitry Yashin <dmt.yashin@gmail.com>
---
 drivers/pinctrl/pinctrl-rockchip.c | 17 ++---------------
 1 file changed, 2 insertions(+), 15 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 3bedf36a0019..cc647db76927 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -870,9 +870,8 @@ static struct rockchip_mux_route_data rk3308_mux_route_data[] = {
 	RK_MUXROUTE_SAME(0, RK_PC3, 1, 0x314, BIT(16 + 0) | BIT(0)), /* rtc_clk */
 	RK_MUXROUTE_SAME(1, RK_PC6, 2, 0x314, BIT(16 + 2) | BIT(16 + 3)), /* uart2_rxm0 */
 	RK_MUXROUTE_SAME(4, RK_PD2, 2, 0x314, BIT(16 + 2) | BIT(16 + 3) | BIT(2)), /* uart2_rxm1 */
-	RK_MUXROUTE_SAME(0, RK_PB7, 2, 0x608, BIT(16 + 8) | BIT(16 + 9)), /* i2c3_sdam0 */
-	RK_MUXROUTE_SAME(3, RK_PB4, 2, 0x608, BIT(16 + 8) | BIT(16 + 9) | BIT(8)), /* i2c3_sdam1 */
-	RK_MUXROUTE_SAME(2, RK_PA0, 3, 0x608, BIT(16 + 8) | BIT(16 + 9) | BIT(9)), /* i2c3_sdam2 */
+	RK_MUXROUTE_SAME(0, RK_PB7, 2, 0x314, BIT(16 + 4)), /* i2c3_sdam0 */
+	RK_MUXROUTE_SAME(3, RK_PB4, 2, 0x314, BIT(16 + 4) | BIT(4)), /* i2c3_sdam1 */
 	RK_MUXROUTE_SAME(1, RK_PA3, 2, 0x308, BIT(16 + 3)), /* i2s-8ch-1-sclktxm0 */
 	RK_MUXROUTE_SAME(1, RK_PA4, 2, 0x308, BIT(16 + 3)), /* i2s-8ch-1-sclkrxm0 */
 	RK_MUXROUTE_SAME(1, RK_PB5, 2, 0x308, BIT(16 + 3) | BIT(3)), /* i2s-8ch-1-sclktxm1 */
@@ -881,18 +880,6 @@ static struct rockchip_mux_route_data rk3308_mux_route_data[] = {
 	RK_MUXROUTE_SAME(1, RK_PB6, 4, 0x308, BIT(16 + 12) | BIT(16 + 13) | BIT(12)), /* pdm-clkm1 */
 	RK_MUXROUTE_SAME(2, RK_PA6, 2, 0x308, BIT(16 + 12) | BIT(16 + 13) | BIT(13)), /* pdm-clkm2 */
 	RK_MUXROUTE_SAME(2, RK_PA4, 3, 0x600, BIT(16 + 2) | BIT(2)), /* pdm-clkm-m2 */
-	RK_MUXROUTE_SAME(3, RK_PB2, 3, 0x314, BIT(16 + 9)), /* spi1_miso */
-	RK_MUXROUTE_SAME(2, RK_PA4, 2, 0x314, BIT(16 + 9) | BIT(9)), /* spi1_miso_m1 */
-	RK_MUXROUTE_SAME(0, RK_PB3, 3, 0x314, BIT(16 + 10) | BIT(16 + 11)), /* owire_m0 */
-	RK_MUXROUTE_SAME(1, RK_PC6, 7, 0x314, BIT(16 + 10) | BIT(16 + 11) | BIT(10)), /* owire_m1 */
-	RK_MUXROUTE_SAME(2, RK_PA2, 5, 0x314, BIT(16 + 10) | BIT(16 + 11) | BIT(11)), /* owire_m2 */
-	RK_MUXROUTE_SAME(0, RK_PB3, 2, 0x314, BIT(16 + 12) | BIT(16 + 13)), /* can_rxd_m0 */
-	RK_MUXROUTE_SAME(1, RK_PC6, 5, 0x314, BIT(16 + 12) | BIT(16 + 13) | BIT(12)), /* can_rxd_m1 */
-	RK_MUXROUTE_SAME(2, RK_PA2, 4, 0x314, BIT(16 + 12) | BIT(16 + 13) | BIT(13)), /* can_rxd_m2 */
-	RK_MUXROUTE_SAME(1, RK_PC4, 3, 0x314, BIT(16 + 14)), /* mac_rxd0_m0 */
-	RK_MUXROUTE_SAME(4, RK_PA2, 2, 0x314, BIT(16 + 14) | BIT(14)), /* mac_rxd0_m1 */
-	RK_MUXROUTE_SAME(3, RK_PB4, 4, 0x314, BIT(16 + 15)), /* uart3_rx */
-	RK_MUXROUTE_SAME(0, RK_PC1, 3, 0x314, BIT(16 + 15) | BIT(15)), /* uart3_rx_m1 */
 };
 
 static struct rockchip_mux_route_data rk3328_mux_route_data[] = {
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
