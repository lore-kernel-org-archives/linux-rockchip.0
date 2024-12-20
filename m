Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E836E7718C
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Dec 2024 11:14:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ITbAnxmUryk23//zMCae4fi2bcLgZt4Xmmo1mBiXMQ=; b=oBE/Jecrg9CtoV
	zTg53+ZB0KMWZ0XF6jEFkrTffNF0OLUQAJ11c15c1aqSJCYlyL6f+U91zG8Q4dvyEUv5N8jg/zfnR
	mlRTJCPV/w39KSp/Nk9bFq5KVs/FuR7hmkIW/lncBKvYNZvIs8654AP/rhbjQ4bVqeAUCS/0Qg6uz
	COjE1Vj777GnNFa6JY+YkoK1xzrEM0+dBoKHMmQpTRnr5MdSZaKYL4ePmjKrgeAX/e8nB9qaxpQAq
	b/n09Mg/cK6cjOrC2vcA45rrCrrpb1B/rmburnR77bQ4Y3ulsdSzxFLHKBWmR5I8/VKHuwN6cxCNz
	Mygob/zOFIfYB5XoZ/yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOaxs-00000004irw-3W2M;
	Fri, 20 Dec 2024 11:14:40 +0000
Received: from mail-m49220.qiye.163.com ([45.254.49.220])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOanj-00000004f5M-2YZY
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Dec 2024 11:04:13 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 657128bf;
	Fri, 20 Dec 2024 19:04:08 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>
Subject: [PATCH 05/38] pinctrl: rockchip: add rk3562 support
Date: Fri, 20 Dec 2024 19:04:03 +0800
Message-Id: <20241220110407.3511882-1-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241220103825.3509421-1-kever.yang@rock-chips.com>
References: <20241220103825.3509421-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGk0ZT1ZNQ04dQ0oeHxlKTh5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a93e3bd34d003afkunm657128bf
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Nww6Chw4DDIJMgg4CEs2SU8p
	VhQwCghVSlVKTEhPTUJJTU9DQ0NNVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFDTEhPNwY+
DKIM-Signature: a=rsa-sha256;
	b=hjF6sW79+NSPpiCSgQk10b5VG49mTIDPZwsGCV94kUf3dTREf7//DBYXUFgUlulN8HrOW/5OVDCWoEistpycM5A5QzPrPNDZBpSu3eRPh+x2weFyr/zcPa3hlsl8UPrTSfCgXXyR/vIwr070KS5aXOWjQIXuuJIEEwSZGTPwPBE=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=MylUr/7/1PY7Mvl/DqiHiV2wQ0TIr86/3AR0S4fhsiY=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_030412_059165_18E2297E 
X-CRM114-Status: GOOD (  14.71  )
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

Add support for the 5 GPIO banks in the rk3562.

Signed-off-by: Steven Liu <steven.liu@rock-chips.com>
Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

 drivers/pinctrl/pinctrl-rockchip.c | 199 ++++++++++++++++++++++++++++-
 drivers/pinctrl/pinctrl-rockchip.h |   3 +-
 2 files changed, 200 insertions(+), 2 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 36d4eaf0ebd1..c919437a1dbc 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
  * Pinctrl driver for Rockchip SoCs
+ * Copyright (c) 2020-2024 Rockchip Electronics Co., Ltd.
  *
  * Copyright (c) 2013 MundoReader S.L.
  * Author: Heiko Stuebner <heiko@sntech.de>
@@ -2003,6 +2004,151 @@ static int rk3399_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
 	return 0;
 }
 
+#define RK3562_DRV_BITS_PER_PIN		8
+#define RK3562_DRV_PINS_PER_REG		2
+#define RK3562_DRV_GPIO0_OFFSET		0x20070
+#define RK3562_DRV_GPIO1_OFFSET		0x200
+#define RK3562_DRV_GPIO2_OFFSET		0x240
+#define RK3562_DRV_GPIO3_OFFSET		0x10280
+#define RK3562_DRV_GPIO4_OFFSET		0x102C0
+
+static int rk3562_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
+				       int pin_num, struct regmap **regmap,
+				       int *reg, u8 *bit)
+{
+	struct rockchip_pinctrl *info = bank->drvdata;
+
+	*regmap = info->regmap_base;
+	switch (bank->bank_num) {
+	case 0:
+		*reg = RK3562_DRV_GPIO0_OFFSET;
+		break;
+
+	case 1:
+		*reg = RK3562_DRV_GPIO1_OFFSET;
+		break;
+
+	case 2:
+		*reg = RK3562_DRV_GPIO2_OFFSET;
+		break;
+
+	case 3:
+		*reg = RK3562_DRV_GPIO3_OFFSET;
+		break;
+
+	case 4:
+		*reg = RK3562_DRV_GPIO4_OFFSET;
+		break;
+
+	default:
+		dev_err(info->dev, "unsupported bank_num %d\n", bank->bank_num);
+		break;
+	}
+
+	*reg += ((pin_num / RK3562_DRV_PINS_PER_REG) * 4);
+	*bit = pin_num % RK3562_DRV_PINS_PER_REG;
+	*bit *= RK3562_DRV_BITS_PER_PIN;
+
+	return 0;
+}
+
+#define RK3562_PULL_BITS_PER_PIN		2
+#define RK3562_PULL_PINS_PER_REG		8
+#define RK3562_PULL_GPIO0_OFFSET		0x20020
+#define RK3562_PULL_GPIO1_OFFSET		0x80
+#define RK3562_PULL_GPIO2_OFFSET		0x90
+#define RK3562_PULL_GPIO3_OFFSET		0x100A0
+#define RK3562_PULL_GPIO4_OFFSET		0x100B0
+
+static int rk3562_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
+					int pin_num, struct regmap **regmap,
+					int *reg, u8 *bit)
+{
+	struct rockchip_pinctrl *info = bank->drvdata;
+
+	*regmap = info->regmap_base;
+	switch (bank->bank_num) {
+	case 0:
+		*reg = RK3562_PULL_GPIO0_OFFSET;
+		break;
+
+	case 1:
+		*reg = RK3562_PULL_GPIO1_OFFSET;
+		break;
+
+	case 2:
+		*reg = RK3562_PULL_GPIO2_OFFSET;
+		break;
+
+	case 3:
+		*reg = RK3562_PULL_GPIO3_OFFSET;
+		break;
+
+	case 4:
+		*reg = RK3562_PULL_GPIO4_OFFSET;
+		break;
+
+	default:
+		dev_err(info->dev, "unsupported bank_num %d\n", bank->bank_num);
+		break;
+	}
+
+	*reg += ((pin_num / RK3562_PULL_PINS_PER_REG) * 4);
+	*bit = pin_num % RK3562_PULL_PINS_PER_REG;
+	*bit *= RK3562_PULL_BITS_PER_PIN;
+
+	return 0;
+}
+
+#define RK3562_SMT_BITS_PER_PIN		2
+#define RK3562_SMT_PINS_PER_REG		8
+#define RK3562_SMT_GPIO0_OFFSET		0x20030
+#define RK3562_SMT_GPIO1_OFFSET		0xC0
+#define RK3562_SMT_GPIO2_OFFSET		0xD0
+#define RK3562_SMT_GPIO3_OFFSET		0x100E0
+#define RK3562_SMT_GPIO4_OFFSET		0x100F0
+
+static int rk3562_calc_schmitt_reg_and_bit(struct rockchip_pin_bank *bank,
+					   int pin_num,
+					   struct regmap **regmap,
+					   int *reg, u8 *bit)
+{
+	struct rockchip_pinctrl *info = bank->drvdata;
+
+	*regmap = info->regmap_base;
+	switch (bank->bank_num) {
+	case 0:
+		*reg = RK3562_SMT_GPIO0_OFFSET;
+		break;
+
+	case 1:
+		*reg = RK3562_SMT_GPIO1_OFFSET;
+		break;
+
+	case 2:
+		*reg = RK3562_SMT_GPIO2_OFFSET;
+		break;
+
+	case 3:
+		*reg = RK3562_SMT_GPIO3_OFFSET;
+		break;
+
+	case 4:
+		*reg = RK3562_SMT_GPIO4_OFFSET;
+		break;
+
+	default:
+		dev_err(info->dev, "unsupported bank_num %d\n", bank->bank_num);
+		break;
+	}
+
+	*reg += ((pin_num / RK3562_SMT_PINS_PER_REG) * 4);
+	*bit = pin_num % RK3562_SMT_PINS_PER_REG;
+	*bit *= RK3562_SMT_BITS_PER_PIN;
+
+	return 0;
+}
+
 #define RK3568_PULL_PMU_OFFSET		0x20
 #define RK3568_PULL_GRF_OFFSET		0x80
 #define RK3568_PULL_BITS_PER_PIN	2
@@ -2495,7 +2641,8 @@ static int rockchip_set_drive_perpin(struct rockchip_pin_bank *bank,
 		rmask_bits = RK3588_DRV_BITS_PER_PIN;
 		ret = strength;
 		goto config;
-	} else if (ctrl->type == RK3568) {
+	} else if (ctrl->type == RK3562 ||
+		   ctrl->type == RK3568) {
 		rmask_bits = RK3568_DRV_BITS_PER_PIN;
 		ret = (1 << (strength + 1)) - 1;
 		goto config;
@@ -2639,6 +2786,7 @@ static int rockchip_get_pull(struct rockchip_pin_bank *bank, int pin_num)
 	case RK3328:
 	case RK3368:
 	case RK3399:
+	case RK3562:
 	case RK3568:
 	case RK3576:
 	case RK3588:
@@ -2699,6 +2847,7 @@ static int rockchip_set_pull(struct rockchip_pin_bank *bank,
 	case RK3328:
 	case RK3368:
 	case RK3399:
+	case RK3562:
 	case RK3568:
 	case RK3576:
 	case RK3588:
@@ -2810,6 +2959,7 @@ static int rockchip_get_schmitt(struct rockchip_pin_bank *bank, int pin_num)
 
 	data >>= bit;
 	switch (ctrl->type) {
+	case RK3562:
 	case RK3568:
 		return data & ((1 << RK3568_SCHMITT_BITS_PER_PIN) - 1);
 	default:
@@ -2839,6 +2989,7 @@ static int rockchip_set_schmitt(struct rockchip_pin_bank *bank,
 
 	/* enable the write to the equivalent lower bits */
 	switch (ctrl->type) {
+	case RK3562:
 	case RK3568:
 		data = ((1 << RK3568_SCHMITT_BITS_PER_PIN) - 1) << (bit + 16);
 		rmask = data | (data >> 16);
@@ -2965,6 +3116,7 @@ static bool rockchip_pinconf_pull_valid(struct rockchip_pin_ctrl *ctrl,
 	case RK3328:
 	case RK3368:
 	case RK3399:
+	case RK3562:
 	case RK3568:
 	case RK3576:
 	case RK3588:
@@ -4086,6 +4238,49 @@ static struct rockchip_pin_ctrl rk3399_pin_ctrl = {
 		.drv_calc_reg		= rk3399_calc_drv_reg_and_bit,
 };
 
+static struct rockchip_pin_bank rk3562_pin_banks[] = {
+	PIN_BANK_IOMUX_FLAGS_OFFSET(0, 32, "gpio0",
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    0x20000, 0x20008, 0x20010, 0x20018),
+	PIN_BANK_IOMUX_FLAGS_OFFSET(1, 32, "gpio1",
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    0, 0x08, 0x10, 0x18),
+	PIN_BANK_IOMUX_FLAGS_OFFSET(2, 32, "gpio2",
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    0x20, 0, 0, 0),
+	PIN_BANK_IOMUX_FLAGS_OFFSET(3, 32, "gpio3",
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    0x10040, 0x10048, 0x10050, 0x10058),
+	PIN_BANK_IOMUX_FLAGS_OFFSET(4, 16, "gpio4",
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    0,
+				    0,
+				    0x10060, 0x10068, 0, 0),
+};
+
+static struct rockchip_pin_ctrl rk3562_pin_ctrl __maybe_unused = {
+	.pin_banks		= rk3562_pin_banks,
+	.nr_banks		= ARRAY_SIZE(rk3562_pin_banks),
+	.label			= "RK3562-GPIO",
+	.type			= RK3562,
+	.pull_calc_reg		= rk3562_calc_pull_reg_and_bit,
+	.drv_calc_reg		= rk3562_calc_drv_reg_and_bit,
+	.schmitt_calc_reg	= rk3562_calc_schmitt_reg_and_bit,
+};
+
 static struct rockchip_pin_bank rk3568_pin_banks[] = {
 	PIN_BANK_IOMUX_FLAGS(0, 32, "gpio0", IOMUX_SOURCE_PMU | IOMUX_WIDTH_4BIT,
 					     IOMUX_SOURCE_PMU | IOMUX_WIDTH_4BIT,
@@ -4210,6 +4405,8 @@ static const struct of_device_id rockchip_pinctrl_dt_match[] = {
 		.data = &rk3368_pin_ctrl },
 	{ .compatible = "rockchip,rk3399-pinctrl",
 		.data = &rk3399_pin_ctrl },
+	{ .compatible = "rockchip,rk3562-pinctrl",
+		.data = &rk3562_pin_ctrl },
 	{ .compatible = "rockchip,rk3568-pinctrl",
 		.data = &rk3568_pin_ctrl },
 	{ .compatible = "rockchip,rk3576-pinctrl",
diff --git a/drivers/pinctrl/pinctrl-rockchip.h b/drivers/pinctrl/pinctrl-rockchip.h
index 6ebbb0a88ce7..87a20cec8e21 100644
--- a/drivers/pinctrl/pinctrl-rockchip.h
+++ b/drivers/pinctrl/pinctrl-rockchip.h
@@ -1,6 +1,6 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * Copyright (c) 2020-2021 Rockchip Electronics Co. Ltd.
+ * Copyright (c) 2020-2024 Rockchip Electronics Co., Ltd.
  *
  * Copyright (c) 2013 MundoReader S.L.
  * Author: Heiko Stuebner <heiko@sntech.de>
@@ -196,6 +196,7 @@ enum rockchip_pinctrl_type {
 	RK3328,
 	RK3368,
 	RK3399,
+	RK3562,
 	RK3568,
 	RK3576,
 	RK3588,
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
