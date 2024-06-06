Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 072B6C25B75
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jun 2024 12:58:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lArsqljekqLkHyM1SxxIgl1vBaiSJxBifwBa0cGkkko=; b=Mzwq39jo+4lG5h
	ir3S0qv8yUCc/H9ZUgii3wdYWvl8Y4ZANzuvzW7zg47KV66FoUvpjqKmmt0SMoLXwewefn/fM6fxR
	m1L7qjhrmKx8E+EaUDHsMrRSxxPAjzPSE5vwEUsIC2xhbaup0eFlliARg9XyQaE3S+HhIDUAUJt/h
	nEhr6HQvAdMxFX0YmIB9bfyQiPByZnRDcRldDIXrgBRo0sjTSxQMOV/7dnw27NLABx6pWnBVS3seX
	gmKCeNYM8P/MiB+pVdclcbIWItNjJrX9Y5afKXCjlDFKvHW0jS/2Tzxt82gcRpwVJBfANnDD5+S+0
	rOn3dRnC2IiEtBkm4JIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFCh2-00000009lTy-0A1H;
	Thu, 06 Jun 2024 12:58:12 +0000
Received: from mail.eh5.me ([2001:19f0:7001:3edf:5400:4ff:fe32:f2e0])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFCgy-00000009lRJ-0GtR;
	Thu, 06 Jun 2024 12:58:09 +0000
From: Huang-Huang Bao <i@eh5.me>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=eh5.me; s=dkim;
	t=1717678683;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9aGbCJYC5tQIh+V38eaRg/TEw5yXNqXj9kU8kT92Cps=;
	b=JzPFRzXlwauoFclfUckhLzsumIZFUHKZTz3F69hs/aFkkPnv9lsJWxZHzxunf6gpRYqSYg
	i5sHtPROQDiqXANTLzVLz5cFSCDpFXLP2kR9qBsdAnAf6Mcn+TWfnLq+w37aIJVDPrbKKD
	qtVzbUzb7Q/MaW/Z/uPKof6+UmsGH50=
To: Heiko Stuebner <heiko@sntech.de>,
	Linus Walleij <linus.walleij@linaro.org>
Cc: linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Huang-Huang Bao <i@eh5.me>
Subject: [PATCH v2 1/4] pinctrl: rockchip: fix pinmux bits for RK3328 GPIO2-B pins
Date: Thu,  6 Jun 2024 20:57:52 +0800
Message-ID: <20240606125755.53778-2-i@eh5.me>
In-Reply-To: <20240606125755.53778-1-i@eh5.me>
References: <20240606125755.53778-1-i@eh5.me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_055808_236628_2ADB1DA9 
X-CRM114-Status: GOOD (  11.00  )
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

The pinmux bits for GPIO2-B0 to GPIO2-B6 actually have 2 bits width,
correct the bank flag for GPIO2-B. The pinmux bits for GPIO2-B7 is
recalculated so it remain unchanged.

The pinmux bits for those pins are not explicitly specified in RK3328
TRM, however we can get hint from pad name and its correspinding IOMUX
setting for pins in interface descriptions. The correspinding IOMIX
settings for GPIO2-B0 to GPIO2-B6 can be found in the same row next to
occurrences of following pad names in RK3328 TRM.

GPIO2-B0: IO_SPIclkm0_GPIO2B0vccio5
GPIO2-B1: IO_SPItxdm0_GPIO2B1vccio5
GPIO2-B2: IO_SPIrxdm0_GPIO2B2vccio5
GPIO2-B3: IO_SPIcsn0m0_GPIO2B3vccio5
GPIO2-B4: IO_SPIcsn1m0_FLASHvol_sel_GPIO2B4vccio5
GPIO2-B5: IO_ I2C2sda_TSADCshut_GPIO2B5vccio5
GPIO2-B6: IO_ I2C2scl_GPIO2B6vccio5

This fix has been tested on NanoPi R2S for fixing confliting pinmux bits
between GPIO2-B7 with GPIO2-B5.

Signed-off-by: Huang-Huang Bao <i@eh5.me>
---
 drivers/pinctrl/pinctrl-rockchip.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 3bedf36a0019..78dcf4daccde 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -634,12 +634,6 @@ static struct rockchip_mux_recalced_data rk3308_mux_recalced_data[] = {
 
 static struct rockchip_mux_recalced_data rk3328_mux_recalced_data[] = {
 	{
-		.num = 2,
-		.pin = 12,
-		.reg = 0x24,
-		.bit = 8,
-		.mask = 0x3
-	}, {
 		.num = 2,
 		.pin = 15,
 		.reg = 0x28,
@@ -3763,7 +3757,7 @@ static struct rockchip_pin_bank rk3328_pin_banks[] = {
 	PIN_BANK_IOMUX_FLAGS(0, 32, "gpio0", 0, 0, 0, 0),
 	PIN_BANK_IOMUX_FLAGS(1, 32, "gpio1", 0, 0, 0, 0),
 	PIN_BANK_IOMUX_FLAGS(2, 32, "gpio2", 0,
-			     IOMUX_WIDTH_3BIT,
+			     0,
 			     IOMUX_WIDTH_3BIT,
 			     0),
 	PIN_BANK_IOMUX_FLAGS(3, 32, "gpio3",
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
