Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BBC4CD4F49
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 May 2026 13:02:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gryHg2GT0ck2dN3QCPb8GnvTx7xxAk8cf6Fw+vby65Y=; b=kQ3a/Va8Vr2hPW
	9Q3+GFT1ICJuSC8YUyz/2WWWPi7YDLzFgbyqBfQpBNmYVowWkTAB6Lg1rV8l2X+YQJIXylPR6Nakd
	MQfNZXfY6zKG4b0qs4ydMwOZ1RJNbVrmY8PfAFXpkOo0WwLuUgFl3EzbPPnHtuMnp72Ic4Og3XWu+
	du5s2r2JPJs1X5VorxhHeKtASWh/In0pa1ztCqtzh+RmOP4u1jdIlj1aHu3fytW+8gGvx2PjHaOyB
	X2JK53mG4d7R9j87nhX4Y6n5EfWSkoR1Up00uN7F7JEGeygAPXqmgB9iwS13ay7UU/CIG73mKpf2F
	GKKFgSPVDKMc+2dsfpSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNsBk-00000008OHc-2OUb;
	Fri, 15 May 2026 13:02:48 +0000
Received: from mail-oa1-x2f.google.com ([2001:4860:4864:20::2f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNsBh-00000008OF3-3orZ
	for linux-rockchip@lists.infradead.org;
	Fri, 15 May 2026 13:02:47 +0000
Received: by mail-oa1-x2f.google.com with SMTP id 586e51a60fabf-439cc157c21so1684930fac.1
        for <linux-rockchip@lists.infradead.org>; Fri, 15 May 2026 06:02:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778850165; x=1779454965; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CfpSmZeFoGL/tkkUAAIRNmW4X1JbomqZ/f562F+gRXE=;
        b=KZtdjpoiab0GWM8mYffeP1+wyBTn+Fiv3JoDDE0+avKsvE+iiGspyIG4H73KxQ3vGM
         hR1+JaYgBSHauqfSASRixXeskyWzVRSYltkVXTDZxC1lYbpFYf4h85ZXcjlhpszh3B2h
         9KNDHu7e52i7+qidXqtMCb9T5tPAHIb8sb4OCySh+wcHNw4CJg1losi+shkxtWf7AryM
         Yo6/Yu0OVBZO0QXZVhWfvF1ZiH9R68Gn4RR4/fWQFcUAY715ggyFWXfSH7TpF5edatZu
         11urke9TOBJajju1R7Dg07Vw11lFmWP0P6K2XuiNmUqKXPrAKlV12NK0Af4LOobKSFoZ
         2uvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778850165; x=1779454965;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CfpSmZeFoGL/tkkUAAIRNmW4X1JbomqZ/f562F+gRXE=;
        b=MMyFBRtqyT1F2Lc3MiUdchrEyFJqfbCQakYe/tgG0EmwyprmtLVdmKi3CTmoAn0Vw/
         HLwyd+loSd5Qbw1nRm70fwhXwMYDyOsDQZkMbNsu0MdNnjc0QIhhhQG26NpzD+CByxdJ
         tl+CVmSJHE0kI/gllPRWx1fwqYbM+L6pcXhh74r+Izi3xc+pDBQxMqOOsYjApJT9SMFB
         MxdZPSflqXCLwtZqTn/DiUX0fZU7Ods3vHjipYqk1tn4AYfboPJRbSE121YLxMtYPqWW
         2y/LYb3WJ7GiAAkD4HUnOw/NAqBygzDrJN1eCB6mkwa+HnFp79wHIe2bky91DiOU1/wp
         Gcqg==
X-Forwarded-Encrypted: i=1; AFNElJ9KtNT4pXt8DOrL1CB5xy+V8beITYpfU7ON148wkOWGOfWH/8lkoTMiVbUBPD4mUQ6iwILKZpWllKZFD+JHnw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzMsp31uSlOKhd+NB0FU3qhNxs8VmP1GNRZ426737epyx9Te9B9
	defgzvV2futYI6aWelz1z2HXe0FE2ZjXyxyfo6ljAFt2WdFhJ9AsbJjB
X-Gm-Gg: Acq92OFMX5ryuzlguiyN9+ZzhnHanRIE8GuUjL7C/QzsK41zFo15J+wV+vozE5GuE+Z
	GDlcfaVkftwjbIcYsu8UvMoSL6xz8lDFAYA2f/5593tY4ZjAU5i1M1DWXb903o7dNsJzPI+QaXa
	VrAN/EMXJpxzJdwWPvy+SXpcXscYWdky+UakDk27c/QGAySNjCBoT9wFSboM0SQSe0/be2lhyhZ
	YMCRSPxJ5dkoOfPP97c41TM55oXT1H5xcArGTz2jdcQqFkS38habkqZxssz984CnJZ+jQgfp7G6
	irqSbcA3nM+CfpUSUqmX1p68aDz0zKJ32YhsgzpGRuj8pyDggNDLtUIGxfkPk2152EqX383fMiH
	86ImB5gv7HllVIB4vdA2Jo70Y6M170didQp9seONkhrMIvv5F9ITp4R3ai/BC1DlSrFP3wZQWoX
	rU+btv6p2VlXtGW1g3cOsqh7zVs/Jtsq2J/MYcKysQyA==
X-Received: by 2002:a05:6870:9d88:b0:439:bae3:50b5 with SMTP id 586e51a60fabf-43a2de9cd16mr2513954fac.34.1778850164613;
        Fri, 15 May 2026 06:02:44 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:8c2e:6a8e:445a:9169])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-439fc53f2acsm4155822fac.14.2026.05.15.06.02.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2026 06:02:43 -0700 (PDT)
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
Subject: [PATCH V7 04/11] iio: imu: inv_icm42607: Add I2C and SPI For icm42607
Date: Fri, 15 May 2026 08:00:09 -0500
Message-ID: <20260515130018.237378-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260515130018.237378-1-macroalpha82@gmail.com>
References: <20260515130018.237378-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_060245_999096_1EFA4D6F 
X-CRM114-Status: GOOD (  27.34  )
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
 drivers/iio/imu/inv_icm42607/Kconfig          |  30 ++++++
 drivers/iio/imu/inv_icm42607/Makefile         |  10 ++
 drivers/iio/imu/inv_icm42607/inv_icm42607.h   |  12 +++
 .../iio/imu/inv_icm42607/inv_icm42607_core.c  |  88 +++++++++++++--
 .../iio/imu/inv_icm42607/inv_icm42607_i2c.c   |  89 +++++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_spi.c   | 102 ++++++++++++++++++
 8 files changed, 325 insertions(+), 8 deletions(-)
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
index 1916e0b08bca..2c20e95b237a 100644
--- a/drivers/iio/imu/inv_icm42607/inv_icm42607.h
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
@@ -13,6 +13,16 @@
 #include <linux/regmap.h>
 #include <linux/regulator/consumer.h>
 
+/* serial bus slew rates */
+enum inv_icm42607_slew_rate {
+	INV_ICM42607_SLEW_RATE_20_60NS,
+	INV_ICM42607_SLEW_RATE_12_36NS,
+	INV_ICM42607_SLEW_RATE_6_18NS,
+	INV_ICM42607_SLEW_RATE_4_12NS,
+	INV_ICM42607_SLEW_RATE_2_6NS,
+	INV_ICM42607_SLEW_RATE_INF_2NS
+};
+
 enum inv_icm42607_sensor_mode {
 	INV_ICM42607_SENSOR_MODE_OFF,
 	INV_ICM42607_SENSOR_MODE_STANDBY,
@@ -327,6 +337,8 @@ struct inv_icm42607_state {
 typedef int (*inv_icm42607_bus_setup)(struct inv_icm42607_state *);
 
 extern const struct regmap_config inv_icm42607_regmap_config;
+extern const struct inv_icm42607_hw inv_icm42607_hw_data;
+extern const struct inv_icm42607_hw inv_icm42607p_hw_data;
 
 int inv_icm42607_core_probe(struct regmap *regmap, const struct inv_icm42607_hw *hw,
 			    inv_icm42607_bus_setup bus_setup);
diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
index 9784709319b9..1088c5c7076f 100644
--- a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
@@ -15,6 +15,63 @@
 
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
@@ -81,6 +138,14 @@ static int inv_icm42607_setup(struct inv_icm42607_state *st,
 	unsigned int val;
 	int ret;
 
+	/*
+	 * Setup the bus first in case we need to set the SPI mode or
+	 * change the slew rate in order.
+	 */
+	ret = bus_setup(st);
+	if (ret)
+		return ret;
+
 	ret = regmap_read(st->map, INV_ICM42607_REG_WHOAMI, &val);
 	if (ret)
 		return ret;
@@ -94,20 +159,27 @@ static int inv_icm42607_setup(struct inv_icm42607_state *st,
 	if (ret)
 		return ret;
 
-	fsleep(1000);
+	/*
+	 * In order to confirm a reset is complete, we need to read the reset
+	 * bit, but in certain circumstances we need to set the bus up before
+	 * we can do a read. So we should wait the required amount of time
+	 * per the datasheet first, then set the bus up again, then read to
+	 * ensure the reset status is done. Invalidate the regmap cache since
+	 * we're doing a hardware reset.
+	 */
+	regcache_mark_dirty(st->map);
 
-	ret = regmap_read_poll_timeout(st->map, INV_ICM42607_REG_INT_STATUS,
-				       val, val & INV_ICM42607_INT_STATUS_RESET_DONE,
-				       INV_ICM42607_RESET_TIME_MS * 100,
-				       INV_ICM42607_RESET_TIME_MS * 1000);
-	if (ret)
-		return dev_err_probe(dev, ret,
-				     "reset error, reset done bit not set\n");
+	fsleep(INV_ICM42607_RESET_TIME_MS * 1000);
 
 	ret = bus_setup(st);
 	if (ret)
 		return ret;
 
+	ret = regmap_read(st->map, INV_ICM42607_REG_INT_STATUS, &val);
+	if (ret || (!(val & INV_ICM42607_INT_STATUS_RESET_DONE)))
+		return dev_err_probe(dev, -EIO,
+				     "reset error, reset done bit not set\n");
+
 	ret = regmap_set_bits(st->map, INV_ICM42607_REG_INTF_CONFIG0,
 			      INV_ICM42607_INTF_CONFIG0_SENSOR_DATA_ENDIAN);
 	if (ret)
diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c
new file mode 100644
index 000000000000..8631579a609a
--- /dev/null
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c
@@ -0,0 +1,89 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2026 InvenSense, Inc.
+ */
+
+#include <linux/device.h>
+#include <linux/i2c.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/property.h>
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
+	{ "icm42607", (kernel_ulong_t)&inv_icm42607_hw_data },
+	{ "icm42607p", (kernel_ulong_t)&inv_icm42607p_hw_data },
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
index 000000000000..49438fa6f867
--- /dev/null
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c
@@ -0,0 +1,102 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2026 InvenSense, Inc.
+ */
+
+#include <linux/device.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/property.h>
+#include <linux/regmap.h>
+#include <linux/spi/spi.h>
+
+#include "inv_icm42607.h"
+
+static int inv_icm42607_spi_bus_setup(struct inv_icm42607_state *st)
+{
+	const struct device *dev = regmap_get_device(st->map);
+	const struct spi_device *spi = to_spi_device(dev);
+	unsigned int val;
+	int ret;
+
+	if (spi->mode & SPI_3WIRE)
+		ret = regmap_clear_bits(st->map, INV_ICM42607_REG_DEVICE_CONFIG,
+					INV_ICM42607_DEVICE_CONFIG_SPI_AP_4WIRE);
+	else
+		ret = regmap_set_bits(st->map, INV_ICM42607_REG_DEVICE_CONFIG,
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
+	const struct inv_icm42607_hw *hw;
+	struct regmap *regmap;
+
+	hw = spi_get_device_match_data(spi);
+	if (!hw)
+		return dev_err_probe(&spi->dev, -ENODEV,
+				     "Failed to get SPI data\n");
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
+static const struct spi_device_id inv_icm42607_spi_id_table[] = {
+	{ "icm42607", (kernel_ulong_t)&inv_icm42607_hw_data },
+	{ "icm42607p", (kernel_ulong_t)&inv_icm42607p_hw_data },
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
