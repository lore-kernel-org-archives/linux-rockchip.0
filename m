Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B23F3C6FA89
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Sep 2022 17:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KFhR1m8+rrb4Xzn2EjxpQKX0gbFl1PXcdBC+4OZfC80=; b=lbyLQ8r4OknKhS
	PrOprKN6nizvobkRQjpS0rO1KA5XJ30Wbrb+p/OZaqB5N1V6yZ0Qa0d2DHhzyMRe3G4k0ZgqBvd0S
	Cwn0FJJyZ5xZuZtHTF34gd9bFXP+F6MArfAXLVbxzWhbUd/bPGklsCBRIRwftlvpaCNN5o6YXaVOR
	j+m/v/FdWPQcMXCdvFSyYAy+qj9DnugWYks4PV2PMv+dnE2HFq522bEI93nNeKDxgcXzOBgyPxSk+
	GVyUKldfwcM0xeKnfeV0jtzZjsJd/BXIm1E0EzabxD/eiEJSdBZABSlB8v6KAI2l1P908/7j7F5yT
	68Qb0OETcMEF9TyNpnXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWiEE-000u56-JV; Fri, 09 Sep 2022 17:55:46 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWiE5-000trl-NQ
	for linux-rockchip@lists.infradead.org; Fri, 09 Sep 2022 17:55:44 +0000
Received: from jupiter.universe (dyndsl-095-033-168-128.ewe-ip-backbone.de [95.33.168.128])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 3D6A76601FE0;
	Fri,  9 Sep 2022 18:55:31 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1662746131;
	bh=JNPxai7cOZMIPUxxvmS6kOUL/Q9l7Ebx7wIYIytJdMQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=d9C9H53Rgz2Zk3dY0Uq5NTz1UoDv0G+vysGNf+uUPeptGFY8U7a4tx+aIj+2yHVEc
	 wMyIL6F5bxaRDom0GV2zKNrDSRABItSlz3ctS8fhEoGCQamV+Zu7voFAYE3mBatuRU
	 y2ZYrcu8cFWLCjfd/i41lTIDGb0trvrpZM374TnRKcPq+u2XS/dd59Pab1vqVLTF1q
	 Km2Jhk+vR1Nx/mVjDb0h19ycoEeNcHbfEkgSytXAKn2DPKpkMkZiNYsVsefzORpr70
	 W9YcNl2OJ0eymIuatFiQEP4K7SYyKGF91ooDSvoEuphIIyUHsrgQxkIIYWFYbreoxz
	 GXtdpr+z8+UDg==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 2ECA34805A7; Fri,  9 Sep 2022 19:55:27 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lee Jones <lee@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com,
	shengfei Xu <xsf@rock-chips.com>
Subject: [PATCHv3 13/14] regulator: rk808: add rk806 support
Date: Fri,  9 Sep 2022 19:55:21 +0200
Message-Id: <20220909175522.179175-14-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220909175522.179175-1-sebastian.reichel@collabora.com>
References: <20220909175522.179175-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_105538_106703_1D531AB0 
X-CRM114-Status: GOOD (  21.45  )
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

Add rk806 support to the existing rk808 regulator
driver.

This has been implemented using shengfei Xu's rk806
specific driver from the vendor tree as reference.

Co-Developed-by: shengfei Xu <xsf@rock-chips.com>
Signed-off-by: shengfei Xu <xsf@rock-chips.com>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/regulator/rk808-regulator.c | 384 ++++++++++++++++++++++++++++
 1 file changed, 384 insertions(+)

diff --git a/drivers/regulator/rk808-regulator.c b/drivers/regulator/rk808-regulator.c
index fa9fc1aa1ae3..8ef276ef44e3 100644
--- a/drivers/regulator/rk808-regulator.c
+++ b/drivers/regulator/rk808-regulator.c
@@ -3,9 +3,11 @@
  * Regulator driver for Rockchip RK805/RK808/RK818
  *
  * Copyright (c) 2014, Fuzhou Rockchip Electronics Co., Ltd
+ * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
  *
  * Author: Chris Zhong <zyw@rock-chips.com>
  * Author: Zhang Qing <zhangqing@rock-chips.com>
+ * Author: Xu Shengfei <xsf@rock-chips.com>
  *
  * Copyright (C) 2016 PHYTEC Messtechnik GmbH
  *
@@ -39,6 +41,13 @@
 #define RK818_LDO3_ON_VSEL_MASK		0xf
 #define RK818_BOOST_ON_VSEL_MASK	0xe0
 
+#define RK806_DCDC_SLP_REG_OFFSET	0x0A
+#define RK806_NLDO_SLP_REG_OFFSET	0x05
+#define RK806_PLDO_SLP_REG_OFFSET	0x06
+
+#define RK806_BUCK_SEL_CNT		0xff
+#define RK806_LDO_SEL_CNT		0xff
+
 /* Ramp rate definitions for buck1 / buck2 only */
 #define RK808_RAMP_RATE_OFFSET		3
 #define RK808_RAMP_RATE_MASK		(3 << RK808_RAMP_RATE_OFFSET)
@@ -117,6 +126,34 @@
 	RK8XX_DESC_COM(_id, _match, _supply, _min, _max, _step, _vreg,	\
 	_vmask, _ereg, _emask, 0, 0, _etime, &rk805_reg_ops)
 
+#define RK806_REGULATOR(_name, _supply_name, _id, _ops,\
+			_n_voltages, _vr, _er, _lr, ctrl_bit,\
+			_rr, _rm, _rt)\
+[_id] = {\
+		.name = _name,\
+		.supply_name = _supply_name,\
+		.of_match = of_match_ptr(_name),\
+		.regulators_node = of_match_ptr("regulators"),\
+		.id = _id,\
+		.ops = &_ops,\
+		.type = REGULATOR_VOLTAGE,\
+		.n_voltages = _n_voltages,\
+		.linear_ranges = _lr,\
+		.n_linear_ranges = ARRAY_SIZE(_lr),\
+		.vsel_reg = _vr,\
+		.vsel_mask = 0xff,\
+		.enable_reg = _er,\
+		.enable_mask = ENABLE_MASK(ctrl_bit),\
+		.enable_val = ENABLE_MASK(ctrl_bit),\
+		.disable_val = DISABLE_VAL(ctrl_bit),\
+		.of_map_mode = rk8xx_regulator_of_map_mode,\
+		.ramp_reg = _rr,\
+		.ramp_mask = _rm,\
+		.ramp_delay_table = _rt, \
+		.n_ramp_values = ARRAY_SIZE(_rt), \
+		.owner = THIS_MODULE,\
+	}
+
 #define RK8XX_DESC(_id, _match, _supply, _min, _max, _step, _vreg,	\
 	_vmask, _ereg, _emask, _etime)					\
 	RK8XX_DESC_COM(_id, _match, _supply, _min, _max, _step, _vreg,	\
@@ -153,6 +190,17 @@
 	RKXX_DESC_SWITCH_COM(_id, _match, _supply, _ereg, _emask,	\
 	0, 0, &rk808_switch_ops)
 
+struct rk8xx_register_bit {
+	u8 reg;
+	u8 bit;
+};
+
+#define RK8XX_REG_BIT(_reg, _bit)					\
+	{								\
+		.reg = _reg,						\
+		.bit = BIT(_bit),						\
+	}
+
 struct rk808_regulator_data {
 	struct gpio_desc *dvs_gpio[2];
 };
@@ -216,6 +264,133 @@ static const unsigned int rk817_buck1_4_ramp_table[] = {
 	3000, 6300, 12500, 25000
 };
 
+static int rk806_set_mode_dcdc(struct regulator_dev *rdev, unsigned int mode)
+{
+	int rid = rdev_get_id(rdev);
+	int ctr_bit, reg;
+
+	reg = RK806_POWER_FPWM_EN0 + rid / 8;
+	ctr_bit = rid % 8;
+
+	switch (mode) {
+	case REGULATOR_MODE_FAST:
+		return regmap_update_bits(rdev->regmap, reg,
+					  PWM_MODE_MSK << ctr_bit,
+					  FPWM_MODE << ctr_bit);
+	case REGULATOR_MODE_NORMAL:
+		return regmap_update_bits(rdev->regmap, reg,
+					  PWM_MODE_MSK << ctr_bit,
+					  AUTO_PWM_MODE << ctr_bit);
+	default:
+		dev_err(rdev_get_dev(rdev), "mode unsupported: %u\n", mode);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static unsigned int rk806_get_mode_dcdc(struct regulator_dev *rdev)
+{
+	int rid = rdev_get_id(rdev);
+	int ctr_bit, reg;
+	unsigned int val;
+	int err;
+
+	reg = RK806_POWER_FPWM_EN0 + rid / 8;
+	ctr_bit = rid % 8;
+
+	err = regmap_read(rdev->regmap, reg, &val);
+	if (err)
+		return err;
+
+	if ((val >> ctr_bit) & FPWM_MODE)
+		return REGULATOR_MODE_FAST;
+	else
+		return REGULATOR_MODE_NORMAL;
+}
+
+static const struct rk8xx_register_bit rk806_dcdc_rate2[] = {
+	RK8XX_REG_BIT(0xEB, 0),
+	RK8XX_REG_BIT(0xEB, 1),
+	RK8XX_REG_BIT(0xEB, 2),
+	RK8XX_REG_BIT(0xEB, 3),
+	RK8XX_REG_BIT(0xEB, 4),
+	RK8XX_REG_BIT(0xEB, 5),
+	RK8XX_REG_BIT(0xEB, 6),
+	RK8XX_REG_BIT(0xEB, 7),
+	RK8XX_REG_BIT(0xEA, 0),
+	RK8XX_REG_BIT(0xEA, 1),
+};
+
+static const unsigned int rk806_ramp_delay_table_dcdc[] = {
+	50000, 25000, 12500, 6250, 3125, 1560, 961, 390
+};
+
+static int rk806_set_ramp_delay_dcdc(struct regulator_dev *rdev, int ramp_delay)
+{
+	int rid = rdev_get_id(rdev);
+	int regval, ramp_value, ret;
+
+	ret = regmap_find_closest_bigger(ramp_delay, rdev->desc->ramp_delay_table,
+					 rdev->desc->n_ramp_values, &ramp_value);
+	if (ret) {
+		dev_warn(rdev_get_dev(rdev),
+			 "Can't set ramp-delay %u, setting %u\n", ramp_delay,
+			 rdev->desc->ramp_delay_table[ramp_value]);
+	}
+
+	regval = ramp_value << (ffs(rdev->desc->ramp_mask) - 1);
+
+	ret = regmap_update_bits(rdev->regmap, rdev->desc->ramp_reg,
+				 rdev->desc->ramp_mask, regval);
+	if (ret)
+		return ret;
+
+	/*
+	 * The above is effectively a copy of regulator_set_ramp_delay_regmap(),
+	 * but that only stores the lower 2 bits for rk806 DCDC ramp. The MSB must
+	 * be stored in a separate register, so this open codes the implementation
+	 * to have access to the ramp_value.
+	 */
+
+	regval = (ramp_value >> 2) & 0x1 ? rk806_dcdc_rate2[rid].bit : 0;
+	return regmap_update_bits(rdev->regmap, rk806_dcdc_rate2[rid].reg,
+				  rk806_dcdc_rate2[rid].bit,
+				  regval);
+}
+
+static const unsigned int rk806_ramp_delay_table_ldo[] = {
+	100000, 50000, 25000, 12500, 6280, 3120, 1900, 780
+};
+
+static int rk806_set_suspend_voltage_range(struct regulator_dev *rdev, int reg_offset, int uv)
+{
+	int sel = regulator_map_voltage_linear_range(rdev, uv, uv);
+	unsigned int reg;
+
+	if (sel < 0)
+		return -EINVAL;
+
+	reg = rdev->desc->vsel_reg + reg_offset;
+
+	return regmap_update_bits(rdev->regmap, reg, rdev->desc->vsel_mask, sel);
+}
+
+static int rk806_set_suspend_voltage_range_dcdc(struct regulator_dev *rdev, int uv)
+{
+	return rk806_set_suspend_voltage_range(rdev, RK806_DCDC_SLP_REG_OFFSET, uv);
+}
+
+static int rk806_set_suspend_voltage_range_nldo(struct regulator_dev *rdev, int uv)
+{
+	return rk806_set_suspend_voltage_range(rdev, RK806_NLDO_SLP_REG_OFFSET, uv);
+}
+
+static int rk806_set_suspend_voltage_range_pldo(struct regulator_dev *rdev, int uv)
+{
+	return rk806_set_suspend_voltage_range(rdev, RK806_PLDO_SLP_REG_OFFSET, uv);
+}
+
 static int rk808_buck1_2_get_voltage_sel_regmap(struct regulator_dev *rdev)
 {
 	struct rk808_regulator_data *pdata = rdev_get_drvdata(rdev);
@@ -393,6 +568,45 @@ static int rk805_set_suspend_disable(struct regulator_dev *rdev)
 				  0);
 }
 
+static const struct rk8xx_register_bit rk806_suspend_bits[] = {
+	RK8XX_REG_BIT(RK806_POWER_SLP_EN0, 0),
+	RK8XX_REG_BIT(RK806_POWER_SLP_EN0, 1),
+	RK8XX_REG_BIT(RK806_POWER_SLP_EN0, 2),
+	RK8XX_REG_BIT(RK806_POWER_SLP_EN0, 3),
+	RK8XX_REG_BIT(RK806_POWER_SLP_EN0, 4),
+	RK8XX_REG_BIT(RK806_POWER_SLP_EN0, 5),
+	RK8XX_REG_BIT(RK806_POWER_SLP_EN0, 6),
+	RK8XX_REG_BIT(RK806_POWER_SLP_EN0, 7),
+	RK8XX_REG_BIT(RK806_POWER_SLP_EN1, 6),
+	RK8XX_REG_BIT(RK806_POWER_SLP_EN1, 7),
+	RK8XX_REG_BIT(RK806_POWER_SLP_EN1, 0),
+	RK8XX_REG_BIT(RK806_POWER_SLP_EN1, 1),
+	RK8XX_REG_BIT(RK806_POWER_SLP_EN1, 2),
+	RK8XX_REG_BIT(RK806_POWER_SLP_EN1, 3),
+	RK8XX_REG_BIT(RK806_POWER_SLP_EN1, 4),
+	RK8XX_REG_BIT(RK806_POWER_SLP_EN2, 1),
+	RK8XX_REG_BIT(RK806_POWER_SLP_EN2, 2),
+	RK8XX_REG_BIT(RK806_POWER_SLP_EN2, 3),
+	RK8XX_REG_BIT(RK806_POWER_SLP_EN2, 4),
+	RK8XX_REG_BIT(RK806_POWER_SLP_EN2, 5),
+	RK8XX_REG_BIT(RK806_POWER_SLP_EN2, 0),
+};
+
+static int rk806_set_suspend_enable(struct regulator_dev *rdev)
+{
+	int rid = rdev_get_id(rdev);
+	return regmap_update_bits(rdev->regmap, rk806_suspend_bits[rid].reg,
+				  rk806_suspend_bits[rid].bit,
+				  rk806_suspend_bits[rid].bit);
+}
+
+static int rk806_set_suspend_disable(struct regulator_dev *rdev)
+{
+	int rid = rdev_get_id(rdev);
+	return regmap_update_bits(rdev->regmap, rk806_suspend_bits[rid].reg,
+				  rk806_suspend_bits[rid].bit, 0);
+}
+
 static int rk808_set_suspend_enable(struct regulator_dev *rdev)
 {
 	unsigned int reg;
@@ -561,6 +775,65 @@ static const struct regulator_ops rk805_switch_ops = {
 	.set_suspend_disable    = rk805_set_suspend_disable,
 };
 
+static const struct regulator_ops rk806_ops_dcdc = {
+	.list_voltage		= regulator_list_voltage_linear_range,
+	.map_voltage		= regulator_map_voltage_linear_range,
+	.get_voltage_sel	= regulator_get_voltage_sel_regmap,
+	.set_voltage_sel        = regulator_set_voltage_sel_regmap,
+	.set_voltage_time_sel	= regulator_set_voltage_time_sel,
+	.set_mode		= rk806_set_mode_dcdc,
+	.get_mode		= rk806_get_mode_dcdc,
+
+	.enable			= regulator_enable_regmap,
+	.disable		= regulator_disable_regmap,
+	.is_enabled		= regulator_is_enabled_regmap,
+
+	.set_suspend_mode	= rk806_set_mode_dcdc,
+	.set_ramp_delay		= rk806_set_ramp_delay_dcdc,
+	//.set_ramp_delay		= regulator_set_ramp_delay_regmap,
+
+	.set_suspend_voltage	= rk806_set_suspend_voltage_range_dcdc,
+	.set_suspend_enable	= rk806_set_suspend_enable,
+	.set_suspend_disable	= rk806_set_suspend_disable,
+};
+
+static const struct regulator_ops rk806_ops_nldo = {
+	.list_voltage		= regulator_list_voltage_linear_range,
+	.map_voltage		= regulator_map_voltage_linear_range,
+	.get_voltage_sel	= regulator_get_voltage_sel_regmap,
+	.set_voltage_sel        = regulator_set_voltage_sel_regmap,
+	.set_voltage_time_sel	= regulator_set_voltage_time_sel,
+
+	.enable			= regulator_enable_regmap,
+	.disable		= regulator_disable_regmap,
+	.is_enabled		= regulator_is_enabled_regmap,
+
+	.set_ramp_delay		= regulator_set_ramp_delay_regmap,
+
+	.set_suspend_voltage	= rk806_set_suspend_voltage_range_nldo,
+	.set_suspend_enable	= rk806_set_suspend_enable,
+	.set_suspend_disable	= rk806_set_suspend_disable,
+};
+
+static const struct regulator_ops rk806_ops_pldo = {
+	.list_voltage		= regulator_list_voltage_linear_range,
+	.map_voltage		= regulator_map_voltage_linear_range,
+
+	.get_voltage_sel	= regulator_get_voltage_sel_regmap,
+	.set_voltage_sel        = regulator_set_voltage_sel_regmap,
+	.set_voltage_time_sel	= regulator_set_voltage_time_sel,
+
+	.enable			= regulator_enable_regmap,
+	.disable		= regulator_disable_regmap,
+	.is_enabled		= regulator_is_enabled_regmap,
+
+	.set_ramp_delay		= regulator_set_ramp_delay_regmap,
+
+	.set_suspend_voltage	= rk806_set_suspend_voltage_range_pldo,
+	.set_suspend_enable	= rk806_set_suspend_enable,
+	.set_suspend_disable	= rk806_set_suspend_disable,
+};
+
 static const struct regulator_ops rk808_buck1_2_ops = {
 	.list_voltage		= regulator_list_voltage_linear,
 	.map_voltage		= regulator_map_voltage_linear,
@@ -743,6 +1016,112 @@ static const struct regulator_desc rk805_reg[] = {
 		BIT(2), 400),
 };
 
+static const struct linear_range rk806_buck_voltage_ranges[] = {
+	REGULATOR_LINEAR_RANGE(500000, 0, 160, 6250), /* 500mV ~ 1500mV */
+	REGULATOR_LINEAR_RANGE(1500000, 161, 237, 25000), /* 1500mV ~ 3400mV */
+	REGULATOR_LINEAR_RANGE(3400000, 238, 255, 0),
+};
+
+static const struct linear_range rk806_ldo_voltage_ranges[] = {
+	REGULATOR_LINEAR_RANGE(500000, 0, 232, 12500), /* 500mV ~ 3400mV */
+	REGULATOR_LINEAR_RANGE(3400000, 233, 255, 0), /* 500mV ~ 3400mV */
+};
+
+static const struct regulator_desc rk806_reg[] = {
+	RK806_REGULATOR("dcdc-reg1", "vcc1", RK806_ID_DCDC1, rk806_ops_dcdc,
+			RK806_BUCK_SEL_CNT, RK806_BUCK1_ON_VSEL,
+			RK806_POWER_EN0, rk806_buck_voltage_ranges, 0,
+			RK806_BUCK1_CONFIG, 0xc0, rk806_ramp_delay_table_dcdc),
+	RK806_REGULATOR("dcdc-reg2", "vcc2", RK806_ID_DCDC2, rk806_ops_dcdc,
+			RK806_BUCK_SEL_CNT, RK806_BUCK2_ON_VSEL,
+			RK806_POWER_EN0, rk806_buck_voltage_ranges, 1,
+			RK806_BUCK2_CONFIG, 0xc0, rk806_ramp_delay_table_dcdc),
+	RK806_REGULATOR("dcdc-reg3", "vcc3", RK806_ID_DCDC3, rk806_ops_dcdc,
+			RK806_BUCK_SEL_CNT, RK806_BUCK3_ON_VSEL,
+			RK806_POWER_EN0, rk806_buck_voltage_ranges, 2,
+			RK806_BUCK3_CONFIG, 0xc0, rk806_ramp_delay_table_dcdc),
+	RK806_REGULATOR("dcdc-reg4", "vcc4", RK806_ID_DCDC4, rk806_ops_dcdc,
+			RK806_BUCK_SEL_CNT, RK806_BUCK4_ON_VSEL,
+			RK806_POWER_EN0, rk806_buck_voltage_ranges, 3,
+			RK806_BUCK4_CONFIG, 0xc0, rk806_ramp_delay_table_dcdc),
+
+	RK806_REGULATOR("dcdc-reg5", "vcc5", RK806_ID_DCDC5, rk806_ops_dcdc,
+			RK806_BUCK_SEL_CNT, RK806_BUCK5_ON_VSEL,
+			RK806_POWER_EN1, rk806_buck_voltage_ranges, 0,
+			RK806_BUCK5_CONFIG, 0xc0, rk806_ramp_delay_table_dcdc),
+	RK806_REGULATOR("dcdc-reg6", "vcc6", RK806_ID_DCDC6, rk806_ops_dcdc,
+			RK806_BUCK_SEL_CNT, RK806_BUCK6_ON_VSEL,
+			RK806_POWER_EN1, rk806_buck_voltage_ranges, 1,
+			RK806_BUCK6_CONFIG, 0xc0, rk806_ramp_delay_table_dcdc),
+	RK806_REGULATOR("dcdc-reg7", "vcc7", RK806_ID_DCDC7, rk806_ops_dcdc,
+			RK806_BUCK_SEL_CNT, RK806_BUCK7_ON_VSEL,
+			RK806_POWER_EN1, rk806_buck_voltage_ranges, 2,
+			RK806_BUCK7_CONFIG, 0xc0, rk806_ramp_delay_table_dcdc),
+	RK806_REGULATOR("dcdc-reg8", "vcc8", RK806_ID_DCDC8, rk806_ops_dcdc,
+			RK806_BUCK_SEL_CNT, RK806_BUCK8_ON_VSEL,
+			RK806_POWER_EN1, rk806_buck_voltage_ranges, 3,
+			RK806_BUCK8_CONFIG, 0xc0, rk806_ramp_delay_table_dcdc),
+
+	RK806_REGULATOR("dcdc-reg9", "vcc9", RK806_ID_DCDC9, rk806_ops_dcdc,
+			RK806_BUCK_SEL_CNT, RK806_BUCK9_ON_VSEL,
+			RK806_POWER_EN2, rk806_buck_voltage_ranges, 0,
+			RK806_BUCK9_CONFIG, 0xc0, rk806_ramp_delay_table_dcdc),
+	RK806_REGULATOR("dcdc-reg10", "vcc10", RK806_ID_DCDC10, rk806_ops_dcdc,
+			RK806_BUCK_SEL_CNT, RK806_BUCK10_ON_VSEL,
+			RK806_POWER_EN2, rk806_buck_voltage_ranges, 1,
+			RK806_BUCK10_CONFIG, 0xc0, rk806_ramp_delay_table_dcdc),
+
+	RK806_REGULATOR("nldo-reg1", "vcc13", RK806_ID_NLDO1, rk806_ops_nldo,
+			RK806_LDO_SEL_CNT, RK806_NLDO1_ON_VSEL,
+			RK806_POWER_EN3, rk806_ldo_voltage_ranges, 0,
+			0xEA, 0x38, rk806_ramp_delay_table_ldo),
+	RK806_REGULATOR("nldo-reg2", "vcc13", RK806_ID_NLDO2, rk806_ops_nldo,
+			RK806_LDO_SEL_CNT, RK806_NLDO2_ON_VSEL,
+			RK806_POWER_EN3, rk806_ldo_voltage_ranges, 1,
+			0xEA, 0x38, rk806_ramp_delay_table_ldo),
+	RK806_REGULATOR("nldo-reg3", "vcc13", RK806_ID_NLDO3, rk806_ops_nldo,
+			RK806_LDO_SEL_CNT, RK806_NLDO3_ON_VSEL,
+			RK806_POWER_EN3, rk806_ldo_voltage_ranges, 2,
+			0xEA, 0x38, rk806_ramp_delay_table_ldo),
+	RK806_REGULATOR("nldo-reg4", "vcc14", RK806_ID_NLDO4, rk806_ops_nldo,
+			RK806_LDO_SEL_CNT, RK806_NLDO4_ON_VSEL,
+			RK806_POWER_EN3, rk806_ldo_voltage_ranges, 3,
+			0xEA, 0x38, rk806_ramp_delay_table_ldo),
+
+	RK806_REGULATOR("nldo-reg5", "vcc14", RK806_ID_NLDO5, rk806_ops_nldo,
+			RK806_LDO_SEL_CNT, RK806_NLDO5_ON_VSEL,
+			RK806_POWER_EN5, rk806_ldo_voltage_ranges, 2,
+			0xEA, 0x38, rk806_ramp_delay_table_ldo),
+
+	RK806_REGULATOR("pldo-reg1", "vcc11", RK806_ID_PLDO1, rk806_ops_pldo,
+			RK806_LDO_SEL_CNT, RK806_PLDO1_ON_VSEL,
+			RK806_POWER_EN4, rk806_ldo_voltage_ranges, 1,
+			0xEA, 0x38, rk806_ramp_delay_table_ldo),
+	RK806_REGULATOR("pldo-reg2", "vcc11", RK806_ID_PLDO2, rk806_ops_pldo,
+			RK806_LDO_SEL_CNT, RK806_PLDO2_ON_VSEL,
+			RK806_POWER_EN4, rk806_ldo_voltage_ranges, 2,
+			0xEA, 0x38, rk806_ramp_delay_table_ldo),
+	RK806_REGULATOR("pldo-reg3", "vcc11", RK806_ID_PLDO3, rk806_ops_pldo,
+			RK806_LDO_SEL_CNT, RK806_PLDO3_ON_VSEL,
+			RK806_POWER_EN4, rk806_ldo_voltage_ranges, 3,
+			0xEA, 0x38, rk806_ramp_delay_table_ldo),
+
+	RK806_REGULATOR("pldo-reg4", "vcc12", RK806_ID_PLDO4, rk806_ops_pldo,
+			RK806_LDO_SEL_CNT, RK806_PLDO4_ON_VSEL,
+			RK806_POWER_EN5, rk806_ldo_voltage_ranges, 0,
+			0xEA, 0x38, rk806_ramp_delay_table_ldo),
+	RK806_REGULATOR("pldo-reg5", "vcc12", RK806_ID_PLDO5, rk806_ops_pldo,
+			RK806_LDO_SEL_CNT, RK806_PLDO5_ON_VSEL,
+			RK806_POWER_EN5, rk806_ldo_voltage_ranges, 1,
+			0xEA, 0x38, rk806_ramp_delay_table_ldo),
+
+	RK806_REGULATOR("pldo-reg6", "vcca", RK806_ID_PLDO6, rk806_ops_pldo,
+			RK806_LDO_SEL_CNT, RK806_PLDO6_ON_VSEL,
+			RK806_POWER_EN4, rk806_ldo_voltage_ranges, 0,
+			0xEA, 0x38, rk806_ramp_delay_table_ldo),
+};
+
+
 static const struct regulator_desc rk808_reg[] = {
 	{
 		.name = "DCDC_REG1",
@@ -1312,6 +1691,10 @@ static int rk808_regulator_probe(struct platform_device *pdev)
 		regulators = rk805_reg;
 		nregulators = RK805_NUM_REGULATORS;
 		break;
+	case RK806_ID:
+		regulators = rk806_reg;
+		nregulators = ARRAY_SIZE(rk806_reg);
+		break;
 	case RK808_ID:
 		regulators = rk808_reg;
 		nregulators = RK808_NUM_REGULATORS;
@@ -1365,5 +1748,6 @@ MODULE_AUTHOR("Tony xie <tony.xie@rock-chips.com>");
 MODULE_AUTHOR("Chris Zhong <zyw@rock-chips.com>");
 MODULE_AUTHOR("Zhang Qing <zhangqing@rock-chips.com>");
 MODULE_AUTHOR("Wadim Egorov <w.egorov@phytec.de>");
+MODULE_AUTHOR("Xu Shengfei <xsf@rock-chips.com>");
 MODULE_LICENSE("GPL");
 MODULE_ALIAS("platform:rk808-regulator");
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
