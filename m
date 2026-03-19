Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC22D1091904
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Mar 2026 18:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eJikRh9Sty3OqUYc6UsGIMJWBsHxQq/Eawd9QHYslyg=; b=FLyjEgePUy0nnz
	zaCRsibmPpoWXIm3tcDP6A9qgQs+pnxZdUfRFgsLqJJXIATpRW0R69ObMYeWReszbaw2cuKn+4Bdn
	/ep4GkPp1fvOGOsGFiXD3dZCib5lH0NtYIVBwkrTeCrzcGYoNheyaDDEQQQkTOLXKmZDjgrwgWNlj
	AbPZ/98qFpmM50Xq2Esu8+OvGd8AtrFeFVliVGuAADsnHkLViXxi/1SWDKYw7Xbf5f+0JOxtDN6Ug
	aCp5I2coez9/2hQr4w3oaf2rBjXoiXY8aSsxaUw0OR2nhK47lU0hiaAwgQ0KgNHKNfxuUaE1a+037
	XtxQhHWKVGhrz5WtXDfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3IAZ-0000000BMEs-3dpL;
	Thu, 19 Mar 2026 18:32:31 +0000
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3IAW-0000000BMBg-1oB8
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Mar 2026 18:32:29 +0000
Received: by mail-ot1-x336.google.com with SMTP id 46e09a7af769-7d7447778b9so637234a34.2
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Mar 2026 11:32:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773945147; x=1774549947; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Oab921twpNn7zQvcy/RzfTmvPFR94uyMoaAD8mccTJY=;
        b=NC59tuKNMGhWDVJSB7eTRrrSkEucH+4qIKaTLaKAZG+4P6AjFRHbQ2vqDKgP9i5sAl
         ZY4tCthUEHGOYJ7yYK+bTleCVAtzDmQDCrxKPOZDrPxm8T7RZcUUuSY0Sj3q23d4paeX
         AX8k1mGJMvpbwnnp7gpgfp1Yjb+Xj1TJ9+Zo6sMg3/StpsPO6CuYwky0eQxI/hmf+0MY
         qCSJK7lFdzolwZ0Atf+1NUw7XbVCIG0hJEBDIWzra5ALeeH91d/1t49Oc74jWCYKlSKF
         bxma24miQXTRprUmlBTVU42vbe7EXXiijlYdaUWrtwnu1yx9fw5dAS3i88TNj8TTcmAE
         lpZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773945147; x=1774549947;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Oab921twpNn7zQvcy/RzfTmvPFR94uyMoaAD8mccTJY=;
        b=Cf9/qdT6/nzjiuud92QsacKkTf5kjrNKNmDlBBjQSokqa8iHgnODVUd+aqP8WMfncz
         +MIIoa2vpx4A4Dg5EyHDkRRznR2ycMZRSP02BX4vr2F9rLSlsvuLYUv81Lw4kYs6VILD
         H9gurTQ1DUvKZEJ2fqnZc6TW9sKmUqYCWm2m1DwDBpiMqvFnwWOz131N5ooPoTFh9L05
         pUKZrwudcX7Dn8QMTYwkVzRHOK3VVaGwagF75D8e2HpzCakgOnXzmjvPUjYhRwlzpMGq
         DSG1RJw6oOCkTaiK8biHbEjZjBbZ7iD5gaiO6jq2OpubmktA3zB/K/+li8xiBgZ3XMO0
         z1pg==
X-Forwarded-Encrypted: i=1; AJvYcCV2EuFDXPPthWu5tG0mz44RVIl2hmo+suNZXGMkvUYyEcknJBkeEIW/Zwk/OcLtoTdOzKLEvLBQMB/uwSZNYQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzY7rfa18JRBN56x3JlivK2dJMhYN857BCbq1PIitrE3MBlHdoF
	Gv0shqNyhB/S+dEcuii17Wm2MorxURKeVL39lm7SiGi+DxAziK6vWtuhkE/WVw==
X-Gm-Gg: ATEYQzzT+vlOgPh4ve4+7sMfq8Hr6DvUZrUkLJkSj8l1XSht94G4s6vawOzJq0FJmfD
	I9GIkQ8PJbqOYkhqdCka/Wab7GNRCaJhqYu7fuSEWh47Vx92FWw4UiiUKx0RzrbYBo/WZWWmL4N
	lEPVN2s12vT9QeLCBbKV+8E784Ep9SfDzA5dCEsxnwiVKX6r5tWzRAMeUk51sA4lt4lxiwJqSQM
	EsWJaYicVi0cT9no1PR51aVoaFX9ifX0QDUKjI3PJBDke16JNttBy5HCqhLsOlqul7Yb5R32tmA
	1FJDnl/zxN6YQJ2EGujdxQ3mldbCPpjgtiPcBfK5ZRuoEWenPjqK61w7ghItRdwBldh7ywF4cIY
	abfoH9Sh3q6KLaK30Hm0BOnBZeE/GwYdfP9fmF4I9rdqAxGnwlClANz/K83F/1SeDJfEQqoQJ7m
	xGFC2WHeZwf/6CzjxvPxQp
X-Received: by 2002:a05:6830:81d9:b0:7d7:54b9:c574 with SMTP id 46e09a7af769-7d7eaeac484mr172411a34.9.1773945147057;
        Thu, 19 Mar 2026 11:32:27 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d7eadcb11csm172193a34.13.2026.03.19.11.32.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 11:32:26 -0700 (PDT)
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
Subject: [PATCH V2 3/5] iio: imu: inv_icm42600: Add registers for icm42607
Date: Thu, 19 Mar 2026 13:29:39 -0500
Message-ID: <20260319182956.146976-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260319182956.146976-1-macroalpha82@gmail.com>
References: <20260319182956.146976-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_113228_504865_EFB5FA32 
X-CRM114-Status: GOOD (  11.92  )
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

Add the register layout for the icm_42607. Most of the registers are
similar to that of the icm42600, though at different addresses.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/iio/imu/inv_icm42600/inv_icm42600.h | 284 ++++++++++++++++++++
 1 file changed, 284 insertions(+)

diff --git a/drivers/iio/imu/inv_icm42600/inv_icm42600.h b/drivers/iio/imu/inv_icm42600/inv_icm42600.h
index b89078cb5ba0..ab3616c5ee1a 100644
--- a/drivers/iio/imu/inv_icm42600/inv_icm42600.h
+++ b/drivers/iio/imu/inv_icm42600/inv_icm42600.h
@@ -22,6 +22,8 @@ enum inv_icm42600_chip {
 	INV_CHIP_ICM42600,
 	INV_CHIP_ICM42602,
 	INV_CHIP_ICM42605,
+	INV_CHIP_ICM42607,
+	INV_CHIP_ICM42607P,
 	INV_CHIP_ICM42686,
 	INV_CHIP_ICM42622,
 	INV_CHIP_ICM42688,
@@ -70,6 +72,13 @@ enum inv_icm42686_gyro_fs {
 	INV_ICM42686_GYRO_FS_31_25DPS,
 	INV_ICM42686_GYRO_FS_NB,
 };
+enum inv_icm42607_gyro_fs {
+	INV_ICM42607_GYRO_FS_2000DPS,
+	INV_ICM42607_GYRO_FS_1000DPS,
+	INV_ICM42607_GYRO_FS_500DPS,
+	INV_ICM42607_GYRO_FS_250DPS,
+	INV_ICM42607_GYRO_FS_NB
+};
 
 /* accelerometer fullscale values */
 enum inv_icm42600_accel_fs {
@@ -106,6 +115,21 @@ enum inv_icm42600_odr {
 	INV_ICM42600_ODR_NB,
 };
 
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
 enum inv_icm42600_filter {
 	/* Low-Noise mode sensor data filter (3rd order filter by default) */
 	INV_ICM42600_FILTER_BW_ODR_DIV_2,
@@ -115,6 +139,26 @@ enum inv_icm42600_filter {
 	INV_ICM42600_FILTER_AVG_16X = 6,
 };
 
+enum inv_icm42607_filter {
+	/* Low-Noise mode sensor data filter */
+	INV_ICM42607_FILTER_BYPASS,
+	INV_ICM42607_FILTER_BW_180HZ,
+	INV_ICM42607_FILTER_BW_121HZ,
+	INV_ICM42607_FILTER_BW_73HZ,
+	INV_ICM42607_FILTER_BW_53HZ,
+	INV_ICM42607_FILTER_BW_34HZ,
+	INV_ICM42607_FILTER_BW_25HZ,
+	INV_ICM42607_FILTER_BW_16HZ,
+
+	/* Low-Power mode sensor data filter (averaging) */
+	INV_ICM42607_FILTER_AVG_2X = 0,
+	INV_ICM42607_FILTER_AVG_4X,
+	INV_ICM42607_FILTER_AVG_8X,
+	INV_ICM42607_FILTER_AVG_16X,
+	INV_ICM42607_FILTER_AVG_32X,
+	INV_ICM42607_FILTER_AVG_64X,
+};
+
 struct inv_icm42600_sensor_conf {
 	int mode;
 	int fs;
@@ -453,6 +497,246 @@ struct inv_icm42600_sensor_state {
 #define INV_ICM42600_REG_OFFSET_USER7			0x407E
 #define INV_ICM42600_REG_OFFSET_USER8			0x407F
 
+/* ICM42607 Specific registers. */
+
+/* Virtual register addresses: @bank on MSB (4 upper bits), @address on LSB */
+
+/* Register Map for User Bank 0 */
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
+#define INV_ICM42607_DRIVE_CONFIG1_I3C_DDR(_rate)	\
+FIELD_PREP(INV_ICM42607_DRIVE_CONFIG1_I3C_DDR_MASK, (_rate))
+#define INV_ICM42607_DRIVE_CONFIG1_I3C_SDR_MASK		GENMASK(2, 0)
+#define INV_ICM42607_DRIVE_CONFIG1_I3C_SDR(_rate)	\
+FIELD_PREP(INV_ICM42607_DRIVE_CONFIG1_I3C_SDR_MASK, (_rate))
+
+#define INV_ICM42607_REG_DRIVE_CONFIG2			0x04
+#define INV_ICM42607_DRIVE_CONFIG2_I2C_MASK		GENMASK(5, 3)
+#define INV_ICM42607_DRIVE_CONFIG2_I2C(_rate)		\
+FIELD_PREP(INV_ICM42607_DRIVE_CONFIG2_I2C_MASK, (_rate))
+#define INV_ICM42607_DRIVE_CONFIG2_ALL_MASK		GENMASK(2, 0)
+#define INV_ICM42607_DRIVE_CONFIG2_ALL(_rate)		\
+FIELD_PREP(INV_ICM42607_DRIVE_CONFIG2_ALL_MASK, (_rate))
+
+#define INV_ICM42607_REG_DRIVE_CONFIG3			0x05
+#define INV_ICM42607_DRIVE_CONFIG3_SPI_MASK		GENMASK(2, 0)
+#define INV_ICM42607_DRIVE_CONFIG3_SPI(_rate)		\
+FIELD_PREP(INV_ICM42607_DRIVE_CONFIG3_SPI_MASK, (_rate))
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
+#define INV_ICM42607_PWR_MGMT0_GYRO(_mode)		\
+FIELD_PREP(INV_ICM42607_PWR_MGMT0_GYRO_MODE_MASK, (_mode))
+#define INV_ICM42607_PWR_MGMT0_ACCEL_MODE_MASK		GENMASK(1, 0)
+#define INV_ICM42607_PWR_MGMT0_ACCEL(_mode)		\
+FIELD_PREP(INV_ICM42607_PWR_MGMT0_ACCEL_MODE_MASK, (_mode))
+
+#define INV_ICM42607_REG_GYRO_CONFIG0			0x20
+#define INV_ICM42607_GYRO_CONFIG0_FS_SEL_MASK		GENMASK(6, 5)
+#define INV_ICM42607_GYRO_CONFIG0_FS_SEL(_fs)		\
+FIELD_PREP(INV_ICM42607_GYRO_CONFIG0_FS_SEL_MASK, (_fs))
+#define INV_ICM42607_GYRO_CONFIG0_ODR_MASK		GENMASK(3, 0)
+#define INV_ICM42607_GYRO_CONFIG0_ODR(_odr)		\
+FIELD_PREP(INV_ICM42607_GYRO_CONFIG0_ODR_MASK, (_odr))
+
+#define INV_ICM42607_REG_ACCEL_CONFIG0			0x21
+#define INV_ICM42607_ACCEL_CONFIG0_FS_SEL_MASK		GENMASK(6, 5)
+#define INV_ICM42607_ACCEL_CONFIG0_FS_SEL(_fs)		\
+FIELD_PREP(INV_ICM42607_ACCEL_CONFIG0_FS_SEL_MASK, (_fs))
+#define INV_ICM42607_ACCEL_CONFIG0_ODR_MASK		GENMASK(3, 0)
+#define INV_ICM42607_ACCEL_CONFIG0_ODR(_odr)		\
+FIELD_PREP(INV_ICM42607_ACCEL_CONFIG0_ODR_MASK, (_odr))
+
+#define INV_ICM42607_REG_TEMP_CONFIG0			0x22
+#define INV_ICM42607_TEMP_CONFIG0_FILTER_MASK		GENMASK(6, 4)
+#define INV_ICM42607_TEMP_CONFIG0_FILTER(_filter)	\
+FIELD_PREP(INV_ICM42607_TEMP_CONFIG0_FILTER_MASK, (_filter))
+
+#define INV_ICM42607_REG_GYRO_CONFIG1			0x23
+#define INV_ICM42607_GYRO_CONFIG1_FILTER_MASK		GENMASK(2, 0)
+#define INV_ICM42607_GYRO_CONFIG1_FILTER(_filter)	\
+FIELD_PREP(INV_ICM42607_GYRO_CONFIG1_FILTER_MASK, (_filter))
+
+#define INV_ICM42607_REG_ACCEL_CONFIG1			0x24
+#define INV_ICM42607_ACCEL_CONFIG1_AVG_MASK		GENMASK(6, 4)
+#define INV_ICM42607_ACCEL_CONFIG1_AVG(_avg)		\
+FIELD_PREP(INV_ICM42607_ACCEL_CONFIG1_AVG_MASK, (_avg))
+#define INV_ICM42607_ACCEL_CONFIG1_FILTER_MASK		GENMASK(2, 0)
+#define INV_ICM42607_ACCEL_CONFIG1_FILTER(_filter)	\
+FIELD_PREP(INV_ICM42607_ACCEL_CONFIG1_FILTER_MASK, (_filter))
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
+#define INV_ICM42607_APEX_CONFIG1_DMP_ODR(_odr)	\
+FIELD_PREP(INV_ICM42607_APEX_CONFIG1_DMP_ODR_MASK, (_odr))
+
+#define INV_ICM42607_REG_WOM_CONFIG			0x27
+#define INV_ICM42607_WOM_CONFIG_INT_DUR_MASK		GENMASK(4, 3)
+#define INV_ICM42607_WOM_CONFIG_INT_DUR(_dur)		\
+FIELD_PREP(INV_ICM42607_WOM_CONFIG_INT_DUR_MASK, (_dur))
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
+FIELD_PREP(INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_MASK, 2)
+#define INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_I2C_DIS	\
+FIELD_PREP(INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_MASK, 3)
+
+#define INV_ICM42607_REG_INTF_CONFIG1			0x36
+#define INV_ICM42607_INTF_CONFIG1_I3C_SDR_EN		BIT(3)
+#define INV_ICM42607_INTF_CONFIG1_I3C_DDR_EN		BIT(2)
+#define INV_ICM42607_INTF_CONFIG1_CLKSEL_MASK		GENMASK(1, 0)
+#define INV_ICM42607_INTF_CONFIG1_CLKSEL_PLL		\
+FIELD_PREP(INV_ICM42607_INTF_CONFIG1_CLKSEL_MASK, 1)
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
 /* Sleep times required by the driver */
 #define INV_ICM42600_POWER_UP_TIME_MS		100
 #define INV_ICM42600_RESET_TIME_MS		1
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
