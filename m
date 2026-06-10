Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B21E9CD98D0
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jun 2026 17:57:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TU9aMMbTpt5fQm9zM7o6c4vOGZxktA6qhMpoJCsF2ls=; b=02Hx9SclXh5EGQ
	W9lfhAru6IvCBvdJyrscYFxxfoqnhFqCuM5u8DByGpRM05FzGJuA3HGuxVbz25+EcLPAg2o+aiXYy
	iorfvFpoJYYinC2u5VKk6rldLnTx34iqOIZvPjy/dpi9hZktRrQ5teKToji3pUgS5ausb8aHJFSjh
	gw0HXsvl7rhlR+WfXSZXiJJsTBZllm68erLsy33KUkFPej7/xbvIzkS86+R0PzytEkoXyN2IP0gik
	f56sReBF6VVGuL8GhwT61LeR2NEDctOIXEm8rPCeMhEG9x2DdOcncmG8d6XzMkept5Jj8U18+zGw0
	DLxQLBPLPxZoUM+lKNJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXNBF-00000008DMN-17lQ;
	Wed, 10 Jun 2026 17:57:33 +0000
Received: from mail-oo1-xc36.google.com ([2607:f8b0:4864:20::c36])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXNBA-00000008DIA-3mA6
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Jun 2026 17:57:30 +0000
Received: by mail-oo1-xc36.google.com with SMTP id 006d021491bc7-69e98c0516dso2539637eaf.1
        for <linux-rockchip@lists.infradead.org>; Wed, 10 Jun 2026 10:57:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781114248; x=1781719048; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XGNf8sYEJ7AFX+PDgheQulrlqpfFzD3dTue52InAPLQ=;
        b=PKZAmNVRp/xotdHn8YRNRrfVPJmKkuPfM4JjIf2e2G13SzHikytSabD0zoBQ2Elo3/
         FTgSXySfv6ygMl+NK0z8AhvAOUK910LH/iPezejN9JJgOi33h6R4ygM3S4c1F+JhMdd8
         b8HtEbOw44cGWL9Spn3Kb79uquHxmhWZYNZgZR6UsX063hjTMU7iITnw8cooMGfW5wlV
         QReCJVKufGM+a0MQvhmcjAsMU+K6tpFhhaTxzwpjloJAHeQW8dA9Xhi6EhtpipjukPm5
         ExPqdlw9MxQi2xMpYD+PB2TC1/oQ/Q5PA8bT7vcJInWa8B30kMqaqTpcmtmLUjxK6kbD
         /8OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781114248; x=1781719048;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XGNf8sYEJ7AFX+PDgheQulrlqpfFzD3dTue52InAPLQ=;
        b=ILa4oAX/tWNlNsxacCLG1goknLF8/rPm9hoaUD0uvATdKb8iQWS+ZuGnVDBPggjfDl
         QZnIbeqrj2FasoMU9nKoSjqkFGUwsmuT6LPxIa6Si+781YntJ6pdfl1SpZ8+aEtwbiHK
         ExAc1WwI+kQDDnpkaAcwC6Mq2csv4tKPWE2g/d4P7iJFHtyRPfiqEyYZ0HWt+J79VI8w
         +F9fQ1RCJm22Z6CYUk4ufq2kNZoi1afOoaAq1ZE1v3LVddxOI07YgEb/Q7Wlp0p0jKAF
         aXe3pnSzewpi6Z1ZZne16fXt0dJF5purjF/JEW/RnrzbxBHZU3bIA2vcyudpx1FOuH+X
         jCJg==
X-Forwarded-Encrypted: i=1; AFNElJ+2HxIx38lz/08ym7JaYg5H/ua8kmMAwTPyOQtdRndEexr0TY/XvrzpJjXkWNSLTdIEiCZBaGW7YK62yPlUQA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxcNHZYOETV3wleUyHKNU7/mxxnxzGbCMU+BvJzvtPPkyd/xpPH
	zrYGChIK91OhxNfkMZsgvhxDqngWGYp4kr/xKrboseIrG6ZA8TTYFC5V
X-Gm-Gg: Acq92OEoAkNqijZsTZ6YaA5qSsDrNjWPUvqOOtCRCU9hHMQ7w97fSTNyivmMFGVW8y7
	zJZ/ePyKYjau+ICyWLnJTocsjAs3dluRWWEhXZd4T0XY8T4uAWeQjabg5G7SM1SZWnA9leU1w2x
	/NKze0agGLEzWOl3ytP9FHKwquj2jPluW4yaPzj/jHo2TJ8A2ZvM6n4KCfVdcnizyxDwJWS9H73
	yVzsB4w8JDwpK/9KIhT0txN6J8LdqBjAL017GsNzYYOdogP1AVU6N+K78kQEzcFzLDhUAPqC1UJ
	Whfwrs5tq/a13JSRxRUqGzKpKp7FHXoznLXXrm/JLxC6CJDBwlV4M54LTBx20b4SIjOLvYGHf/B
	y3veXWA5RhB4CFGKQZ1KNaAkLMM9W4e0xUNNofJdSfj3REnESMLqmIsS3dmAL08DF/oJj1NgGdc
	XVlik9WrfWh7Cx7wHHYj/LmXiQ1Om8qsZwEQ6aiue1qArq2vnLMeqiUA==
X-Received: by 2002:a05:6820:4d0c:b0:69d:f5b8:e11e with SMTP id 006d021491bc7-69ec7c312a6mr35491eaf.26.1781114247669;
        Wed, 10 Jun 2026 10:57:27 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:b86b:51ed:28ca:695f])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-440d7d4f449sm21180794fac.8.2026.06.10.10.57.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 10:57:27 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-iio@vger.kernel.org
Cc: andy@kernel.org,
	nuno.sa@analog.com,
	dlechner@baylibre.com,
	jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	andriy.shevchenko@intel.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V11 4/9] iio: imu: inv_icm42607: Add I2C and SPI For icm42607
Date: Wed, 10 Jun 2026 12:54:48 -0500
Message-ID: <20260610175455.19006-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260610175455.19006-1-macroalpha82@gmail.com>
References: <20260610175455.19006-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_105728_975057_B94B32A0 
X-CRM114-Status: GOOD (  23.22  )
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

Add I2C and SPI driver support for InvenSense ICM-42607 devices.
Add necessary Kconfig and Makefile to allow building of (incomplete)
driver.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/iio/imu/Kconfig                       |   1 +
 drivers/iio/imu/Makefile                      |   1 +
 drivers/iio/imu/inv_icm42607/Kconfig          |  30 +++++
 drivers/iio/imu/inv_icm42607/Makefile         |  10 ++
 drivers/iio/imu/inv_icm42607/inv_icm42607.h   |  16 +++
 .../iio/imu/inv_icm42607/inv_icm42607_core.c  |  57 ++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_i2c.c   |  92 ++++++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_spi.c   | 104 ++++++++++++++++++
 8 files changed, 311 insertions(+)
 create mode 100644 drivers/iio/imu/inv_icm42607/Kconfig
 create mode 100644 drivers/iio/imu/inv_icm42607/Makefile
 create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c
 create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c

diff --git a/drivers/iio/imu/Kconfig b/drivers/iio/imu/Kconfig
index 7e0181c27bb6..8bab4616be20 100644
--- a/drivers/iio/imu/Kconfig
+++ b/drivers/iio/imu/Kconfig
@@ -109,6 +109,7 @@ config KMX61
 	  be called kmx61.
 
 source "drivers/iio/imu/inv_icm42600/Kconfig"
+source "drivers/iio/imu/inv_icm42607/Kconfig"
 source "drivers/iio/imu/inv_icm45600/Kconfig"
 source "drivers/iio/imu/inv_mpu6050/Kconfig"
 
diff --git a/drivers/iio/imu/Makefile b/drivers/iio/imu/Makefile
index 13fb7846e9c9..3268dc2371ae 100644
--- a/drivers/iio/imu/Makefile
+++ b/drivers/iio/imu/Makefile
@@ -25,6 +25,7 @@ obj-$(CONFIG_FXOS8700_I2C) += fxos8700_i2c.o
 obj-$(CONFIG_FXOS8700_SPI) += fxos8700_spi.o
 
 obj-y += inv_icm42600/
+obj-y += inv_icm42607/
 obj-y += inv_icm45600/
 obj-y += inv_mpu6050/
 
diff --git a/drivers/iio/imu/inv_icm42607/Kconfig b/drivers/iio/imu/inv_icm42607/Kconfig
new file mode 100644
index 000000000000..7ba64e6e8d80
--- /dev/null
+++ b/drivers/iio/imu/inv_icm42607/Kconfig
@@ -0,0 +1,30 @@
+# SPDX-License-Identifier: GPL-2.0-or-later
+
+config INV_ICM42607
+	tristate
+	select IIO_BUFFER
+	select IIO_INV_SENSORS_TIMESTAMP
+
+config INV_ICM42607_I2C
+	tristate "InvenSense ICM-42607X I2C driver"
+	depends on I2C
+	select INV_ICM42607
+	select REGMAP_I2C
+	help
+	  This driver supports the InvenSense ICM-42607 motion tracking
+	  device over I2C.
+
+	  This driver can be built as a module. The module will be called
+	  inv-icm42607-i2c.
+
+config INV_ICM42607_SPI
+	tristate "InvenSense ICM-42607X SPI driver"
+	depends on SPI_MASTER
+	select INV_ICM42607
+	select REGMAP_SPI
+	help
+	  This driver supports the InvenSense ICM-42607 motion tracking
+	  device over SPI.
+
+	  This driver can be built as a module. The module will be called
+	  inv-icm42607-spi.
diff --git a/drivers/iio/imu/inv_icm42607/Makefile b/drivers/iio/imu/inv_icm42607/Makefile
new file mode 100644
index 000000000000..be109102e203
--- /dev/null
+++ b/drivers/iio/imu/inv_icm42607/Makefile
@@ -0,0 +1,10 @@
+# SPDX-License-Identifier: GPL-2.0-or-later
+
+obj-$(CONFIG_INV_ICM42607) += inv-icm42607.o
+inv-icm42607-y += inv_icm42607_core.o
+
+obj-$(CONFIG_INV_ICM42607_I2C) += inv-icm42607-i2c.o
+inv-icm42607-i2c-y += inv_icm42607_i2c.o
+
+obj-$(CONFIG_INV_ICM42607_SPI) += inv-icm42607-spi.o
+inv-icm42607-spi-y += inv_icm42607_spi.o
diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607.h b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
index 716fc0f1c3fd..743a15fb1b89 100644
--- a/drivers/iio/imu/inv_icm42607/inv_icm42607.h
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
@@ -12,6 +12,22 @@
 #include <linux/regmap.h>
 #include <linux/types.h>
 
+/*
+ * Serial bus slew rates. Rates are expressed as range between the two
+ * values with the midpoint as the typical rate. For the final value of
+ * 2ns, 2ns is considered the max value with no expressed minimum or
+ * typical value.
+ */
+enum inv_icm42607_slew_rate {
+	INV_ICM42607_SLEW_RATE_20_60NS = 0,
+	INV_ICM42607_SLEW_RATE_12_36NS = 1,
+	INV_ICM42607_SLEW_RATE_6_19NS = 2,
+	INV_ICM42607_SLEW_RATE_4_14NS = 3,
+	INV_ICM42607_SLEW_RATE_2_6NS = 4,
+	INV_ICM42607_SLEW_RATE_2NS = 5,
+	INV_ICM42607_SLEW_RATE_NB
+};
+
 enum inv_icm42607_sensor_mode {
 	INV_ICM42607_SENSOR_MODE_OFF = 0,
 	INV_ICM42607_SENSOR_MODE_STANDBY = 1,
diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
index 334264120b42..26dc09bbeaed 100644
--- a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
@@ -14,6 +14,63 @@
 
 #include "inv_icm42607.h"
 
+static bool inv_icm42607_is_volatile_reg(struct device *dev, unsigned int reg)
+{
+	switch (reg) {
+	case INV_ICM42607_REG_MCLK_RDY:
+	case INV_ICM42607_REG_SIGNAL_PATH_RESET:
+	case INV_ICM42607_REG_TEMP_DATA1 ... INV_ICM42607_REG_APEX_DATA5:
+	case INV_ICM42607_REG_APEX_CONFIG0:
+	case INV_ICM42607_REG_FIFO_CONFIG2 ... INV_ICM42607_REG_FIFO_CONFIG3:
+	case INV_ICM42607_REG_FIFO_LOST_PKT0 ... INV_ICM42607_REG_APEX_DATA3:
+	case INV_ICM42607_REG_INT_STATUS_DRDY:
+	case INV_ICM42607_REG_INT_STATUS ... INV_ICM42607_REG_FIFO_DATA:
+		return true;
+	}
+
+	return false;
+}
+
+const struct regmap_config inv_icm42607_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+	.max_register = INV_ICM42607_REG_WHOAMI,
+	.cache_type = REGCACHE_MAPLE,
+	.volatile_reg = inv_icm42607_is_volatile_reg,
+};
+EXPORT_SYMBOL_NS_GPL(inv_icm42607_regmap_config, "IIO_ICM42607");
+
+/* chip initial default configuration */
+static const struct inv_icm42607_conf inv_icm42607_default_conf = {
+	.gyro = {
+		.mode = INV_ICM42607_SENSOR_MODE_OFF,
+		.fs = INV_ICM42607_GYRO_FS_1000DPS,
+		.odr = INV_ICM42607_ODR_100HZ,
+		.filter = INV_ICM42607_FILTER_BW_25HZ,
+	},
+	.accel = {
+		.mode = INV_ICM42607_SENSOR_MODE_OFF,
+		.fs = INV_ICM42607_ACCEL_FS_4G,
+		.odr = INV_ICM42607_ODR_100HZ,
+		.filter = INV_ICM42607_FILTER_BW_25HZ,
+	},
+	.temp_en = false,
+};
+
+const struct inv_icm42607_hw inv_icm42607_hw_data = {
+	.whoami = INV_ICM42607_WHOAMI,
+	.name = "icm42607",
+	.conf = &inv_icm42607_default_conf,
+};
+EXPORT_SYMBOL_NS_GPL(inv_icm42607_hw_data, "IIO_ICM42607");
+
+const struct inv_icm42607_hw inv_icm42607p_hw_data = {
+	.whoami = INV_ICM42607P_WHOAMI,
+	.name = "icm42607p",
+	.conf = &inv_icm42607_default_conf,
+};
+EXPORT_SYMBOL_NS_GPL(inv_icm42607p_hw_data, "IIO_ICM42607");
+
 static int inv_icm42607_set_conf(struct inv_icm42607_state *st,
 				 const struct inv_icm42607_conf *conf)
 {
diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c
new file mode 100644
index 000000000000..2946d5465853
--- /dev/null
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c
@@ -0,0 +1,92 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2026 InvenSense, Inc.
+ */
+
+#include <linux/device.h>
+#include <linux/i2c.h>
+#include <linux/module.h>
+#include <linux/regmap.h>
+
+#include "inv_icm42607.h"
+
+static int inv_icm42607_i2c_bus_setup(struct inv_icm42607_state *st)
+{
+	unsigned int val;
+	int ret;
+
+	ret = regmap_clear_bits(st->map, INV_ICM42607_REG_INTF_CONFIG1,
+				INV_ICM42607_INTF_CONFIG1_I3C_DDR_EN |
+				INV_ICM42607_INTF_CONFIG1_I3C_SDR_EN);
+	if (ret)
+		return ret;
+
+	val = FIELD_PREP(INV_ICM42607_DRIVE_CONFIG2_I2C_MASK,
+			 INV_ICM42607_SLEW_RATE_12_36NS);
+	ret = regmap_update_bits(st->map, INV_ICM42607_REG_DRIVE_CONFIG2,
+				 INV_ICM42607_DRIVE_CONFIG2_I2C_MASK, val);
+	if (ret)
+		return ret;
+
+	return regmap_update_bits(st->map, INV_ICM42607_REG_INTF_CONFIG0,
+				  INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_MASK,
+				  INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_SPI_DIS);
+}
+
+static int inv_icm42607_probe(struct i2c_client *client)
+{
+	const struct inv_icm42607_hw *hw;
+	struct regmap *regmap;
+
+	hw = i2c_get_match_data(client);
+	if (!hw)
+		return dev_err_probe(&client->dev, -ENODEV,
+				     "Failed to get i2c data\n");
+
+	regmap = devm_regmap_init_i2c(client, &inv_icm42607_regmap_config);
+	if (IS_ERR(regmap))
+		return dev_err_probe(&client->dev, PTR_ERR(regmap),
+				     "Failed to register i2c regmap %ld\n",
+				     PTR_ERR(regmap));
+
+	return inv_icm42607_core_probe(regmap, hw, inv_icm42607_i2c_bus_setup);
+}
+
+static const struct i2c_device_id inv_icm42607_id[] = {
+	{
+		.name = "icm42607",
+		.driver_data = (kernel_ulong_t)&inv_icm42607_hw_data
+	}, {
+		.name = "icm42607p",
+		.driver_data = (kernel_ulong_t)&inv_icm42607p_hw_data
+	},
+	{ }
+};
+MODULE_DEVICE_TABLE(i2c, inv_icm42607_id);
+
+static const struct of_device_id inv_icm42607_of_matches[] = {
+	{
+		.compatible = "invensense,icm42607",
+		.data = &inv_icm42607_hw_data,
+	}, {
+		.compatible = "invensense,icm42607p",
+		.data = &inv_icm42607p_hw_data,
+	},
+	{ }
+};
+MODULE_DEVICE_TABLE(of, inv_icm42607_of_matches);
+
+static struct i2c_driver inv_icm42607_driver = {
+	.driver = {
+		.name = "inv-icm42607-i2c",
+		.of_match_table = inv_icm42607_of_matches,
+	},
+	.id_table = inv_icm42607_id,
+	.probe = inv_icm42607_probe,
+};
+module_i2c_driver(inv_icm42607_driver);
+
+MODULE_AUTHOR("InvenSense, Inc.");
+MODULE_DESCRIPTION("InvenSense ICM-42607x I2C driver");
+MODULE_LICENSE("GPL");
+MODULE_IMPORT_NS("IIO_ICM42607");
diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c
new file mode 100644
index 000000000000..3485777ac5b6
--- /dev/null
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c
@@ -0,0 +1,104 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2026 InvenSense, Inc.
+ */
+
+#include <linux/device.h>
+#include <linux/module.h>
+#include <linux/regmap.h>
+#include <linux/spi/spi.h>
+
+#include "inv_icm42607.h"
+
+static int inv_icm42607_spi_bus_setup(struct inv_icm42607_state *st)
+{
+	unsigned int val;
+	int ret;
+
+	/* Only support 4-wire mode for now. */
+	ret = regmap_set_bits(st->map, INV_ICM42607_REG_DEVICE_CONFIG,
+				      INV_ICM42607_DEVICE_CONFIG_SPI_AP_4WIRE);
+	if (ret)
+		return ret;
+
+	ret = regmap_clear_bits(st->map, INV_ICM42607_REG_INTF_CONFIG1,
+				INV_ICM42607_INTF_CONFIG1_I3C_DDR_EN |
+				INV_ICM42607_INTF_CONFIG1_I3C_SDR_EN);
+	if (ret)
+		return ret;
+
+	val = FIELD_PREP(INV_ICM42607_DRIVE_CONFIG3_SPI_MASK,
+			 INV_ICM42607_SLEW_RATE_2NS);
+	ret = regmap_update_bits(st->map, INV_ICM42607_REG_DRIVE_CONFIG3,
+				 INV_ICM42607_DRIVE_CONFIG3_SPI_MASK, val);
+	if (ret)
+		return ret;
+
+	return regmap_update_bits(st->map, INV_ICM42607_REG_INTF_CONFIG0,
+				  INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_MASK,
+				  INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_I2C_DIS);
+}
+
+static int inv_icm42607_probe(struct spi_device *spi)
+{
+	const struct inv_icm42607_hw *hw;
+	struct regmap *regmap;
+
+	hw = spi_get_device_match_data(spi);
+	if (!hw)
+		return dev_err_probe(&spi->dev, -ENODEV,
+				     "Failed to get SPI data\n");
+
+	if (spi->mode & SPI_3WIRE)
+		return dev_err_probe(&spi->dev, -ENODEV,
+				     "SPI 3-wire mode not supported\n");
+
+	regmap = devm_regmap_init_spi(spi, &inv_icm42607_regmap_config);
+	if (IS_ERR(regmap))
+		return dev_err_probe(&spi->dev, PTR_ERR(regmap),
+				     "Failed to register spi regmap %ld\n",
+				     PTR_ERR(regmap));
+
+	return inv_icm42607_core_probe(regmap, hw,
+				       inv_icm42607_spi_bus_setup);
+}
+
+static const struct spi_device_id inv_icm42607_spi_id_table[] = {
+	{
+		.name = "icm42607",
+		.driver_data = (kernel_ulong_t)&inv_icm42607_hw_data
+	}, {
+		.name = "icm42607p",
+		.driver_data = (kernel_ulong_t)&inv_icm42607p_hw_data
+	},
+	{ }
+};
+MODULE_DEVICE_TABLE(spi, inv_icm42607_spi_id_table);
+
+static const struct of_device_id inv_icm42607_of_matches[] = {
+	{
+		.compatible = "invensense,icm42607",
+		.data = &inv_icm42607_hw_data,
+	},
+	{
+		.compatible = "invensense,icm42607p",
+		.data = &inv_icm42607p_hw_data,
+	},
+	{ }
+};
+MODULE_DEVICE_TABLE(of, inv_icm42607_of_matches);
+
+static struct spi_driver inv_icm42607_driver = {
+	.driver = {
+		.name = "inv-icm42607-spi",
+		.of_match_table = inv_icm42607_of_matches,
+	},
+	.id_table = inv_icm42607_spi_id_table,
+	.probe = inv_icm42607_probe,
+};
+module_spi_driver(inv_icm42607_driver);
+
+MODULE_AUTHOR("InvenSense, Inc.");
+MODULE_DESCRIPTION("InvenSense ICM-42607x SPI driver");
+MODULE_LICENSE("GPL");
+MODULE_IMPORT_NS("IIO_ICM42607");
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
