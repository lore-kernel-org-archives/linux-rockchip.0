Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4796C54E67
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Mar 2024 08:59:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NnsAlOeadtwj7FofXHyRGyitPXjwbQ2NdaSEbY3i/wI=; b=RPTPum05avEGa1
	Knm7xCRNQK/x0SQj2iSXL9Vi+AWhrPPLU9QTIXvWluFTqn59UjA80s28U3CMKW4qrPo2r8fQarR5t
	JyIOJFKHOBCiRuGGlSHe3ZXY4Aiu/yaH6eh9I7+28LWlgC5OXBaShcbjM7dh9I4Yg0yR0oOpnQoQr
	pXvSIkw7Kduokpi+Ivk2fv9gHHLq5kSFTjIf3dQaIjz/ZZAPvUaTeTlmhcERYUx0l2wLOUcczyP58
	4QLLmios3FxFj2dUscVT9H4hFr1jTYr1Teg+oo+SkMd4ipCsh2FD6KuaPiujF86f0nN4GFo5jIWxH
	p+sadI8J3+OczkaybW0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnxE7-0000000A1Bl-22UC;
	Sat, 23 Mar 2024 08:59:43 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnxDd-0000000A0sl-0tQ3;
	Sat, 23 Mar 2024 08:59:15 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-33e285a33bdso1347035f8f.2;
        Sat, 23 Mar 2024 01:59:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711184351; x=1711789151; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kwxxoovN4u1+4DsDbntI4M1SVvSsXRN0Avi5P47WEck=;
        b=ex29q4qIRuCq9kafwYsVLH+bf4TaPzMHlaE7+/Zacig4GpWawAP1yKJFj2ml8gP9j/
         yJTU16FTO/zBVmHpVGR7A54ycTLvjIQkP3Z9MP48jobQhW6YgzUdUo8r4Lt2EhSoa4ea
         PD3r4JzHhTr52ZZm+GxOYGjkdgfh37IJlQMgOrQWZYHzBzMcDNZJyvGy6KM2Yo+ohgPg
         VGRU2ckNJpOdn42mExpPXlemxd+cB21LAA34W1gm9KZNn+FHHFpfqOSfCUPYuBtKOquh
         hJrzSxHp5zmv6pQ0NN1cQE5weZ/cC5IKtX0oiBnjoHBpoyGV+6AIV3izA+3eOTT4lt9q
         vyeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711184351; x=1711789151;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kwxxoovN4u1+4DsDbntI4M1SVvSsXRN0Avi5P47WEck=;
        b=A/DWzcvkG9E0XoDMNoj4yJFSkO+3tQmUTDcTYlq+8wrlMqPkf0Hq85E3/5KJUR+NDo
         6THqkxj0FOmXiXAGeL61mnLoJ6GgPqMgbt+1AVn2pNNGncVoFj580K5HQ8KlDzAL+PlG
         1vptYzdo8TrD+RR8Zzix8+6/KhYBRpdzNImJMapTnLuNV2hiP+qXgA4biBQ7XTjoNYTw
         Zahq6bFfi1JI1na2tI6qJJm67q3wS7KQ0a1Egx34kNL9/GYLe7hNBP8iuSB9cku0XZkP
         9wUvzWXzIG5dWA4KFj/io5MYu5n50BRYEfBSBfbGEa6aLnfT3+aTeBlmGSN1ToMbbfWX
         vUtA==
X-Forwarded-Encrypted: i=1; AJvYcCWsf1N8yhg13akWFHkSbNG+It/IjHxkj0QyusZk45k+lJheJ0Ce5z7rFapbobvki1L2W35WhYlnTuD+R0ICm1aVTIXPW7lVlRLIwdaJw6jSctEzkSadhFPCMXeMnWD4L2VhkkVBGDYeSLM7ltVgWY+dGon26hEjVtM=
X-Gm-Message-State: AOJu0YytY+AZBTZ9iuXO3qizvtEra5QuIztznZgSkFgUWgg3VOXfdwdv
	pU7s+FvTl+ZsOqTDPDM4GkyvshS0ml07pT8w0Qm6+NGwPXFTLSg=
X-Google-Smtp-Source: AGHT+IFF17xjDy+ptXcgihz83Sv4sxZrl9Ftth0tW9FhON1w6JdemKQL5SiIfYCqfiBtAnwfPC13fw==
X-Received: by 2002:a5d:624d:0:b0:341:bdd4:aedf with SMTP id m13-20020a5d624d000000b00341bdd4aedfmr1121650wrv.25.1711184351252;
        Sat, 23 Mar 2024 01:59:11 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:fbb8:7547:139d:a40f])
        by smtp.gmail.com with ESMTPSA id x16-20020a5d6b50000000b0033e93e00f68sm3965031wrw.61.2024.03.23.01.59.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Mar 2024 01:59:11 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Linus Walleij <linus.walleij@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>
Cc: Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 5/5] regulator: rk808: Add RK816 support
Date: Sat, 23 Mar 2024 09:58:52 +0100
Message-ID: <20240323085852.116756-6-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240323085852.116756-1-knaerzche@gmail.com>
References: <20240323085852.116756-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240323_015913_463403_8F03AA70 
X-CRM114-Status: GOOD (  17.07  )
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

Add support for rk816 to the existing rk808 regulator driver.

The infrastructure of the driver can be re-used as is. A peculiarity for
this version is, that BUCK1/BUCK2 have a (common) bit which needs to
toggled after a voltage change to confirm the change. Regulator regmap
takes care of that by defining a apply_bit and apply_reg for those
regulators.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes since v1:
  - align regulator's .name and .of_match with updated binding

 drivers/regulator/rk808-regulator.c | 202 +++++++++++++++++++++++++++-
 1 file changed, 201 insertions(+), 1 deletion(-)

diff --git a/drivers/regulator/rk808-regulator.c b/drivers/regulator/rk808-regulator.c
index a6a563e402d0..9f69b4d483d0 100644
--- a/drivers/regulator/rk808-regulator.c
+++ b/drivers/regulator/rk808-regulator.c
@@ -158,6 +158,11 @@
 	RK8XX_DESC_COM(_id, _match, _supply, _min, _max, _step, _vreg,	\
 	_vmask, _ereg, _emask, 0, 0, _etime, &rk808_reg_ops)
 
+#define RK816_DESC(_id, _match, _supply, _min, _max, _step, _vreg,	\
+	_vmask, _ereg, _emask, _disval, _etime)				\
+	RK8XX_DESC_COM(_id, _match, _supply, _min, _max, _step, _vreg,	\
+	_vmask, _ereg, _emask, _emask, _disval, _etime, &rk816_reg_ops)
+
 #define RK817_DESC(_id, _match, _supply, _min, _max, _step, _vreg,	\
 	_vmask, _ereg, _emask, _disval, _etime)				\
 	RK8XX_DESC_COM(_id, _match, _supply, _min, _max, _step, _vreg,	\
@@ -258,7 +263,7 @@ static const unsigned int rk808_buck1_2_ramp_table[] = {
 	2000, 4000, 6000, 10000
 };
 
-/* RK817 RK809 */
+/* RK817/RK809/RK816 (buck 1/2 only) */
 static const unsigned int rk817_buck1_4_ramp_table[] = {
 	3000, 6300, 12500, 25000
 };
@@ -640,6 +645,38 @@ static int rk808_set_suspend_disable(struct regulator_dev *rdev)
 				  rdev->desc->enable_mask);
 }
 
+static const struct rk8xx_register_bit rk816_suspend_bits[] = {
+	RK8XX_REG_BIT(RK818_SLEEP_SET_OFF_REG1, 0),
+	RK8XX_REG_BIT(RK818_SLEEP_SET_OFF_REG1, 1),
+	RK8XX_REG_BIT(RK818_SLEEP_SET_OFF_REG1, 2),
+	RK8XX_REG_BIT(RK818_SLEEP_SET_OFF_REG1, 3),
+	RK8XX_REG_BIT(RK818_SLEEP_SET_OFF_REG2, 0),
+	RK8XX_REG_BIT(RK818_SLEEP_SET_OFF_REG2, 1),
+	RK8XX_REG_BIT(RK818_SLEEP_SET_OFF_REG2, 2),
+	RK8XX_REG_BIT(RK818_SLEEP_SET_OFF_REG2, 3),
+	RK8XX_REG_BIT(RK818_SLEEP_SET_OFF_REG2, 4),
+	RK8XX_REG_BIT(RK818_SLEEP_SET_OFF_REG2, 5),
+	RK8XX_REG_BIT(RK818_SLEEP_SET_OFF_REG1, 5),
+	RK8XX_REG_BIT(RK818_SLEEP_SET_OFF_REG1, 6),
+};
+
+static int rk816_set_suspend_enable(struct regulator_dev *rdev)
+{
+	int rid = rdev_get_id(rdev);
+
+	return regmap_update_bits(rdev->regmap, rk816_suspend_bits[rid].reg,
+				  rk816_suspend_bits[rid].bit,
+				  rk816_suspend_bits[rid].bit);
+}
+
+static int rk816_set_suspend_disable(struct regulator_dev *rdev)
+{
+	int rid = rdev_get_id(rdev);
+
+	return regmap_update_bits(rdev->regmap, rk816_suspend_bits[rid].reg,
+				  rk816_suspend_bits[rid].bit, 0);
+}
+
 static int rk817_set_suspend_enable_ctrl(struct regulator_dev *rdev,
 					 unsigned int en)
 {
@@ -913,6 +950,54 @@ static const struct regulator_ops rk809_buck5_ops_range = {
 	.set_suspend_disable	= rk817_set_suspend_disable,
 };
 
+static const struct regulator_ops rk816_buck1_2_ops_ranges = {
+	.list_voltage		= regulator_list_voltage_linear_range,
+	.map_voltage		= regulator_map_voltage_linear_range,
+	.get_voltage_sel	= regulator_get_voltage_sel_regmap,
+	.set_voltage_sel	= regulator_set_voltage_sel_regmap,
+	.set_voltage_time_sel	= regulator_set_voltage_time_sel,
+	.enable			= regulator_enable_regmap,
+	.disable		= regulator_disable_regmap,
+	.is_enabled		= regulator_is_enabled_regmap,
+	.set_mode		= rk8xx_set_mode,
+	.get_mode		= rk8xx_get_mode,
+	.set_suspend_mode	= rk8xx_set_suspend_mode,
+	.set_ramp_delay		= regulator_set_ramp_delay_regmap,
+	.set_suspend_voltage	= rk808_set_suspend_voltage_range,
+	.set_suspend_enable	= rk816_set_suspend_enable,
+	.set_suspend_disable	= rk816_set_suspend_disable,
+};
+
+static const struct regulator_ops rk816_buck4_ops_ranges = {
+	.list_voltage		= regulator_list_voltage_linear_range,
+	.map_voltage		= regulator_map_voltage_linear_range,
+	.get_voltage_sel	= regulator_get_voltage_sel_regmap,
+	.set_voltage_sel	= regulator_set_voltage_sel_regmap,
+	.set_voltage_time_sel	= regulator_set_voltage_time_sel,
+	.enable			= regulator_enable_regmap,
+	.disable		= regulator_disable_regmap,
+	.is_enabled		= regulator_is_enabled_regmap,
+	.set_mode		= rk8xx_set_mode,
+	.get_mode		= rk8xx_get_mode,
+	.set_suspend_mode	= rk8xx_set_suspend_mode,
+	.set_suspend_voltage	= rk808_set_suspend_voltage_range,
+	.set_suspend_enable	= rk816_set_suspend_enable,
+	.set_suspend_disable	= rk816_set_suspend_disable,
+};
+
+static const struct regulator_ops rk816_reg_ops = {
+	.list_voltage		= regulator_list_voltage_linear,
+	.map_voltage		= regulator_map_voltage_linear,
+	.get_voltage_sel	= regulator_get_voltage_sel_regmap,
+	.set_voltage_sel	= regulator_set_voltage_sel_regmap,
+	.enable			= regulator_enable_regmap,
+	.disable		= regulator_disable_regmap,
+	.is_enabled		= rk8xx_is_enabled_wmsk_regmap,
+	.set_suspend_voltage	= rk808_set_suspend_voltage,
+	.set_suspend_enable	= rk816_set_suspend_enable,
+	.set_suspend_disable	= rk816_set_suspend_disable,
+};
+
 static const struct regulator_ops rk817_reg_ops = {
 	.list_voltage		= regulator_list_voltage_linear,
 	.map_voltage		= regulator_map_voltage_linear,
@@ -1392,6 +1477,117 @@ static const struct regulator_desc rk809_reg[] = {
 			  DISABLE_VAL(3)),
 };
 
+static const struct linear_range rk816_buck_4_voltage_ranges[] = {
+	REGULATOR_LINEAR_RANGE(800000, 0, 26, 100000),
+	REGULATOR_LINEAR_RANGE(3500000, 27, 31, 0),
+};
+
+static const struct regulator_desc rk816_reg[] = {
+	{
+		.name = "dcdc1-regulator",
+		.supply_name = "vcc1",
+		.of_match = of_match_ptr("dcdc1-regulator"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = RK816_ID_DCDC1,
+		.ops = &rk816_buck1_2_ops_ranges,
+		.type = REGULATOR_VOLTAGE,
+		.n_voltages = 64,
+		.linear_ranges = rk805_buck_1_2_voltage_ranges,
+		.n_linear_ranges = ARRAY_SIZE(rk805_buck_1_2_voltage_ranges),
+		.vsel_reg = RK818_BUCK1_ON_VSEL_REG,
+		.vsel_mask = RK818_BUCK_VSEL_MASK,
+		.apply_reg = RK816_DCDC_EN_REG2,
+		.apply_bit = RK816_BUCK_DVS_CONFIRM,
+		.enable_reg = RK816_DCDC_EN_REG1,
+		.enable_mask = BIT(4) | BIT(0),
+		.enable_val = BIT(4) | BIT(0),
+		.disable_val = BIT(4),
+		.ramp_reg = RK818_BUCK1_CONFIG_REG,
+		.ramp_mask = RK808_RAMP_RATE_MASK,
+		.ramp_delay_table = rk817_buck1_4_ramp_table,
+		.n_ramp_values = ARRAY_SIZE(rk817_buck1_4_ramp_table),
+		.of_map_mode = rk8xx_regulator_of_map_mode,
+		.owner = THIS_MODULE,
+	}, {
+		.name = "dcdc2-regulator",
+		.supply_name = "vcc2",
+		.of_match = of_match_ptr("dcdc2-regulator"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = RK816_ID_DCDC2,
+		.ops = &rk816_buck1_2_ops_ranges,
+		.type = REGULATOR_VOLTAGE,
+		.n_voltages = 64,
+		.linear_ranges = rk805_buck_1_2_voltage_ranges,
+		.n_linear_ranges = ARRAY_SIZE(rk805_buck_1_2_voltage_ranges),
+		.vsel_reg = RK818_BUCK2_ON_VSEL_REG,
+		.vsel_mask = RK818_BUCK_VSEL_MASK,
+		.apply_reg = RK816_DCDC_EN_REG2,
+		.apply_bit = RK816_BUCK_DVS_CONFIRM,
+		.enable_reg = RK816_DCDC_EN_REG1,
+		.enable_mask = BIT(5) | BIT(1),
+		.enable_val = BIT(5) | BIT(1),
+		.disable_val = BIT(5),
+		.ramp_reg = RK818_BUCK2_CONFIG_REG,
+		.ramp_mask = RK808_RAMP_RATE_MASK,
+		.ramp_delay_table = rk817_buck1_4_ramp_table,
+		.n_ramp_values = ARRAY_SIZE(rk817_buck1_4_ramp_table),
+		.of_map_mode = rk8xx_regulator_of_map_mode,
+		.owner = THIS_MODULE,
+	}, {
+		.name = "dcdc3-regulator",
+		.supply_name = "vcc3",
+		.of_match = of_match_ptr("dcdc3-regulator"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = RK816_ID_DCDC3,
+		.ops = &rk808_switch_ops,
+		.type = REGULATOR_VOLTAGE,
+		.n_voltages = 1,
+		.enable_reg = RK816_DCDC_EN_REG1,
+		.enable_mask = BIT(6) | BIT(2),
+		.enable_val =  BIT(6) | BIT(2),
+		.disable_val = BIT(6),
+		.of_map_mode = rk8xx_regulator_of_map_mode,
+		.owner = THIS_MODULE,
+	}, {
+		.name = "dcdc4-regulator",
+		.supply_name = "vcc4",
+		.of_match = of_match_ptr("dcdc4-regulator"),
+		.regulators_node = of_match_ptr("regulators"),
+		.id = RK816_ID_DCDC4,
+		.ops = &rk816_buck4_ops_ranges,
+		.type = REGULATOR_VOLTAGE,
+		.n_voltages = 32,
+		.linear_ranges = rk816_buck_4_voltage_ranges,
+		.n_linear_ranges = ARRAY_SIZE(rk816_buck_4_voltage_ranges),
+		.vsel_reg = RK818_BUCK4_ON_VSEL_REG,
+		.vsel_mask = RK818_BUCK4_VSEL_MASK,
+		.enable_reg = RK816_DCDC_EN_REG1,
+		.enable_mask = BIT(7) | BIT(3),
+		.enable_val = BIT(7) | BIT(3),
+		.disable_val = BIT(7),
+		.of_map_mode = rk8xx_regulator_of_map_mode,
+		.owner = THIS_MODULE,
+	},
+	RK816_DESC(RK816_ID_LDO1, "ldo1-regulator", "vcc5", 800, 3400, 100,
+		   RK818_LDO1_ON_VSEL_REG, RK818_LDO_VSEL_MASK,
+		   RK816_LDO_EN_REG1, ENABLE_MASK(0), DISABLE_VAL(0), 400),
+	RK816_DESC(RK816_ID_LDO2, "ldo2-regulator", "vcc5", 800, 3400, 100,
+		   RK818_LDO2_ON_VSEL_REG, RK818_LDO_VSEL_MASK,
+		   RK816_LDO_EN_REG1, ENABLE_MASK(1), DISABLE_VAL(1), 400),
+	RK816_DESC(RK816_ID_LDO3, "ldo3-regulator", "vcc5", 800, 3400, 100,
+		   RK818_LDO3_ON_VSEL_REG, RK818_LDO_VSEL_MASK,
+		   RK816_LDO_EN_REG1, ENABLE_MASK(2), DISABLE_VAL(2), 400),
+	RK816_DESC(RK816_ID_LDO4, "ldo4-regulator", "vcc6", 800, 3400, 100,
+		   RK818_LDO4_ON_VSEL_REG, RK818_LDO_VSEL_MASK,
+		   RK816_LDO_EN_REG1, ENABLE_MASK(3), DISABLE_VAL(3), 400),
+	RK816_DESC(RK816_ID_LDO5, "ldo5-regulator", "vcc6", 800, 3400, 100,
+		   RK818_LDO5_ON_VSEL_REG, RK818_LDO_VSEL_MASK,
+		   RK816_LDO_EN_REG2, ENABLE_MASK(0), DISABLE_VAL(0), 400),
+	RK816_DESC(RK816_ID_LDO6, "ldo6-regulator", "vcc6", 800, 3400, 100,
+		   RK818_LDO6_ON_VSEL_REG, RK818_LDO_VSEL_MASK,
+		   RK816_LDO_EN_REG2, ENABLE_MASK(1), DISABLE_VAL(1), 400),
+};
+
 static const struct regulator_desc rk817_reg[] = {
 	{
 		.name = "DCDC_REG1",
@@ -1714,6 +1910,10 @@ static int rk808_regulator_probe(struct platform_device *pdev)
 		regulators = rk809_reg;
 		nregulators = RK809_NUM_REGULATORS;
 		break;
+	case RK816_ID:
+		regulators = rk816_reg;
+		nregulators = ARRAY_SIZE(rk816_reg);
+		break;
 	case RK817_ID:
 		regulators = rk817_reg;
 		nregulators = RK817_NUM_REGULATORS;
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
