Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F18EAC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 May 2022 21:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ddezLXy77qaXv7HQiBLAlX9QpkFU6xtG8CMEdQamGmw=; b=ZcXW9dq/CacbUV
	VFdRPjTxuReNziA0njDVmlwqK4FveqKLQwi7dKSwNsp6V7OiCQtvQF5N7oRUfXthHqpyH+AjUS8IJ
	hxNwdRdmaEM/EdQ9hetfHYfwE66K5v+GJu87v38n55pCwSGt8nnvy7DnY5m2TQVBipyHA7Dc5VPGc
	OpmxvFYopP3HrVrpaIIMp5oyuA7tJ7tQfbmLhrxJFM/oeepVJ0jNq0NNXH2Pqy/T+1A0acIiOcApL
	5EgCf1TxztWhRqrH7c/wYr+7TJo+sez+fMzuvp6oXBTICg82aewYwIMLW6RKXcYXPVDwlyliQr4GL
	zefIy6sS8lri10gNdT7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmMg3-00CrIN-Ba; Wed, 04 May 2022 21:36:55 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmMcQ-00Covq-F7; Wed, 04 May 2022 21:33:20 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id BC97C1F44C7D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1651699979;
 bh=/j9DVYUaA4XYVG++PF1IlWk3WAdl2eTmNu8FL5CCrL0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=IAUmBSeTsN6aldqTM6i8Q4PHRg/RmeOa7RohIKkmton2ckTDqvrccv308EzJQXMzQ
 0sSVUVigR7r2HVnim2jeFA9fEdAE8qnfRodv6LoboYAvHWMuAzbpM2uiUzk7g9QNO+
 gZB1BFmfG76QFNjjH/LCrUf0Kg2tze41e3HM0SaK13yVrR90rjjl9RDoOjlkQzc1tW
 OAyANIGWB/FgpjjrF+oB80+REjNE56TkiepaD4UtdNwvq6fAuL6BMgTvg5gURf0imZ
 gwjHG+hnFdt0aTRbz7WexyvVqu+JX7rXSxEik1C1629Jl81eSTucPAKElIV+BNqOgD
 2fhv7tW9+p7tw==
Received: by jupiter.universe (Postfix, from userid 1000)
 id 504AE4819D3; Wed,  4 May 2022 23:32:53 +0200 (CEST)
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
 kernel@lists.collabora.co.uk, Jianqun Xu <jay.xu@rock-chips.com>,
 kernel@collabora.com, Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCHv2 14/21] gpio: rockchip: add support for rk3588
Date: Wed,  4 May 2022 23:32:44 +0200
Message-Id: <20220504213251.264819-15-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220504213251.264819-1-sebastian.reichel@collabora.com>
References: <20220504213251.264819-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_143310_689183_AC94CBA2 
X-CRM114-Status: GOOD (  14.51  )
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

From: Jianqun Xu <jay.xu@rock-chips.com>

Add V2.1 rockchip gpio controller type, which is part of the
RK3588 SoC.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/gpio/gpio-rockchip.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 099e358d2491..f0e279665525 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -26,6 +26,7 @@
 
 #define GPIO_TYPE_V1		(0)           /* GPIO Version ID reserved */
 #define GPIO_TYPE_V2		(0x01000C2B)  /* GPIO Version ID 0x01000C2B */
+#define GPIO_TYPE_V2_1		(0x0101157C)  /* GPIO Version ID 0x0101157C */
 
 static const struct rockchip_gpio_regs gpio_regs_v1 = {
 	.port_dr = 0x00,
@@ -663,7 +664,7 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
 	id = readl(bank->reg_base + gpio_regs_v2.version_id);
 
 	/* If not gpio v2, that is default to v1. */
-	if (id == GPIO_TYPE_V2) {
+	if (id == GPIO_TYPE_V2 || id == GPIO_TYPE_V2_1) {
 		bank->gpio_regs = &gpio_regs_v2;
 		bank->gpio_type = GPIO_TYPE_V2;
 		bank->db_clk = of_clk_get(bank->of_node, 1);
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
