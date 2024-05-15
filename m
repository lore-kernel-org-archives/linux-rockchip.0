Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D548C25B75
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 May 2024 12:18:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CrjYMK/KXF0oLegSgfSY8Rd0ANx29xSWsF2wmWRdvJc=; b=TSFxqkn0glQxgi
	bRk7AVUTodMig8/YgbRRWOxMiU0lG60/0+T3P6SgD6gm+OZT8AEJixHR7MlomAi5m4++YQLiB6pJR
	43IAnpBvg4goBL2aS0pEWO9v/E2V+A9V5+vi2Mbw5BcjsrI4q/3djO56LQp0Q3rg02a8/rP6u4blD
	uG+qKRzBYPyRKVqTY3xul7p/T3iIM/+z0VrbROfYKfiGadLZV3E7UMJ9uDwIuyz9iDBesRAUt12ws
	u4+tLnv1dmCBmLS6NqKyioU/91T+4tSn9qm6XzKXyj0LdMJip3sHH/JL8sa27iUNOIefWYszMMBcb
	lBjnnFR0AMZ8oDBQuaLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7DaE-00000001Tqh-3PGP;
	Wed, 15 May 2024 12:18:10 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7DZy-00000001Tfx-1ZAM;
	Wed, 15 May 2024 12:17:57 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-52389c1308dso1294771e87.3;
        Wed, 15 May 2024 05:17:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715775470; x=1716380270; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3FfTd+IhcseVz82kX8cl5ddq+uO0WysRifQ/UtsUnsk=;
        b=bA1/mJf47bnpbDIj9hiBVMMqmoeAU1BffBWcEQ6Aw2Qy3n7dDT22sGa3Q1zFrih0FQ
         c7CFEUkQEK+qdQYAG3JTduIzzJmY1nzKIS1HOnx3FlHgxcTuBENVb2g0CGF8AsZcp7eO
         9UYyaIEiYmEHQy2NeEC415d3I5x4RgulIx0f6Y3bKsvu3IomiZX4u+5hRlDbq0SdX8+O
         1EvnKP0tI2g6QVRCpBW6Du0Vdx3LjjMDSsXmOgKKpX9DVrEsm6SKdkHMTuTThqCa/CIG
         qa6j6Jtj4xlTflr8Dun7QXPDi6DibBe+EcXd0iIg1KxJdVsYShZEf1o8dhM8LgS1eqBW
         emVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715775470; x=1716380270;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3FfTd+IhcseVz82kX8cl5ddq+uO0WysRifQ/UtsUnsk=;
        b=ct2yZqDCJ2sCiXFaZ4+GF0nHcEiHSkpLQgzyWHuUtsZ4r7pcyKuHEouCqHAUsE9wX2
         KducWOwIlKSKTe0sGtNANDht4vin5tRdzRciQ8ipUf8RBRJmIElWHiyhWRNpSSWNK7I/
         WUT3+dEXvW3vEIpbSr3ZUyKhaoDdD0tgpPm8vtE8M1OjRhwAv5UsQriPpshxhhnNLzkr
         lzwm0bmi/lcCguGA1nkT/3jduOm//z1d74tION63LS5YqJ7nFdlVKHi7KOsHHUn4yBsN
         L0BmWvbXQ58Kr8w2WH0JZJ1m9oKPV2ocPycxZCtVLRMclOdNjs8uiI9BYItpqeKAImD7
         N8CQ==
X-Forwarded-Encrypted: i=1; AJvYcCVnAao7yjJ4zZDd7UUvfmvalWbJyuPxLf/BaqmFRMZ4WpMpyocc7XptbEUUJtSnFln412gryom+uZX8ikp5eKD3dc+D6NRoC63fvlixNw6ahtFVVAGyXcU+czE9IIg7RKuOQP1PHG4mhmUoSHZAIGK1MOCdRkm0WWM=
X-Gm-Message-State: AOJu0YzW7jPiuAk8yiZgbzvjlVmntfhqEoasdyC8oTOD3xbyCVO0+dZp
	DXJGzRHVBD+C9PpOOA7Xd3KuYPXC6dd++22v4FQ+4ybyjv+J1saf
X-Google-Smtp-Source: AGHT+IH+qSj1I/O3GPU5wteh8h6ytdiJYjGehctJATlTyw6eYCkMHo7xMnVO4bDJk5abmxizMhiDPA==
X-Received: by 2002:a05:6512:3135:b0:51b:e42c:2ec4 with SMTP id 2adb3069b0e04-5220fc7dc49mr9132357e87.24.1715775470277;
        Wed, 15 May 2024 05:17:50 -0700 (PDT)
Received: from yoga-710.tas.nnz-ipc.net ([178.218.200.115])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-521f35ad684sm2515614e87.3.2024.05.15.05.17.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 May 2024 05:17:50 -0700 (PDT)
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
Subject: [PATCH 3/3] pinctrl: rockchip: add rk3308b SoC support
Date: Wed, 15 May 2024 17:16:34 +0500
Message-ID: <20240515121634.23945-4-dmt.yashin@gmail.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20240515121634.23945-1-dmt.yashin@gmail.com>
References: <20240515121634.23945-1-dmt.yashin@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_051754_494340_92E7CAE3 
X-CRM114-Status: GOOD (  18.17  )
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

Add pinctrl support for rk3308b. This pin controller much the same as
rk3308's, but with additional iomux routes and 3bit iomuxes selected
via gpio##_sel_src_ctrl registers. Set them up in the function
rk3308b_soc_sel_src_init to use new 3bit iomuxes over some 2bit old ones.

Fixes: 1f3e25a06883 ("pinctrl: rockchip: fix RK3308 pinmux bits")
Signed-off-by: Dmitry Yashin <dmt.yashin@gmail.com>
---
 drivers/pinctrl/pinctrl-rockchip.c | 200 +++++++++++++++++++++++++++++
 drivers/pinctrl/pinctrl-rockchip.h |   1 +
 2 files changed, 201 insertions(+)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index cc647db76927..15d2045f929e 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -632,6 +632,115 @@ static struct rockchip_mux_recalced_data rk3308_mux_recalced_data[] = {
 	},
 };
 
+static struct rockchip_mux_recalced_data rk3308b_mux_recalced_data[] = {
+	{
+		/* gpio1b6_sel */
+		.num = 1,
+		.pin = 14,
+		.reg = 0x28,
+		.bit = 12,
+		.mask = 0xf
+	}, {
+		/* gpio1b7_sel */
+		.num = 1,
+		.pin = 15,
+		.reg = 0x2c,
+		.bit = 0,
+		.mask = 0x3
+	}, {
+		/* gpio1c2_sel */
+		.num = 1,
+		.pin = 18,
+		.reg = 0x30,
+		.bit = 4,
+		.mask = 0xf
+	}, {
+		/* gpio1c3_sel */
+		.num = 1,
+		.pin = 19,
+		.reg = 0x30,
+		.bit = 8,
+		.mask = 0xf
+	}, {
+		/* gpio1c4_sel */
+		.num = 1,
+		.pin = 20,
+		.reg = 0x30,
+		.bit = 12,
+		.mask = 0xf
+	}, {
+		/* gpio1c5_sel */
+		.num = 1,
+		.pin = 21,
+		.reg = 0x34,
+		.bit = 0,
+		.mask = 0xf
+	}, {
+		/* gpio1c6_sel */
+		.num = 1,
+		.pin = 22,
+		.reg = 0x34,
+		.bit = 4,
+		.mask = 0xf
+	}, {
+		/* gpio1c7_sel */
+		.num = 1,
+		.pin = 23,
+		.reg = 0x34,
+		.bit = 8,
+		.mask = 0xf
+	}, {
+		/* gpio2a2_sel_plus */
+		.num = 2,
+		.pin = 2,
+		.reg = 0x608,
+		.bit = 0,
+		.mask = 0x7
+	}, {
+		/* gpio2a3_sel_plus */
+		.num = 2,
+		.pin = 3,
+		.reg = 0x608,
+		.bit = 4,
+		.mask = 0x7
+	}, {
+		/* gpio2c0_sel_plus */
+		.num = 2,
+		.pin = 16,
+		.reg = 0x610,
+		.bit = 8,
+		.mask = 0x7
+	}, {
+		/* gpio3b2_sel_plus */
+		.num = 3,
+		.pin = 10,
+		.reg = 0x610,
+		.bit = 0,
+		.mask = 0x7
+	}, {
+		/* gpio3b3_sel_plus */
+		.num = 3,
+		.pin = 11,
+		.reg = 0x610,
+		.bit = 4,
+		.mask = 0x7
+	}, {
+		/* gpio3b4_sel */
+		.num = 3,
+		.pin = 12,
+		.reg = 0x68,
+		.bit = 8,
+		.mask = 0xf
+	}, {
+		/* gpio3b5_sel */
+		.num = 3,
+		.pin = 13,
+		.reg = 0x68,
+		.bit = 12,
+		.mask = 0xf
+	},
+};
+
 static struct rockchip_mux_recalced_data rk3328_mux_recalced_data[] = {
 	{
 		.num = 2,
@@ -882,6 +991,35 @@ static struct rockchip_mux_route_data rk3308_mux_route_data[] = {
 	RK_MUXROUTE_SAME(2, RK_PA4, 3, 0x600, BIT(16 + 2) | BIT(2)), /* pdm-clkm-m2 */
 };
 
+static struct rockchip_mux_route_data rk3308b_mux_route_data[] = {
+	RK_MUXROUTE_SAME(0, RK_PC3, 1, 0x314, BIT(16 + 0) | BIT(0)), /* rtc_clk */
+	RK_MUXROUTE_SAME(1, RK_PC6, 2, 0x314, BIT(16 + 2) | BIT(16 + 3)), /* uart2_rxm0 */
+	RK_MUXROUTE_SAME(4, RK_PD2, 2, 0x314, BIT(16 + 2) | BIT(16 + 3) | BIT(2)), /* uart2_rxm1 */
+	RK_MUXROUTE_SAME(0, RK_PB7, 2, 0x608, BIT(16 + 8) | BIT(16 + 9)), /* i2c3_sdam0 */
+	RK_MUXROUTE_SAME(3, RK_PB4, 2, 0x608, BIT(16 + 8) | BIT(16 + 9) | BIT(8)), /* i2c3_sdam1 */
+	RK_MUXROUTE_SAME(2, RK_PA0, 3, 0x608, BIT(16 + 8) | BIT(16 + 9) | BIT(9)), /* i2c3_sdam2 */
+	RK_MUXROUTE_SAME(1, RK_PA3, 2, 0x308, BIT(16 + 3)), /* i2s-8ch-1-sclktxm0 */
+	RK_MUXROUTE_SAME(1, RK_PA4, 2, 0x308, BIT(16 + 3)), /* i2s-8ch-1-sclkrxm0 */
+	RK_MUXROUTE_SAME(1, RK_PB5, 2, 0x308, BIT(16 + 3) | BIT(3)), /* i2s-8ch-1-sclktxm1 */
+	RK_MUXROUTE_SAME(1, RK_PB6, 2, 0x308, BIT(16 + 3) | BIT(3)), /* i2s-8ch-1-sclkrxm1 */
+	RK_MUXROUTE_SAME(1, RK_PA4, 3, 0x308, BIT(16 + 12) | BIT(16 + 13)), /* pdm-clkm0 */
+	RK_MUXROUTE_SAME(1, RK_PB6, 4, 0x308, BIT(16 + 12) | BIT(16 + 13) | BIT(12)), /* pdm-clkm1 */
+	RK_MUXROUTE_SAME(2, RK_PA6, 2, 0x308, BIT(16 + 12) | BIT(16 + 13) | BIT(13)), /* pdm-clkm2 */
+	RK_MUXROUTE_SAME(2, RK_PA4, 3, 0x600, BIT(16 + 2) | BIT(2)), /* pdm-clkm-m2 */
+	RK_MUXROUTE_SAME(3, RK_PB2, 3, 0x314, BIT(16 + 9)), /* spi1_miso */
+	RK_MUXROUTE_SAME(2, RK_PA4, 2, 0x314, BIT(16 + 9) | BIT(9)), /* spi1_miso_m1 */
+	RK_MUXROUTE_SAME(0, RK_PB3, 3, 0x314, BIT(16 + 10) | BIT(16 + 11)), /* owire_m0 */
+	RK_MUXROUTE_SAME(1, RK_PC6, 7, 0x314, BIT(16 + 10) | BIT(16 + 11) | BIT(10)), /* owire_m1 */
+	RK_MUXROUTE_SAME(2, RK_PA2, 5, 0x314, BIT(16 + 10) | BIT(16 + 11) | BIT(11)), /* owire_m2 */
+	RK_MUXROUTE_SAME(0, RK_PB3, 2, 0x314, BIT(16 + 12) | BIT(16 + 13)), /* can_rxd_m0 */
+	RK_MUXROUTE_SAME(1, RK_PC6, 5, 0x314, BIT(16 + 12) | BIT(16 + 13) | BIT(12)), /* can_rxd_m1 */
+	RK_MUXROUTE_SAME(2, RK_PA2, 4, 0x314, BIT(16 + 12) | BIT(16 + 13) | BIT(13)), /* can_rxd_m2 */
+	RK_MUXROUTE_SAME(1, RK_PC4, 3, 0x314, BIT(16 + 14)), /* mac_rxd0_m0 */
+	RK_MUXROUTE_SAME(4, RK_PA2, 2, 0x314, BIT(16 + 14) | BIT(14)), /* mac_rxd0_m1 */
+	RK_MUXROUTE_SAME(3, RK_PB4, 4, 0x314, BIT(16 + 15)), /* uart3_rx */
+	RK_MUXROUTE_SAME(0, RK_PC1, 3, 0x314, BIT(16 + 15) | BIT(15)), /* uart3_rx_m1 */
+};
+
 static struct rockchip_mux_route_data rk3328_mux_route_data[] = {
 	RK_MUXROUTE_SAME(1, RK_PA1, 2, 0x50, BIT(16) | BIT(16 + 1)), /* uart2dbg_rxm0 */
 	RK_MUXROUTE_SAME(2, RK_PA1, 1, 0x50, BIT(16) | BIT(16 + 1) | BIT(0)), /* uart2dbg_rxm1 */
@@ -2420,6 +2558,7 @@ static int rockchip_get_pull(struct rockchip_pin_bank *bank, int pin_num)
 	case RK3188:
 	case RK3288:
 	case RK3308:
+	case RK3308B:
 	case RK3368:
 	case RK3399:
 	case RK3568:
@@ -2478,6 +2617,7 @@ static int rockchip_set_pull(struct rockchip_pin_bank *bank,
 	case RK3188:
 	case RK3288:
 	case RK3308:
+	case RK3308B:
 	case RK3368:
 	case RK3399:
 	case RK3568:
@@ -2740,6 +2880,7 @@ static bool rockchip_pinconf_pull_valid(struct rockchip_pin_ctrl *ctrl,
 	case RK3188:
 	case RK3288:
 	case RK3308:
+	case RK3308B:
 	case RK3368:
 	case RK3399:
 	case RK3568:
@@ -3338,6 +3479,42 @@ static int __maybe_unused rockchip_pinctrl_resume(struct device *dev)
 static SIMPLE_DEV_PM_OPS(rockchip_pinctrl_dev_pm_ops, rockchip_pinctrl_suspend,
 			 rockchip_pinctrl_resume);
 
+#define RK3308B_GRF_SOC_CON13			0x608
+#define RK3308B_GRF_SOC_CON15			0x610
+
+/* RK3308B_GRF_SOC_CON13 */
+#define RK3308B_GRF_I2C3_IOFUNC_SRC_CTRL	(BIT(16 + 10) | BIT(10))
+#define RK3308B_GRF_GPIO2A3_SEL_SRC_CTRL	(BIT(16 + 7)  | BIT(7))
+#define RK3308B_GRF_GPIO2A2_SEL_SRC_CTRL	(BIT(16 + 3)  | BIT(3))
+
+/* RK3308B_GRF_SOC_CON15 */
+#define RK3308B_GRF_GPIO2C0_SEL_SRC_CTRL	(BIT(16 + 11) | BIT(11))
+#define RK3308B_GRF_GPIO3B3_SEL_SRC_CTRL	(BIT(16 + 7)  | BIT(7))
+#define RK3308B_GRF_GPIO3B2_SEL_SRC_CTRL	(BIT(16 + 3)  | BIT(3))
+
+/*
+ * RK3308B has 3bit gpio##_sel_plus iomuxes over some 2bit old ones.
+ * Put them in use by initializing gpio##_sel_src_ctrl registers.
+ */
+static int rk3308b_soc_sel_src_init(struct rockchip_pinctrl *info)
+{
+	int ret;
+
+	ret = regmap_write(info->regmap_base, RK3308B_GRF_SOC_CON13,
+			   RK3308B_GRF_I2C3_IOFUNC_SRC_CTRL |
+			   RK3308B_GRF_GPIO2A3_SEL_SRC_CTRL |
+			   RK3308B_GRF_GPIO2A2_SEL_SRC_CTRL);
+	if (ret)
+		return ret;
+
+	ret = regmap_write(info->regmap_base, RK3308B_GRF_SOC_CON15,
+			   RK3308B_GRF_GPIO2C0_SEL_SRC_CTRL |
+			   RK3308B_GRF_GPIO3B3_SEL_SRC_CTRL |
+			   RK3308B_GRF_GPIO3B2_SEL_SRC_CTRL);
+
+	return ret;
+};
+
 static int rockchip_pinctrl_probe(struct platform_device *pdev)
 {
 	struct rockchip_pinctrl *info;
@@ -3403,6 +3580,12 @@ static int rockchip_pinctrl_probe(struct platform_device *pdev)
 			return PTR_ERR(info->regmap_pmu);
 	}
 
+	if (ctrl->type == RK3308B) {
+		ret = rk3308b_soc_sel_src_init(info);
+		if (ret)
+			return ret;
+	}
+
 	ret = rockchip_pinctrl_register(pdev, info);
 	if (ret)
 		return ret;
@@ -3746,6 +3929,21 @@ static struct rockchip_pin_ctrl rk3308_pin_ctrl = {
 		.schmitt_calc_reg	= rk3308_calc_schmitt_reg_and_bit,
 };
 
+static struct rockchip_pin_ctrl rk3308b_pin_ctrl = {
+		.pin_banks		= rk3308_pin_banks,
+		.nr_banks		= ARRAY_SIZE(rk3308_pin_banks),
+		.label			= "RK3308b-GPIO",
+		.type			= RK3308B,
+		.grf_mux_offset		= 0x0,
+		.iomux_recalced		= rk3308b_mux_recalced_data,
+		.niomux_recalced	= ARRAY_SIZE(rk3308b_mux_recalced_data),
+		.iomux_routes		= rk3308b_mux_route_data,
+		.niomux_routes		= ARRAY_SIZE(rk3308b_mux_route_data),
+		.pull_calc_reg		= rk3308_calc_pull_reg_and_bit,
+		.drv_calc_reg		= rk3308_calc_drv_reg_and_bit,
+		.schmitt_calc_reg	= rk3308_calc_schmitt_reg_and_bit,
+};
+
 static struct rockchip_pin_bank rk3328_pin_banks[] = {
 	PIN_BANK_IOMUX_FLAGS(0, 32, "gpio0", 0, 0, 0, 0),
 	PIN_BANK_IOMUX_FLAGS(1, 32, "gpio1", 0, 0, 0, 0),
@@ -3952,6 +4150,8 @@ static const struct of_device_id rockchip_pinctrl_dt_match[] = {
 		.data = &rk3288_pin_ctrl },
 	{ .compatible = "rockchip,rk3308-pinctrl",
 		.data = &rk3308_pin_ctrl },
+	{ .compatible = "rockchip,rk3308b-pinctrl",
+		.data = &rk3308b_pin_ctrl },
 	{ .compatible = "rockchip,rk3328-pinctrl",
 		.data = &rk3328_pin_ctrl },
 	{ .compatible = "rockchip,rk3368-pinctrl",
diff --git a/drivers/pinctrl/pinctrl-rockchip.h b/drivers/pinctrl/pinctrl-rockchip.h
index 4759f336941e..3af5b1bd626b 100644
--- a/drivers/pinctrl/pinctrl-rockchip.h
+++ b/drivers/pinctrl/pinctrl-rockchip.h
@@ -193,6 +193,7 @@ enum rockchip_pinctrl_type {
 	RK3188,
 	RK3288,
 	RK3308,
+	RK3308B,
 	RK3368,
 	RK3399,
 	RK3568,
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
