Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EDE0C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Sep 2022 10:26:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C53KpUdw6jQ3zBtAv50acR8ZwdPpy+AxFYu7sLQHJao=; b=u1LgAwfLYeybJu
	xXFIqbMpIXl092TiVo+Ah6LNtDkl2ahnH3a2JTQyG2datEoy9xJ76ndiDdE0hfxl1L0874vw96mw2
	SC/Yp01j6vcrUcR0cIdj69vBkI0AseiAXm/uDLF6PLfM/TEd22Ot9MJ+2NWnqoWtMfNVaH+86V0vh
	iVoYIrjNh9Blas9DTiZpx69J4RVGc0Jli1VR5AYNKYXsEdmEfZgM5IWaQAiAbfXMj3a+ZA4aYgF2c
	+pd6O7qtjq22EZLzZIx/cD54+3fccgA5NdtpHzRIxQw1Lvd764fhOKet3YvRVjdfxRO8kAvOabAGj
	SwxdzIjll2Ak/e2ji7jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeDE4-008aHT-AT; Fri, 30 Sep 2022 10:26:36 +0000
Received: from mail-m11878.qiye.163.com ([115.236.118.78])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeDE0-008aEb-Bv
	for linux-rockchip@lists.infradead.org; Fri, 30 Sep 2022 10:26:34 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11878.qiye.163.com (Hmail) with ESMTPA id 70C80740D03;
	Fri, 30 Sep 2022 18:26:22 +0800 (CST)
From: Jianqun Xu <jay.xu@rock-chips.com>
To: heiko@sntech.de,
	linus.walleij@linaro.org
Cc: luca.ceresoli@bootlin.com,
	linux-rockchip@lists.infradead.org,
	Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH] pinctrl/rockchip: re-fix RK3308 pinmux bits
Date: Fri, 30 Sep 2022 18:26:20 +0800
Message-Id: <20220930102620.1568864-1-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVlDGksZVkwYSU4eTU4ZQxpJGFUTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktITUpVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PzY6Hyo*Vj0uDFFRHwNOETFP
	NglPCSpVSlVKTU1PTkhITkNJQkxDVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQU9DSUI3Bg++
X-HM-Tid: 0a838deed2f72eb4kusn70c80740d03
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_032632_604187_8312160F 
X-CRM114-Status: GOOD (  15.43  )
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

Part of pins from RK3308 SoCs have two registers to do pinmux, one is
the origin register with 2bits named by gpioxx_sel, and another with
3bits and named by gpioxx_sel_plus.

The default value is 2bits. But Rockchip downstream pinctrl driver has a
soc init for RK3308 to switch to the 3bits path. The first patch
upstream the support for RK3308 pinctrl but drop the soc init codes.

The commit 1f3e25a06883 ("pinctrl: rockchip: fix RK3308 pinmux bits") try
to fix back to 2 bits path, but that will makes some iomux not be
supported.

This patch re-fix the pinmux bits to 3bits path.

Fixes: 1f3e25a06883 ("pinctrl: rockchip: fix RK3308 pinmux bits")

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/pinctrl/pinctrl-rockchip.c | 84 ++++++++++++++++++++++++------
 1 file changed, 67 insertions(+), 17 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 32e41395fc76..293077450d10 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -535,35 +535,35 @@ static struct rockchip_mux_recalced_data rk3308_mux_recalced_data[] = {
 		.bit = 8,
 		.mask = 0xf
 	}, {
-		/* gpio2a2_sel */
+		/* gpio2a2_sel_plus */
 		.num = 2,
 		.pin = 2,
-		.reg = 0x40,
-		.bit = 4,
-		.mask = 0x3
+		.reg = 0x608,
+		.bit = 0,
+		.mask = 0x7
 	}, {
-		/* gpio2a3_sel */
+		/* gpio2a3_sel_plus */
 		.num = 2,
 		.pin = 3,
-		.reg = 0x40,
-		.bit = 6,
-		.mask = 0x3
+		.reg = 0x608,
+		.bit = 4,
+		.mask = 0x7
 	}, {
-		/* gpio2c0_sel */
+		/* gpio2c0_sel_plus */
 		.num = 2,
 		.pin = 16,
-		.reg = 0x50,
-		.bit = 0,
-		.mask = 0x3
+		.reg = 0x610,
+		.bit = 8,
+		.mask = 0x7
 	}, {
-		/* gpio3b2_sel */
+		/* gpio3b2_sel_plus */
 		.num = 3,
 		.pin = 10,
-		.reg = 0x68,
-		.bit = 4,
-		.mask = 0x3
+		.reg = 0x610,
+		.bit = 0,
+		.mask = 0x7
 	}, {
-		/* gpio3b3_sel */
+		/* gpio3b3_sel_plus */
 		.num = 3,
 		.pin = 11,
 		.reg = 0x68,
@@ -3014,6 +3014,50 @@ static int __maybe_unused rockchip_pinctrl_resume(struct device *dev)
 static SIMPLE_DEV_PM_OPS(rockchip_pinctrl_dev_pm_ops, rockchip_pinctrl_suspend,
 			 rockchip_pinctrl_resume);
 
+
+static int rk3308_soc_data_init(struct rockchip_pinctrl *info)
+{
+	int ret;
+
+	#define RK3308_GRF_SOC_CON13	(0x608)
+	#define RK3308_GRF_SOC_CON15	(0x610)
+
+	/* RK3308_GRF_SOC_CON13 */
+	#define RK3308_GRF_I2C3_IOFUNC_SRC_CTRL	(BIT(16 + 10) | BIT(10))
+	#define RK3308_GRF_GPIO2A3_SEL_SRC_CTRL	(BIT(16 + 7)  | BIT(7))
+	#define RK3308_GRF_GPIO2A2_SEL_SRC_CTRL	(BIT(16 + 3)  | BIT(3))
+
+	/* RK3308_GRF_SOC_CON15 */
+	#define RK3308_GRF_GPIO2C0_SEL_SRC_CTRL	(BIT(16 + 11) | BIT(11))
+	#define RK3308_GRF_GPIO3B3_SEL_SRC_CTRL	(BIT(16 + 7)  | BIT(7))
+	#define RK3308_GRF_GPIO3B2_SEL_SRC_CTRL	(BIT(16 + 3)  | BIT(3))
+
+	/*
+	 * Enable the special ctrl of selected sources.
+	 *
+	 * Example reference to GRF_SOC_CON13 description:
+	 *
+	 * gpio2a2_sel_src_ctrl
+	 * IOMUX control source selection.
+	 * 1'b0: use basic GPIO2A_IOMUX[gpio2a2_sel]
+	 * 1'b1: use gpio2a2_sel_plus instead of GPIO2A_IOMUX[gpio2a2_sel]
+	 */
+
+	ret = regmap_write(info->regmap_base, RK3308_GRF_SOC_CON13,
+			   RK3308_GRF_I2C3_IOFUNC_SRC_CTRL |
+			   RK3308_GRF_GPIO2A3_SEL_SRC_CTRL |
+			   RK3308_GRF_GPIO2A2_SEL_SRC_CTRL);
+	if (ret)
+		return ret;
+
+	ret = regmap_write(info->regmap_base, RK3308_GRF_SOC_CON15,
+			   RK3308_GRF_GPIO2C0_SEL_SRC_CTRL |
+			   RK3308_GRF_GPIO3B3_SEL_SRC_CTRL |
+			   RK3308_GRF_GPIO3B2_SEL_SRC_CTRL);
+
+	return ret;
+}
+
 static int rockchip_pinctrl_probe(struct platform_device *pdev)
 {
 	struct rockchip_pinctrl *info;
@@ -3079,6 +3123,12 @@ static int rockchip_pinctrl_probe(struct platform_device *pdev)
 			return PTR_ERR(info->regmap_pmu);
 	}
 
+	if (ctrl->type == RK3308) {
+		ret = rk3308_soc_data_init(info);
+		if (ret)
+			return ret;
+	}
+
 	ret = rockchip_pinctrl_register(pdev, info);
 	if (ret)
 		return ret;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
