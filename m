Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B10B2C282C1
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Feb 2025 06:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eUiAxIdZqaigU+phfH6TwyYtPGvdFCxxPe0w3n1OP0Y=; b=YDrKKhLqv32+bw
	ESXmV5i5btmEyXcgAF7WXVeT82ckFQNEO9ZS+itW0cwS9AjgqEhobdsBhX1bDYwZmmwPJqtgObmof
	NEyC5S43irU4htK3G8PR+UuACvfXnu13fb5FL54CUzW+pvwdlHyZnhlvJb1W4GRIsUuLMI7Vx+J/P
	3clgATS5w+z4rVm5jdBtPFpepIrJQlniUrBKvsbDyxK6n2Z0rAZooHiwE5snMlCxv2ON8rNpvmBxB
	RCM0mlW4PDKyw/P2K3Ij3gUAVP0EvSYPUxurnOGV5gN7oObdIYMnEUzX8ryKh7z8DRQOpqpY3dKn3
	rAi4OHSaxByB23etkaIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnu9D-00000009trk-3Jt3;
	Fri, 28 Feb 2025 06:46:59 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnu3G-00000009t0s-2R1g
	for linux-rockchip@lists.infradead.org;
	Fri, 28 Feb 2025 06:40:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1740724848; bh=ReMG9IM/U1aD2slrBnAEbsViYSgz5/jCcUvBMlxCVew=;
 b=hBbyRbTLK+if3CIF4LAk/kPIJVqSo8JvKXfOHVbZPuUJg4J6uFJfG9f/jM93ubAZ0421JEDpS
 RaD41S3iEQMwDSdQ1IulNnpOT+mRzf7iAgvlaP01ftj9oEI3MLkUnf4T/0xCWGRlCZaJUcXfoMV
 QupE/q3G+7shIcprlDyymE6FPOkZ19C9ZeDtp9PWcl4M2I32LgVutT5Zo3IItZ1oPQY1IxWcGfT
 FvYQFkdARAi/+N025XsG+DAKr0jhj+SGFTH1876sxZ6d5g0LUGGh8hIzxawjFCCmFTYxCPS/KW3
 2EIhk2+pSPBSA/2lJLUL1fiODtk5M3FcqJfHTrXOuZCA==
X-Forward-Email-ID: 67c15a6bbcf1d1bd23db01d5
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Linus Walleij <linus.walleij@linaro.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yao Zi <ziyao@disroot.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	Steven Liu <steven.liu@rock-chips.com>
Subject: [PATCH 3/7] pinctrl: rockchip: Add support for RK3528
Date: Fri, 28 Feb 2025 06:40:09 +0000
Message-ID: <20250228064024.3200000-4-jonas@kwiboo.se>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250228064024.3200000-1-jonas@kwiboo.se>
References: <20250228064024.3200000-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_224050_670313_CE5BCE39 
X-CRM114-Status: GOOD (  15.44  )
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

From: Steven Liu <steven.liu@rock-chips.com>

Add gpio and pinctrl support for the 5 GPIO banks on RK3528.

Signed-off-by: Steven Liu <steven.liu@rock-chips.com>
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/pinctrl/pinctrl-rockchip.c | 160 ++++++++++++++++++++++++++++-
 drivers/pinctrl/pinctrl-rockchip.h |   1 +
 2 files changed, 160 insertions(+), 1 deletion(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 15145882950f..930c454e0cec 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -2003,6 +2003,115 @@ static int rk3399_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
 	return 0;
 }
 
+#define RK3528_DRV_BITS_PER_PIN		8
+#define RK3528_DRV_PINS_PER_REG		2
+#define RK3528_DRV_GPIO0_OFFSET		0x100
+#define RK3528_DRV_GPIO1_OFFSET		0x20120
+#define RK3528_DRV_GPIO2_OFFSET		0x30160
+#define RK3528_DRV_GPIO3_OFFSET		0x20190
+#define RK3528_DRV_GPIO4_OFFSET		0x101C0
+
+static int rk3528_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
+				       int pin_num, struct regmap **regmap,
+				       int *reg, u8 *bit)
+{
+	struct rockchip_pinctrl *info = bank->drvdata;
+
+	*regmap = info->regmap_base;
+
+	if (bank->bank_num == 0)
+		*reg = RK3528_DRV_GPIO0_OFFSET;
+	else if (bank->bank_num == 1)
+		*reg = RK3528_DRV_GPIO1_OFFSET;
+	else if (bank->bank_num == 2)
+		*reg = RK3528_DRV_GPIO2_OFFSET;
+	else if (bank->bank_num == 3)
+		*reg = RK3528_DRV_GPIO3_OFFSET;
+	else if (bank->bank_num == 4)
+		*reg = RK3528_DRV_GPIO4_OFFSET;
+	else
+		dev_err(info->dev, "unsupported bank_num %d\n", bank->bank_num);
+
+	*reg += ((pin_num / RK3528_DRV_PINS_PER_REG) * 4);
+	*bit = pin_num % RK3528_DRV_PINS_PER_REG;
+	*bit *= RK3528_DRV_BITS_PER_PIN;
+
+	return 0;
+}
+
+#define RK3528_PULL_BITS_PER_PIN		2
+#define RK3528_PULL_PINS_PER_REG		8
+#define RK3528_PULL_GPIO0_OFFSET		0x200
+#define RK3528_PULL_GPIO1_OFFSET		0x20210
+#define RK3528_PULL_GPIO2_OFFSET		0x30220
+#define RK3528_PULL_GPIO3_OFFSET		0x20230
+#define RK3528_PULL_GPIO4_OFFSET		0x10240
+
+static int rk3528_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
+					int pin_num, struct regmap **regmap,
+					int *reg, u8 *bit)
+{
+	struct rockchip_pinctrl *info = bank->drvdata;
+
+	*regmap = info->regmap_base;
+
+	if (bank->bank_num == 0)
+		*reg = RK3528_PULL_GPIO0_OFFSET;
+	else if (bank->bank_num == 1)
+		*reg = RK3528_PULL_GPIO1_OFFSET;
+	else if (bank->bank_num == 2)
+		*reg = RK3528_PULL_GPIO2_OFFSET;
+	else if (bank->bank_num == 3)
+		*reg = RK3528_PULL_GPIO3_OFFSET;
+	else if (bank->bank_num == 4)
+		*reg = RK3528_PULL_GPIO4_OFFSET;
+	else
+		dev_err(info->dev, "unsupported bank_num %d\n", bank->bank_num);
+
+	*reg += ((pin_num / RK3528_PULL_PINS_PER_REG) * 4);
+	*bit = pin_num % RK3528_PULL_PINS_PER_REG;
+	*bit *= RK3528_PULL_BITS_PER_PIN;
+
+	return 0;
+}
+
+#define RK3528_SMT_BITS_PER_PIN		1
+#define RK3528_SMT_PINS_PER_REG		8
+#define RK3528_SMT_GPIO0_OFFSET		0x400
+#define RK3528_SMT_GPIO1_OFFSET		0x20410
+#define RK3528_SMT_GPIO2_OFFSET		0x30420
+#define RK3528_SMT_GPIO3_OFFSET		0x20430
+#define RK3528_SMT_GPIO4_OFFSET		0x10440
+
+static int rk3528_calc_schmitt_reg_and_bit(struct rockchip_pin_bank *bank,
+					   int pin_num,
+					   struct regmap **regmap,
+					   int *reg, u8 *bit)
+{
+	struct rockchip_pinctrl *info = bank->drvdata;
+
+	*regmap = info->regmap_base;
+
+	if (bank->bank_num == 0)
+		*reg = RK3528_SMT_GPIO0_OFFSET;
+	else if (bank->bank_num == 1)
+		*reg = RK3528_SMT_GPIO1_OFFSET;
+	else if (bank->bank_num == 2)
+		*reg = RK3528_SMT_GPIO2_OFFSET;
+	else if (bank->bank_num == 3)
+		*reg = RK3528_SMT_GPIO3_OFFSET;
+	else if (bank->bank_num == 4)
+		*reg = RK3528_SMT_GPIO4_OFFSET;
+	else
+		dev_err(info->dev, "unsupported bank_num %d\n", bank->bank_num);
+
+	*reg += ((pin_num / RK3528_SMT_PINS_PER_REG) * 4);
+	*bit = pin_num % RK3528_SMT_PINS_PER_REG;
+	*bit *= RK3528_SMT_BITS_PER_PIN;
+
+	return 0;
+}
+
 #define RK3562_DRV_BITS_PER_PIN		8
 #define RK3562_DRV_PINS_PER_REG		2
 #define RK3562_DRV_GPIO0_OFFSET		0x20070
@@ -2640,7 +2749,8 @@ static int rockchip_set_drive_perpin(struct rockchip_pin_bank *bank,
 		rmask_bits = RK3588_DRV_BITS_PER_PIN;
 		ret = strength;
 		goto config;
-	} else if (ctrl->type == RK3562 ||
+	} else if (ctrl->type == RK3528 ||
+		   ctrl->type == RK3562 ||
 		   ctrl->type == RK3568) {
 		rmask_bits = RK3568_DRV_BITS_PER_PIN;
 		ret = (1 << (strength + 1)) - 1;
@@ -2785,6 +2895,7 @@ static int rockchip_get_pull(struct rockchip_pin_bank *bank, int pin_num)
 	case RK3328:
 	case RK3368:
 	case RK3399:
+	case RK3528:
 	case RK3562:
 	case RK3568:
 	case RK3576:
@@ -2846,6 +2957,7 @@ static int rockchip_set_pull(struct rockchip_pin_bank *bank,
 	case RK3328:
 	case RK3368:
 	case RK3399:
+	case RK3528:
 	case RK3562:
 	case RK3568:
 	case RK3576:
@@ -3115,6 +3227,7 @@ static bool rockchip_pinconf_pull_valid(struct rockchip_pin_ctrl *ctrl,
 	case RK3328:
 	case RK3368:
 	case RK3399:
+	case RK3528:
 	case RK3562:
 	case RK3568:
 	case RK3576:
@@ -4237,6 +4350,49 @@ static struct rockchip_pin_ctrl rk3399_pin_ctrl = {
 		.drv_calc_reg		= rk3399_calc_drv_reg_and_bit,
 };
 
+static struct rockchip_pin_bank rk3528_pin_banks[] = {
+	PIN_BANK_IOMUX_FLAGS_OFFSET(0, 32, "gpio0",
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    0, 0, 0, 0),
+	PIN_BANK_IOMUX_FLAGS_OFFSET(1, 32, "gpio1",
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    0x20020, 0x20028, 0x20030, 0x20038),
+	PIN_BANK_IOMUX_FLAGS_OFFSET(2, 32, "gpio2",
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    0x30040, 0, 0, 0),
+	PIN_BANK_IOMUX_FLAGS_OFFSET(3, 32, "gpio3",
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    0x20060, 0x20068, 0x20070, 0),
+	PIN_BANK_IOMUX_FLAGS_OFFSET(4, 32, "gpio4",
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    0x10080, 0x10088, 0x10090, 0x10098),
+};
+
+static struct rockchip_pin_ctrl rk3528_pin_ctrl = {
+	.pin_banks		= rk3528_pin_banks,
+	.nr_banks		= ARRAY_SIZE(rk3528_pin_banks),
+	.label			= "RK3528-GPIO",
+	.type			= RK3528,
+	.pull_calc_reg		= rk3528_calc_pull_reg_and_bit,
+	.drv_calc_reg		= rk3528_calc_drv_reg_and_bit,
+	.schmitt_calc_reg	= rk3528_calc_schmitt_reg_and_bit,
+};
+
 static struct rockchip_pin_bank rk3562_pin_banks[] = {
 	PIN_BANK_IOMUX_FLAGS_OFFSET(0, 32, "gpio0",
 				    IOMUX_WIDTH_4BIT,
@@ -4404,6 +4560,8 @@ static const struct of_device_id rockchip_pinctrl_dt_match[] = {
 		.data = &rk3368_pin_ctrl },
 	{ .compatible = "rockchip,rk3399-pinctrl",
 		.data = &rk3399_pin_ctrl },
+	{ .compatible = "rockchip,rk3528-pinctrl",
+		.data = &rk3528_pin_ctrl },
 	{ .compatible = "rockchip,rk3562-pinctrl",
 		.data = &rk3562_pin_ctrl },
 	{ .compatible = "rockchip,rk3568-pinctrl",
diff --git a/drivers/pinctrl/pinctrl-rockchip.h b/drivers/pinctrl/pinctrl-rockchip.h
index 87a20cec8e21..35cd38079d1e 100644
--- a/drivers/pinctrl/pinctrl-rockchip.h
+++ b/drivers/pinctrl/pinctrl-rockchip.h
@@ -196,6 +196,7 @@ enum rockchip_pinctrl_type {
 	RK3328,
 	RK3368,
 	RK3399,
+	RK3528,
 	RK3562,
 	RK3568,
 	RK3576,
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
