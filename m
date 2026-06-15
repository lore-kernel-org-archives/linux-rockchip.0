Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28186CD98E1
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Jun 2026 17:28:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d7hUMLbRZOooO32JJ6Bg8N8yOzz9Bg332yBiP4ibLS8=; b=gd6QeRUL32ieL1
	xw7LXQLK+fFRAcpEHnsE457UOR4vkL83N1/Zhl6pBjFIHGy0gtbZebCSYiaMsSmBwI6P7lKHGXsJC
	ocz48RPrBYg/oXcAvYgaWJHrMd0Ltxuj9A8Dq5VbnOEkgT3VVXOlEuWIjmnuIiYXBvTKVkUZNzCkf
	8G7TWSbNNw5fCIxZPfC22HVqrtKHj4qE6b+mUygTp5yMdye+0LpxWdSVn8mGGLIxQX6FXHch2NXsg
	6K1jFcDPcGRbCUasnJxvSVM8EiVPfcq+ie6D72uO2cgWaqwBwIP7iFqZPl4A3cef9H47OD6b9WyxS
	UsflkWglW5RiWgKKULHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZB6m-0000000EeyV-3ear;
	Mon, 15 Jun 2026 17:28:24 +0000
Received: from mail-ot1-x329.google.com ([2607:f8b0:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZB6e-0000000Eepc-1Umn
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Jun 2026 17:28:19 +0000
Received: by mail-ot1-x329.google.com with SMTP id 46e09a7af769-7e6e9408e30so2334229a34.2
        for <linux-rockchip@lists.infradead.org>; Mon, 15 Jun 2026 10:28:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781544495; x=1782149295; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y4gDs9RT58Xx+snCtWa3d3ykil4RF0RmYFRE+Qh0D08=;
        b=smBcRa+on9913mlcJUJdVZIuo65nnp0M5lqatFD0P33RXz9sjsxH/+HNWN50qvfHRt
         LkpY9iEa5Pa7q83m+k6lv2ghlqOHl6S7IHtI1KJK86pZqCQBiUh7ojl/9m417t28DdN0
         fd7E8bhLHs+9CslfQOE/6GMkABmrLjbF4Xo+U0UCFZJFcaP6g+IKax1WzDBSj6lH1/0+
         7M5NnzksrObV7R+cFTpw2eWt8aMDF7IPEGDWiAE6ZkqHrOAS8meqhPsLZDJC9uk/AQ9p
         iUE+kHhLS/qy7fVEDd3/CiU+sNln+QQSGBWIYsW0pxfewKrBp7X2JJkyM2CXmCOtL2ML
         hM5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781544495; x=1782149295;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=y4gDs9RT58Xx+snCtWa3d3ykil4RF0RmYFRE+Qh0D08=;
        b=fYDls8zjaBib6ErUYYUK2ggRztgYQTRmuRVYDDfdmijaE2kfxOwlR28iHCBCuawr0/
         dLH9AN2ECXY1aiS5Yfc3CjDWuyRBr1ODBNdaDZRp92tJWnEQuc1PKMZi1InWHqt5uraU
         8IXv8AMH48Xh3xXS6B6d3YkM0HglFw2dCWt+yqc5rPg7eWKYDmK/HxBCdx2UMjDdX4z/
         Ul+AYCuF/5Ng6IEOk5TSfdrclsZCa8YX6wG4e6A5tZpgqbq32/f87X8XNwPVi+92Gnj2
         ueGpszBXSQaj3NDNbikS8x53nUdGlkIUmPagfonjYlWMFUNRqYG1k3PWVqy9jEyN0G9o
         nQng==
X-Forwarded-Encrypted: i=1; AFNElJ/XBhCw1CvFyTrIvR9N44IKou53wMvpoPTg+Vy5QvRZjOvP7ubsL8FjX0Oam9VtB86ulDsKJhANu0EEDIMTsQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwWzn2qSUslhT/usjYfP0B3inUMWAGYShmvMW8+wlBevVYg0yyH
	CnwrdT9WjLoWNieaAgI+wfXpDHdAKJ0FyHvGViQvdkjOaovlsYeqAD6J
X-Gm-Gg: Acq92OEFqAV3+9uDRbma+19TcZax9jApkTptmUKQWyIVbXgVKaWS6NIhXuLeIjsk0Vn
	c8kirz21yrapYLC1RvuCBcceb9IxsuuWHUWF4dEIpXTqc53Z1SLR5+h+gYbXtux4nqjcmEpaqjU
	j7NA9NoIcO0yzgKPUA/T4tJKIdFNI1JQB/RqHrrxOVcdWlgI52sgrYMCvPvgC9EcbFr95JzqbPT
	ZB/9rmS9wSzztxVvU6GjVndAZ9fMbzE11TP3RFwiqesegG63Htq8N6ETkLF4z1KPHjEYMaNwYYj
	mVvfWznEnACV83ilSUnnPFfh8DwzgnPkTtXRGR3u6sa+xBSHO678ek0WCEWCbCh0KL9R/jjeRE+
	1xOwYPaFV6h22Orjn/RmjF8HXFejdwX83UdlbuvpNGQTxdSisYM37oy0P5mFdhN0DNUKT8JVYFL
	Iyl1femDfxZJ26THp/GVNK9TOjrnI1dDFK
X-Received: by 2002:a05:6830:a8f:b0:7e7:aac:4cc9 with SMTP id 46e09a7af769-7e78e628af4mr8798155a34.3.1781544495245;
        Mon, 15 Jun 2026 10:28:15 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7e79f451fe7sm4480033a34.0.2026.06.15.10.28.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2026 10:28:14 -0700 (PDT)
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
Subject: [PATCH V13 8/9] iio: imu: inv_icm42607: Add Gyroscope to icm42607
Date: Mon, 15 Jun 2026 12:25:51 -0500
Message-ID: <20260615172554.160910-9-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260615172554.160910-1-macroalpha82@gmail.com>
References: <20260615172554.160910-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_102816_554837_453F0BFA 
X-CRM114-Status: GOOD (  21.97  )
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

Add gyroscope functions to the icm42607 driver.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/iio/imu/inv_icm42607/Makefile         |   1 +
 drivers/iio/imu/inv_icm42607/inv_icm42607.h   |   8 +
 .../iio/imu/inv_icm42607/inv_icm42607_core.c  |  48 +++
 .../iio/imu/inv_icm42607/inv_icm42607_gyro.c  | 369 ++++++++++++++++++
 4 files changed, 426 insertions(+)
 create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_gyro.c

diff --git a/drivers/iio/imu/inv_icm42607/Makefile b/drivers/iio/imu/inv_icm42607/Makefile
index d74b23b1e1be..7b907e019601 100644
--- a/drivers/iio/imu/inv_icm42607/Makefile
+++ b/drivers/iio/imu/inv_icm42607/Makefile
@@ -2,6 +2,7 @@
 
 obj-$(CONFIG_INV_ICM42607) += inv-icm42607.o
 inv-icm42607-y += inv_icm42607_core.o
+inv-icm42607-y += inv_icm42607_gyro.o
 inv-icm42607-y += inv_icm42607_accel.o
 inv-icm42607-y += inv_icm42607_temp.o
 
diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607.h b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
index c71d667dadb7..ab529e6191f6 100644
--- a/drivers/iio/imu/inv_icm42607/inv_icm42607.h
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
@@ -130,6 +130,7 @@ struct inv_icm42607_suspended {
  *  @lock:		lock for serializing multiple registers access.
  *  @map:		regmap pointer.
  *  @indio_accel:	accelerometer IIO device.
+ *  @indio_gyro:	gyroscope IIO device.
  *  @vddio_supply:	I/O voltage regulator for the chip.
  *  @vddio_en:		I/O voltage status for runtime PM.
  *  @suspended:		suspended sensors configuration.
@@ -141,6 +142,7 @@ struct inv_icm42607_state {
 	struct mutex lock;
 	struct regmap *map;
 	struct iio_dev *indio_accel;
+	struct iio_dev *indio_gyro;
 	struct regulator *vddio_supply;
 	bool vddio_en;
 	struct inv_icm42607_suspended suspended;
@@ -390,6 +392,10 @@ int inv_icm42607_set_accel_conf(struct inv_icm42607_state *st,
 				struct inv_icm42607_sensor_conf *conf,
 				unsigned int *sleep_ms);
 
+int inv_icm42607_set_gyro_conf(struct inv_icm42607_state *st,
+			       struct inv_icm42607_sensor_conf *conf,
+			       unsigned int *sleep_ms);
+
 int inv_icm42607_set_temp_conf(struct inv_icm42607_state *st, bool enable,
 			       unsigned int *sleep_ms);
 
@@ -397,6 +403,8 @@ int inv_icm42607_core_probe(struct regmap *regmap,
 			    const struct inv_icm42607_hw *hw,
 			    inv_icm42607_bus_setup bus_setup);
 
+struct iio_dev *inv_icm42607_gyro_init(struct inv_icm42607_state *st);
+
 struct iio_dev *inv_icm42607_accel_init(struct inv_icm42607_state *st);
 
 #endif
diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
index eb239987a1ce..23ca7529825c 100644
--- a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
@@ -218,6 +218,49 @@ int inv_icm42607_set_accel_conf(struct inv_icm42607_state *st,
 					  st->conf.temp_en, sleep_ms);
 }
 
+int inv_icm42607_set_gyro_conf(struct inv_icm42607_state *st,
+			       struct inv_icm42607_sensor_conf *conf,
+			       unsigned int *sleep_ms)
+{
+	struct inv_icm42607_sensor_conf *oldconf = &st->conf.gyro;
+	unsigned int val;
+	int ret;
+
+	if (conf->mode < 0)
+		conf->mode = oldconf->mode;
+	if (conf->fs < 0)
+		conf->fs = oldconf->fs;
+	if (conf->odr < 0)
+		conf->odr = oldconf->odr;
+	if (conf->filter < 0)
+		conf->filter = oldconf->filter;
+
+	if (conf->fs != oldconf->fs || conf->odr != oldconf->odr) {
+		val = FIELD_PREP(INV_ICM42607_GYRO_CONFIG0_FS_SEL_MASK,
+				 conf->fs);
+		val |= FIELD_PREP(INV_ICM42607_GYRO_CONFIG0_ODR_MASK,
+				  conf->odr);
+		ret = regmap_write(st->map, INV_ICM42607_REG_GYRO_CONFIG0, val);
+		if (ret)
+			return ret;
+		oldconf->fs = conf->fs;
+		oldconf->odr = conf->odr;
+	}
+
+	if (conf->filter != oldconf->filter) {
+		val = FIELD_PREP(INV_ICM42607_GYRO_CONFIG1_FILTER_MASK,
+				 conf->filter);
+		ret = regmap_update_bits(st->map, INV_ICM42607_REG_GYRO_CONFIG1,
+					 INV_ICM42607_GYRO_CONFIG1_FILTER_MASK, val);
+		if (ret)
+			return ret;
+		oldconf->filter = conf->filter;
+	}
+
+	return inv_icm42607_set_pwr_mgmt0(st, conf->mode, st->conf.accel.mode,
+					  st->conf.temp_en, sleep_ms);
+}
+
 int inv_icm42607_set_temp_conf(struct inv_icm42607_state *st, bool enable,
 			       unsigned int *sleep_ms)
 {
@@ -428,6 +471,11 @@ int inv_icm42607_core_probe(struct regmap *regmap,
 	if (IS_ERR(st->indio_accel))
 		return PTR_ERR(st->indio_accel);
 
+	/* Initialize IIO device for Gyro */
+	st->indio_gyro = inv_icm42607_gyro_init(st);
+	if (IS_ERR(st->indio_gyro))
+		return PTR_ERR(st->indio_gyro);
+
 	return 0;
 }
 EXPORT_SYMBOL_NS_GPL(inv_icm42607_core_probe, "IIO_ICM42607");
diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_gyro.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_gyro.c
new file mode 100644
index 000000000000..ef73560b39d7
--- /dev/null
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_gyro.c
@@ -0,0 +1,369 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2026 InvenSense, Inc.
+ */
+
+#include <linux/array_size.h>
+#include <linux/bits.h>
+#include <linux/cleanup.h>
+#include <linux/device/devres.h>
+#include <linux/err.h>
+#include <linux/iio/iio.h>
+#include <linux/mutex.h>
+#include <linux/pm_runtime.h>
+#include <linux/regmap.h>
+#include <linux/types.h>
+#include <linux/unaligned.h>
+
+#include "inv_icm42607.h"
+#include "inv_icm42607_temp.h"
+
+#define INV_ICM42607_GYRO_CHAN(_modifier, _index, _ext_info)			\
+{										\
+	.type = IIO_ANGL_VEL,							\
+	.modified = 1,								\
+	.channel2 = _modifier,							\
+	.info_mask_separate = BIT(IIO_CHAN_INFO_RAW),				\
+	.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE),			\
+	.info_mask_shared_by_type_available = BIT(IIO_CHAN_INFO_SCALE),		\
+	.info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ),		\
+	.info_mask_shared_by_all_available = BIT(IIO_CHAN_INFO_SAMP_FREQ),	\
+	.scan_index = _index,							\
+	.scan_type = {								\
+		.sign = 's',							\
+		.realbits = 16,							\
+		.storagebits = 16,						\
+		.endianness = IIO_BE,						\
+	},									\
+	.ext_info = _ext_info,							\
+}
+
+enum inv_icm42607_gyro_scan {
+	INV_ICM42607_GYRO_SCAN_X,
+	INV_ICM42607_GYRO_SCAN_Y,
+	INV_ICM42607_GYRO_SCAN_Z,
+	INV_ICM42607_GYRO_SCAN_TEMP,
+};
+
+static const struct iio_chan_spec_ext_info inv_icm42607_gyro_ext_infos[] = {
+	IIO_MOUNT_MATRIX(IIO_SHARED_BY_ALL, inv_icm42607_get_mount_matrix),
+	{ }
+};
+
+static const struct iio_chan_spec inv_icm42607_gyro_channels[] = {
+	INV_ICM42607_GYRO_CHAN(IIO_MOD_X, INV_ICM42607_GYRO_SCAN_X,
+			       inv_icm42607_gyro_ext_infos),
+	INV_ICM42607_GYRO_CHAN(IIO_MOD_Y, INV_ICM42607_GYRO_SCAN_Y,
+			       inv_icm42607_gyro_ext_infos),
+	INV_ICM42607_GYRO_CHAN(IIO_MOD_Z, INV_ICM42607_GYRO_SCAN_Z,
+			       inv_icm42607_gyro_ext_infos),
+	INV_ICM42607_TEMP_CHAN(INV_ICM42607_GYRO_SCAN_TEMP),
+};
+
+static int inv_icm42607_gyro_read_sensor(struct iio_dev *indio_dev,
+					 struct iio_chan_spec const *chan,
+					 s16 *val)
+{
+	struct inv_icm42607_sensor_conf conf = INV_ICM42607_SENSOR_CONF_INIT;
+	struct inv_icm42607_state *st = iio_device_get_drvdata(indio_dev);
+	struct inv_icm42607_sensor_state *gyro_st = iio_priv(indio_dev);
+	struct device *dev = regmap_get_device(st->map);
+	unsigned int reg;
+	u8 data[2];
+	int ret;
+
+	if (chan->type != IIO_ANGL_VEL)
+		return -EINVAL;
+
+	switch (chan->channel2) {
+	case IIO_MOD_X:
+		reg = INV_ICM42607_REG_GYRO_DATA_X1;
+		break;
+	case IIO_MOD_Y:
+		reg = INV_ICM42607_REG_GYRO_DATA_Y1;
+		break;
+	case IIO_MOD_Z:
+		reg = INV_ICM42607_REG_GYRO_DATA_Z1;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	PM_RUNTIME_ACQUIRE_AUTOSUSPEND(dev, pm);
+	ret = PM_RUNTIME_ACQUIRE_ERR(&pm);
+	if (ret)
+		return ret;
+
+	guard(mutex)(&st->lock);
+
+	/* enable gyro sensor */
+	conf.mode = gyro_st->power_mode;
+	conf.filter = gyro_st->filter;
+	ret = inv_icm42607_set_gyro_conf(st, &conf, NULL);
+	if (ret)
+		return ret;
+
+	/* read gyro register data */
+	ret = regmap_bulk_read(st->map, reg, data, sizeof(data));
+	if (ret)
+		return ret;
+
+	*val = get_unaligned_be16(data);
+	if (*val == INV_ICM42607_DATA_INVALID)
+		return -EINVAL;
+
+	return 0;
+}
+
+static const int inv_icm42607_gyro_scale_nano[][2] = {
+	[INV_ICM42607_GYRO_FS_2000DPS] = { 0, 1065264 },
+	[INV_ICM42607_GYRO_FS_1000DPS] = { 0, 532632 },
+	[INV_ICM42607_GYRO_FS_500DPS] = { 0, 266316 },
+	[INV_ICM42607_GYRO_FS_250DPS] = { 0, 133158 },
+};
+
+static int inv_icm42607_gyro_read_scale(struct iio_dev *indio_dev,
+					int *val, int *val2)
+{
+	struct inv_icm42607_state *st = iio_device_get_drvdata(indio_dev);
+	unsigned int idx;
+
+	guard(mutex)(&st->lock);
+
+	idx = st->conf.gyro.fs;
+
+	*val = inv_icm42607_gyro_scale_nano[idx][0];
+	*val2 = inv_icm42607_gyro_scale_nano[idx][1];
+	return IIO_VAL_INT_PLUS_NANO;
+}
+
+static int inv_icm42607_gyro_write_scale(struct iio_dev *indio_dev,
+					 int val, int val2)
+{
+	struct inv_icm42607_state *st = iio_device_get_drvdata(indio_dev);
+	struct device *dev = regmap_get_device(st->map);
+	unsigned int idx;
+	struct inv_icm42607_sensor_conf conf = INV_ICM42607_SENSOR_CONF_INIT;
+	size_t scales_len = ARRAY_SIZE(inv_icm42607_gyro_scale_nano);
+	int ret;
+
+	for (idx = 0; idx < scales_len; idx++) {
+		if (val == inv_icm42607_gyro_scale_nano[idx][0] &&
+		    val2 == inv_icm42607_gyro_scale_nano[idx][1])
+			break;
+	}
+	if (idx >= scales_len)
+		return -EINVAL;
+
+	conf.fs = idx;
+
+	PM_RUNTIME_ACQUIRE_AUTOSUSPEND(dev, pm);
+	ret = PM_RUNTIME_ACQUIRE_ERR(&pm);
+	if (ret)
+		return ret;
+
+	guard(mutex)(&st->lock);
+
+	return inv_icm42607_set_gyro_conf(st, &conf, NULL);
+}
+
+static const int inv_icm42607_gyro_odr[][2] = {
+	[INV_ICM42607_ODR_1600HZ] = { 1600, 0 },
+	[INV_ICM42607_ODR_800HZ] = { 800, 0 },
+	[INV_ICM42607_ODR_400HZ] = { 400, 0 },
+	[INV_ICM42607_ODR_200HZ] = { 200, 0 },
+	[INV_ICM42607_ODR_100HZ] = { 100, 0 },
+	[INV_ICM42607_ODR_50HZ] = { 50, 0 },
+	[INV_ICM42607_ODR_25HZ] = { 25, 0 },
+	[INV_ICM42607_ODR_12_5HZ] = { 12, 500000 },
+};
+
+static int inv_icm42607_gyro_read_odr(struct inv_icm42607_state *st,
+				      int *val, int *val2)
+{
+	unsigned int odr;
+	unsigned int i;
+
+	guard(mutex)(&st->lock);
+
+	odr = st->conf.gyro.odr;
+
+	for (i = 5; i < ARRAY_SIZE(inv_icm42607_gyro_odr); ++i) {
+		if (i == odr)
+			break;
+	}
+	if (i >= ARRAY_SIZE(inv_icm42607_gyro_odr))
+		return -EINVAL;
+
+	*val = inv_icm42607_gyro_odr[i][0];
+	*val2 = inv_icm42607_gyro_odr[i][1];
+
+	return IIO_VAL_INT_PLUS_MICRO;
+}
+
+static int inv_icm42607_gyro_write_odr(struct iio_dev *indio_dev,
+				       int val, int val2)
+{
+	struct inv_icm42607_state *st = iio_device_get_drvdata(indio_dev);
+	struct device *dev = regmap_get_device(st->map);
+	unsigned int idx;
+	struct inv_icm42607_sensor_conf conf = INV_ICM42607_SENSOR_CONF_INIT;
+	int ret;
+
+	for (idx = 5; idx < ARRAY_SIZE(inv_icm42607_gyro_odr); ++idx) {
+		if (val == inv_icm42607_gyro_odr[idx][0] &&
+		    val2 == inv_icm42607_gyro_odr[idx][1])
+			break;
+	}
+	if (idx >= ARRAY_SIZE(inv_icm42607_gyro_odr))
+		return -EINVAL;
+
+	conf.odr = idx;
+
+	PM_RUNTIME_ACQUIRE_AUTOSUSPEND(dev, pm);
+	ret = PM_RUNTIME_ACQUIRE_ERR(&pm);
+	if (ret)
+		return ret;
+
+	guard(mutex)(&st->lock);
+
+	return inv_icm42607_set_gyro_conf(st, &conf, NULL);
+}
+
+static int inv_icm42607_gyro_read_raw(struct iio_dev *indio_dev,
+				      struct iio_chan_spec const *chan,
+				      int *val, int *val2, long mask)
+{
+	struct inv_icm42607_state *st = iio_device_get_drvdata(indio_dev);
+	s16 data;
+	int ret;
+
+	switch (chan->type) {
+	case IIO_ANGL_VEL:
+		break;
+	case IIO_TEMP:
+		if (mask != IIO_CHAN_INFO_SAMP_FREQ)
+			return inv_icm42607_temp_read_raw(indio_dev, chan,
+							  val, val2, mask);
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	switch (mask) {
+	case IIO_CHAN_INFO_RAW:
+		ret = inv_icm42607_gyro_read_sensor(indio_dev, chan, &data);
+		if (ret)
+			return ret;
+		*val = data;
+		return IIO_VAL_INT;
+	case IIO_CHAN_INFO_SCALE:
+		return inv_icm42607_gyro_read_scale(indio_dev, val, val2);
+	case IIO_CHAN_INFO_SAMP_FREQ:
+		return inv_icm42607_gyro_read_odr(st, val, val2);
+	default:
+		return -EINVAL;
+	}
+}
+
+static int inv_icm42607_gyro_read_avail(struct iio_dev *indio_dev,
+					struct iio_chan_spec const *chan,
+					const int **vals,
+					int *type, int *length, long mask)
+{
+	if (chan->type != IIO_ANGL_VEL)
+		return -EINVAL;
+
+	switch (mask) {
+	case IIO_CHAN_INFO_SCALE:
+		*vals = (const int *)inv_icm42607_gyro_scale_nano;
+		*type = IIO_VAL_INT_PLUS_NANO;
+		*length = ARRAY_SIZE(inv_icm42607_gyro_scale_nano) * 2;
+		return IIO_AVAIL_LIST;
+	case IIO_CHAN_INFO_SAMP_FREQ:
+		*vals = (const int *)inv_icm42607_gyro_odr[5];
+		*type = IIO_VAL_INT_PLUS_MICRO;
+		*length = (ARRAY_SIZE(inv_icm42607_gyro_odr) - 5) * 2;
+		return IIO_AVAIL_LIST;
+	default:
+		return -EINVAL;
+	}
+}
+
+static int inv_icm42607_gyro_write_raw(struct iio_dev *indio_dev,
+				       struct iio_chan_spec const *chan,
+				       int val, int val2, long mask)
+{
+	int ret;
+
+	if (chan->type != IIO_ANGL_VEL)
+		return -EINVAL;
+
+	switch (mask) {
+	case IIO_CHAN_INFO_SCALE:
+		ret = inv_icm42607_gyro_write_scale(indio_dev, val, val2);
+		return ret;
+	case IIO_CHAN_INFO_SAMP_FREQ:
+		return inv_icm42607_gyro_write_odr(indio_dev, val, val2);
+	default:
+		return -EINVAL;
+	}
+}
+
+static int inv_icm42607_gyro_write_raw_get_fmt(struct iio_dev *indio_dev,
+					       struct iio_chan_spec const *chan,
+					       long mask)
+{
+	if (chan->type != IIO_ANGL_VEL)
+		return -EINVAL;
+
+	switch (mask) {
+	case IIO_CHAN_INFO_SCALE:
+		return IIO_VAL_INT_PLUS_NANO;
+	case IIO_CHAN_INFO_SAMP_FREQ:
+		return IIO_VAL_INT_PLUS_MICRO;
+	default:
+		return -EINVAL;
+	}
+}
+
+static const struct iio_info inv_icm42607_gyro_info = {
+	.read_raw = inv_icm42607_gyro_read_raw,
+	.read_avail = inv_icm42607_gyro_read_avail,
+	.write_raw = inv_icm42607_gyro_write_raw,
+	.write_raw_get_fmt = inv_icm42607_gyro_write_raw_get_fmt,
+};
+
+struct iio_dev *inv_icm42607_gyro_init(struct inv_icm42607_state *st)
+{
+	struct device *dev = regmap_get_device(st->map);
+	const char *name;
+	struct inv_icm42607_sensor_state *gyro_st;
+	struct iio_dev *indio_dev;
+	int ret;
+
+	name = devm_kasprintf(dev, GFP_KERNEL, "%s-gyro", st->hw->name);
+	if (!name)
+		return ERR_PTR(-ENOMEM);
+
+	indio_dev = devm_iio_device_alloc(dev, sizeof(*gyro_st));
+	if (!indio_dev)
+		return ERR_PTR(-ENOMEM);
+	gyro_st = iio_priv(indio_dev);
+
+	gyro_st->power_mode = INV_ICM42607_SENSOR_MODE_LOW_NOISE;
+	gyro_st->filter = INV_ICM42607_FILTER_BW_73HZ;
+
+	iio_device_set_drvdata(indio_dev, st);
+	indio_dev->name = name;
+	indio_dev->info = &inv_icm42607_gyro_info;
+	indio_dev->modes = INDIO_DIRECT_MODE;
+	indio_dev->channels = inv_icm42607_gyro_channels;
+	indio_dev->num_channels = ARRAY_SIZE(inv_icm42607_gyro_channels);
+
+	ret = devm_iio_device_register(dev, indio_dev);
+	if (ret)
+		return ERR_PTR(ret);
+
+	return indio_dev;
+}
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
