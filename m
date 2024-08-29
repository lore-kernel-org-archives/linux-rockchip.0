Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BB12CA0EC6
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Aug 2024 21:33:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W2Y42Snj8p8hrM832b1tw1xS+g0WpWuLsmoUlpL0WtY=; b=Z4/h7kY1n2wVbn
	3ov6ebFIbaGH+eHzw+IoJU3B/bz7SiawyJ/JbcME4fwmVeF36VH02fP/TlLTbGw/xXKjd3eUJojnO
	Eh9gaJ6Udk12e3kF1caQBdmlt0bn8Tk2X7gAPEKtNfCh3hmjT4VbhPuBQi89ah4wy4EEY+8Y+N9zh
	8MgvhcgLfhWaLjTB2Mxtm3/IRoy05Wq4Kx1M7xkWMYK10TrLfV30VUTiahNX8FYmA/izFBVBHd8OC
	vDpX6mOSJlmXnPt9xO1IoUi3sP7UkEef/SqS+Z3Tg/3Rp1XhR9sRIu/09VmnhZBzgpZKlaung57Wa
	RzaJA/yYIc9wXdoiTdjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjmlw-00000003i0V-0WTf;
	Thu, 29 Aug 2024 21:33:40 +0000
Received: from mail-oi1-x22e.google.com ([2607:f8b0:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjmlk-00000003hvf-0U2V
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Aug 2024 21:33:34 +0000
Received: by mail-oi1-x22e.google.com with SMTP id 5614622812f47-3df0519a3ceso727637b6e.2
        for <linux-rockchip@lists.infradead.org>; Thu, 29 Aug 2024 14:33:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724967207; x=1725572007; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BEVkSlGz+LVQp0e1XzAi2LQSQcYyCnDEfdOW1JKSRCE=;
        b=RxxRD14Hv2Z94Bf17dToHt9BEUEecT9W4KMIjrHFaUv0VLT/hxPFiu/sGaprG64crf
         axwrbCG25HRmuykEM6bxn6TJaqE4ipQcS7aSVUVF+ckFz9imsUy0CaSL3msnMcrfsU7Y
         TrzXS0RCUc7CM9aMZQKTXWbMoUdWyG47MLWwVhrmytL60pnHIpcTJKDnMNlLaiBWZAfK
         gMGeHjMutltrFn0zfHfG9zUm+oPMYk0dPMpK62Mx2DjExiEI+KkoMo7cORM/4suYESKv
         TjCROIVY9qz73P5ZHL4alYVNUaXgG9hr6FBOt9vVkfiESHG5Gi8nLmTE8TIBvQVrXHNm
         PwGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724967207; x=1725572007;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BEVkSlGz+LVQp0e1XzAi2LQSQcYyCnDEfdOW1JKSRCE=;
        b=mznBTXCno5JFmqvum9K6wZvUgUll2qolB8KghrrCPMQpQHDgaXnz15bfZChZw345uo
         7fuTXfH111dkxJI8kRaNyjuXi7bSGz6qYZ0ZFKr5rYE6jRtHA2guo9o2WRjYKYELzMNx
         2fByg1rqLbnqq70VFKeOoAeIADwrz6y0ztjgp60r2KYqCz2k6UM+Tn6zSfIcRMnSQFJp
         n7EPivKa3AENjLZa55+URsmfN2HquBg6vqgA9KOCOg2d37+ypNHXBUKAqo5VAuoN6gcS
         jJVWqOokhDp+UVI3+QAiXuZghdTS8QJEXH3ahDrVK5aL0cLTqBLxOUrJewQDVShaKqEn
         DaaA==
X-Gm-Message-State: AOJu0YzLW04G9p6dlHSCuOkbZ3EvF15Q/HM39CS1ovvEYedobGC7fnGk
	bG0kd9zegbqq4uZ0qyDJoy7cTdsD1t+k6KDJUwjs929/4rQCW3Vg
X-Google-Smtp-Source: AGHT+IE691pIoHTuZyuQpm8RSTuucouXN3Jcs0ecyGQ1T4fxcgyBKWPhbRF2U6Og603oN3AtVa7UAw==
X-Received: by 2002:a05:6808:2287:b0:3df:50e:7ee2 with SMTP id 5614622812f47-3df05e552e1mr3717702b6e.24.1724967206921;
        Thu, 29 Aug 2024 14:33:26 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3df11865de3sm93097b6e.42.2024.08.29.14.33.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2024 14:33:26 -0700 (PDT)
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
Subject: [RFC 3/5] power: supply: bq257xx: Add support for BQ257XX charger manager
Date: Thu, 29 Aug 2024 16:31:00 -0500
Message-Id: <20240829213102.448047-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240829213102.448047-1-macroalpha82@gmail.com>
References: <20240829213102.448047-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_143328_210818_0836ABE6 
X-CRM114-Status: GOOD (  25.54  )
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
 drivers/power/supply/bq257xx_charger.c | 811 +++++++++++++++++++++++++
 3 files changed, 819 insertions(+)
 create mode 100644 drivers/power/supply/bq257xx_charger.c

diff --git a/drivers/power/supply/Kconfig b/drivers/power/supply/Kconfig
index bcfa63fb9f1e..9c5327245264 100644
--- a/drivers/power/supply/Kconfig
+++ b/drivers/power/supply/Kconfig
@@ -720,6 +720,13 @@ config CHARGER_BQ2515X
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
index 8dcb41545317..7652e9575f75 100644
--- a/drivers/power/supply/Makefile
+++ b/drivers/power/supply/Makefile
@@ -93,6 +93,7 @@ obj-$(CONFIG_CHARGER_BQ24190)	+= bq24190_charger.o
 obj-$(CONFIG_CHARGER_BQ24257)	+= bq24257_charger.o
 obj-$(CONFIG_CHARGER_BQ24735)	+= bq24735-charger.o
 obj-$(CONFIG_CHARGER_BQ2515X)	+= bq2515x_charger.o
+obj-$(CONFIG_CHARGER_BQ257XX)	+= bq257xx_charger.o
 obj-$(CONFIG_CHARGER_BQ25890)	+= bq25890_charger.o
 obj-$(CONFIG_CHARGER_BQ25980)	+= bq25980_charger.o
 obj-$(CONFIG_CHARGER_BQ256XX)	+= bq256xx_charger.o
diff --git a/drivers/power/supply/bq257xx_charger.c b/drivers/power/supply/bq257xx_charger.c
new file mode 100644
index 000000000000..58dcb8583897
--- /dev/null
+++ b/drivers/power/supply/bq257xx_charger.c
@@ -0,0 +1,811 @@
+// SPDX-License-Identifier: GPL-2.0
+/* BQ257XX Battery Charger Driver
+ * Copyright (C) 2024 Chris Morgan <macromorgan@hotmail.com>
+ * Based off of BQ256XX Battery Charger Driver
+ * Copyright (C) 2020 Texas Instruments Incorporated - http://www.ti.com/
+ */
+
+#include <linux/bitfield.h>
+#include <linux/i2c.h>
+#include <linux/mfd/bq257xx.h>
+#include <linux/moduleparam.h>
+#include <linux/platform_device.h>
+#include <linux/power_supply.h>
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
+ *
+ * Functions for variants of the BQ257XX IC revisions that are made
+ * available generic portions of the driver code (such as the main
+ * probe function).
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
+ *
+ * Return: Returns minimum system voltage in uV on success, or error on
+ *         failure to read device.
+ */
+static int bq25703_get_min_vsys(struct bq257xx_chg *pdata)
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
+	return (reg * BQ25703_MINVSYS_STEP_UV) + BQ25703_MINVSYS_MIN_UV;
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
+ *
+ * Return: Returns reported current from battery in uA as an absolute
+ *         value (charge and discharge are both positive integers).
+ *         Returns error if unable to read register value.
+ */
+static int bq25703_get_cur(struct bq257xx_chg *pdata)
+{
+	unsigned int reg;
+	int ret;
+
+	ret = regmap_read(pdata->bq->regmap, BQ25703_ADCIBAT_CHG, &reg);
+	if (ret < 0)
+		return ret;
+
+	if (pdata->online)
+		return FIELD_GET(BQ25703_ADCIBAT_CHG_MASK, reg) *
+			BQ25703_ADCIBAT_CHG_STEP_UA;
+	else
+		return FIELD_GET(BQ25703_ADCIBAT_DISCHG_MASK, reg) *
+			BQ25703_ADCIBAT_DIS_STEP_UA;
+}
+
+/**
+ * bq25703_get_ichg_cur() - Get the maximum reported charge current
+ * @pdata: driver platform data
+ *
+ * Return: Returns maximum set charge current from charger in uA.
+ *         Returns error if unable to read register value.
+ */
+static int bq25703_get_ichg_cur(struct bq257xx_chg *pdata)
+{
+	unsigned int reg;
+	int ret;
+
+	ret = regmap_read(pdata->bq->regmap, BQ25703_CHARGE_CURRENT, &reg);
+	if (ret)
+		return ret;
+
+	return FIELD_GET(BQ25703_ICHG_MASK, reg) * BQ25703_ICHG_STEP_UA;
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
+ *
+ * Return: Returns maximum set charge voltage from charger in uV.
+ *         Returns error if unable to read register value.
+ */
+static int bq25703_get_chrg_volt(struct bq257xx_chg *pdata)
+{
+	unsigned int reg;
+	int ret;
+
+	ret = regmap_read(pdata->bq->regmap, BQ25703_MAX_CHARGE_VOLT,
+			  &reg);
+	if (ret)
+		return ret;
+
+	return FIELD_GET(BQ25703_MAX_CHARGE_VOLT_MASK, reg) *
+		BQ25703_VBATREG_STEP_UV;
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
+ *
+ * Read the actual input current limit from the device. This can differ
+ * from the value programmed due to some autonomous functions that may
+ * be enabled (but are not currently). This is why there is a different
+ * register used.
+ *
+ * Return: Returns maximum set input current from charger in uA.
+ *         Returns error if unable to read register value.
+ */
+static int bq25703_get_iindpm(struct bq257xx_chg *pdata)
+{
+	unsigned int reg;
+	int ret;
+
+	ret = regmap_read(pdata->bq->regmap, BQ25703_IIN_DPM, &reg);
+	if (ret)
+		return ret;
+
+	reg = FIELD_GET(BQ25703_IINDPM_MASK, reg);
+	return (reg * BQ25703_IINDPM_STEP_UA) + BQ25703_IINDPM_OFFSET_UA;
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
+ *
+ * Return: Returns reported voltage from battery in uV.
+ *         Returns error if unable to read register value.
+ */
+static int bq25703_get_vbat(struct bq257xx_chg *pdata)
+{
+	unsigned int reg;
+	int ret;
+
+	ret = regmap_read(pdata->bq->regmap, BQ25703_ADCVSYSVBAT, &reg);
+	if (ret)
+		return ret;
+
+	reg = FIELD_GET(BQ25703_ADCVBAT_MASK, reg);
+
+	return (reg * BQ25703_ADCVSYSVBAT_STEP) + BQ25703_ADCVSYSVBAT_OFFSET_UV;
+
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
+	int ret = 0;
+
+	regmap_update_bits(pdata->bq->regmap, BQ25703_CHARGE_OPTION_0,
+			   BQ25703_WDTMR_ADJ_MASK,
+			   FIELD_PREP(BQ25703_WDTMR_ADJ_MASK,
+				      BQ25703_WDTMR_DISABLE));
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
+	regmap_update_bits(pdata->bq->regmap, BQ25703_CHARGE_OPTION_0,
+			   BQ25703_EN_LWPWR, !BQ25703_EN_LWPWR);
+
+	regmap_update_bits(pdata->bq->regmap, BQ25703_ADC_OPTION,
+			   BQ25703_ADC_CONV_EN, BQ25703_ADC_CONV_EN);
+
+	regmap_update_bits(pdata->bq->regmap, BQ25703_ADC_OPTION,
+			   BQ25703_ADC_START, BQ25703_ADC_START);
+
+	regmap_update_bits(pdata->bq->regmap, BQ25703_ADC_OPTION,
+			   BQ25703_ADC_FULL_SCALE, BQ25703_ADC_FULL_SCALE);
+
+	regmap_update_bits(pdata->bq->regmap, BQ25703_ADC_OPTION,
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
+	int ret = -EINVAL;
+
+	switch (prop) {
+	case POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT:
+		ret = pdata->chip->bq257xx_set_iindpm(pdata, val->intval);
+		if (ret)
+			return ret;
+		break;
+
+	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE_MAX:
+		ret = pdata->chip->bq257xx_set_vbatreg(pdata, val->intval);
+		if (ret)
+			return ret;
+		break;
+
+	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT_MAX:
+		ret = pdata->chip->bq257xx_set_ichg(pdata, val->intval);
+		if (ret)
+			return ret;
+		break;
+
+	default:
+		break;
+	}
+
+	return ret;
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
+		else if (!bq25703_get_cur(pdata))
+			val->intval = POWER_SUPPLY_STATUS_NOT_CHARGING;
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
+		val->strval = BQ257XX_MANUFACTURER;
+		break;
+
+	case POWER_SUPPLY_PROP_ONLINE:
+		val->intval = pdata->online;
+		break;
+
+	case POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT:
+		ret = bq25703_get_iindpm(pdata);
+		if (ret < 0)
+			return ret;
+		val->intval = ret;
+		break;
+
+	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE_MAX:
+		ret = bq25703_get_chrg_volt(pdata);
+		if (ret < 0)
+			return ret;
+		val->intval = ret;
+		break;
+
+	case POWER_SUPPLY_PROP_CURRENT_NOW:
+		ret = bq25703_get_cur(pdata);
+		if (ret < 0)
+			return ret;
+
+		if (pdata->online)
+			val->intval = ret;
+		else
+			val->intval = -ret;
+		break;
+
+	case POWER_SUPPLY_PROP_VOLTAGE_NOW:
+		ret = bq25703_get_vbat(pdata);
+		if (ret < 0)
+			return ret;
+		val->intval = ret;
+		break;
+
+	case POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT_MAX:
+		ret = bq25703_get_ichg_cur(pdata);
+		if (ret < 0)
+			return ret;
+		val->intval = ret;
+		break;
+
+	case POWER_SUPPLY_PROP_VOLTAGE_MIN:
+		ret = bq25703_get_min_vsys(pdata);
+		if (ret < 0)
+			return ret;
+		val->intval = ret;
+		break;
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
+static enum power_supply_usb_type bq25703_usb_types[] = {
+	POWER_SUPPLY_USB_TYPE_C,
+	POWER_SUPPLY_USB_TYPE_PD,
+	POWER_SUPPLY_USB_TYPE_PD_DRP,
+	POWER_SUPPLY_USB_TYPE_PD_PPS,
+	POWER_SUPPLY_USB_TYPE_UNKNOWN,
+};
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
+	.usb_types = bq25703_usb_types,
+	.num_usb_types = ARRAY_SIZE(bq25703_usb_types),
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
+static int bq257xx_power_supply_init(struct bq257xx_chg *pdata,
+		struct power_supply_config *psy_cfg, struct device *dev)
+{
+	pdata->charger = devm_power_supply_register(dev,
+						    &bq257xx_power_supply_desc,
+						    psy_cfg);
+	if (IS_ERR(pdata->charger)) {
+		dev_err_probe(dev, PTR_ERR(pdata->charger),
+			      "power supply register charger failed: %ld\n",
+			      PTR_ERR(pdata->charger));
+		return PTR_ERR(pdata->charger);
+	}
+
+	return 0;
+}
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
+	int ret = 0;
+
+	psy_cfg->drv_data = pdata;
+	psy_cfg->of_node = dev->of_node;
+
+	ret = device_property_read_u32(dev,
+				       "ti,minimum-sys-voltage",
+				       &pdata->vsys_min);
+	if (ret) {
+		dev_err(dev, "Cannot read ti,minimum-sys-voltage from dt\n");
+		return ret;
+	}
+
+	ret = device_property_read_u32(dev,
+				       "ti,charge-current",
+				       &pdata->ichg_max);
+	if (ret) {
+		dev_err(dev, "Cannot read ti,charge-current from dt\n");
+		return ret;
+	}
+
+	ret = device_property_read_u32(dev,
+				       "ti,max-charge-voltage",
+				       &pdata->vbat_max);
+	if (ret) {
+		dev_err(dev, "Cannot read ti,max-charge-voltage from dt\n");
+		return ret;
+	}
+
+	ret = device_property_read_u32(dev,
+				       "ti,current-limit",
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
+	pdev->dev.of_node = pdev->dev.parent->of_node;
+	pdev->dev.of_node_reused = true;
+
+	pdata = devm_kzalloc(&pdev->dev, sizeof(struct bq257xx_chg), GFP_KERNEL);
+	if (!pdata)
+		return -ENOMEM;
+
+	pdata->bq = bq;
+
+	switch (pdata->bq->variant) {
+	case BQ25703A:
+		pdata->chip = &bq25703_chip_info;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	ret = bq257xx_parse_dt(pdata, &psy_cfg, dev);
+	if (ret) {
+		dev_err(dev, "Failed to read device tree properties%d\n", ret);
+		return ret;
+	}
+
+	ret = pdata->chip->bq257xx_hw_init(pdata);
+	if (ret) {
+		dev_err(dev, "Cannot initialize the chip.\n");
+		return ret;
+	}
+
+	ret = bq257xx_power_supply_init(pdata, &psy_cfg, dev);
+	if (ret)
+		return ret;
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
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
