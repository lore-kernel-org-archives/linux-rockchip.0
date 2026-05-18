Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03C93CD4F56
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 May 2026 20:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RrfrP5PyFOPgEggUabS8fCKZ++nQqClsdYl3O1o11r0=; b=xdHtCI9ZYW0/ww
	r0syc8wZ8Oyz4hppnSZ+U/gboKb5Kj4WfoW5CNceozpKAlsi0uf11dQQrrUuH6gU1kv27y/DeH7je
	UfJlAuEdWBgyFj4eyQfGyor0st77ILUNeaBEKwLTa7qjtEWGWqBluEYOuRY5PSDOy+2YByatyRXwT
	NJGLsjsTU+UZEGZA0KHyIjpqSYvnUfZ5H5LOOrxdT9YfzVEl+UpURzvFSlgb+EgY3nIfnhvgRoaLb
	v1XDija0HE0E+ULLtzu5SEtN7/Dpg7qS34BVckLGuKtzt95GXiCf0h0tP4aDKniB2OhAN7GQ8qGdW
	YV/0iFYZMFfgiWawSFPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP4Fn-0000000GqFY-3wKS;
	Mon, 18 May 2026 20:07:55 +0000
Received: from mail-oo1-xc33.google.com ([2607:f8b0:4864:20::c33])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP4Fl-0000000GqDF-2Tez
	for linux-rockchip@lists.infradead.org;
	Mon, 18 May 2026 20:07:54 +0000
Received: by mail-oo1-xc33.google.com with SMTP id 006d021491bc7-6948d7ccfbbso898968eaf.1
        for <linux-rockchip@lists.infradead.org>; Mon, 18 May 2026 13:07:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779134873; x=1779739673; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PO+WjM/y+S7GR0kKVrHi4EE+V8bPFvKETpUCcjTZKaw=;
        b=iY4MYkkjXhY5qB5apm1/tfNlfXMtQO/7EClK05sYTXRtrrZtzDKKTnBmwwazLQDcYq
         4E5lXogzeiLRMhjYmg9LkIr+2qoix7w6pmnF8hOnT+1JlIfqW9UXCRfLj1baC2S11yFY
         RA748ne5lGPOKAtBUlqkzmiccJh8MBHlX5DzCDqoliN4rkmTw+BhIXXYHocDfbZkAAc2
         NlD7YaWZDQj1Q+dDWWZnegVt2Yi0abIeLFsyuHkGtN4C74DnqJP0RgC+K2hCGUaLQw49
         rT8bduY7l4eMewHsAdK2BvzoTRCtV/5HDvoPdwppW+Um8fX0EV/V+Z8M+QxoJ6g555L9
         1AXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779134873; x=1779739673;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PO+WjM/y+S7GR0kKVrHi4EE+V8bPFvKETpUCcjTZKaw=;
        b=ZjB/24sDcgH5V+uwVaMeRZXgyAC1Fm165i5kdLRcRBba9X6cZsd/SaJYVEcf6su14A
         Ps2dW067QaKsP0vrcx3/udyHEy0zaq6Q9jso9dxdLxe5avWZ51ZrLEI/BFUGZhEfhKnY
         NkXygrtYLXAs5DzWbKBJj/mpiXPhDeSGCtl3zLB/yZoqoABSm8TSt31AGBCoY8SYtiu+
         1DFSoEiQZb3VXRfjdY6nPgeEogAfKETg4XsPTWYOxrwfb7lMeXwvNA3+fldys/0iJOmz
         V7XGcyKwGJ7tpdDQCX2eCOSqdTsEIBI7OTNMv+BJuKIT6QzVgxwmcYd6Khqj3MeZharr
         FX8Q==
X-Forwarded-Encrypted: i=1; AFNElJ9uPNyeXxvNqBmHkIjsRFd3qs/aWIJA4mRTBUk6m6AXum9JtYrMCElBKA268RA9xuby8i4QGCQSAjrOMy1vQQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwJ+5RgaNjZ5j81psekaRfgY914lcDbHg+D19RR85rKn/Ql2a1F
	mmBYRTP6fc9SmKCOGJTXscYhaY5u0gq37XKJpwq3s5P+0+S8BeUBl3YP
X-Gm-Gg: Acq92OEg4ab0PZhSNM6AIh8UJYLNGKy4rZOfUTd3IsI8OiX6p77RC8R0XNHDoO+8NYZ
	QQ3xm6qkFMUJyRd5g94Qfga6as15EEPdriELBtdjb/Efy89lWqlFnBnxlEHyCNClQT7R0FxeVuY
	2WMUcmyT+x6ETcnIBDzm9aH8cy1FCsl173rbgYTvChrC42wRXT9gfLmJ9jjw/gnSlio90Q2zYLg
	DBEVo/QiHw38FHzVqd7LOvcXN7DHcX0Za/pXM8zQMKsQ+1XQguMhNhpCQ8xNp4m45PVXhxelZC2
	dRYWC3WDrOhFBqZ4vbvEs4RvsUZmqleFZ1Mg6jxVt9NwJs4e7V58F8NJqkmQZcdx+ie2KGQVQDo
	Z40QuzpS5MorsncMhEM3idkKVVtbAZPO1E6DUMsJd7yHw5SZMWZcq1bVxmLeEokX35EX23xHn8Y
	hOKsN3bozrRHleMW6+rI5rLsRhg/KUtek=
X-Received: by 2002:a05:6820:2908:b0:69b:5696:e64d with SMTP id 006d021491bc7-69c9434a676mr11450525eaf.13.1779134872802;
        Mon, 18 May 2026 13:07:52 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-69d0462e85esm6113360eaf.6.2026.05.18.13.07.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2026 13:07:52 -0700 (PDT)
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
Subject: [PATCH V8 03/10] iio: imu: inv_icm42607: Add inv_icm42607 Core Driver
Date: Mon, 18 May 2026 15:05:18 -0500
Message-ID: <20260518200526.458421-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260518200526.458421-1-macroalpha82@gmail.com>
References: <20260518200526.458421-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_130753_694090_77D108C0 
X-CRM114-Status: GOOD (  15.67  )
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
header file.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/iio/imu/inv_icm42607/inv_icm42607.h   | 332 ++++++++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_core.c  | 197 +++++++++++
 2 files changed, 529 insertions(+)
 create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607.h
 create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_core.c

diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607.h b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
new file mode 100644
index 000000000000..6c5e7d9b08b7
--- /dev/null
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
@@ -0,0 +1,332 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Copyright (C) 2026 InvenSense, Inc.
+ */
+
+#ifndef INV_ICM42607_H_
+#define INV_ICM42607_H_
+
+#include <linux/bitfield.h>
+#include <linux/bitops.h>
+#include <linux/iio/iio.h>
+#include <linux/mutex.h>
+#include <linux/regmap.h>
+#include <linux/regulator/consumer.h>
+
+enum inv_icm42607_sensor_mode {
+	INV_ICM42607_SENSOR_MODE_OFF,
+	INV_ICM42607_SENSOR_MODE_STANDBY,
+	INV_ICM42607_SENSOR_MODE_LOW_POWER,
+	INV_ICM42607_SENSOR_MODE_LOW_NOISE,
+	INV_ICM42607_SENSOR_MODE_NB
+};
+
+/* gyroscope fullscale values */
+enum inv_icm42607_gyro_fs {
+	INV_ICM42607_GYRO_FS_2000DPS,
+	INV_ICM42607_GYRO_FS_1000DPS,
+	INV_ICM42607_GYRO_FS_500DPS,
+	INV_ICM42607_GYRO_FS_250DPS,
+	INV_ICM42607_GYRO_FS_NB
+};
+
+/* accelerometer fullscale values */
+enum inv_icm42607_accel_fs {
+	INV_ICM42607_ACCEL_FS_16G,
+	INV_ICM42607_ACCEL_FS_8G,
+	INV_ICM42607_ACCEL_FS_4G,
+	INV_ICM42607_ACCEL_FS_2G,
+	INV_ICM42607_ACCEL_FS_NB
+};
+
+/* ODR values */
+enum inv_icm42607_odr {
+	INV_ICM42607_ODR_1600HZ = 5,
+	INV_ICM42607_ODR_800HZ,
+	INV_ICM42607_ODR_400HZ,
+	INV_ICM42607_ODR_200HZ,
+	INV_ICM42607_ODR_100HZ,
+	INV_ICM42607_ODR_50HZ,
+	INV_ICM42607_ODR_25HZ,
+	INV_ICM42607_ODR_12_5HZ,
+	INV_ICM42607_ODR_6_25HZ_LP,
+	INV_ICM42607_ODR_3_125HZ_LP,
+	INV_ICM42607_ODR_1_5625HZ_LP,
+	INV_ICM42607_ODR_NB
+};
+
+enum inv_icm42607_filter_bw {
+	/* Low-Noise mode sensor data filter (bandwidth) */
+	INV_ICM42607_FILTER_BYPASS,
+	INV_ICM42607_FILTER_BW_180HZ,
+	INV_ICM42607_FILTER_BW_121HZ,
+	INV_ICM42607_FILTER_BW_73HZ,
+	INV_ICM42607_FILTER_BW_53HZ,
+	INV_ICM42607_FILTER_BW_34HZ,
+	INV_ICM42607_FILTER_BW_25HZ,
+	INV_ICM42607_FILTER_BW_16HZ,
+};
+
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
+	uint8_t whoami;
+	const char *name;
+	const struct inv_icm42607_conf *conf;
+};
+
+/**
+ *  struct inv_icm42607_state - driver state variables
+ *  @lock:		lock for serializing multiple registers access.
+ *  @hw:		Hardware specific data.
+ *  @map:		regmap pointer.
+ *  @vddio_supply:	I/O voltage regulator for the chip.
+ *  @irq:		chip irq, required to enable/disable and set wakeup
+ *  @orientation:	sensor chip orientation relative to main hardware.
+ *  @conf:		chip sensors configurations.
+ */
+struct inv_icm42607_state {
+	struct mutex lock;
+	const struct inv_icm42607_hw *hw;
+	struct regmap *map;
+	struct regulator *vddio_supply;
+	int irq;
+	struct iio_mount_matrix orientation;
+	struct inv_icm42607_conf conf;
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
+#define INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_SPI_DIS	\
+	FIELD_PREP(INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_MASK, 2)
+#define INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_I2C_DIS	\
+	FIELD_PREP(INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_MASK, 3)
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
+#define INV_ICM42607_REG_ACCEL_WOM_X_THR		0x4b
+#define INV_ICM42607_REG_ACCEL_WOM_Y_THR		0x4c
+#define INV_ICM42607_REG_ACCEL_WOM_Z_THR		0x4d
+
+#define INV_ICM42607_REG_WHOAMI				0x75
+#define INV_ICM42607P_WHOAMI				0x60
+#define INV_ICM42607_WHOAMI				0x67
+
+/* Timings as listed in section 3 of datasheet */
+#define INV_ICM42607_POWER_UP_TIME_US			100000
+#define INV_ICM42607_RESET_TIME_MS			1
+#define INV_ICM42607_ACCEL_STARTUP_TIME_MS		10
+#define INV_ICM42607_GYRO_STARTUP_TIME_MS		30
+#define INV_ICM42607_TEMP_STARTUP_TIME_MS		77
+
+typedef int (*inv_icm42607_bus_setup)(struct inv_icm42607_state *);
+
+extern const struct regmap_config inv_icm42607_regmap_config;
+
+int inv_icm42607_core_probe(struct regmap *regmap, const struct inv_icm42607_hw *hw,
+			    inv_icm42607_bus_setup bus_setup);
+
+#endif
diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
new file mode 100644
index 000000000000..b270d48335ba
--- /dev/null
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
@@ -0,0 +1,197 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2026 InvenSense, Inc.
+ */
+
+#include <linux/delay.h>
+#include <linux/interrupt.h>
+#include <linux/iio/iio.h>
+#include <linux/irq.h>
+#include <linux/module.h>
+#include <linux/mutex.h>
+#include <linux/property.h>
+#include <linux/regmap.h>
+#include <linux/regulator/consumer.h>
+
+#include "inv_icm42607.h"
+
+static int inv_icm42607_set_conf(struct inv_icm42607_state *st,
+				 const struct inv_icm42607_conf *conf)
+{
+	unsigned int val;
+	int ret;
+
+	val = FIELD_PREP(INV_ICM42607_PWR_MGMT0_GYRO_MODE_MASK, conf->gyro.mode);
+	val |= FIELD_PREP(INV_ICM42607_PWR_MGMT0_ACCEL_MODE_MASK, conf->accel.mode);
+	/*
+	 * No temperature enable reg in datasheet, but BSP driver selected RC
+	 * oscillator clock in LP mode when temperature was disabled.
+	 */
+	if (!conf->temp_en)
+		val |= INV_ICM42607_PWR_MGMT0_ACCEL_LP_CLK_SEL;
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
+	ret = regmap_write(st->map, INV_ICM42607_REG_GYRO_CONFIG1, val);
+	if (ret)
+		return ret;
+
+	val = FIELD_PREP(INV_ICM42607_ACCEL_CONFIG1_FILTER_MASK, conf->accel.filter);
+	ret = regmap_write(st->map, INV_ICM42607_REG_ACCEL_CONFIG1, val);
+	if (ret)
+		return ret;
+
+	st->conf = *conf;
+
+	return 0;
+}
+
+/**
+ *  inv_icm42607_setup() - check and setup chip
+ *  @st:	driver internal state
+ *  @bus_setup:	callback for setting up bus specific registers
+ *
+ *  Returns 0 on success, a negative error code otherwise.
+ */
+static int inv_icm42607_setup(struct inv_icm42607_state *st,
+			      inv_icm42607_bus_setup bus_setup)
+{
+	const struct device *dev = regmap_get_device(st->map);
+	unsigned int val;
+	int ret;
+
+	ret = regmap_read(st->map, INV_ICM42607_REG_WHOAMI, &val);
+	if (ret)
+		return ret;
+
+	if (val != st->hw->whoami)
+		dev_warn(dev, "invalid whoami %#02x expected %#02x (%s)\n",
+			 val, st->hw->whoami, st->hw->name);
+
+	ret = regmap_write(st->map, INV_ICM42607_REG_SIGNAL_PATH_RESET,
+			   INV_ICM42607_SIGNAL_PATH_RESET_SOFT_RESET);
+	if (ret)
+		return ret;
+
+	ret = regmap_read_poll_timeout(st->map, INV_ICM42607_REG_INT_STATUS,
+				       val, val & INV_ICM42607_INT_STATUS_RESET_DONE,
+				       INV_ICM42607_RESET_TIME_MS * 100,
+				       INV_ICM42607_RESET_TIME_MS * 1000);
+	if (ret)
+		return dev_err_probe(dev, ret,
+				     "reset error, reset done bit not set\n");
+
+	ret = bus_setup(st);
+	if (ret)
+		return ret;
+
+	ret = regmap_set_bits(st->map, INV_ICM42607_REG_INTF_CONFIG0,
+			      INV_ICM42607_INTF_CONFIG0_SENSOR_DATA_ENDIAN);
+	if (ret)
+		return ret;
+
+	ret = regmap_update_bits(st->map, INV_ICM42607_REG_INTF_CONFIG1,
+				 INV_ICM42607_INTF_CONFIG1_CLKSEL_MASK,
+				 INV_ICM42607_INTF_CONFIG1_CLKSEL_PLL);
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
+int inv_icm42607_core_probe(struct regmap *regmap, const struct inv_icm42607_hw *hw,
+			    inv_icm42607_bus_setup bus_setup)
+{
+	struct device *dev = regmap_get_device(regmap);
+	struct inv_icm42607_state *st;
+	int irq;
+	int ret;
+
+	irq = fwnode_irq_get_byname(dev_fwnode(dev), "INT1");
+	if (irq < 0)
+		return dev_err_probe(dev, irq, "Unable to get INT1 interrupt\n");
+
+	st = devm_kzalloc(dev, sizeof(*st), GFP_KERNEL);
+	if (!st)
+		return -ENOMEM;
+
+	dev_set_drvdata(dev, st);
+
+	ret = devm_mutex_init(dev, &st->lock);
+	if (ret)
+		return ret;
+
+	st->hw = hw;
+	st->map = regmap;
+	st->irq = irq;
+
+	ret = iio_read_mount_matrix(dev, &st->orientation);
+	if (ret)
+		return dev_err_probe(dev, ret,
+				     "failed to retrieve mounting matrix %d\n", ret);
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
+	ret = inv_icm42607_setup(st, bus_setup);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+EXPORT_SYMBOL_NS_GPL(inv_icm42607_core_probe, "IIO_ICM42607");
+
+MODULE_AUTHOR("InvenSense, Inc.");
+MODULE_DESCRIPTION("InvenSense ICM-42607x device driver");
+MODULE_LICENSE("GPL");
+MODULE_IMPORT_NS("IIO_INV_SENSORS_TIMESTAMP");
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
