Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 808EDCD342E
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 May 2026 22:14:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XuV68Vd/TnFLAym+D7Fza4Azcd2Zk6TdRjx5+DbxmFI=; b=rUaJKDmaintS3t
	pNpRipGzL/ZKl3deyCbTBFpzqEtH1yz5Oep4ysIyrQZwCYAhbQbLZNhj80RHJduPZvL9/DaN6bZ41
	iEtwZK/VY2zjq4dezWKJv0iJDOfCz95fcs6UZzxBWi0mWZMC4b7QpLsvP74TvQF7xg3WUPo3nsXX9
	2g8uAR9iTbKnP8v78FUt0nPpcr9ypwA73prLGRpmy0wFBBb5d7UcDHCD6W67gcdbX9UmrMBe7X6lT
	PXfiXT8LbRuyLtG6qmJpmoZ6UMx6ryeVeNvivWSA02b+oJ19vh08zZa8c222xPD3Ifn7WVDINCVIw
	gHxpCDok964qdh4EfPHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIw7u-00000007kTc-3tEo;
	Fri, 01 May 2026 22:14:26 +0000
Received: from mail-ot1-x32d.google.com ([2607:f8b0:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIw7s-00000007kSI-3mPY
	for linux-rockchip@lists.infradead.org;
	Fri, 01 May 2026 22:14:26 +0000
Received: by mail-ot1-x32d.google.com with SMTP id 46e09a7af769-7dca5f64e86so1989589a34.0
        for <linux-rockchip@lists.infradead.org>; Fri, 01 May 2026 15:14:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777673664; x=1778278464; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CUhEsFTxIv9vvjhFaz+CpThVyN6UFPYPzRieSjPZV28=;
        b=a3qJx5YxA3QNuVLRcIamccvge2+N38VCaHOtU0fUCl7lLGKOlSpx68pHW6FmuHB8lX
         +8JbiUp3ygYMlH2m/Vi8OcYYAfyn+ug3jO9y1TPHljN0DuSLE5CYf5m2pz/rIlwv84SS
         IdwvCWdeMlDT02y/WjHgOzqUmBKglH2wKVh9lr/KFgNAGtNTruFMQmiEbPCa9gM9QTEG
         qzq+bjpDRRpPW2bA8VsXX5LCM01mjj/Gq9ug6DbkBQbPQtKfQ5dhhw/X74ZdRDSRUPdX
         Vp+YQPpVF5b2a4ZOCFjfMtorD1IqoOrnhNGXSV7l2Vu4WqTDMLN3deOuXw1p3EH5NcjI
         Id0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777673664; x=1778278464;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CUhEsFTxIv9vvjhFaz+CpThVyN6UFPYPzRieSjPZV28=;
        b=YbwVKXmDlPCA7b4lSKUAuEJ0+EKHQgxZ3kTKBY0/MehUo03+ABx+Y8Hk59/+GAIH5z
         CWlY0M5u4ecLG3QHXH90cuymQdxOu7KPk9z9bFOuAstI24heoxycG9+zQtYiG2aqp4+K
         nrBFfOZwo6ELuxPHw/VW6sTpsLdKahwmfBEO+JNQuJBngefMD3mZlPHOjylCbz2yiC1L
         ZN+7jszdfXxx3itgLxRQz8HRPCAxadG64Lg5FheVQUPYt72pGiFwQ3DpmHvcrtutydC4
         qd8WnlhfWlse0Miu+mmz/N/R3P+jceDGaFCIHOzLEkF6Ev0EFnUuoUCFYCUe7GFQQ1E0
         4h2A==
X-Forwarded-Encrypted: i=1; AFNElJ/NHeA5Dx+p8Gf54HgFdRaj4riTIVuf6TrKEQdDyLa/OjLli8EEhvtS1n98zUWb8eUPvHZGGtSqhaviqx2shw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw1bLGfijJuAYOAHKMM4wRgIrqRcE42eKxfZrv1sy56qhkl2t6s
	VALz++D4/gazfPRzGLNEimmVdXqQgSQBvTAxjCYHBa7h7qydhn43dNgU
X-Gm-Gg: AeBDievHswaEy9vsAtk2w7YI07a+1XPiI/NlEKh0/hWSy+uBTT2wBkRV8wtUYK68FXz
	UuGV7L5Jtwt4vaBwdJQR43JtWszAWuaAueUmGEuZ5WXbQiYJGTlk5da/GyA8j+4YMWluuR1VfC8
	fcKV+x2/GRQXoxA+XKrCWRfOsUAGvWZo65MBqaiCSvHdhKvHdpVFNYXMDAN63GNdXmYG80lF5+Z
	Pu835rBvdPV1FLhCfluO7vn+oI9rD4vqVG9m0jvQmmcHekezLIm2sCq9Yt+ku+92CFNxfQkL+xj
	o9mpyRBWcVgbwW4XRWSMsl6adDezrLUIYLpGo1UepsTx6FwKbHGJ669dWcz2YXShpA88COeUMF2
	//DLAKMSIrBny9dmm63HNuO08yOSx+4A3H7gtamu1Xy1evtX1pqQs6Njh9DgRb8P2CBZPQFwVuy
	T1wRqYyaj/dVAgR/67dhXET/HZLQIz7HA=
X-Received: by 2002:a05:6830:270a:b0:7d7:e59c:80e6 with SMTP id 46e09a7af769-7dee127f28dmr996319a34.12.1777673663700;
        Fri, 01 May 2026 15:14:23 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7ded51a9612sm1827337a34.26.2026.05.01.15.14.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 May 2026 15:14:23 -0700 (PDT)
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
Subject: [PATCH V4 03/10] iio: imu: inv_icm42607: Add I2C and SPI For icm42607
Date: Fri,  1 May 2026 17:11:42 -0500
Message-ID: <20260501221152.194251-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260501221152.194251-1-macroalpha82@gmail.com>
References: <20260501221152.194251-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260501_151424_957755_84AC7BDE 
X-CRM114-Status: GOOD (  21.16  )
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
 drivers/iio/imu/Kconfig                       |  1 +
 drivers/iio/imu/Makefile                      |  1 +
 drivers/iio/imu/inv_icm42607/Kconfig          | 30 ++++++
 drivers/iio/imu/inv_icm42607/Makefile         | 10 ++
 drivers/iio/imu/inv_icm42607/inv_icm42607.h   |  2 +
 .../iio/imu/inv_icm42607/inv_icm42607_core.c  | 20 ++++
 .../iio/imu/inv_icm42607/inv_icm42607_i2c.c   | 90 +++++++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_spi.c   | 96 +++++++++++++++++++
 8 files changed, 250 insertions(+)
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
index f6b3cad8064a..763d731ccc60 100644
--- a/drivers/iio/imu/inv_icm42607/inv_icm42607.h
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
@@ -389,6 +389,8 @@ struct inv_icm42607_sensor_state {
 
 typedef int (*inv_icm42607_bus_setup)(struct inv_icm42607_state *);
 
+extern const struct regmap_config inv_icm42607_regmap_config;
+
 u32 inv_icm42607_odr_to_period(enum inv_icm42607_odr odr);
 
 int inv_icm42607_debugfs_reg(struct iio_dev *indio_dev, unsigned int reg,
diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
index a0bbd8a7ea4b..1ac3a573863c 100644
--- a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
@@ -16,6 +16,26 @@
 
 #include "inv_icm42607.h"
 
+static const struct regmap_range_cfg inv_icm42607_regmap_ranges[] = {
+	{
+		.name = "user bank",
+		.range_min = 0x0000,
+		.range_max = 0x00FF,
+		.window_start = 0,
+		.window_len = 0x0100,
+	},
+};
+
+const struct regmap_config inv_icm42607_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+	.max_register = 0x00FF,
+	.ranges = inv_icm42607_regmap_ranges,
+	.num_ranges = ARRAY_SIZE(inv_icm42607_regmap_ranges),
+	.cache_type = REGCACHE_NONE,
+};
+EXPORT_SYMBOL_NS_GPL(inv_icm42607_regmap_config, "IIO_ICM42607");
+
 struct inv_icm42607_hw {
 	uint8_t whoami;
 	const char *name;
diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c
new file mode 100644
index 000000000000..83cdb9c87167
--- /dev/null
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c
@@ -0,0 +1,90 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2026 InvenSense, Inc.
+ */
+
+#include <linux/kernel.h>
+#include <linux/device.h>
+#include <linux/module.h>
+#include <linux/mod_devicetable.h>
+#include <linux/i2c.h>
+#include <linux/regmap.h>
+#include <linux/property.h>
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
+	const void *match;
+	enum inv_icm42607_chip chip;
+	struct regmap *regmap;
+
+	if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_I2C_BLOCK))
+		return -EOPNOTSUPP;
+
+	match = i2c_get_match_data(client);
+	chip = (kernel_ulong_t)match;
+
+	regmap = devm_regmap_init_i2c(client, &inv_icm42607_regmap_config);
+	if (IS_ERR(regmap))
+		return PTR_ERR(regmap);
+
+	return inv_icm42607_core_probe(regmap, chip, inv_icm42607_i2c_bus_setup);
+}
+
+static const struct i2c_device_id inv_icm42607_id[] = {
+	{ "icm42607", INV_CHIP_ICM42607 },
+	{ "icm42607p", INV_CHIP_ICM42607P },
+	{ }
+};
+MODULE_DEVICE_TABLE(i2c, inv_icm42607_id);
+
+static const struct of_device_id inv_icm42607_of_matches[] = {
+	{
+		.compatible = "invensense,icm42607",
+		.data = (void *)INV_CHIP_ICM42607,
+	}, {
+		.compatible = "invensense,icm42607p",
+		.data = (void *)INV_CHIP_ICM42607P,
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
index 000000000000..7a02bbab3a63
--- /dev/null
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c
@@ -0,0 +1,96 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2026 InvenSense, Inc.
+ */
+
+#include <linux/kernel.h>
+#include <linux/device.h>
+#include <linux/module.h>
+#include <linux/mod_devicetable.h>
+#include <linux/spi/spi.h>
+#include <linux/regmap.h>
+#include <linux/property.h>
+
+#include "inv_icm42607.h"
+
+static int inv_icm42607_spi_bus_setup(struct inv_icm42607_state *st)
+{
+	unsigned int val;
+	int ret;
+
+	ret = regmap_set_bits(st->map, INV_ICM42607_REG_DEVICE_CONFIG,
+			      INV_ICM42607_DEVICE_CONFIG_SPI_AP_4WIRE);
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
+			 INV_ICM42607_SLEW_RATE_INF_2NS);
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
+	const void *match;
+	enum inv_icm42607_chip chip;
+	struct regmap *regmap;
+
+	match = spi_get_device_match_data(spi);
+	chip = (kernel_ulong_t)match;
+
+	regmap = devm_regmap_init_spi(spi, &inv_icm42607_regmap_config);
+	if (IS_ERR(regmap))
+		return dev_err_probe(&spi->dev, PTR_ERR(regmap),
+				     "Failed to register spi regmap %ld\n",
+				     PTR_ERR(regmap));
+
+	return inv_icm42607_core_probe(regmap, chip,
+				       inv_icm42607_spi_bus_setup);
+}
+
+static const struct of_device_id inv_icm42607_of_matches[] = {
+	{
+		.compatible = "invensense,icm42607",
+		.data = (void *)INV_CHIP_ICM42607,
+	},
+	{
+		.compatible = "invensense,icm42607p",
+		.data = (void *)INV_CHIP_ICM42607P,
+	},
+	{ }
+};
+MODULE_DEVICE_TABLE(of, inv_icm42607_of_matches);
+
+static const struct spi_device_id inv_icm42607_spi_id_table[] = {
+	{ "icm42607", INV_CHIP_ICM42607 },
+	{ "icm42607p", INV_CHIP_ICM42607P },
+	{ }
+};
+MODULE_DEVICE_TABLE(spi, inv_icm42607_spi_id_table);
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
