Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7227FCD98E2
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Jun 2026 17:28:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UhPjGwT8HVF8RJSVL/TDDcFiKXMbs3btTCrMwzqe1Xw=; b=dSs8KlG899uwgU
	AeogcIJBXV/ZUAYVb8WI8kRT3iUF8m92ozV0LyLHSAFAM8ltU+BxHBY7XJt/zoTSt66ftuutHY62r
	CgFqk/xtjpGy0QorvAVvdbWH1K33b07z523aJIkgWRVMbyw+R4SWesJVZPIRbKPRBTwoh1Gg1/12N
	UOVj95sDD6UuBoV2Gr/yYhIp5tiZxD3qOkVjFnV9RoxyIC56p5fgO8jCISh62cFpxz2nH+kwUVlL6
	5Wpqcz0LrqVJPc+67XY9ao9Uw/S4I/OsahPeK/01j8wI0HZzJpuhLpzKccF25eZvUUSJpjBPpYipv
	t/rFXCrEcwT51i1SgUWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZB6e-0000000Eepv-0gY4;
	Mon, 15 Jun 2026 17:28:16 +0000
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZB6Z-0000000EemG-2DFb
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Jun 2026 17:28:13 +0000
Received: by mail-ot1-x330.google.com with SMTP id 46e09a7af769-7e6e2d54d3dso2034093a34.2
        for <linux-rockchip@lists.infradead.org>; Mon, 15 Jun 2026 10:28:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781544490; x=1782149290; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yFT4y5HSvrQVsbr0NlogPBuPe3qYuJwSrSY3DRuoJk0=;
        b=i0QHFiAEMFj/wDskeOrPARYSXKYypdJ1BoqnwAQsYvgDDJ0NbD963NKuPldVRFhPBw
         uGMLY1XQkygfMWWFqEqZCfhZPVcelTH38KNVIlBeSIfdVO8nmervIF2fz/Gi+DplRZwj
         yN1RGikbWLf4AG9cFx7gE5mPZfV8EBixjuojw/TDdbqbogU9PcYLIYxETu4lDCA9Xx/O
         8EganFcjHBrCOVz8kcqpILZw0NHFhBAO4kBQ7nRPzj9ATGb4Bsr0X41JIGyHVNig23S1
         8zL/wKftMyi7xPZSQ4e3DjfctHLnaiotDAIG3cqNkeMHVz3vdbQEcJXZX3/ASRlSIv49
         r2rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781544490; x=1782149290;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yFT4y5HSvrQVsbr0NlogPBuPe3qYuJwSrSY3DRuoJk0=;
        b=aJvBRuG82dm49iK+rNfCxvOOTedDBIghT1egoenkcTdk5R1cishlG+6MDUFYfZWKRk
         lXe0BVP6XLf7MCMQE8f6PsxuEkukenv+BiiBRvZTWuv8Cxf9wCt12CG+iEe4Qt5mlTj4
         paxSZYP7zW/WKRimXd51MEoVDf0zUOmHZ/yloDxDuAyXxSp0tNtm2ylVTjE8TEAA/FJR
         n4HZ9mDF62X4jPK76+hKZIg7UQLt20ea1icmbppN9WaP8DAXphphU5tj5f7EI/fYvVNq
         OSS7p8rstAOY40GPHK0q4A5IFY1DwF4mgs4slgn2Q0h1WX68RIqNbbXOj65KiQJ+YBWy
         Ou1g==
X-Forwarded-Encrypted: i=1; AFNElJ+ZFwtGsN2a/F0A27rltnayCutgdk8DUDp+vem2SVN/Gtotxw7aGB0Zvy812ETNF57F/utmIEB5pmHiJ4w41w==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzt7tnheY8fPDeHQ+XcmZL7nAjjlu/y+5V/kDjVcrHvzswyKKQe
	iR8kzpx9yI2ppbalda7RmqRRzr9qupLcnkN4ClBukDvvtlL1ydAvORRL
X-Gm-Gg: Acq92OFP88FASDeiFVj0bI29ixqs7TlNrCUdsg3VKPaRSmkx0Auy4l391b6LsGr6F6x
	YYEA51XqZsJHyorClHihFTx7KOmtBK22YmU2iwPiG0Irtts70FxE2qHO7JrjEDVpdoUbQLYBKuX
	4Er+laisIM5ZQHK41s6WFy5habRgKlQsCjDxe8Zn53AUW6OspFr6sOI0bcYvIWL77Wvw47Bsu43
	D9+Z6vwJWAbCWV0HvIxGyncG/jgAkqLpybE0trile+20EoWxoGDeRCQr1OGWxpGSfUEfQk4tNDr
	v57/nYvZTPuatToVuvtnz4jrk/vfGw0mvabNGzHsG24rJYStDd/UxFPmwAfho8ne8EGIL/qrCDp
	1WSL3RF4KJnAaqcCpBnoBD+z44A5k2WKJ0J9M/v3lhaeKJ2U+Pwy1kcy6f3i+H/I1fEL5IMGsZg
	leE6pS2nPWDdwGj2+QFicI0tm/5LiEm5pO
X-Received: by 2002:a05:6830:8283:b0:7dc:de56:d75a with SMTP id 46e09a7af769-7e8fc31019fmr373411a34.4.1781544490466;
        Mon, 15 Jun 2026 10:28:10 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7e79f451fe7sm4480033a34.0.2026.06.15.10.28.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2026 10:28:10 -0700 (PDT)
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
Subject: [PATCH V13 3/9] iio: imu: inv_icm42607: Add inv_icm42607 Core Driver
Date: Mon, 15 Jun 2026 12:25:46 -0500
Message-ID: <20260615172554.160910-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260615172554.160910-1-macroalpha82@gmail.com>
References: <20260615172554.160910-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_102811_645022_343A8C7E 
X-CRM114-Status: GOOD (  20.63  )
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

Add the core component of a new inv_icm42607 driver. This includes
a few setup functions and the full register definition in the
header file, as well as the bits necessary to compile and probe the
device when used on an i2c bus.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/iio/imu/Kconfig                       |   1 +
 drivers/iio/imu/Makefile                      |   1 +
 drivers/iio/imu/inv_icm42607/Kconfig          |  18 +
 drivers/iio/imu/inv_icm42607/Makefile         |   7 +
 drivers/iio/imu/inv_icm42607/inv_icm42607.h   | 347 ++++++++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_core.c  | 280 ++++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_i2c.c   |  97 +++++
 7 files changed, 751 insertions(+)
 create mode 100644 drivers/iio/imu/inv_icm42607/Kconfig
 create mode 100644 drivers/iio/imu/inv_icm42607/Makefile
 create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607.h
 create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
 create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c

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
index 000000000000..083c212087ab
--- /dev/null
+++ b/drivers/iio/imu/inv_icm42607/Kconfig
@@ -0,0 +1,18 @@
+# SPDX-License-Identifier: GPL-2.0-or-later
+
+config INV_ICM42607
+	tristate
+	select IIO_BUFFER
+	select IIO_INV_SENSORS_TIMESTAMP
+
+config INV_ICM42607_I2C
+	tristate "InvenSense ICM-42607 I2C driver"
+	depends on I2C
+	select INV_ICM42607
+	select REGMAP_I2C
+	help
+	  This driver supports the InvenSense ICM-42607 motion tracking
+	  device over I2C.
+
+	  This driver can be built as a module. The module will be called
+	  inv-icm42607-i2c.
diff --git a/drivers/iio/imu/inv_icm42607/Makefile b/drivers/iio/imu/inv_icm42607/Makefile
new file mode 100644
index 000000000000..32046e2727d7
--- /dev/null
+++ b/drivers/iio/imu/inv_icm42607/Makefile
@@ -0,0 +1,7 @@
+# SPDX-License-Identifier: GPL-2.0-or-later
+
+obj-$(CONFIG_INV_ICM42607) += inv-icm42607.o
+inv-icm42607-y += inv_icm42607_core.o
+
+obj-$(CONFIG_INV_ICM42607_I2C) += inv-icm42607-i2c.o
+inv-icm42607-i2c-y += inv_icm42607_i2c.o
diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607.h b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
new file mode 100644
index 000000000000..a6a58571935f
--- /dev/null
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
@@ -0,0 +1,347 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Copyright (C) 2026 InvenSense, Inc.
+ */
+
+#ifndef INV_ICM42607_H_
+#define INV_ICM42607_H_
+
+#include <linux/bits.h>
+#include <linux/iio/iio.h>
+#include <linux/mutex.h>
+#include <linux/regmap.h>
+#include <linux/regulator/consumer.h>
+#include <linux/time.h>
+#include <linux/types.h>
+
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
+enum inv_icm42607_sensor_mode {
+	INV_ICM42607_SENSOR_MODE_OFF = 0,
+	INV_ICM42607_SENSOR_MODE_STANDBY = 1,
+	INV_ICM42607_SENSOR_MODE_LOW_POWER = 2,
+	INV_ICM42607_SENSOR_MODE_LOW_NOISE = 3,
+	INV_ICM42607_SENSOR_MODE_NB
+};
+
+/* gyroscope fullscale values */
+enum inv_icm42607_gyro_fs {
+	INV_ICM42607_GYRO_FS_2000DPS = 0,
+	INV_ICM42607_GYRO_FS_1000DPS = 1,
+	INV_ICM42607_GYRO_FS_500DPS = 2,
+	INV_ICM42607_GYRO_FS_250DPS = 3,
+	INV_ICM42607_GYRO_FS_NB
+};
+
+/* accelerometer fullscale values */
+enum inv_icm42607_accel_fs {
+	INV_ICM42607_ACCEL_FS_16G = 0,
+	INV_ICM42607_ACCEL_FS_8G = 1,
+	INV_ICM42607_ACCEL_FS_4G = 2,
+	INV_ICM42607_ACCEL_FS_2G = 3,
+	INV_ICM42607_ACCEL_FS_NB
+};
+
+/* ODR values  - Note Gyro does not support ODR less than 12.5Hz */
+enum inv_icm42607_odr {
+	INV_ICM42607_ODR_1600HZ = 5,
+	INV_ICM42607_ODR_800HZ = 6,
+	INV_ICM42607_ODR_400HZ = 7,
+	INV_ICM42607_ODR_200HZ = 8,
+	INV_ICM42607_ODR_100HZ = 9,
+	INV_ICM42607_ODR_50HZ = 10,
+	INV_ICM42607_ODR_25HZ = 11,
+	INV_ICM42607_ODR_12_5HZ = 12,
+	INV_ICM42607_ODR_6_25HZ_LP = 13,
+	INV_ICM42607_ODR_3_125HZ_LP = 14,
+	INV_ICM42607_ODR_1_5625HZ_LP = 15,
+	INV_ICM42607_ODR_NB
+};
+
+/* Low-Noise mode sensor data filter (bandwidth) */
+enum inv_icm42607_filter_bw {
+	INV_ICM42607_FILTER_BYPASS = 0,
+	INV_ICM42607_FILTER_BW_180HZ = 1,
+	INV_ICM42607_FILTER_BW_121HZ = 2,
+	INV_ICM42607_FILTER_BW_73HZ = 3,
+	INV_ICM42607_FILTER_BW_53HZ = 4,
+	INV_ICM42607_FILTER_BW_34HZ = 5,
+	INV_ICM42607_FILTER_BW_25HZ = 6,
+	INV_ICM42607_FILTER_BW_16HZ = 7,
+	INV_ICM42607_FILTER_BW_NB
+};
+
+/* Signed so that negative values can signify an invalid condition. */
+struct inv_icm42607_sensor_conf {
+	int mode;
+	int fs;
+	int odr;
+	int filter;
+};
+
+struct inv_icm42607_conf {
+	struct inv_icm42607_sensor_conf gyro;
+	struct inv_icm42607_sensor_conf accel;
+	bool temp_en;
+};
+
+struct inv_icm42607_hw {
+	const char *name;
+	const struct inv_icm42607_conf *conf;
+	u8 whoami;
+};
+
+/**
+ *  struct inv_icm42607_state - driver state variables
+ *  @hw:		Hardware specific data.
+ *  @lock:		lock for serializing multiple registers access.
+ *  @map:		regmap pointer.
+ *  @vddio_supply:	I/O voltage regulator for the chip.
+ *  @conf:		chip sensors configurations.
+ *  @orientation:	sensor chip orientation relative to main hardware.
+ */
+struct inv_icm42607_state {
+	const struct inv_icm42607_hw *hw;
+	struct mutex lock;
+	struct regmap *map;
+	struct regulator *vddio_supply;
+	struct inv_icm42607_conf conf;
+	struct iio_mount_matrix orientation;
+};
+
+/* Virtual register addresses: @bank on MSB (4 upper bits), @address on LSB */
+
+/* Register Map for User Bank 0 */
+#define INV_ICM42607_REG_MCLK_RDY			0x00
+
+#define INV_ICM42607_REG_DEVICE_CONFIG			0x01
+#define INV_ICM42607_DEVICE_CONFIG_SPI_AP_4WIRE		BIT(2)
+#define INV_ICM42607_DEVICE_CONFIG_SPI_MODE		BIT(0)
+
+#define INV_ICM42607_REG_SIGNAL_PATH_RESET		0x02
+#define INV_ICM42607_SIGNAL_PATH_RESET_SOFT_RESET	BIT(4)
+#define INV_ICM42607_SIGNAL_PATH_RESET_FIFO_FLUSH	BIT(2)
+
+#define INV_ICM42607_REG_DRIVE_CONFIG1			0x03
+#define INV_ICM42607_DRIVE_CONFIG1_I3C_DDR_MASK		GENMASK(5, 3)
+#define INV_ICM42607_DRIVE_CONFIG1_I3C_SDR_MASK		GENMASK(2, 0)
+
+#define INV_ICM42607_REG_DRIVE_CONFIG2			0x04
+#define INV_ICM42607_DRIVE_CONFIG2_I2C_MASK		GENMASK(5, 3)
+#define INV_ICM42607_DRIVE_CONFIG2_ALL_MASK		GENMASK(2, 0)
+
+#define INV_ICM42607_REG_DRIVE_CONFIG3			0x05
+#define INV_ICM42607_DRIVE_CONFIG3_SPI_MASK		GENMASK(2, 0)
+
+#define INV_ICM42607_REG_INT_CONFIG			0x06
+#define INV_ICM42607_INT_CONFIG_INT2_LATCHED		BIT(5)
+#define INV_ICM42607_INT_CONFIG_INT2_PUSH_PULL		BIT(4)
+#define INV_ICM42607_INT_CONFIG_INT2_ACTIVE_HIGH	BIT(3)
+#define INV_ICM42607_INT_CONFIG_INT2_ACTIVE_LOW		0x00
+#define INV_ICM42607_INT_CONFIG_INT1_LATCHED		BIT(2)
+#define INV_ICM42607_INT_CONFIG_INT1_PUSH_PULL		BIT(1)
+#define INV_ICM42607_INT_CONFIG_INT1_ACTIVE_HIGH	BIT(0)
+#define INV_ICM42607_INT_CONFIG_INT1_ACTIVE_LOW		0x00
+
+/* all sensor data are 16 bits (2 registers wide) in big-endian */
+#define INV_ICM42607_REG_TEMP_DATA1			0x09
+#define INV_ICM42607_REG_TEMP_DATA0			0x0A
+#define INV_ICM42607_REG_ACCEL_DATA_X1			0x0B
+#define INV_ICM42607_REG_ACCEL_DATA_X0			0x0C
+#define INV_ICM42607_REG_ACCEL_DATA_Y1			0x0D
+#define INV_ICM42607_REG_ACCEL_DATA_Y0			0x0E
+#define INV_ICM42607_REG_ACCEL_DATA_Z1			0x0F
+#define INV_ICM42607_REG_ACCEL_DATA_Z0			0x10
+#define INV_ICM42607_REG_GYRO_DATA_X1			0x11
+#define INV_ICM42607_REG_GYRO_DATA_X0			0x12
+#define INV_ICM42607_REG_GYRO_DATA_Y1			0x13
+#define INV_ICM42607_REG_GYRO_DATA_Y0			0x14
+#define INV_ICM42607_REG_GYRO_DATA_Z1			0x15
+#define INV_ICM42607_REG_GYRO_DATA_Z0			0x16
+#define INV_ICM42607_DATA_INVALID			-32768
+
+#define INV_ICM42607_REG_TMST_FSYNCH			0x17
+#define INV_ICM42607_REG_TMST_FSYNCL			0x18
+
+/* APEX Data Registers */
+#define INV_ICM42607_REG_APEX_DATA0			0x31
+#define INV_ICM42607_REG_APEX_DATA1			0x32
+#define INV_ICM42607_REG_APEX_DATA2			0x33
+#define INV_ICM42607_REG_APEX_DATA3			0x34
+#define INV_ICM42607_REG_APEX_DATA4			0x1D
+#define INV_ICM42607_REG_APEX_DATA5			0x1E
+
+#define INV_ICM42607_REG_PWR_MGMT0			0x1F
+#define INV_ICM42607_PWR_MGMT0_ACCEL_LP_CLK_SEL		BIT(7)
+#define INV_ICM42607_PWR_MGMT0_IDLE			BIT(4)
+#define INV_ICM42607_PWR_MGMT0_GYRO_MODE_MASK		GENMASK(3, 2)
+#define INV_ICM42607_PWR_MGMT0_ACCEL_MODE_MASK		GENMASK(1, 0)
+
+#define INV_ICM42607_REG_GYRO_CONFIG0			0x20
+#define INV_ICM42607_GYRO_CONFIG0_FS_SEL_MASK		GENMASK(6, 5)
+#define INV_ICM42607_GYRO_CONFIG0_ODR_MASK		GENMASK(3, 0)
+
+#define INV_ICM42607_REG_ACCEL_CONFIG0			0x21
+#define INV_ICM42607_ACCEL_CONFIG0_FS_SEL_MASK		GENMASK(6, 5)
+#define INV_ICM42607_ACCEL_CONFIG0_ODR_MASK		GENMASK(3, 0)
+
+#define INV_ICM42607_REG_TEMP_CONFIG0			0x22
+#define INV_ICM42607_TEMP_CONFIG0_FILTER_MASK		GENMASK(6, 4)
+
+#define INV_ICM42607_REG_GYRO_CONFIG1			0x23
+#define INV_ICM42607_GYRO_CONFIG1_FILTER_MASK		GENMASK(2, 0)
+
+#define INV_ICM42607_REG_ACCEL_CONFIG1			0x24
+#define INV_ICM42607_ACCEL_CONFIG1_AVG_MASK		GENMASK(6, 4)
+#define INV_ICM42607_ACCEL_CONFIG1_FILTER_MASK		GENMASK(2, 0)
+
+#define INV_ICM42607_REG_APEX_CONFIG0			0x25
+#define INV_ICM42607_APEX_CONFIG0_DMP_POWER_SAVE_EN	BIT(3)
+#define INV_ICM42607_APEX_CONFIG0_DMP_INIT_EN		BIT(2)
+#define INV_ICM42607_APEX_CONFIG0_DMP_MEM_RESET_EN	BIT(0)
+
+#define INV_ICM42607_REG_APEX_CONFIG1			0x26
+#define INV_ICM42607_APEX_CONFIG1_SMD_ENABLE		BIT(6)
+#define INV_ICM42607_APEX_CONFIG1_FF_ENABLE		BIT(5)
+#define INV_ICM42607_APEX_CONFIG1_TILT_ENABLE		BIT(4)
+#define INV_ICM42607_APEX_CONFIG1_PED_ENABLE		BIT(3)
+#define INV_ICM42607_APEX_CONFIG1_DMP_ODR_MASK		GENMASK(1, 0)
+
+#define INV_ICM42607_REG_WOM_CONFIG			0x27
+#define INV_ICM42607_WOM_CONFIG_INT_DUR_MASK		GENMASK(4, 3)
+#define INV_ICM42607_WOM_CONFIG_INT_MODE		BIT(2)
+#define INV_ICM42607_WOM_CONFIG_MODE			BIT(1)
+#define INV_ICM42607_WOM_CONFIG_EN			BIT(0)
+
+#define INV_ICM42607_REG_FIFO_CONFIG1			0x28
+#define INV_ICM42607_FIFO_CONFIG1_MODE			BIT(1)
+#define INV_ICM42607_FIFO_CONFIG1_BYPASS		BIT(0)
+
+#define INV_ICM42607_REG_FIFO_CONFIG2			0x29
+#define INV_ICM42607_REG_FIFO_CONFIG3			0x2A
+#define INV_ICM42607_FIFO_WATERMARK_VAL(_wm)		\
+		cpu_to_le16((_wm) & GENMASK(11, 0))
+/* FIFO is 2048 bytes, let 12 samples for reading latency */
+#define INV_ICM42607_FIFO_WATERMARK_MAX			(2048 - 12 * 16)
+#define INV_ICM42607_FIFO_1SENSOR_PACKET_SIZE		8
+#define INV_ICM42607_FIFO_2SENSORS_PACKET_SIZE		16
+
+#define INV_ICM42607_REG_INT_SOURCE0			0x2B
+#define INV_ICM42607_INT_SOURCE0_ST_INT1_EN		BIT(7)
+#define INV_ICM42607_INT_SOURCE0_FSYNC_INT1_EN		BIT(6)
+#define INV_ICM42607_INT_SOURCE0_PLL_RDY_INT1_EN	BIT(5)
+#define INV_ICM42607_INT_SOURCE0_RESET_DONE_INT1_EN	BIT(4)
+#define INV_ICM42607_INT_SOURCE0_DRDY_INT1_EN		BIT(3)
+#define INV_ICM42607_INT_SOURCE0_FIFO_THS_INT1_EN	BIT(2)
+#define INV_ICM42607_INT_SOURCE0_FIFO_FULL_INT1_EN	BIT(1)
+#define INV_ICM42607_INT_SOURCE0_AGC_RDY_INT1_EN	BIT(0)
+
+#define INV_ICM42607_REG_INT_SOURCE1			0x2C
+#define INV_ICM42607_INT_SOURCE1_I3C_ERROR_INT1_EN	BIT(6)
+#define INV_ICM42607_INT_SOURCE1_SMD_INT1_EN		BIT(3)
+#define INV_ICM42607_INT_SOURCE1_WOM_INT1_EN		GENMASK(2, 0)
+
+#define INV_ICM42607_REG_INT_SOURCE3			0x2D
+#define INV_ICM42607_INT_SOURCE3_ST_INT2_EN		BIT(7)
+#define INV_ICM42607_INT_SOURCE3_FSYNC_INT2_EN		BIT(6)
+#define INV_ICM42607_INT_SOURCE3_PLL_RDY_INT2_EN	BIT(5)
+#define INV_ICM42607_INT_SOURCE3_RESET_DONE_INT2_EN	BIT(4)
+#define INV_ICM42607_INT_SOURCE3_DRDY_INT2_EN		BIT(3)
+#define INV_ICM42607_INT_SOURCE3_FIFO_THS_INT2_EN	BIT(2)
+#define INV_ICM42607_INT_SOURCE3_FIFO_FULL_INT2_EN	BIT(1)
+#define INV_ICM42607_INT_SOURCE3_AGC_RDY_INT2_EN	BIT(0)
+
+#define INV_ICM42607_REG_INT_SOURCE4			0x2E
+#define INV_ICM42607_INT_SOURCE4_I3C_ERROR_INT2_EN	BIT(6)
+#define INV_ICM42607_INT_SOURCE4_SMD_INT2_EN		BIT(3)
+#define INV_ICM42607_INT_SOURCE4_WOM_Z_INT2_EN		BIT(2)
+#define INV_ICM42607_INT_SOURCE4_WOM_Y_INT2_EN		BIT(1)
+#define INV_ICM42607_INT_SOURCE4_WOM_X_INT2_EN		BIT(0)
+
+#define INV_ICM42607_REG_FIFO_LOST_PKT0			0x2F
+#define INV_ICM42607_REG_FIFO_LOST_PKT1			0x30
+
+#define INV_ICM42607_REG_INTF_CONFIG0			0x35
+#define INV_ICM42607_INTF_CONFIG0_FIFO_COUNT_FORMAT	BIT(6)
+#define INV_ICM42607_INTF_CONFIG0_FIFO_COUNT_ENDIAN	BIT(5)
+#define INV_ICM42607_INTF_CONFIG0_SENSOR_DATA_ENDIAN	BIT(4)
+#define INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_MASK	GENMASK(1, 0)
+#define INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_SPI_DIS	2
+#define INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_I2C_DIS	3
+
+#define INV_ICM42607_REG_INTF_CONFIG1			0x36
+#define INV_ICM42607_INTF_CONFIG1_I3C_SDR_EN		BIT(3)
+#define INV_ICM42607_INTF_CONFIG1_I3C_DDR_EN		BIT(2)
+#define INV_ICM42607_INTF_CONFIG1_CLKSEL_MASK		GENMASK(1, 0)
+#define INV_ICM42607_INTF_CONFIG1_CLKSEL_INT		0
+#define INV_ICM42607_INTF_CONFIG1_CLKSEL_PLL		1
+#define INV_ICM42607_INTF_CONFIG1_CLKSEL_OFF		2
+
+#define INV_ICM42607_REG_INT_STATUS_DRDY		0x39
+#define INV_ICM42607_INT_STATUS_DRDY_DATA_RDY		BIT(0)
+
+#define INV_ICM42607_REG_INT_STATUS			0x3A
+#define INV_ICM42607_INT_STATUS_ST			BIT(7)
+#define INV_ICM42607_INT_STATUS_FSYNC			BIT(6)
+#define INV_ICM42607_INT_STATUS_PLL_RDY			BIT(5)
+#define INV_ICM42607_INT_STATUS_RESET_DONE		BIT(4)
+#define INV_ICM42607_INT_STATUS_FIFO_THS		BIT(2)
+#define INV_ICM42607_INT_STATUS_FIFO_FULL		BIT(1)
+#define INV_ICM42607_INT_STATUS_AGC_RDY			BIT(0)
+
+#define INV_ICM42607_REG_INT_STATUS2			0x3B
+#define INV_ICM42607_INT_STATUS2_SMD			BIT(3)
+#define INV_ICM42607_INT_STATUS2_WOM_INT		GENMASK(2, 0)
+
+#define INV_ICM42607_REG_INT_STATUS3			0x3C
+#define INV_ICM42607_INT_STATUS3_STEP_DET		BIT(5)
+#define INV_ICM42607_INT_STATUS3_STEP_CNT_OVF		BIT(4)
+#define INV_ICM42607_INT_STATUS3_TILT_DET		BIT(3)
+#define INV_ICM42607_INT_STATUS3_FF_DET			BIT(2)
+
+/*
+ * FIFO access registers
+ * FIFO count is 16 bits (2 registers) big-endian
+ * FIFO data is a continuous read register to read FIFO content
+ */
+#define INV_ICM42607_REG_FIFO_COUNTH			0x3D
+#define INV_ICM42607_REG_FIFO_COUNTL			0x3E
+#define INV_ICM42607_REG_FIFO_DATA			0x3F
+
+#define INV_ICM42607_REG_WHOAMI				0x75
+#define INV_ICM42607P_WHOAMI				0x60
+#define INV_ICM42607_WHOAMI				0x67
+
+/* Timings as listed in section 3 of datasheet */
+#define INV_ICM42607_POWER_UP_TIME_US			(100 * USEC_PER_MSEC)
+#define INV_ICM42607_RESET_TIME_MS			1
+#define INV_ICM42607_ACCEL_STARTUP_TIME_MS		10
+#define INV_ICM42607_GYRO_STARTUP_TIME_MS		30
+#define INV_ICM42607_GYRO_STOP_TIME_MS			45
+#define INV_ICM42607_TEMP_STARTUP_TIME_MS		77
+
+typedef int (*inv_icm42607_bus_setup)(struct inv_icm42607_state *);
+
+extern const struct regmap_config inv_icm42607_regmap_config;
+extern const struct inv_icm42607_hw inv_icm42607_hw_data;
+extern const struct inv_icm42607_hw inv_icm42607p_hw_data;
+
+int inv_icm42607_core_probe(struct regmap *regmap,
+			    const struct inv_icm42607_hw *hw,
+			    inv_icm42607_bus_setup bus_setup);
+
+#endif
diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
new file mode 100644
index 000000000000..4b8e19091786
--- /dev/null
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
@@ -0,0 +1,280 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2026 InvenSense, Inc.
+ */
+
+#include <linux/bitfield.h>
+#include <linux/delay.h>
+#include <linux/dev_printk.h>
+#include <linux/device/devres.h>
+#include <linux/err.h>
+#include <linux/iio/iio.h>
+#include <linux/module.h>
+#include <linux/mutex.h>
+#include <linux/regmap.h>
+#include <linux/regulator/consumer.h>
+#include <linux/time.h>
+#include <linux/types.h>
+
+#include "inv_icm42607.h"
+
+static bool inv_icm42607_is_readable_reg(struct device *dev, unsigned int reg)
+{
+	switch (reg) {
+	case INV_ICM42607_REG_MCLK_RDY ... INV_ICM42607_REG_INT_CONFIG:
+	case INV_ICM42607_REG_TEMP_DATA1 ... INV_ICM42607_REG_TMST_FSYNCL:
+	case INV_ICM42607_REG_APEX_DATA4 ... INV_ICM42607_REG_INTF_CONFIG1:
+	case INV_ICM42607_REG_INT_STATUS_DRDY ... INV_ICM42607_REG_FIFO_DATA:
+	case INV_ICM42607_REG_WHOAMI:
+		return true;
+	}
+
+	return false;
+}
+
+static bool inv_icm42607_is_writeable_reg(struct device *dev, unsigned int reg)
+{
+	switch (reg) {
+	case INV_ICM42607_REG_DEVICE_CONFIG ... INV_ICM42607_REG_INT_CONFIG:
+	case INV_ICM42607_REG_PWR_MGMT0 ... INV_ICM42607_REG_INT_SOURCE4:
+	case INV_ICM42607_REG_INTF_CONFIG0 ... INV_ICM42607_REG_INTF_CONFIG1:
+		return true;
+	}
+
+	return false;
+}
+
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
+	.writeable_reg = inv_icm42607_is_writeable_reg,
+	.readable_reg = inv_icm42607_is_readable_reg,
+	.volatile_reg = inv_icm42607_is_volatile_reg,
+	.max_register = INV_ICM42607_REG_WHOAMI,
+	.cache_type = REGCACHE_MAPLE,
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
+static int inv_icm42607_set_conf(struct inv_icm42607_state *st,
+				 const struct inv_icm42607_conf *conf)
+{
+	unsigned int val;
+	int ret;
+
+	val = FIELD_PREP(INV_ICM42607_PWR_MGMT0_GYRO_MODE_MASK, conf->gyro.mode);
+	val |= FIELD_PREP(INV_ICM42607_PWR_MGMT0_ACCEL_MODE_MASK, conf->accel.mode);
+	ret = regmap_write(st->map, INV_ICM42607_REG_PWR_MGMT0, val);
+	if (ret)
+		return ret;
+
+	val = FIELD_PREP(INV_ICM42607_GYRO_CONFIG0_FS_SEL_MASK, conf->gyro.fs);
+	val |= FIELD_PREP(INV_ICM42607_GYRO_CONFIG0_ODR_MASK, conf->gyro.odr);
+	ret = regmap_write(st->map, INV_ICM42607_REG_GYRO_CONFIG0, val);
+	if (ret)
+		return ret;
+
+	val = FIELD_PREP(INV_ICM42607_ACCEL_CONFIG0_FS_SEL_MASK, conf->accel.fs);
+	val |= FIELD_PREP(INV_ICM42607_ACCEL_CONFIG0_ODR_MASK, conf->accel.odr);
+	ret = regmap_write(st->map, INV_ICM42607_REG_ACCEL_CONFIG0, val);
+	if (ret)
+		return ret;
+
+	val = FIELD_PREP(INV_ICM42607_GYRO_CONFIG1_FILTER_MASK, conf->gyro.filter);
+	ret = regmap_update_bits(st->map, INV_ICM42607_REG_GYRO_CONFIG1,
+				 INV_ICM42607_GYRO_CONFIG1_FILTER_MASK, val);
+	if (ret)
+		return ret;
+
+	val = FIELD_PREP(INV_ICM42607_ACCEL_CONFIG1_FILTER_MASK, conf->accel.filter);
+	ret = regmap_update_bits(st->map, INV_ICM42607_REG_ACCEL_CONFIG1,
+				 INV_ICM42607_ACCEL_CONFIG1_FILTER_MASK, val);
+	if (ret)
+		return ret;
+
+	st->conf = *conf;
+
+	return 0;
+}
+
+static int inv_icm42607_setup(struct inv_icm42607_state *st,
+			      inv_icm42607_bus_setup inv_icm42607_bus_setup)
+{
+	const struct device *dev = regmap_get_device(st->map);
+	unsigned int val;
+	int ret;
+
+	ret = regmap_read(st->map, INV_ICM42607_REG_WHOAMI, &val);
+	if (ret)
+		return ret;
+
+	/* Warn, but don't fail. */
+	if (val != st->hw->whoami)
+		dev_warn(dev, "Unknown whoami %#02x expected %#02x (%s)\n",
+			 val, st->hw->whoami, st->hw->name);
+
+	ret = regmap_write(st->map, INV_ICM42607_REG_SIGNAL_PATH_RESET,
+			   INV_ICM42607_SIGNAL_PATH_RESET_SOFT_RESET);
+	if (ret)
+		return ret;
+
+	fsleep(1 * USEC_PER_MSEC);
+
+	/*
+	 * No polling interval specified in datasheet, so use reset time as
+	 * polling interval and 10x reset time as timeout period.
+	 */
+	ret = regmap_read_poll_timeout(st->map, INV_ICM42607_REG_INT_STATUS,
+				       val, val & INV_ICM42607_INT_STATUS_RESET_DONE,
+				       1 * USEC_PER_MSEC, 10 * USEC_PER_MSEC);
+	if (ret)
+		return dev_err_probe(dev, ret,
+				     "reset error, reset done bit not set\n");
+
+	/* Sync the regcache again after a reset. */
+	regcache_mark_dirty(st->map);
+	ret = regcache_sync(st->map);
+	if (ret)
+		return ret;
+
+	ret = inv_icm42607_bus_setup(st);
+	if (ret)
+		return ret;
+
+	ret = regmap_set_bits(st->map, INV_ICM42607_REG_INTF_CONFIG0,
+			      INV_ICM42607_INTF_CONFIG0_SENSOR_DATA_ENDIAN);
+	if (ret)
+		return ret;
+
+	val = FIELD_PREP(INV_ICM42607_INTF_CONFIG1_CLKSEL_MASK,
+			 INV_ICM42607_INTF_CONFIG1_CLKSEL_PLL);
+	ret = regmap_update_bits(st->map, INV_ICM42607_REG_INTF_CONFIG1,
+				 INV_ICM42607_INTF_CONFIG1_CLKSEL_MASK,
+				 val);
+	if (ret)
+		return ret;
+
+	return inv_icm42607_set_conf(st, st->hw->conf);
+}
+
+static int inv_icm42607_enable_vddio_reg(struct inv_icm42607_state *st)
+{
+	int ret;
+
+	ret = regulator_enable(st->vddio_supply);
+	if (ret)
+		return ret;
+
+	fsleep(INV_ICM42607_POWER_UP_TIME_US);
+
+	return 0;
+}
+
+static void inv_icm42607_disable_vddio_reg(void *_data)
+{
+	struct inv_icm42607_state *st = _data;
+
+	regulator_disable(st->vddio_supply);
+}
+
+int inv_icm42607_core_probe(struct regmap *regmap,
+			    const struct inv_icm42607_hw *hw,
+			    inv_icm42607_bus_setup inv_icm42607_bus_setup)
+{
+	struct device *dev = regmap_get_device(regmap);
+	struct inv_icm42607_state *st;
+	int ret;
+
+	st = devm_kzalloc(dev, sizeof(*st), GFP_KERNEL);
+	if (!st)
+		return -ENOMEM;
+
+	ret = devm_mutex_init(dev, &st->lock);
+	if (ret)
+		return ret;
+
+	st->hw = hw;
+	st->map = regmap;
+
+	ret = iio_read_mount_matrix(dev, &st->orientation);
+	if (ret)
+		return dev_err_probe(dev, ret,
+				     "failed to retrieve mounting matrix\n");
+
+	ret = devm_regulator_get_enable(dev, "vdd");
+	if (ret)
+		return dev_err_probe(dev, ret,
+				     "Failed to get vdd regulator\n");
+
+	st->vddio_supply = devm_regulator_get(dev, "vddio");
+	if (IS_ERR(st->vddio_supply))
+		return dev_err_probe(dev, PTR_ERR(st->vddio_supply),
+				     "Failed to get vddio regulator\n");
+
+	ret = inv_icm42607_enable_vddio_reg(st);
+	if (ret)
+		return ret;
+
+	ret = devm_add_action_or_reset(dev, inv_icm42607_disable_vddio_reg, st);
+	if (ret)
+		return ret;
+
+	/* Setup chip registers (includes WHOAMI check, reset check, bus setup) */
+	ret = inv_icm42607_setup(st, inv_icm42607_bus_setup);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+EXPORT_SYMBOL_NS_GPL(inv_icm42607_core_probe, "IIO_ICM42607");
+
+MODULE_AUTHOR("InvenSense, Inc.");
+MODULE_DESCRIPTION("InvenSense ICM-42607 device driver");
+MODULE_LICENSE("GPL");
diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c
new file mode 100644
index 000000000000..bde931752eb8
--- /dev/null
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c
@@ -0,0 +1,97 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2026 InvenSense, Inc.
+ */
+
+#include <linux/bitfield.h>
+#include <linux/dev_printk.h>
+#include <linux/err.h>
+#include <linux/i2c.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/regmap.h>
+
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
+	val = FIELD_PREP(INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_MASK,
+			 INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_SPI_DIS);
+	return regmap_update_bits(st->map, INV_ICM42607_REG_INTF_CONFIG0,
+				  INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_MASK,
+				  val);
+}
+
+static int inv_icm42607_probe(struct i2c_client *client)
+{
+	struct device *dev = &client->dev;
+	const struct inv_icm42607_hw *hw;
+	struct regmap *regmap;
+
+	hw = i2c_get_match_data(client);
+	if (!hw)
+		return dev_err_probe(dev, -ENODEV, "Failed to get i2c data\n");
+
+	regmap = devm_regmap_init_i2c(client, &inv_icm42607_regmap_config);
+	if (IS_ERR(regmap))
+		return dev_err_probe(dev, PTR_ERR(regmap),
+				     "Failed to register i2c regmap\n");
+
+	return inv_icm42607_core_probe(regmap, hw, inv_icm42607_i2c_bus_setup);
+}
+
+static const struct i2c_device_id inv_icm42607_id[] = {
+	{
+		.name = "icm42607",
+		.driver_data = (kernel_ulong_t)&inv_icm42607_hw_data,
+	}, {
+		.name = "icm42607p",
+		.driver_data = (kernel_ulong_t)&inv_icm42607p_hw_data,
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
+MODULE_DESCRIPTION("InvenSense ICM-42607 I2C driver");
+MODULE_LICENSE("GPL");
+MODULE_IMPORT_NS("IIO_ICM42607");
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
