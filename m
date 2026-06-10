Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85A1DCD98CC
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jun 2026 17:57:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NrDQ1u7N33DDVux6QZhGEg7KZlwM57gknCtdXNWTRyk=; b=oa3VfdGqgBEH32
	nGtU9atCNKgygrEoJdow4bCe+VCDvYo3YXRC+lE2Wqy+4lY+WhU5UojASZEenK5kkQbNW5p9MuVo7
	RwxVAgq5XRfpfJw8oLqL3N3AnjIDs4HfEN1gzaKULdwRVg/gx/+QDr4XRq3YPB4rMMn6TPGhrQu9Y
	CGt/a5m5a2fc+2tsa3+NqM9CvqKAo6W1Pu3CT3yWlNFrlYzIkKNQC69uQCOTtztzUcIK7zOdCJ/Ye
	gzS4/EFvfuQoB60vd5PpwPmySTaLE3TJD8Ar8/kQnQHnQ0iE3/Y1Q01hW870hjJl3s36nYYBAZXWs
	6WGXC48CvXXVnUXn0jVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXNBF-00000008DMA-0Rjv;
	Wed, 10 Jun 2026 17:57:33 +0000
Received: from mail-oi1-x22f.google.com ([2607:f8b0:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXNBA-00000008DHl-04rx
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Jun 2026 17:57:29 +0000
Received: by mail-oi1-x22f.google.com with SMTP id 5614622812f47-4863eae453eso3247865b6e.1
        for <linux-rockchip@lists.infradead.org>; Wed, 10 Jun 2026 10:57:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781114247; x=1781719047; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mfzs8uTJmUQmDhJfatDPCLZ0J8m8PsuCFYV16g7qpto=;
        b=e0jyZEByH10e0Zbo1lwukSkw2F/fUklPBZXtCZnhitAYAgnwYhKIoM7L+yS1ka2TiA
         /NtN0bBwgeeH2/m7NTHKIrl8y6nHBt4MEskmuMdLWAhtmok6ywl6gQER30dyU58GtaNe
         EzGeWb7Zj4csBmN8zThC79CgiWmMwo+PHMOwxEfM9/qDdmqqR1buZ8dGRYKv/4CRDCA9
         84cdb8bZwbyV237MH/RZyRI/1/ERNdbdHMVCUSoaFa5jXLAgrciXcukIVsVes2ZcsNQm
         3q1VyW/iYLOUcuHHmCNIdOULB3UMFWeDs3t6Yvp2zUQfOGMKwNnHkHD0Brnm1D8p2kIN
         DnCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781114247; x=1781719047;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Mfzs8uTJmUQmDhJfatDPCLZ0J8m8PsuCFYV16g7qpto=;
        b=DlBYQhwxRXO0ODSq9ekpnTOyVQMdwMIV/yHfPxe0PhYxEQoqqmfuvvxiBNGOb0PJUW
         T9pD7k+wbMLjBOB0oTkqd9BHloRqjS4uiej16xYzLiYKosefv//OelG+k7e2BE9gva4o
         m0uG1uu1yrbBtHPgddmpDRTmqouk4yIEwPhh0MQjdGV2mH5pwmwT1HMz1ma0tVxKlyfK
         imcunVWGl672gbagjcULFAjuSuu8LkGAGuKpjQOYE/eZZExcUw6d6WEgmrgmoBHgxqLq
         /UEpHS4w8wPg+RQDYvvEGKNpAiKv6tVW6gkEbp+/wWjzuqgZSQoxMUoTuhxhyVo3MbXk
         ujXg==
X-Forwarded-Encrypted: i=1; AFNElJ8efCl7meGK+LNG2LQM+49B+dDY9JP69POMYdj8VPDD1mxu9dqgWQcs22d0bdQagrgQLA5vV8EKa2i0njPbXQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywx6eAd54Dr6vpf4IfXQzXB4Liq9F3VRUdI7jTYZHAkO9BckgRQ
	utCd5nTVaCUywXdJZVQsdlCZxUasJHR0pltDVo5fG4SmTg5JHutNA5ZM
X-Gm-Gg: Acq92OFwPQgKs4RWvgiN7V5gY8bkdmHKusREjpUA9oqpGfJp7/1TkJ1UUClV2LHGRFg
	3aKezcWSegNeZ55puIoGavcTgf6uZFmK45pc9B2VT18UBNKaMwBOQqpHkmzfIBhfN/DAicYJq6J
	tVDwnlcBxwj87bssdR9chxvqap9XULyDRyuQwKWikyGn7Ulkq5MDAoeJ72XXi0ih9y4ZphMkFNR
	GVzWNuXKxO38y0/H2BxQT6xVRNXEMF1W49fud21/v5gF++1NXEi4/H49VAiN26AFlz43+lW8i4m
	gx4wUjFba4ihMps75YTjfHOpzw1Hypnm7lzR8q2EtdFOuWVslmA74kFnkMiqHpgOZiYMaCTlmcY
	DsECiOZXVbdmu92m3RoB1TClepmlSeQPNh/0YfJQekkNeWeiqtShcIV4jva92lgTDUoEA4AH84L
	gktbM3o17vIlsrK1HhdjLGPqHkoYQ9MfhMoRDhcrUhuuJfU3FWBtvtOFw4IvsvNXpa
X-Received: by 2002:a05:6808:17a7:b0:479:f7e7:4a81 with SMTP id 5614622812f47-4868d89dc2dmr16452260b6e.0.1781114246842;
        Wed, 10 Jun 2026 10:57:26 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:b86b:51ed:28ca:695f])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-440d7d4f449sm21180794fac.8.2026.06.10.10.57.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 10:57:26 -0700 (PDT)
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
Subject: [PATCH V11 3/9] iio: imu: inv_icm42607: Add inv_icm42607 Core Driver
Date: Wed, 10 Jun 2026 12:54:47 -0500
Message-ID: <20260610175455.19006-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260610175455.19006-1-macroalpha82@gmail.com>
References: <20260610175455.19006-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_105728_135458_7864E408 
X-CRM114-Status: GOOD (  15.80  )
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
 drivers/iio/imu/inv_icm42607/inv_icm42607.h   | 334 ++++++++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_core.c  | 197 +++++++++++
 2 files changed, 531 insertions(+)
 create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607.h
 create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_core.c

diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607.h b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
new file mode 100644
index 000000000000..716fc0f1c3fd
--- /dev/null
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
@@ -0,0 +1,334 @@
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
+#include <linux/types.h>
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
+	u8 whoami;
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
+ *  @orientation:	sensor chip orientation relative to main hardware.
+ *  @conf:		chip sensors configurations.
+ */
+struct inv_icm42607_state {
+	struct mutex lock;
+	const struct inv_icm42607_hw *hw;
+	struct regmap *map;
+	struct regulator *vddio_supply;
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
index 000000000000..334264120b42
--- /dev/null
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
@@ -0,0 +1,197 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2026 InvenSense, Inc.
+ */
+
+#include <linux/delay.h>
+#include <linux/dev_printk.h>
+#include <linux/iio/iio.h>
+#include <linux/module.h>
+#include <linux/mutex.h>
+#include <linux/regmap.h>
+#include <linux/regulator/consumer.h>
+#include <linux/time.h>
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
+	fsleep(INV_ICM42607_RESET_TIME_MS * USEC_PER_MSEC);
+
+	/*
+	 * No polling interval specified in datasheet, so use reset time as
+	 * polling interval and 10x reset time as timeout period.
+	 */
+	ret = regmap_read_poll_timeout(st->map, INV_ICM42607_REG_INT_STATUS,
+				       val, val & INV_ICM42607_INT_STATUS_RESET_DONE,
+				       (INV_ICM42607_RESET_TIME_MS * USEC_PER_MSEC),
+				       (INV_ICM42607_RESET_TIME_MS * USEC_PER_MSEC * 10));
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
+MODULE_DESCRIPTION("InvenSense ICM-42607x device driver");
+MODULE_LICENSE("GPL");
+MODULE_IMPORT_NS("IIO_INV_SENSORS_TIMESTAMP");
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
