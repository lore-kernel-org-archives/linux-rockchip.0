Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62218C7115C
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Jun 2025 18:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NGVKgqAx6UvOUQh0H3+Vv/o8hbzhrUhygcajSyt2gjw=; b=ciC89QlEawTYjq
	E7Bljrw6htRyRYSHHzECgqE53yIUOuonX4g5THfzuFtuWFnHz0KacXncWej6hTLQGJPkyUmyybvxp
	abTp6KoCjTIPm0hoDrSLU4FkDQy5HD9q0Q0LQegmWw68OrYxbdGzzBqQlZ3Fc38MpQAPT8SOpWaky
	RUyLuWUrYcgXwDsBgXqHaF4T7mWRz85KJJMx93Oo0F/Wz7ubBWddPSqduXf47pe/wWVp+nwVfrs63
	EXN1HEFmIy3jY42Oe9+zDCFklq28F9kYzHunaP+A4u453WjD6+gg0ZDv4sWRt96oXYLD87cSUWpfT
	kuy5l7yNkGpMl78fSyUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uT2ZL-0000000074M-10jb;
	Sat, 21 Jun 2025 18:03:59 +0000
Received: from mail-ot1-x32d.google.com ([2607:f8b0:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uT2ZC-0000000070k-2r4L
	for linux-rockchip@lists.infradead.org;
	Sat, 21 Jun 2025 18:03:57 +0000
Received: by mail-ot1-x32d.google.com with SMTP id 46e09a7af769-735ae68cc78so2020495a34.1
        for <linux-rockchip@lists.infradead.org>; Sat, 21 Jun 2025 11:03:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750529030; x=1751133830; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j8zxyIYt/KaUO4fQzLpfKEjVnIK7fCQn4x+OjM+PgbA=;
        b=NgHzYSyIJzmqNc2lwZiO7HZ5/Dd8GWG59nwxwJreJfko9eyGqDME/GuVLX74bVTfdY
         P6f3X9bKj9iwzVs1er0bveH5C5fbaUkQZF5chS2vXA9sALXlHS4fX5aEV/ibq6ChqyP9
         0u19x8phoNBlP384todC0wGlHBiiQ342L3IgkT6nCI/rOYN5lcuYqvE0xqO5F6jAGoQG
         duJZ+vrfieftuSJrAQUSeURG5RWhMyo7MZHTRSSEnN7j4Oi72iFjKEviRV8M4gJ2zFQt
         ojmgxrf8Rdh49txXeZ7/AtVmx5vPD7tNwAk7fqltnkAsi/Z0kU4VqisJ09d9MGZ0L0E+
         Sm8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750529030; x=1751133830;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j8zxyIYt/KaUO4fQzLpfKEjVnIK7fCQn4x+OjM+PgbA=;
        b=oExeQqEOKw9MYg6k9v642+vKuVZvBjXR6l9n2TR14z0QS49uV5jcontKDJfyBTdxdR
         KKU/bXpIgy+OkKpKUGE2gWXTmOY/XwkSGcboPSgIUcgkI9QC0+tyhmpZReIajuYOG+PK
         MP1noPtvj74g2BlBffmXortb3R397aDYL8rVeaBoz/F3On+F+v9JN6h3AgD1xzVC/FTF
         BGmoCBiHZuS0euRiXJECEsj0pnh6rixJTSQwsac/dp44NRqHw9zTF2sbWvTtsjRHOz1T
         D0cpuq/aIdDjHP+vrvlnEIA2YoBsHXYpNHtTFR11uB6JIZXEMrNUmUY7YOr+kXBoAZt6
         SH7A==
X-Gm-Message-State: AOJu0Yx3jhC1Q9rF8jm+fYg/A4ZI1AEiMOwwRPo3Zp9hcSunDKcNxm7J
	bzxYeO1t4UqFdqO7kQmboqlRGnH8GKdf/7dEsb2/57brYaqeWsayeoCF7VN4Cw==
X-Gm-Gg: ASbGnctCFTwZSOigqMb32SiZkpy1Y8rjuUPPxwsHdxTUXkLsdDkr4Ida0gbR0+CMPd1
	f+E0aiLKOdWBNFDaKHmoQznEg1E3CsSeLTAuRYhcuaVgikCYf7tPobfALZNRDR6D6z8Osj3w37d
	uxx6OS3f9hYR7HGfSfYEdvz9UAS2inZIytdoVIJJajJnvWu16WSoyQX0g3dzvEX48a73u1v2P71
	+BT36+hTjC3BJ6UOC3peNo3lRuytH8Ne2CGG/3HCf7CyAEnbjS+XvOx5HQCx5eSD+DijwHFnhon
	CKVj5mn+NDdtqRQnRk85iNc2uxUgfkzdy4h0Q1ARtczfhKE5mxwgPX65Y2Hp
X-Google-Smtp-Source: AGHT+IFjoZvgCm1hakupPjGj2ETUuPlp0riczqdM0Ch5nwgPiw/RhR8WR76stOL7Jra0rTaXlS7T3A==
X-Received: by 2002:a05:6830:6516:b0:72a:1d92:d968 with SMTP id 46e09a7af769-73a91fbbde8mr4258494a34.19.1750529029777;
        Sat, 21 Jun 2025 11:03:49 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-73a90ca8707sm782895a34.46.2025.06.21.11.03.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Jun 2025 11:03:49 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	broonie@kernel.org,
	lgirdwood@gmail.com,
	sre@kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	lee@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 3/5] power: supply: bq257xx: Add support for BQ257XX charger manager
Date: Sat, 21 Jun 2025 13:01:17 -0500
Message-ID: <20250621180119.163423-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250621180119.163423-1-macroalpha82@gmail.com>
References: <20250621180119.163423-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250621_110350_786601_41677BB6 
X-CRM114-Status: GOOD (  24.54  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the charger function of the BQ257XX. The device is
capable of charging batteries with a layout of 1 to 4 cells in
series.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/power/supply/Kconfig           |   7 +
 drivers/power/supply/Makefile          |   1 +
 drivers/power/supply/bq257xx_charger.c | 754 +++++++++++++++++++++++++
 3 files changed, 762 insertions(+)
 create mode 100644 drivers/power/supply/bq257xx_charger.c

diff --git a/drivers/power/supply/Kconfig b/drivers/power/supply/Kconfig
index 79ddb006e2da..11893c50c5d2 100644
--- a/drivers/power/supply/Kconfig
+++ b/drivers/power/supply/Kconfig
@@ -767,6 +767,13 @@ config CHARGER_BQ2515X
 	  rail, ADC for battery and system monitoring, and push-button
 	  controller.
 
+config CHARGER_BQ257XX
+	tristate "TI BQ257XX battery charger family"
+	depends on MFD_BQ257XX
+	help
+	  Say Y to enable support for the TI BQ257XX family of battery
+	  charging integrated circuits.
+
 config CHARGER_BQ25890
 	tristate "TI BQ25890 battery charger driver"
 	depends on I2C
diff --git a/drivers/power/supply/Makefile b/drivers/power/supply/Makefile
index 4f5f8e3507f8..425caeb31fc2 100644
--- a/drivers/power/supply/Makefile
+++ b/drivers/power/supply/Makefile
@@ -97,6 +97,7 @@ obj-$(CONFIG_CHARGER_BQ24190)	+= bq24190_charger.o
 obj-$(CONFIG_CHARGER_BQ24257)	+= bq24257_charger.o
 obj-$(CONFIG_CHARGER_BQ24735)	+= bq24735-charger.o
 obj-$(CONFIG_CHARGER_BQ2515X)	+= bq2515x_charger.o
+obj-$(CONFIG_CHARGER_BQ257XX)	+= bq257xx_charger.o
 obj-$(CONFIG_CHARGER_BQ25890)	+= bq25890_charger.o
 obj-$(CONFIG_CHARGER_BQ25980)	+= bq25980_charger.o
 obj-$(CONFIG_CHARGER_BQ256XX)	+= bq256xx_charger.o
diff --git a/drivers/power/supply/bq257xx_charger.c b/drivers/power/supply/bq257xx_charger.c
new file mode 100644
index 000000000000..3d7ea423d2df
--- /dev/null
+++ b/drivers/power/supply/bq257xx_charger.c
@@ -0,0 +1,754 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * BQ257XX Battery Charger Driver
+ * Copyright (C) 2024 Chris Morgan <macromorgan@hotmail.com>
+ * Based off of BQ256XX Battery Charger Driver
+ * Copyright (C) 2020 Texas Instruments Incorporated - http://www.ti.com/
+ */
+
+#include <linux/bitfield.h>
+#include <linux/i2c.h>
+#include <linux/interrupt.h>
+#include <linux/mfd/bq257xx.h>
+#include <linux/platform_device.h>
+#include <linux/power_supply.h>
+#include <linux/property.h>
+#include <linux/regmap.h>
+
+/* Forward declaration of driver data. */
+struct bq257xx_chg;
+
+/**
+ * struct bq257xx_chip_info - chip specific routines
+ * @bq257xx_hw_init: init function for hw
+ * @bq257xx_hw_shutdown: shutdown function for hw
+ * @bq257xx_get_state: get and update state of hardware
+ * @bq257xx_set_ichg: set maximum charge current (in uA)
+ * @bq257xx_set_vbatreg: set maximum charge voltage (in uV)
+ * @bq257xx_set_iindpm: set maximum input current (in uA)
+ */
+struct bq257xx_chip_info {
+	int (*bq257xx_hw_init)(struct bq257xx_chg *pdata);
+	void (*bq257xx_hw_shutdown)(struct bq257xx_chg *pdata);
+	int (*bq257xx_get_state)(struct bq257xx_chg *pdata);
+	int (*bq257xx_set_ichg)(struct bq257xx_chg *pdata, int ichg);
+	int (*bq257xx_set_vbatreg)(struct bq257xx_chg *pdata, int vbatreg);
+	int (*bq257xx_set_iindpm)(struct bq257xx_chg *pdata, int iindpm);
+};
+
+/**
+ * struct bq257xx_chg - driver data for charger
+ * @bq257xx_chip_info: hw specific functions
+ * @bq257xx_device: parent MFD device
+ * @charger: power supply device
+ * @online: charger input is present
+ * @fast_charge: charger is in fast charge mode
+ * @pre_charge: charger is in pre-charge mode
+ * @ov_fault: charger reports over voltage fault
+ * @batoc_fault: charger reports battery over current fault
+ * @oc_fault: charger reports over current fault
+ * @usb_type: USB type reported from parent power supply
+ * @supplied: Status of parent power supply
+ * @iindpm_max: maximum input current limit (uA)
+ * @vbat_max: maximum charge voltage (uV)
+ * @ichg_max: maximum charge current (uA)
+ * @vsys_min: minimum system voltage (uV)
+ */
+struct bq257xx_chg {
+	const struct bq257xx_chip_info *chip;
+	struct bq257xx_device *bq;
+	struct power_supply *charger;
+	bool online;
+	bool fast_charge;
+	bool pre_charge;
+	bool ov_fault;
+	bool batoc_fault;
+	bool oc_fault;
+	int usb_type;
+	int supplied;
+	u32 iindpm_max;
+	u32 vbat_max;
+	u32 ichg_max;
+	u32 vsys_min;
+};
+
+/**
+ * bq25703_get_state() - Get the current state of the device
+ * @pdata: driver platform data
+ *
+ * Get the current state of the charger. Check if the charger is
+ * powered, what kind of charge state (if any) the device is in,
+ * and if there are any active faults.
+ *
+ * Return: Returns 0 on success, or error on failure to read device.
+ */
+static int bq25703_get_state(struct bq257xx_chg *pdata)
+{
+	unsigned int reg;
+	int ret;
+
+	ret = regmap_read(pdata->bq->regmap, BQ25703_CHARGER_STATUS, &reg);
+	if (ret)
+		return ret;
+
+	pdata->online = reg & BQ25703_STS_AC_STAT;
+	pdata->fast_charge = reg & BQ25703_STS_IN_FCHRG;
+	pdata->pre_charge = reg & BQ25703_STS_IN_PCHRG;
+	pdata->ov_fault = reg & BQ25703_STS_FAULT_ACOV;
+	pdata->batoc_fault = reg & BQ25703_STS_FAULT_BATOC;
+	pdata->oc_fault = reg & BQ25703_STS_FAULT_ACOC;
+
+	return 0;
+}
+
+/**
+ * bq25703_get_min_vsys() - Get the minimum system voltage
+ * @pdata: driver platform data
+ * @intval: value for minimum voltage
+ *
+ * Return: Returns 0 on success or error on failure to read.
+ */
+static int bq25703_get_min_vsys(struct bq257xx_chg *pdata, int *intval)
+{
+	unsigned int reg;
+	int ret;
+
+	ret = regmap_read(pdata->bq->regmap, BQ25703_MIN_VSYS,
+			  &reg);
+	if (ret)
+		return ret;
+
+	reg = FIELD_GET(BQ25703_MINVSYS_MASK, reg);
+	*intval = (reg * BQ25703_MINVSYS_STEP_UV) + BQ25703_MINVSYS_MIN_UV;
+
+	return ret;
+}
+
+/**
+ * bq25703_set_min_vsys() - Set the minimum system voltage
+ * @pdata: driver platform data
+ * @ichg: voltage value to set in uV.
+ *
+ * This function takes a requested minimum system voltage value, clamps
+ * it between the minimum supported value by the charger and a user
+ * defined minimum system value, and then writes the value to the
+ * appropriate register.
+ *
+ * Return: Returns 0 on success or error if an error occurs.
+ */
+static int bq25703_set_min_vsys(struct bq257xx_chg *pdata, int vsys)
+{
+	unsigned int reg;
+	int vsys_min = pdata->vsys_min;
+
+	vsys = clamp(vsys, BQ25703_MINVSYS_MIN_UV, vsys_min);
+	reg = ((vsys - BQ25703_MINVSYS_MIN_UV) / BQ25703_MINVSYS_STEP_UV);
+	reg = FIELD_PREP(BQ25703_MINVSYS_MASK, reg);
+
+	return regmap_write(pdata->bq->regmap, BQ25703_MIN_VSYS,
+			    reg);
+}
+
+/**
+ * bq25703_get_cur() - Get the reported current from the battery
+ * @pdata: driver platform data
+ * @intval: value of reported battery current
+ *
+ * Read the reported current from the battery. Since value is always
+ * positive set sign to negative if discharging.
+ *
+ * Return: Returns 0 on success or error if unable to read value.
+ */
+static int bq25703_get_cur(struct bq257xx_chg *pdata, int *intval)
+{
+	unsigned int reg;
+	int ret;
+
+	ret = regmap_read(pdata->bq->regmap, BQ25703_ADCIBAT_CHG, &reg);
+	if (ret < 0)
+		return ret;
+
+	if (pdata->online)
+		*intval = FIELD_GET(BQ25703_ADCIBAT_CHG_MASK, reg) *
+			  BQ25703_ADCIBAT_CHG_STEP_UA;
+	else
+		*intval = -(FIELD_GET(BQ25703_ADCIBAT_DISCHG_MASK, reg) *
+			    BQ25703_ADCIBAT_DIS_STEP_UA);
+
+	return ret;
+}
+
+/**
+ * bq25703_get_ichg_cur() - Get the maximum reported charge current
+ * @pdata: driver platform data
+ * @intval: value of maximum reported charge current
+ *
+ * Get the maximum reported charge current from the battery.
+ *
+ * Return: Returns 0 on success or error if unable to read value.
+ */
+static int bq25703_get_ichg_cur(struct bq257xx_chg *pdata, int *intval)
+{
+	unsigned int reg;
+	int ret;
+
+	ret = regmap_read(pdata->bq->regmap, BQ25703_CHARGE_CURRENT, &reg);
+	if (ret)
+		return ret;
+
+	*intval = FIELD_GET(BQ25703_ICHG_MASK, reg) * BQ25703_ICHG_STEP_UA;
+
+	return ret;
+}
+
+/**
+ * bq25703_set_ichg_cur() - Set the maximum charge current
+ * @pdata: driver platform data
+ * @ichg: current value to set in uA.
+ *
+ * This function takes a requested maximum charge current value, clamps
+ * it between the minimum supported value by the charger and a user
+ * defined maximum charging value, and then writes the value to the
+ * appropriate register.
+ *
+ * Return: Returns 0 on success or error if an error occurs.
+ */
+static int bq25703_set_ichg_cur(struct bq257xx_chg *pdata, int ichg)
+{
+	unsigned int reg;
+	int ichg_max = pdata->ichg_max;
+
+	ichg = clamp(ichg, BQ25703_ICHG_MIN_UA, ichg_max);
+	reg = FIELD_PREP(BQ25703_ICHG_MASK, (ichg / BQ25703_ICHG_STEP_UA));
+
+	return regmap_write(pdata->bq->regmap, BQ25703_CHARGE_CURRENT,
+			    reg);
+}
+
+/**
+ * bq25703_get_chrg_volt() - Get the maximum set charge voltage
+ * @pdata: driver platform data
+ * @intval: maximum charge voltage value
+ *
+ * Return: Returns 0 on success or error if unable to read value.
+ */
+static int bq25703_get_chrg_volt(struct bq257xx_chg *pdata, int *intval)
+{
+	unsigned int reg;
+	int ret;
+
+	ret = regmap_read(pdata->bq->regmap, BQ25703_MAX_CHARGE_VOLT,
+			  &reg);
+	if (ret)
+		return ret;
+
+	*intval = FIELD_GET(BQ25703_MAX_CHARGE_VOLT_MASK, reg) *
+		  BQ25703_VBATREG_STEP_UV;
+
+	return ret;
+}
+
+/**
+ * bq25703_set_chrg_volt() - Set the maximum charge voltage
+ * @pdata: driver platform data
+ * @vbat: voltage value to set in uV.
+ *
+ * This function takes a requested maximum charge voltage value, clamps
+ * it between the minimum supported value by the charger and a user
+ * defined maximum charging value, and then writes the value to the
+ * appropriate register.
+ *
+ * Return: Returns 0 on success or error if an error occurs.
+ */
+static int bq25703_set_chrg_volt(struct bq257xx_chg *pdata, int vbat)
+{
+	unsigned int reg;
+	int vbat_max = pdata->vbat_max;
+
+	vbat = clamp(vbat, BQ25703_VBATREG_MIN_UV, vbat_max);
+
+	reg = FIELD_PREP(BQ25703_MAX_CHARGE_VOLT_MASK,
+			 (vbat / BQ25703_VBATREG_STEP_UV));
+
+	return regmap_write(pdata->bq->regmap, BQ25703_MAX_CHARGE_VOLT,
+			    reg);
+}
+
+/**
+ * bq25703_get_iindpm() - Get the maximum set input current
+ * @pdata: driver platform data
+ * @intval: maximum input current value
+ *
+ * Read the actual input current limit from the device into intval.
+ * This can differ from the value programmed due to some autonomous
+ * functions that may be enabled (but are not currently). This is why
+ * there is a different register used.
+ *
+ * Return: Returns 0 on success or error if unable to read register
+ * value.
+ */
+static int bq25703_get_iindpm(struct bq257xx_chg *pdata, int *intval)
+{
+	unsigned int reg;
+	int ret;
+
+	ret = regmap_read(pdata->bq->regmap, BQ25703_IIN_DPM, &reg);
+	if (ret)
+		return ret;
+
+	reg = FIELD_GET(BQ25703_IINDPM_MASK, reg);
+	*intval = (reg * BQ25703_IINDPM_STEP_UA) + BQ25703_IINDPM_OFFSET_UA;
+
+	return ret;
+}
+
+/**
+ * bq25703_set_iindpm() - Set the maximum input current
+ * @pdata: driver platform data
+ * @iindpm: current value in uA.
+ *
+ * This function takes a requested maximum input current value, clamps
+ * it between the minimum supported value by the charger and a user
+ * defined maximum input value, and then writes the value to the
+ * appropriate register.
+ *
+ * Return: Returns 0 on success or error if an error occurs.
+ */
+static int bq25703_set_iindpm(struct bq257xx_chg *pdata, int iindpm)
+{
+	unsigned int reg;
+	int iindpm_max = pdata->iindpm_max;
+
+	iindpm = clamp(iindpm, BQ25703_IINDPM_MIN_UA, iindpm_max);
+
+	reg = ((iindpm - BQ25703_IINDPM_OFFSET_UA) / BQ25703_IINDPM_STEP_UA);
+
+	return regmap_write(pdata->bq->regmap, BQ25703_IIN_HOST,
+			    FIELD_PREP(BQ25703_IINDPM_MASK, reg));
+}
+
+/**
+ * bq25703_get_vbat() - Get the reported voltage from the battery
+ * @pdata: driver platform data
+ * @intval: value of reported battery voltage
+ *
+ * Read value of battery voltage into intval.
+ *
+ * Return: Returns 0 on success or error if unable to read value.
+ */
+static int bq25703_get_vbat(struct bq257xx_chg *pdata, int *intval)
+{
+	unsigned int reg;
+	int ret;
+
+	ret = regmap_read(pdata->bq->regmap, BQ25703_ADCVSYSVBAT, &reg);
+	if (ret)
+		return ret;
+
+	reg = FIELD_GET(BQ25703_ADCVBAT_MASK, reg);
+	*intval = (reg * BQ25703_ADCVSYSVBAT_STEP) + BQ25703_ADCVSYSVBAT_OFFSET_UV;
+
+	return ret;
+}
+
+/**
+ * bq25703_hw_init() - Set all the required registers to init the charger
+ * @pdata: driver platform data
+ *
+ * Initialize the BQ25703 by first disabling the watchdog timer (which
+ * shuts off the charger in the absence of periodic writes). Then, set
+ * the charge current, charge voltage, minimum system voltage, and
+ * input current limit. Disable low power mode to allow ADCs and
+ * interrupts. Enable the ADC, start the ADC, set the ADC scale to
+ * full, and enable each individual ADC channel.
+ *
+ * Return: Returns 0 on success or error code on error.
+ */
+static int bq25703_hw_init(struct bq257xx_chg *pdata)
+{
+	struct regmap *regmap = pdata->bq->regmap;
+	int ret = 0;
+
+	regmap_update_bits(regmap, BQ25703_CHARGE_OPTION_0,
+			   BQ25703_WDTMR_ADJ_MASK,
+			   FIELD_PREP(BQ25703_WDTMR_ADJ_MASK,
+			   BQ25703_WDTMR_DISABLE));
+
+	ret = pdata->chip->bq257xx_set_ichg(pdata, pdata->ichg_max);
+	if (ret)
+		return ret;
+
+	ret = pdata->chip->bq257xx_set_vbatreg(pdata, pdata->vbat_max);
+	if (ret)
+		return ret;
+
+	ret = bq25703_set_min_vsys(pdata, pdata->vsys_min);
+	if (ret)
+		return ret;
+
+	ret = pdata->chip->bq257xx_set_iindpm(pdata, pdata->iindpm_max);
+	if (ret)
+		return ret;
+
+	regmap_update_bits(regmap, BQ25703_CHARGE_OPTION_0,
+			   BQ25703_EN_LWPWR, !BQ25703_EN_LWPWR);
+
+	regmap_update_bits(regmap, BQ25703_ADC_OPTION,
+			   BQ25703_ADC_CONV_EN, BQ25703_ADC_CONV_EN);
+
+	regmap_update_bits(regmap, BQ25703_ADC_OPTION,
+			   BQ25703_ADC_START, BQ25703_ADC_START);
+
+	regmap_update_bits(regmap, BQ25703_ADC_OPTION,
+			   BQ25703_ADC_FULL_SCALE, BQ25703_ADC_FULL_SCALE);
+
+	regmap_update_bits(regmap, BQ25703_ADC_OPTION,
+			   BQ25703_ADC_CH_MASK,
+			   (BQ25703_ADC_CMPIN_EN | BQ25703_ADC_VBUS_EN |
+			   BQ25703_ADC_PSYS_EN | BQ25703_ADC_IIN_EN |
+			   BQ25703_ADC_IDCHG_EN | BQ25703_ADC_ICHG_EN |
+			   BQ25703_ADC_VSYS_EN | BQ25703_ADC_VBAT_EN));
+
+	return ret;
+}
+
+/**
+ * bq25703_hw_shutdown() - Set registers for shutdown
+ * @pdata: driver platform data
+ *
+ * Enable low power mode for the device while in shutdown.
+ */
+static void bq25703_hw_shutdown(struct bq257xx_chg *pdata)
+{
+	regmap_update_bits(pdata->bq->regmap, BQ25703_CHARGE_OPTION_0,
+			   BQ25703_EN_LWPWR, BQ25703_EN_LWPWR);
+}
+
+static int bq257xx_set_charger_property(struct power_supply *psy,
+		enum power_supply_property prop,
+		const union power_supply_propval *val)
+{
+	struct bq257xx_chg *pdata = power_supply_get_drvdata(psy);
+
+	switch (prop) {
+	case POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT:
+		return pdata->chip->bq257xx_set_iindpm(pdata, val->intval);
+
+	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE_MAX:
+		return pdata->chip->bq257xx_set_vbatreg(pdata, val->intval);
+
+	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT_MAX:
+		return pdata->chip->bq257xx_set_ichg(pdata, val->intval);
+
+	default:
+		break;
+	}
+
+	return -EINVAL;
+}
+
+static int bq257xx_get_charger_property(struct power_supply *psy,
+				enum power_supply_property psp,
+				union power_supply_propval *val)
+{
+	struct bq257xx_chg *pdata = power_supply_get_drvdata(psy);
+	int ret = 0;
+
+	ret = pdata->chip->bq257xx_get_state(pdata);
+	if (ret)
+		return ret;
+
+	switch (psp) {
+	case POWER_SUPPLY_PROP_STATUS:
+		if (!pdata->online)
+			val->intval = POWER_SUPPLY_STATUS_DISCHARGING;
+		else if (pdata->fast_charge || pdata->pre_charge)
+			val->intval = POWER_SUPPLY_STATUS_CHARGING;
+		else
+			val->intval = POWER_SUPPLY_STATUS_NOT_CHARGING;
+		break;
+
+	case POWER_SUPPLY_PROP_HEALTH:
+		if (pdata->ov_fault || pdata->batoc_fault)
+			val->intval = POWER_SUPPLY_HEALTH_OVERVOLTAGE;
+		else if (pdata->oc_fault)
+			val->intval = POWER_SUPPLY_HEALTH_OVERCURRENT;
+		else
+			val->intval = POWER_SUPPLY_HEALTH_GOOD;
+		break;
+
+	case POWER_SUPPLY_PROP_MANUFACTURER:
+		val->strval = "Texas Instruments";
+		break;
+
+	case POWER_SUPPLY_PROP_ONLINE:
+		val->intval = pdata->online;
+		break;
+
+	case POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT:
+		return bq25703_get_iindpm(pdata, &val->intval);
+
+	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE_MAX:
+		return bq25703_get_chrg_volt(pdata, &val->intval);
+
+	case POWER_SUPPLY_PROP_CURRENT_NOW:
+		return bq25703_get_cur(pdata, &val->intval);
+
+	case POWER_SUPPLY_PROP_VOLTAGE_NOW:
+		return bq25703_get_vbat(pdata, &val->intval);
+
+	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT_MAX:
+		return bq25703_get_ichg_cur(pdata, &val->intval);
+
+	case POWER_SUPPLY_PROP_VOLTAGE_MIN:
+		return bq25703_get_min_vsys(pdata, &val->intval);
+
+	case POWER_SUPPLY_PROP_USB_TYPE:
+		val->intval = pdata->usb_type;
+		break;
+
+	default:
+		return -EINVAL;
+	}
+
+	return ret;
+}
+
+static enum power_supply_property bq257xx_power_supply_props[] = {
+	POWER_SUPPLY_PROP_MANUFACTURER,
+	POWER_SUPPLY_PROP_STATUS,
+	POWER_SUPPLY_PROP_ONLINE,
+	POWER_SUPPLY_PROP_HEALTH,
+	POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT,
+	POWER_SUPPLY_PROP_CURRENT_NOW,
+	POWER_SUPPLY_PROP_VOLTAGE_NOW,
+	POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE_MAX,
+	POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT_MAX,
+	POWER_SUPPLY_PROP_VOLTAGE_MIN,
+	POWER_SUPPLY_PROP_USB_TYPE,
+};
+
+static int bq257xx_property_is_writeable(struct power_supply *psy,
+					 enum power_supply_property prop)
+{
+	switch (prop) {
+	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT_MAX:
+	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE_MAX:
+	case POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT:
+		return true;
+	default:
+		return false;
+	}
+}
+
+/**
+ * bq257xx_external_power_changed() - Handler for external power change
+ * @psy: Power supply data
+ *
+ * When the external power into the charger is changed, check the USB
+ * type so that it can be reported. Additionally, update the max input
+ * current and max charging current to the value reported if it is a
+ * USB PD charger, otherwise use the default value. Note that each time
+ * a charger is removed the max charge current register is erased, so
+ * it must be set again each time the input changes or the device will
+ * not charge.
+ */
+static void bq257xx_external_power_changed(struct power_supply *psy)
+{
+	struct bq257xx_chg *pdata = power_supply_get_drvdata(psy);
+	union power_supply_propval val;
+	int ret;
+	int imax = pdata->iindpm_max;
+
+	pdata->chip->bq257xx_get_state(pdata);
+
+	pdata->supplied = power_supply_am_i_supplied(pdata->charger);
+	if (pdata->supplied < 0)
+		return;
+
+	if (pdata->supplied == 0)
+		goto out;
+
+	ret = power_supply_get_property_from_supplier(psy,
+						      POWER_SUPPLY_PROP_USB_TYPE,
+						      &val);
+	if (ret)
+		return;
+
+	pdata->usb_type = val.intval;
+
+	if ((pdata->usb_type == POWER_SUPPLY_USB_TYPE_PD) ||
+	    (pdata->usb_type == POWER_SUPPLY_USB_TYPE_PD_DRP) ||
+	    (pdata->usb_type == POWER_SUPPLY_USB_TYPE_PD)) {
+		ret = power_supply_get_property_from_supplier(psy,
+							      POWER_SUPPLY_PROP_CURRENT_MAX,
+							      &val);
+		if (ret)
+			return;
+
+		if (val.intval)
+			imax = val.intval;
+	}
+
+	if (pdata->supplied) {
+		pdata->chip->bq257xx_set_ichg(pdata, imax);
+		pdata->chip->bq257xx_set_iindpm(pdata, imax);
+		pdata->chip->bq257xx_set_vbatreg(pdata, pdata->vbat_max);
+	}
+
+out:
+	power_supply_changed(psy);
+}
+
+static irqreturn_t bq257xx_irq_handler_thread(int irq, void *private)
+{
+	struct bq257xx_chg *pdata = private;
+
+	bq257xx_external_power_changed(pdata->charger);
+	return IRQ_HANDLED;
+}
+
+static const struct power_supply_desc bq257xx_power_supply_desc = {
+	.name = "bq257xx-charger",
+	.type = POWER_SUPPLY_TYPE_USB,
+	.usb_types = BIT(POWER_SUPPLY_USB_TYPE_C) |
+		     BIT(POWER_SUPPLY_USB_TYPE_PD) |
+		     BIT(POWER_SUPPLY_USB_TYPE_PD_DRP) |
+		     BIT(POWER_SUPPLY_USB_TYPE_PD_PPS) |
+		     BIT(POWER_SUPPLY_USB_TYPE_UNKNOWN),
+	.properties = bq257xx_power_supply_props,
+	.num_properties = ARRAY_SIZE(bq257xx_power_supply_props),
+	.get_property = bq257xx_get_charger_property,
+	.set_property = bq257xx_set_charger_property,
+	.property_is_writeable = bq257xx_property_is_writeable,
+	.external_power_changed = bq257xx_external_power_changed,
+};
+
+static const struct bq257xx_chip_info bq25703_chip_info = {
+		.bq257xx_hw_init = &bq25703_hw_init,
+		.bq257xx_hw_shutdown = &bq25703_hw_shutdown,
+		.bq257xx_get_state = &bq25703_get_state,
+		.bq257xx_set_ichg = &bq25703_set_ichg_cur,
+		.bq257xx_set_vbatreg = &bq25703_set_chrg_volt,
+		.bq257xx_set_iindpm = &bq25703_set_iindpm,
+};
+
+/**
+ * bq257xx_parse_dt() - Parse the device tree for required properties
+ * @pdata: driver platform data
+ * @psy_cfg: power supply config data
+ * @dev: device struct
+ *
+ * Read the device tree to identify the minimum system voltage, the
+ * maximum charge current, the maximum charge voltage, and the maximum
+ * input current.
+ *
+ * Return: Returns 0 on success or error code on error.
+ */
+static int bq257xx_parse_dt(struct bq257xx_chg *pdata,
+		struct power_supply_config *psy_cfg, struct device *dev)
+{
+	struct power_supply_battery_info *bat_info;
+	int ret;
+
+	ret = power_supply_get_battery_info(pdata->charger,
+					    &bat_info);
+	if (ret)
+		return dev_err_probe(dev, ret,
+				     "Unable to get battery info\n");
+
+	if ((bat_info->voltage_min_design_uv <= 0) ||
+	    (bat_info->constant_charge_voltage_max_uv <= 0) ||
+	    (bat_info->constant_charge_current_max_ua <= 0))
+		return dev_err_probe(dev, -EINVAL,
+				     "Required bat info missing or invalid\n");
+
+	pdata->vsys_min = bat_info->voltage_min_design_uv;
+	pdata->vbat_max = bat_info->constant_charge_voltage_max_uv;
+	pdata->ichg_max = bat_info->constant_charge_current_max_ua;
+
+	power_supply_put_battery_info(pdata->charger, bat_info);
+
+	ret = device_property_read_u32(dev,
+				       "input-current-limit-microamp",
+				       &pdata->iindpm_max);
+	if (ret)
+		pdata->iindpm_max = BQ25703_IINDPM_DEFAULT_UA;
+
+	return 0;
+}
+
+static int bq257xx_charger_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct bq257xx_device *bq = dev_get_drvdata(pdev->dev.parent);
+	struct bq257xx_chg *pdata;
+	struct power_supply_config psy_cfg = { };
+	int ret;
+
+	device_set_of_node_from_dev(dev, pdev->dev.parent);
+
+	pdata = devm_kzalloc(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
+	if (!pdata)
+		return -ENOMEM;
+
+	pdata->bq = bq;
+	pdata->chip = &bq25703_chip_info;
+
+	platform_set_drvdata(pdev, pdata);
+
+	psy_cfg.drv_data = pdata;
+	psy_cfg.fwnode = dev_fwnode(dev);
+
+	pdata->charger = devm_power_supply_register(dev,
+						    &bq257xx_power_supply_desc,
+						    &psy_cfg);
+	if (IS_ERR(pdata->charger))
+		return dev_err_probe(dev, PTR_ERR(pdata->charger),
+				     "Power supply register charger failed\n");
+
+	ret = bq257xx_parse_dt(pdata, &psy_cfg, dev);
+	if (ret)
+		return ret;
+
+	ret = pdata->chip->bq257xx_hw_init(pdata);
+	if (ret)
+		return dev_err_probe(dev, ret, "Cannot initialize the charger\n");
+
+	platform_set_drvdata(pdev, pdata);
+
+	if (bq->client->irq) {
+		ret = devm_request_threaded_irq(dev, bq->client->irq, NULL,
+						bq257xx_irq_handler_thread,
+						IRQF_TRIGGER_RISING |
+						IRQF_TRIGGER_FALLING |
+						IRQF_ONESHOT,
+						dev_name(&bq->client->dev), pdata);
+		if (ret < 0) {
+			dev_err(dev, "get irq fail: %d\n", ret);
+			return ret;
+		}
+	}
+
+	return ret;
+}
+
+static void bq257xx_charger_shutdown(struct platform_device *pdev)
+{
+	struct bq257xx_chg *pdata = platform_get_drvdata(pdev);
+
+	pdata->chip->bq257xx_hw_shutdown(pdata);
+}
+
+static struct platform_driver bq257xx_chg_driver = {
+	.driver = {
+		.name = "bq257xx-charger",
+	},
+	.probe = bq257xx_charger_probe,
+	.shutdown = bq257xx_charger_shutdown,
+};
+module_platform_driver(bq257xx_chg_driver);
+
+MODULE_DESCRIPTION("bq257xx charger driver");
+MODULE_AUTHOR("Chris Morgan <macromorgan@hotmail.com>");
+MODULE_LICENSE("GPL");
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
