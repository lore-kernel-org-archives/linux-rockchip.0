Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6613CC25B75
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 May 2024 14:45:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JIAYfDZ5pAAdw1rMsjtdlwezaAIewHwjzdC3iY5KIXY=; b=Q3Wo1mYgwn59Hx
	qsNx00IMw4Fgr5Ntcxfs8uk7Y440J4Dy4SqPqqx+Vf/HArlWxWyF0gt+QHX6ZgoHEfpjsevowYHim
	reAE/ZODXaXSOXJst3WyaVMxMa/T6pXgmmj0r+PnE302f9R1775HUeC3QvPsFrkEZ/wbazVh5GyKG
	fU0qwoCsDA0ulA2udEYfMHpLYU0f4IbkNK6/eQqTcUrohCCDJJUBbSmAk9m+L1PiL3Ko2Eo7UVvyj
	k+jSJ2sRjvOK2I7TvGKmPntwiAqt55uliOIe67L8Jhf55kLF7wf0+Hbp5Nns2N3P6qoJiVUCNW/j+
	Bab3/Nt6IQF2fTqQ8/HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCKXz-00000004XFI-3ED1;
	Wed, 29 May 2024 14:44:59 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCKXk-00000004X68-2LPg;
	Wed, 29 May 2024 14:44:45 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-52b27afe214so128e87.1;
        Wed, 29 May 2024 07:44:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716993882; x=1717598682; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fgB23vKcow7QnQ1mmlyRwIrojERGh2ECUWAs0egDdog=;
        b=adun9555PH1Ic1IZGAUyX5p40ZYjOS5NJ+YMsIWberU+vgBLeSVevVDCD9NoM0q1kO
         oU8y0CBDZseoA5AbMqkO2NzkYJvx5ft96V4SezK6vgugUM0jX59fVvTXrfALp4M3QqcK
         ZOmcwTNYmJa74SiSW90AQz1Wz+4fDSs4QitXB8mJgTYunqZlR81hew2T1nU1zhPIdd7P
         4S2bRUNbxjEBhG7O1YPEzT5WuI5JwLYFwFIGOBD5HicLbtve8myPC30pcWivrEZKvTvr
         nFbW2rS6HMkFlIUBuNe9n+r+8cISkbl4coDUwlacBdUehTDr2O86y5fogOh5u7fhs1IN
         a/SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716993882; x=1717598682;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fgB23vKcow7QnQ1mmlyRwIrojERGh2ECUWAs0egDdog=;
        b=fWKztA5xTMLKyKH07PLfxcM9gOxg4KOW9xzgsGnswp1EcMPbFgeWKOHbwyY8nUS/JA
         SFM+edv+ScvFM3hOLFh83Gw2EXZVdghmn640ZbQ5tiO9WPN6HlAdG6lbAMi41jKrik6Y
         2xO/vhDl3/XXap3rBFcplihEa8PAyKu7IooBG2hyfW+9Fqv3BcdeZB2RHge+1wvzDZXj
         m+KpwSDABNnkojAfo1A2lB8loUGGDo67OmxAPujNyTfI8/UyB1a1NveUeJLvL79XqpFj
         q6EEk/g7sy980WaZfF+gawFodb6CpDvMrjW1qDum9kWhxqWAIO/Btp+sroeIs9h5KNle
         bjtg==
X-Forwarded-Encrypted: i=1; AJvYcCUOhCUHPqq8La+uzt8WjSLnVuhnoQYmW8YUWrZWR95Ye9we6BdMiCDmZ3EKrGuMfVbXY/MOrR5lZsl6f2uNBncsjIb/5mIqUgA5ejx4PhjVKL5+dc91ATzRlKWFmlMJ3F94+nKzW2EUsGhks5IOx4jMSINoq3xapPk=
X-Gm-Message-State: AOJu0Yz859qD+Qe629zkFquhPDAmlHpuk+SF0YiM4ZrMuXgCRiVBVior
	B+zLiV3+JqB2fSPJ9xyAaSVQ5t1A5nwAMDv0LkNGjktYfOpL73AS
X-Google-Smtp-Source: AGHT+IGq0angoA+k/9hNkfevqbRCbrHyt1FB3mZ0p8maQzNbTG1/SbqWABuQ8jwgmDQpwNS5qunqcQ==
X-Received: by 2002:a05:6512:4010:b0:523:88a9:86bf with SMTP id 2adb3069b0e04-52a84127ba6mr876206e87.31.1716993881763;
        Wed, 29 May 2024 07:44:41 -0700 (PDT)
Received: from yoga-710.tas.nnz-ipc.net ([178.218.200.115])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-529ac903bd9sm928915e87.236.2024.05.29.07.44.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 May 2024 07:44:41 -0700 (PDT)
From: Dmitry Yashin <dmt.yashin@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Jianqun Xu <jay.xu@rock-chips.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	devicetree@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dmitry Yashin <dmt.yashin@gmail.com>
Subject: [PATCH v2 2/2] pinctrl: rockchip: add rk3308b SoC support
Date: Wed, 29 May 2024 19:35:34 +0500
Message-ID: <20240529143534.32402-3-dmt.yashin@gmail.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240529143534.32402-1-dmt.yashin@gmail.com>
References: <20240529143534.32402-1-dmt.yashin@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240529_074444_695788_F9092A7D 
X-CRM114-Status: GOOD (  19.24  )
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
rk3308b_soc_sel_src_init to use new 3bit iomuxes over some 2bit old
ones and update iomux_recalced and iomux_routes for the new SoC's.

Fixes: 1f3e25a06883 ("pinctrl: rockchip: fix RK3308 pinmux bits")
Signed-off-by: Dmitry Yashin <dmt.yashin@gmail.com>
---
 drivers/pinctrl/pinctrl-rockchip.c | 234 +++++++++++++++++++++++++++++
 drivers/pinctrl/pinctrl-rockchip.h |   1 +
 2 files changed, 235 insertions(+)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index c290c755b4fb..e3b6e22c5dce 100644
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
@@ -3348,6 +3489,93 @@ static int __maybe_unused rockchip_pinctrl_resume(struct device *dev)
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
+#define RK3308_GRF_CHIP_ID			0x800
+
+static int rk3308_soc_update_type(struct rockchip_pinctrl *info)
+{
+	struct rockchip_pin_ctrl *ctrl = info->ctrl;
+	unsigned int chip_id;
+	int ret;
+
+	ret = regmap_read(info->regmap_base, RK3308_GRF_CHIP_ID, &chip_id);
+	if (ret)
+		return ret;
+
+	switch (chip_id) {
+	/* From RK3308 TRM: "Errata: The read only chip id value is 32'h0cea(32'd3306)" */
+	case 0xcea:
+		break;
+	case 0x3308:
+	case 0x3308c:
+		ctrl->type = RK3308B;
+		break;
+	default:
+		return dev_err_probe(info->dev, -EINVAL, "Unknown chip_id: 0x%x\n", chip_id);
+	}
+
+	return 0;
+}
+
+static int rk3308_soc_data_update(struct rockchip_pinctrl *info)
+{
+	struct rockchip_pin_ctrl *ctrl = info->ctrl;
+	int ret;
+
+	ret = rk3308_soc_update_type(info);
+	if (ret)
+		return ret;
+
+	if (ctrl->type == RK3308B) {
+		/* Replace iomux data for RK3308B and RK3308BS */
+		ctrl->iomux_recalced	= rk3308b_mux_recalced_data;
+		ctrl->niomux_recalced	= ARRAY_SIZE(rk3308b_mux_recalced_data);
+		ctrl->iomux_routes	= rk3308b_mux_route_data;
+		ctrl->niomux_routes	= ARRAY_SIZE(rk3308b_mux_route_data);
+		
+		ret = rk3308b_soc_sel_src_init(info);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
 static int rockchip_pinctrl_probe(struct platform_device *pdev)
 {
 	struct rockchip_pinctrl *info;
@@ -3413,6 +3641,12 @@ static int rockchip_pinctrl_probe(struct platform_device *pdev)
 			return PTR_ERR(info->regmap_pmu);
 	}
 
+	if (ctrl->type == RK3308) {
+		ret = rk3308_soc_data_update(info);
+		if (ret)
+			return ret;
+	}
+
 	iomux_recalced_routes_init(info);
 
 	ret = rockchip_pinctrl_register(pdev, info);
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
