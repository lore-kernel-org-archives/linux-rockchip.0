Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85EB2C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Apr 2022 17:14:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mfmJ0BClmW2NIITwQUIrikW81IPBii0qcQak7D/RTko=; b=mOT0ZOTZFsVU92
	vOi1fkCDoNZdYSZwDUUvJ7xKowbOPewcn3NiA3Ut0BW0YSOzuIXEE3p/adGXcdF7XirAzqYLjE4kU
	DAu0MNApOwj8lewjM9PEF73+GnSp2Ug7msvjo/kX125UyJ147UnjSXu664v0eEvhuJZLaxL6stDL8
	xMMu3UI/jGchL9jJWai//HoY6boq8EvqMRmuxxu9ROZazQ00MxFBQS4tjj3yWMH0Znsc6ZZVVyyqx
	WD4lOEHOjwMiYUoMm7zf8wKbmuG/pysJgG4cglnn8LOq/GK8gX163in2Nv6hFdRT8JOQZZ1UFLB0+
	I6FefClgW1o+jyQ3r/KQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhwr3-001fet-JU; Fri, 22 Apr 2022 17:14:01 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhwmu-001dVP-2F; Fri, 22 Apr 2022 17:09:46 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id 91E921F46B05
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1650647377;
 bh=EPcCXKeA1LAFjO2ZEEU8z37SDrqevGobpJeJYsDJDSY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GMzuubHogBCqI/fcPFkN1Z/E0atBiwC4cjim5/njd57NQb8qXbbF1YnT+9lrN2VcX
 Uhc00+qaSpL8lsfBuA+iYyB1YTsVyb4swHRJgGe9OE+JbqolwxsSWRE078LmYkzjk0
 y4+z3dnoLKK55V/z+4oClppHd/PIV/uhpqZ76L4ge5Tp/HstTG0bz7dOAk3Y9TR6rN
 On8Dln9GFg0usl4f0GnG5JM5atTtSewK+/p++3YVaUrx4L6U60Pm68twTtXP98oq0L
 BMrrECredc1RRSOw2ZoWY1LtNsDjmzKJYKihFC0iWXUJf4sQJBYzkv8/2lUHxSV3sS
 TJ8OZFFgKcnmw==
Received: by jupiter.universe (Postfix, from userid 1000)
 id E2BF9480C1E; Fri, 22 Apr 2022 19:09:32 +0200 (CEST)
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
Subject: [PATCHv1 14/19] gpio: rockchip: add support for rk3588
Date: Fri, 22 Apr 2022 19:09:15 +0200
Message-Id: <20220422170920.401914-15-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220422170920.401914-1-sebastian.reichel@collabora.com>
References: <20220422170920.401914-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_100944_333454_39DD1531 
X-CRM114-Status: GOOD (  13.78  )
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
