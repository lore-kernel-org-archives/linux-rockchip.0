Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCF23C04FF6
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Apr 2024 16:13:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MERM+BrqRW8CtnKhnRZwF/qdWUCKcwiP4EqAF8SzEPY=; b=iyphzOQ7vY45gX
	DsyWM8lUdf/VtpsE9gQPNDh8XNVSiWjuNmzncu6jLpHZ/eG7/xmEFKpOcjY73aNrjFy9zyFwM9kM4
	64OD3ifDLR91tz39AmX9YapA9FlFpk9jzuw5fjiRj6YxvuinAq10dkoJ9FuzXESWpG9dcfAjbdCgy
	/uttg+VPkDwPUt6lcdOQS9gJ1jxOvHX/waYErkOrloVznIihkzdUCZj6b0XlFaj4vm/lytXW6YUeH
	EhA+4XwLoZOE0KE/t2qebq55ICOSQv1qUDgVcvxckKbPnSQBC1antLvVbUpcrlyqvNj8QWOriuEzQ
	HSE/bLbSNWEVPQ3LLfew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwlQk-0000000Cwm1-1QSY;
	Tue, 16 Apr 2024 16:13:13 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwlQX-0000000CwcE-0hj4;
	Tue, 16 Apr 2024 16:12:59 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-516cdb21b34so5914262e87.1;
        Tue, 16 Apr 2024 09:12:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713283975; x=1713888775; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RyjcZ7Ps+RXFowKfk2vATtyZC05RbQS1gGvcTGHcGmI=;
        b=FOdX1BpsPSzqpb2C/R90rIM+nEL4d82Ll4KLu2CBlNlvtmiEeyaS0XaP6DcpPz+swm
         PH6Fj4Sx8TB26yBIXes4z1F8m02XqLt2GgfxxjcvU8tpN78GZYmKXJmfa1zXR3/Gn06z
         YdhyNlADv/ti9bgl9P4XRV9J+dmppyM51/5dg7EIsmM0hVSezOMMBv+sXB0BFFahXkBq
         7w0fzClLlyQOTjNUWRy4U1284kxtcoOAKYYsZSuZ/xqmREL5kXTgp8RLfpm66yvoKcy3
         HpgWkGx8oCy6Jju/t4KVJmNae5tnOUZQv2nJy+AhZAUeoWtwiyltoWll+kvxzoa2BPmL
         9pRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713283975; x=1713888775;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RyjcZ7Ps+RXFowKfk2vATtyZC05RbQS1gGvcTGHcGmI=;
        b=Yu3f49anv8dqALxR56ezZTj+JRL6cii7s/gvUa2IWlT7b4F6VaHsh42DLunHgrtHH8
         Ya9xO77MEeQKcsxj3e1UfOI3lDJXi/QedT1DR492ypFZVr5j8mfLxC+PNbExBcFbJ6xO
         8xCCl/hlgnIyznS7t8x7jpkhqg7iKEfX8Av6NGvrNaf0YlCzvWoBoXviMc1K71efARHB
         Fb3RYYGWOvAPAw/fE4wQyOy0pmpDqA5hcSrxU7HJ3jcJpRA1H3vmuQlPLr1pWGwbA4M8
         3AkzN7XgMRirI0lWy5Gie0jQsXztj3Imk0nDjSIFZYDx1o1kPpf9aiuAEZCY8vAmrYF4
         c40w==
X-Forwarded-Encrypted: i=1; AJvYcCVKnsi2jEToTlKIV6EbxZev283C9lMjLhL6QmWP3eLnQQTWOLxadNgAk2L615xHuGHYoieS5VgSczTp5cW3XlH/b/RAfjhIAps1fztf5zK7i+hvMQ/U7uE1Ns1l81/I6PDR4VwyYCUQ/uujXOK/YeYWsGZdn2Uc77I=
X-Gm-Message-State: AOJu0YwE3qXbt9H0G0ySjiYzbtwJ0M5RJyJlN4B+9XQHguv9rrVUIQR7
	UkW2l0GVwwunnhlnmTg8YbzkX3/BdOqS9bzwmH4toghlHWwr2eo=
X-Google-Smtp-Source: AGHT+IE3rfQDM9RTH+MgWTp2kDfxiIwlhn7GrmgJtqu4cEj+UQw7ClCc6S0NAeqp47HnN4JokqjZCA==
X-Received: by 2002:a05:6512:3c8e:b0:518:dae7:cc2d with SMTP id h14-20020a0565123c8e00b00518dae7cc2dmr6786165lfv.5.1713283974807;
        Tue, 16 Apr 2024 09:12:54 -0700 (PDT)
Received: from U4.lan ([91.66.160.190])
        by smtp.gmail.com with ESMTPSA id t7-20020adfe447000000b00343eac2acc4sm15350743wrm.111.2024.04.16.09.12.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Apr 2024 09:12:54 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Linus Walleij <linus.walleij@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v4 2/5] mfd: rk8xx: Add RK816 support
Date: Tue, 16 Apr 2024 18:12:34 +0200
Message-ID: <20240416161237.2500037-3-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240416161237.2500037-1-knaerzche@gmail.com>
References: <20240416161237.2500037-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_091257_253269_E11B9675 
X-CRM114-Status: GOOD (  23.38  )
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

This integrates RK816 support in the this existing rk8xx mfd driver.

This version has unaligned interrupt registers, which requires to define a
separate get_irq_reg callback for the regmap. Apart from that the
integration is straightforward and the existing structures can be used as
is. The initialization sequence has been taken from vendor kernel.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
chnages since v1:
  - un-constify rk816_get_irq_reg's return type

chnages since v3:
  - added RK816_IRQ_STS_OFFSET/RK816_IRQ_MSK_OFFSET macros
  - codestyle fix

 drivers/mfd/Kconfig       |   4 +-
 drivers/mfd/rk8xx-core.c  | 104 +++++++++++++++++++++++++++
 drivers/mfd/rk8xx-i2c.c   |  45 +++++++++++-
 include/linux/mfd/rk808.h | 144 ++++++++++++++++++++++++++++++++++++++
 4 files changed, 294 insertions(+), 3 deletions(-)

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 00fd388a9205..266b4f54af60 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -1225,7 +1225,7 @@ config MFD_RK8XX
 	select MFD_CORE
 
 config MFD_RK8XX_I2C
-	tristate "Rockchip RK805/RK808/RK809/RK817/RK818 Power Management Chip"
+	tristate "Rockchip RK805/RK808/RK809/RK816/RK817/RK818 Power Management Chip"
 	depends on I2C && OF
 	select MFD_CORE
 	select REGMAP_I2C
@@ -1233,7 +1233,7 @@ config MFD_RK8XX_I2C
 	select MFD_RK8XX
 	help
 	  If you say yes here you get support for the RK805, RK808, RK809,
-	  RK817 and RK818 Power Management chips.
+	  RK816, RK817 and RK818 Power Management chips.
 	  This driver provides common support for accessing the device
 	  through I2C interface. The device supports multiple sub-devices
 	  including interrupts, RTC, LDO & DCDC regulators, and onkey.
diff --git a/drivers/mfd/rk8xx-core.c b/drivers/mfd/rk8xx-core.c
index e2261b68b844..5eda3c0dbbdf 100644
--- a/drivers/mfd/rk8xx-core.c
+++ b/drivers/mfd/rk8xx-core.c
@@ -28,6 +28,10 @@ static const struct resource rtc_resources[] = {
 	DEFINE_RES_IRQ(RK808_IRQ_RTC_ALARM),
 };
 
+static const struct resource rk816_rtc_resources[] = {
+	DEFINE_RES_IRQ(RK816_IRQ_RTC_ALARM),
+};
+
 static const struct resource rk817_rtc_resources[] = {
 	DEFINE_RES_IRQ(RK817_IRQ_RTC_ALARM),
 };
@@ -87,6 +91,22 @@ static const struct mfd_cell rk808s[] = {
 	},
 };
 
+static const struct mfd_cell rk816s[] = {
+	{ .name = "rk805-pinctrl", },
+	{ .name = "rk808-clkout", },
+	{ .name = "rk808-regulator", },
+	{
+		.name = "rk805-pwrkey",
+		.num_resources = ARRAY_SIZE(rk805_key_resources),
+		.resources = rk805_key_resources,
+	},
+	{
+		.name = "rk808-rtc",
+		.num_resources = ARRAY_SIZE(rk816_rtc_resources),
+		.resources = rk816_rtc_resources,
+	},
+};
+
 static const struct mfd_cell rk817s[] = {
 	{ .name = "rk808-clkout", },
 	{ .name = "rk808-regulator", },
@@ -148,6 +168,17 @@ static const struct rk808_reg_data rk808_pre_init_reg[] = {
 						    VB_LO_SEL_3500MV },
 };
 
+static const struct rk808_reg_data rk816_pre_init_reg[] = {
+	{ RK818_BUCK1_CONFIG_REG, RK817_RAMP_RATE_MASK,
+				  RK817_RAMP_RATE_12_5MV_PER_US },
+	{ RK818_BUCK2_CONFIG_REG, RK817_RAMP_RATE_MASK,
+				  RK817_RAMP_RATE_12_5MV_PER_US },
+	{ RK818_BUCK4_CONFIG_REG, BUCK_ILMIN_MASK,  BUCK_ILMIN_250MA },
+	{ RK808_THERMAL_REG, TEMP_HOTDIE_MSK, TEMP105C},
+	{ RK808_VB_MON_REG, VBAT_LOW_VOL_MASK | VBAT_LOW_ACT_MASK,
+			    RK808_VBAT_LOW_3V0 | EN_VABT_LOW_SHUT_DOWN },
+};
+
 static const struct rk808_reg_data rk817_pre_init_reg[] = {
 	{RK817_RTC_CTRL_REG, RTC_STOP, RTC_STOP},
 	/* Codec specific registers */
@@ -350,6 +381,59 @@ static const struct regmap_irq rk808_irqs[] = {
 	},
 };
 
+static const unsigned int rk816_irq_status_offsets[] = {
+	RK816_IRQ_STS_OFFSET(RK816_INT_STS_REG1),
+	RK816_IRQ_STS_OFFSET(RK816_INT_STS_REG2),
+	RK816_IRQ_STS_OFFSET(RK816_INT_STS_REG3),
+};
+
+static const unsigned int rk816_irq_mask_offsets[] = {
+	RK816_IRQ_MSK_OFFSET(RK816_INT_STS_MSK_REG1),
+	RK816_IRQ_MSK_OFFSET(RK816_INT_STS_MSK_REG2),
+	RK816_IRQ_MSK_OFFSET(RK816_INT_STS_MSK_REG3),
+};
+
+static unsigned int rk816_get_irq_reg(struct regmap_irq_chip_data *data,
+				      unsigned int base, int index)
+{
+	unsigned int irq_reg = base;
+
+	switch (base) {
+	case RK816_INT_STS_REG1:
+		irq_reg += rk816_irq_status_offsets[index];
+		break;
+	case RK816_INT_STS_MSK_REG1:
+		irq_reg += rk816_irq_mask_offsets[index];
+		break;
+	}
+
+	return irq_reg;
+};
+
+static const struct regmap_irq rk816_irqs[] = {
+	/* INT_STS_REG1 IRQs */
+	REGMAP_IRQ_REG(RK816_IRQ_PWRON_FALL, 0, RK816_INT_STS_PWRON_FALL),
+	REGMAP_IRQ_REG(RK816_IRQ_PWRON_RISE, 0, RK816_INT_STS_PWRON_RISE),
+
+	/* INT_STS_REG2 IRQs  */
+	REGMAP_IRQ_REG(RK816_IRQ_VB_LOW, 1, RK816_INT_STS_VB_LOW),
+	REGMAP_IRQ_REG(RK816_IRQ_PWRON, 1, RK816_INT_STS_PWRON),
+	REGMAP_IRQ_REG(RK816_IRQ_PWRON_LP, 1, RK816_INT_STS_PWRON_LP),
+	REGMAP_IRQ_REG(RK816_IRQ_HOTDIE, 1, RK816_INT_STS_HOTDIE),
+	REGMAP_IRQ_REG(RK816_IRQ_RTC_ALARM, 1, RK816_INT_STS_RTC_ALARM),
+	REGMAP_IRQ_REG(RK816_IRQ_RTC_PERIOD, 1, RK816_INT_STS_RTC_PERIOD),
+	REGMAP_IRQ_REG(RK816_IRQ_USB_OV, 1, RK816_INT_STS_USB_OV),
+
+	/* INT_STS3 IRQs */
+	REGMAP_IRQ_REG(RK816_IRQ_PLUG_IN, 2, RK816_INT_STS_PLUG_IN),
+	REGMAP_IRQ_REG(RK816_IRQ_PLUG_OUT, 2, RK816_INT_STS_PLUG_OUT),
+	REGMAP_IRQ_REG(RK816_IRQ_CHG_OK, 2, RK816_INT_STS_CHG_OK),
+	REGMAP_IRQ_REG(RK816_IRQ_CHG_TE, 2, RK816_INT_STS_CHG_TE),
+	REGMAP_IRQ_REG(RK816_IRQ_CHG_TS, 2, RK816_INT_STS_CHG_TS),
+	REGMAP_IRQ_REG(RK816_IRQ_CHG_CVTLIM, 2, RK816_INT_STS_CHG_CVTLIM),
+	REGMAP_IRQ_REG(RK816_IRQ_DISCHG_ILIM, 2, RK816_INT_STS_DISCHG_ILIM),
+};
+
 static const struct regmap_irq rk818_irqs[] = {
 	/* INT_STS */
 	[RK818_IRQ_VOUT_LO] = {
@@ -482,6 +566,18 @@ static const struct regmap_irq_chip rk808_irq_chip = {
 	.init_ack_masked = true,
 };
 
+static const struct regmap_irq_chip rk816_irq_chip = {
+	.name = "rk816",
+	.irqs = rk816_irqs,
+	.num_irqs = ARRAY_SIZE(rk816_irqs),
+	.num_regs = 3,
+	.get_irq_reg = rk816_get_irq_reg,
+	.status_base = RK816_INT_STS_REG1,
+	.mask_base = RK816_INT_STS_MSK_REG1,
+	.ack_base = RK816_INT_STS_REG1,
+	.init_ack_masked = true,
+};
+
 static struct regmap_irq_chip rk817_irq_chip = {
 	.name = "rk817",
 	.irqs = rk817_irqs,
@@ -530,6 +626,7 @@ static int rk808_power_off(struct sys_off_data *data)
 		reg = RK817_SYS_CFG(3);
 		bit = DEV_OFF;
 		break;
+	case RK816_ID:
 	case RK818_ID:
 		reg = RK818_DEVCTRL_REG;
 		bit = DEV_OFF;
@@ -637,6 +734,13 @@ int rk8xx_probe(struct device *dev, int variant, unsigned int irq, struct regmap
 		cells = rk808s;
 		nr_cells = ARRAY_SIZE(rk808s);
 		break;
+	case RK816_ID:
+		rk808->regmap_irq_chip = &rk816_irq_chip;
+		pre_init_reg = rk816_pre_init_reg;
+		nr_pre_init_regs = ARRAY_SIZE(rk816_pre_init_reg);
+		cells = rk816s;
+		nr_cells = ARRAY_SIZE(rk816s);
+		break;
 	case RK818_ID:
 		rk808->regmap_irq_chip = &rk818_irq_chip;
 		pre_init_reg = rk818_pre_init_reg;
diff --git a/drivers/mfd/rk8xx-i2c.c b/drivers/mfd/rk8xx-i2c.c
index 75b5cf09d5a0..69a6b297d723 100644
--- a/drivers/mfd/rk8xx-i2c.c
+++ b/drivers/mfd/rk8xx-i2c.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * Rockchip RK808/RK818 Core (I2C) driver
+ * Rockchip RK805/RK808/RK816/RK817/RK818 Core (I2C) driver
  *
  * Copyright (c) 2014, Fuzhou Rockchip Electronics Co., Ltd
  * Copyright (C) 2016 PHYTEC Messtechnik GmbH
@@ -49,6 +49,35 @@ static bool rk808_is_volatile_reg(struct device *dev, unsigned int reg)
 	return false;
 }
 
+static bool rk816_is_volatile_reg(struct device *dev, unsigned int reg)
+{
+	/*
+	 * Technically the ROUND_30s bit makes RTC_CTRL_REG volatile, but
+	 * we don't use that feature.  It's better to cache.
+	 */
+
+	switch (reg) {
+	case RK808_SECONDS_REG ... RK808_WEEKS_REG:
+	case RK808_RTC_STATUS_REG:
+	case RK808_VB_MON_REG:
+	case RK808_THERMAL_REG:
+	case RK816_DCDC_EN_REG1:
+	case RK816_DCDC_EN_REG2:
+	case RK816_INT_STS_REG1:
+	case RK816_INT_STS_REG2:
+	case RK816_INT_STS_REG3:
+	case RK808_DEVCTRL_REG:
+	case RK816_SUP_STS_REG:
+	case RK816_GGSTS_REG:
+	case RK816_ZERO_CUR_ADC_REGH:
+	case RK816_ZERO_CUR_ADC_REGL:
+	case RK816_GASCNT_REG(0) ... RK816_BAT_VOL_REGL:
+		return true;
+	}
+
+	return false;
+}
+
 static bool rk817_is_volatile_reg(struct device *dev, unsigned int reg)
 {
 	/*
@@ -100,6 +129,14 @@ static const struct regmap_config rk808_regmap_config = {
 	.volatile_reg = rk808_is_volatile_reg,
 };
 
+static const struct regmap_config rk816_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+	.max_register = RK816_DATA_REG(18),
+	.cache_type = REGCACHE_MAPLE,
+	.volatile_reg = rk816_is_volatile_reg,
+};
+
 static const struct regmap_config rk817_regmap_config = {
 	.reg_bits = 8,
 	.val_bits = 8,
@@ -123,6 +160,11 @@ static const struct rk8xx_i2c_platform_data rk809_data = {
 	.variant = RK809_ID,
 };
 
+static const struct rk8xx_i2c_platform_data rk816_data = {
+	.regmap_cfg = &rk816_regmap_config,
+	.variant = RK816_ID,
+};
+
 static const struct rk8xx_i2c_platform_data rk817_data = {
 	.regmap_cfg = &rk817_regmap_config,
 	.variant = RK817_ID,
@@ -161,6 +203,7 @@ static const struct of_device_id rk8xx_i2c_of_match[] = {
 	{ .compatible = "rockchip,rk805", .data = &rk805_data },
 	{ .compatible = "rockchip,rk808", .data = &rk808_data },
 	{ .compatible = "rockchip,rk809", .data = &rk809_data },
+	{ .compatible = "rockchip,rk816", .data = &rk816_data },
 	{ .compatible = "rockchip,rk817", .data = &rk817_data },
 	{ .compatible = "rockchip,rk818", .data = &rk818_data },
 	{ },
diff --git a/include/linux/mfd/rk808.h b/include/linux/mfd/rk808.h
index 78e167a92483..69cbea78b430 100644
--- a/include/linux/mfd/rk808.h
+++ b/include/linux/mfd/rk808.h
@@ -113,6 +113,148 @@ enum rk808_reg {
 #define RK808_INT_STS_MSK_REG2	0x4f
 #define RK808_IO_POL_REG	0x50
 
+/* RK816 */
+enum rk816_reg {
+	RK816_ID_DCDC1,
+	RK816_ID_DCDC2,
+	RK816_ID_DCDC3,
+	RK816_ID_DCDC4,
+	RK816_ID_LDO1,
+	RK816_ID_LDO2,
+	RK816_ID_LDO3,
+	RK816_ID_LDO4,
+	RK816_ID_LDO5,
+	RK816_ID_LDO6,
+	RK816_ID_BOOST,
+	RK816_ID_OTG_SW,
+};
+
+enum rk816_irqs {
+	/* INT_STS_REG1 */
+	RK816_IRQ_PWRON_FALL,
+	RK816_IRQ_PWRON_RISE,
+
+	/* INT_STS_REG2 */
+	RK816_IRQ_VB_LOW,
+	RK816_IRQ_PWRON,
+	RK816_IRQ_PWRON_LP,
+	RK816_IRQ_HOTDIE,
+	RK816_IRQ_RTC_ALARM,
+	RK816_IRQ_RTC_PERIOD,
+	RK816_IRQ_USB_OV,
+
+	/* INT_STS_REG3 */
+	RK816_IRQ_PLUG_IN,
+	RK816_IRQ_PLUG_OUT,
+	RK816_IRQ_CHG_OK,
+	RK816_IRQ_CHG_TE,
+	RK816_IRQ_CHG_TS,
+	RK816_IRQ_CHG_CVTLIM,
+	RK816_IRQ_DISCHG_ILIM,
+};
+
+/* power channel registers */
+#define RK816_DCDC_EN_REG1		0x23
+
+#define RK816_DCDC_EN_REG2		0x24
+#define	RK816_BOOST_EN			BIT(1)
+#define RK816_OTG_EN			BIT(2)
+#define	RK816_BOOST_EN_MSK		BIT(5)
+#define RK816_OTG_EN_MSK		BIT(6)
+#define RK816_BUCK_DVS_CONFIRM		BIT(7)
+
+#define RK816_LDO_EN_REG1		0x27
+
+#define RK816_LDO_EN_REG2		0x28
+
+/* interrupt registers and irq definitions */
+#define RK816_INT_STS_REG1		0x49
+#define RK816_INT_STS_MSK_REG1		0x4a
+#define RK816_INT_STS_PWRON_FALL	BIT(5)
+#define RK816_INT_STS_PWRON_RISE	BIT(6)
+
+#define RK816_INT_STS_REG2		0x4c
+#define RK816_INT_STS_MSK_REG2		0x4d
+#define RK816_INT_STS_VB_LOW		BIT(1)
+#define RK816_INT_STS_PWRON		BIT(2)
+#define RK816_INT_STS_PWRON_LP		BIT(3)
+#define RK816_INT_STS_HOTDIE		BIT(4)
+#define RK816_INT_STS_RTC_ALARM		BIT(5)
+#define RK816_INT_STS_RTC_PERIOD	BIT(6)
+#define RK816_INT_STS_USB_OV		BIT(7)
+
+#define RK816_INT_STS_REG3		0x4e
+#define RK816_INT_STS_MSK_REG3		0x4f
+#define RK816_INT_STS_PLUG_IN		BIT(0)
+#define RK816_INT_STS_PLUG_OUT		BIT(1)
+#define RK816_INT_STS_CHG_OK		BIT(2)
+#define RK816_INT_STS_CHG_TE		BIT(3)
+#define RK816_INT_STS_CHG_TS		BIT(4)
+#define RK816_INT_STS_CHG_CVTLIM	BIT(6)
+#define RK816_INT_STS_DISCHG_ILIM	BIT(7)
+
+#define RK816_IRQ_STS_OFFSET(x)		((x) - RK816_INT_STS_REG1)
+#define RK816_IRQ_MSK_OFFSET(x)		((x) - RK816_INT_STS_MSK_REG1)
+
+/* charger, boost and OTG registers */
+#define RK816_OTG_BUCK_LDO_CONFIG_REG	0x2a
+#define RK816_CHRG_CONFIG_REG		0x2b
+#define RK816_BOOST_ON_VESL_REG		0x54
+#define RK816_BOOST_SLP_VSEL_REG	0x55
+#define RK816_CHRG_BOOST_CONFIG_REG	0x9a
+#define RK816_SUP_STS_REG		0xa0
+#define RK816_USB_CTRL_REG		0xa1
+#define RK816_CHRG_CTRL(x)		(0xa3 + (x))
+#define RK816_BAT_CTRL_REG		0xa6
+#define RK816_BAT_HTS_TS_REG		0xa8
+#define RK816_BAT_LTS_TS_REG		0xa9
+
+/* adc and fuel gauge registers */
+#define RK816_TS_CTRL_REG		0xac
+#define RK816_ADC_CTRL_REG		0xad
+#define RK816_GGCON_REG			0xb0
+#define RK816_GGSTS_REG			0xb1
+#define RK816_ZERO_CUR_ADC_REGH		0xb2
+#define RK816_ZERO_CUR_ADC_REGL		0xb3
+#define RK816_GASCNT_CAL_REG(x)		(0xb7 - (x))
+#define RK816_GASCNT_REG(x)		(0xbb - (x))
+#define RK816_BAT_CUR_AVG_REGH		0xbc
+#define RK816_BAT_CUR_AVG_REGL		0xbd
+#define RK816_TS_ADC_REGH		0xbe
+#define RK816_TS_ADC_REGL		0xbf
+#define RK816_USB_ADC_REGH		0xc0
+#define RK816_USB_ADC_REGL		0xc1
+#define RK816_BAT_OCV_REGH		0xc2
+#define RK816_BAT_OCV_REGL		0xc3
+#define RK816_BAT_VOL_REGH		0xc4
+#define RK816_BAT_VOL_REGL		0xc5
+#define RK816_RELAX_ENTRY_THRES_REGH	0xc6
+#define RK816_RELAX_ENTRY_THRES_REGL	0xc7
+#define RK816_RELAX_EXIT_THRES_REGH	0xc8
+#define RK816_RELAX_EXIT_THRES_REGL	0xc9
+#define RK816_RELAX_VOL1_REGH		0xca
+#define RK816_RELAX_VOL1_REGL		0xcb
+#define RK816_RELAX_VOL2_REGH		0xcc
+#define RK816_RELAX_VOL2_REGL		0xcd
+#define RK816_RELAX_CUR1_REGH		0xce
+#define RK816_RELAX_CUR1_REGL		0xcf
+#define RK816_RELAX_CUR2_REGH		0xd0
+#define RK816_RELAX_CUR2_REGL		0xd1
+#define RK816_CAL_OFFSET_REGH		0xd2
+#define RK816_CAL_OFFSET_REGL		0xd3
+#define RK816_NON_ACT_TIMER_CNT_REG	0xd4
+#define RK816_VCALIB0_REGH		0xd5
+#define RK816_VCALIB0_REGL		0xd6
+#define RK816_VCALIB1_REGH		0xd7
+#define RK816_VCALIB1_REGL		0xd8
+#define RK816_FCC_GASCNT_REG(x)		(0xdc - (x))
+#define RK816_IOFFSET_REGH		0xdd
+#define RK816_IOFFSET_REGL		0xde
+#define RK816_SLEEP_CON_SAMP_CUR_REG	0xdf
+
+/* general purpose data registers 0xe0 ~ 0xf2 */
+#define RK816_DATA_REG(x)		(0xe0 + (x))
+
 /* RK818 */
 #define RK818_DCDC1			0
 #define RK818_LDO1			4
@@ -791,6 +933,7 @@ enum rk806_dvs_mode {
 #define VOUT_LO_INT	BIT(0)
 #define CLK32KOUT2_EN	BIT(0)
 
+#define TEMP105C			0x08
 #define TEMP115C			0x0c
 #define TEMP_HOTDIE_MSK			0x0c
 #define SLP_SD_MSK			(0x3 << 2)
@@ -1191,6 +1334,7 @@ enum {
 	RK806_ID = 0x8060,
 	RK808_ID = 0x0000,
 	RK809_ID = 0x8090,
+	RK816_ID = 0x8160,
 	RK817_ID = 0x8170,
 	RK818_ID = 0x8180,
 };
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
