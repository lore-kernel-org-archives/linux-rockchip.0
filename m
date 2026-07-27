Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D810EC54F4E
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Jul 2026 16:50:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QtIogqTKEIX29u910RAzZseCsGs+ys4C6NlZY5J9Q3w=; b=bcauElsa1He72j
	54GrqFZz6ykmBkWeg4WGd1sgXx3EFwkhR766WS/2svEFPGcsvH2GCtr4P0quHJOExqnXb56acf1W/
	Y604HL98JHLLZKoejnYTXErh4VudW9fHVW+71JMJqVL0r9fhVtWiD5S/ALfn3v01zxZz+qH85qWg2
	AVvrtzn7l0tzlSSbz4f70EJB4Jl6sr79/X3VENB4uBbEWol2WpDAU5Qn0RPb9rDKc9N0zOQ5/RxG+
	nwpe1NqYokUIYVhTVHTB+vVBls3/dr9tbH1HcjXLguqZCNj9YleezwsQZS+Ho1zLCHUvV6axtWfSF
	djJl5KKFD7IIejJO157w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woOXW-00000003RiL-2a7c;
	Mon, 27 Jul 2026 16:50:54 +0000
Received: from mail-ot1-x32b.google.com ([2607:f8b0:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woOXS-00000003Rd9-2jVS
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Jul 2026 16:50:51 +0000
Received: by mail-ot1-x32b.google.com with SMTP id 46e09a7af769-7eb64085c45so1306570a34.2
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Jul 2026 09:50:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785171049; x=1785775849; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=d03IoUJs+oVmIa4Ry7YJheaF5wmOvK7vIkn1SRp3Fck=;
        b=sSYiETfFxvVwmOI7Ie9Ps7GfUgZSO+X5okkg+xTfdwUk0sy35ZE70eHXI3V3QaG8r3
         Rx/AIV+7aDrtWA4GHKvSW+RnMVtlM5lhFXuc61SH/AsfXpIEoGhXKaYQ/W2YAFFUFGBc
         efnz185248ebvTXM7iPZ+Csq1PLnt3W4gpMYPa9OziKuy4va8Olz+A6PywsP/BRC7Qkh
         tUIkIPUfF97HiMp7vRl80nffQrAsea/Ef2XaaqPfeE+yMlWmS6dKIAKrqWjZi4qY+E7s
         iN8YKJB9UUpV1BWRgEKt2++RrFVogn0s8mJKX6iS0guXBbMOEpHzQHMZFdpifXHcV08S
         K9Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785171049; x=1785775849;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=d03IoUJs+oVmIa4Ry7YJheaF5wmOvK7vIkn1SRp3Fck=;
        b=mGdUL9RBhvCqfINctKCvEpQzm7rOvuqR7Y0bWpWLdnN20zmzCx3FeF43A8UekhZPe5
         zfDr3gYCTP/1L72ITRK1bO0HiJibT9CZOjcEkzhk5lMZuAAv0gtt+32soV15yx+Sq/V+
         UYsHgFsmScTCPQUtNPPHdH3yvVCJ+VDmNPMb3yHXLFC/4d8BD4qby3W/vBhVnIKZuzYh
         ivxAXViTZjLgYWx5RV0qqmGXg5Iabg0rx2DJTj0D1xTrmI7t4E6g/ZQ9mO48bPpDq5qz
         OkEDecXCIqURyA2uAKU03uRe7y7Kmg6ySxUjn4YsPHxXgExrKw51tKimX27Z03/+Hsko
         nPfA==
X-Forwarded-Encrypted: i=1; AHgh+RqzT0C7rKa9JLz08t14QmRu8DdQ1LCSiBQv8PiyLhVSaBXLFMnckVUostOdDag0ioTAOHM9eO6odg+t6zxX7A==@lists.infradead.org
X-Gm-Message-State: AOJu0YxN7Namjey0LYPjFuEs4AT5nrn4g0k1/QsagrJFY9EqfTb4eetK
	WSpcZwZinXCOvURZG81A3q54i3LB/kewYx4JCDNVeQoeUQBq7ImiMXES
X-Gm-Gg: AR+sD126lgIhNGFiSazpsiM8Fo79Q7kVwMJ4rW/zqdUjFLHIMGt7+J/wbRJ9df0u/Po
	2koMcWRMZyFtudoTq7qqZk/lANeVyqv0tH6qBDR9C6xfq+JFKGFpWV7cXpJ9KEBSNnmcCZgNNHY
	P90K14Ulf6TuCQ6ZZwYCHmtXNfTSZ4m/OI3QICSE+gNwq0pQnvj/seKgANUB6V2uqtzNDssYhKs
	aVAtQIv54MoWN2T53mirMRutn5JnOEAl6MjA1sTq8mSoOAbt8Lw5UBArCtwi/qFYpRLRt2Hr+8M
	nuC3dmeTjfC0QkIdIGJmzpSLEmUJjHLJiUTAqhg3otdDjDIwwhiwbBlHWfSRi+XWDOO7lLu136r
	BNBi9y6PQFngod0s9wppUF5u4hMbqs27L+bu0T6OYwTK0jxr32cHbn7vrEWAMwHQBEYxkPCtc/y
	eMI+jhGJmB7+NwgzSu4p3y
X-Received: by 2002:a05:6808:244e:b0:494:9c17:c336 with SMTP id 5614622812f47-4ab6a28c203mr7850792b6e.34.1785171049368;
        Mon, 27 Jul 2026 09:50:49 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:30e7:7cd7:b59:5863])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4ab0c7a1912sm11395050b6e.2.2026.07.27.09.50.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jul 2026 09:50:48 -0700 (PDT)
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
Subject: [PATCH V20 6/9] iio: imu: inv_icm42607: Add Accelerometer for icm42607
Date: Mon, 27 Jul 2026 11:48:10 -0500
Message-ID: <20260727164815.65190-7-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260727164815.65190-1-macroalpha82@gmail.com>
References: <20260727164815.65190-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_095050_764233_7BA68BFF 
X-CRM114-Status: GOOD (  22.44  )
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

Add icm42607 accelerometer sensor for icm42607.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/iio/imu/inv_icm42607/Makefile         |   1 +
 drivers/iio/imu/inv_icm42607/inv_icm42607.h   |  38 +++
 .../iio/imu/inv_icm42607/inv_icm42607_accel.c | 308 ++++++++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_core.c  | 184 +++++++++++
 4 files changed, 531 insertions(+)
 create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_accel.c

diff --git a/drivers/iio/imu/inv_icm42607/Makefile b/drivers/iio/imu/inv_icm42607/Makefile
index be109102e203..372c6d6bdcec 100644
--- a/drivers/iio/imu/inv_icm42607/Makefile
+++ b/drivers/iio/imu/inv_icm42607/Makefile
@@ -2,6 +2,7 @@
 
 obj-$(CONFIG_INV_ICM42607) += inv-icm42607.o
 inv-icm42607-y += inv_icm42607_core.o
+inv-icm42607-y += inv_icm42607_accel.o
 
 obj-$(CONFIG_INV_ICM42607_I2C) += inv-icm42607-i2c.o
 inv-icm42607-i2c-y += inv_icm42607_i2c.o
diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607.h b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
index 61927a6c2663..fd3e57ee4f14 100644
--- a/drivers/iio/imu/inv_icm42607/inv_icm42607.h
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
@@ -88,6 +88,17 @@ enum inv_icm42607_filter_bw {
 	INV_ICM42607_FILTER_BW_NB
 };
 
+/* Low-Power mode sensor data filter (averaging) */
+enum inv_icm42607_filter_avg {
+	INV_ICM42607_FILTER_AVG_2X = 0,
+	INV_ICM42607_FILTER_AVG_4X = 1,
+	INV_ICM42607_FILTER_AVG_8X = 2,
+	INV_ICM42607_FILTER_AVG_16X = 3,
+	INV_ICM42607_FILTER_AVG_32X = 4,
+	INV_ICM42607_FILTER_AVG_64X = 5,
+	/* values 6 and 7 also correspond to 64x. */
+};
+
 /* Temperature sensor data filter (bandwidth) */
 enum inv_icm42607_temp_filter_bw {
 	INV_ICM42607_TEMP_FILTER_BYPASS = 0,
@@ -107,6 +118,7 @@ struct inv_icm42607_sensor_conf {
 	int odr;
 	int filter;
 };
+#define INV_ICM42607_SENSOR_CONF_INIT		{ -1, -1, -1, -1 }
 
 struct inv_icm42607_conf {
 	struct inv_icm42607_sensor_conf gyro;
@@ -125,6 +137,7 @@ struct inv_icm42607_hw {
  *  @hw:		Hardware specific data.
  *  @lock:		lock for serializing multiple registers access.
  *  @map:		regmap pointer.
+ *  @indio_accel:	accelerometer IIO device.
  *  @vddio_supply:	I/O voltage regulator for the chip.
  *  @vddio_en:		I/O voltage status for runtime PM.
  *  @conf:		chip sensors configurations.
@@ -134,12 +147,23 @@ struct inv_icm42607_state {
 	const struct inv_icm42607_hw *hw;
 	struct mutex lock;
 	struct regmap *map;
+	struct iio_dev *indio_accel;
 	struct regulator *vddio_supply;
 	bool vddio_en;
 	struct inv_icm42607_conf conf;
 	struct iio_mount_matrix orientation;
 };
 
+/**
+ * struct inv_icm42607_sensor_state - sensor state variables
+ * @power_mode:		sensor requested power mode (for common frequencies)
+ * @filter:		sensor filter.
+ */
+struct inv_icm42607_sensor_state {
+	enum inv_icm42607_sensor_mode power_mode;
+	int filter;
+};
+
 /* Virtual register addresses: @bank on MSB (4 upper bits), @address on LSB */
 
 /* Register Map for User Bank 0 */
@@ -368,12 +392,26 @@ extern const struct inv_icm42607_hw inv_icm42607_hw_data;
 extern const struct inv_icm42607_hw inv_icm42607p_hw_data;
 extern const struct dev_pm_ops inv_icm42607_pm_ops;
 
+const struct iio_mount_matrix *
+inv_icm42607_get_mount_matrix(struct iio_dev *indio_dev,
+			      const struct iio_chan_spec *chan);
+
 int inv_icm42607_get_pwr_mgmt0(struct inv_icm42607_state *st,
 			       enum inv_icm42607_sensor_mode *gyro,
 			       enum inv_icm42607_sensor_mode *accel);
 
+int inv_icm42607_set_sensor_conf(struct inv_icm42607_state *st,
+				 struct inv_icm42607_sensor_conf *conf,
+				 enum iio_chan_type chan_type);
+
+int inv_icm42607_read_sensor(struct iio_dev *indio_dev,
+			     struct iio_chan_spec const *chan,
+			     s16 *val);
+
 int inv_icm42607_core_probe(struct regmap *regmap,
 			    const struct inv_icm42607_hw *hw,
 			    inv_icm42607_bus_setup bus_setup);
 
+struct iio_dev *inv_icm42607_accel_init(struct inv_icm42607_state *st);
+
 #endif
diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_accel.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_accel.c
new file mode 100644
index 000000000000..f563c7708420
--- /dev/null
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_accel.c
@@ -0,0 +1,308 @@
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
+
+#include "inv_icm42607.h"
+
+#define INV_ICM42607_ACCEL_CHAN(_modifier, _index, _ext_info)			\
+{										\
+	.type = IIO_ACCEL,							\
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
+enum inv_icm42607_accel_scan {
+	INV_ICM42607_ACCEL_SCAN_X,
+	INV_ICM42607_ACCEL_SCAN_Y,
+	INV_ICM42607_ACCEL_SCAN_Z,
+};
+
+static const struct iio_chan_spec_ext_info inv_icm42607_accel_ext_infos[] = {
+	IIO_MOUNT_MATRIX(IIO_SHARED_BY_ALL, inv_icm42607_get_mount_matrix),
+	{ }
+};
+
+static const struct iio_chan_spec inv_icm42607_accel_channels[] = {
+	INV_ICM42607_ACCEL_CHAN(IIO_MOD_X, INV_ICM42607_ACCEL_SCAN_X,
+				inv_icm42607_accel_ext_infos),
+	INV_ICM42607_ACCEL_CHAN(IIO_MOD_Y, INV_ICM42607_ACCEL_SCAN_Y,
+				inv_icm42607_accel_ext_infos),
+	INV_ICM42607_ACCEL_CHAN(IIO_MOD_Z, INV_ICM42607_ACCEL_SCAN_Z,
+				inv_icm42607_accel_ext_infos),
+};
+
+static const int inv_icm42607_accel_scale_nano[][2] = {
+	[INV_ICM42607_ACCEL_FS_16G] = { 0, 4788403 },
+	[INV_ICM42607_ACCEL_FS_8G] = { 0, 2394202 },
+	[INV_ICM42607_ACCEL_FS_4G] = { 0, 1197101 },
+	[INV_ICM42607_ACCEL_FS_2G] = { 0, 598550 },
+};
+
+static int inv_icm42607_accel_read_scale(struct iio_dev *indio_dev,
+					 int *val, int *val2)
+{
+	struct inv_icm42607_state *st = iio_device_get_drvdata(indio_dev);
+	unsigned int idx;
+
+	guard(mutex)(&st->lock);
+
+	idx = st->conf.accel.fs;
+
+	*val = inv_icm42607_accel_scale_nano[idx][0];
+	*val2 = inv_icm42607_accel_scale_nano[idx][1];
+	return IIO_VAL_INT_PLUS_NANO;
+}
+
+static int inv_icm42607_accel_write_scale(struct iio_dev *indio_dev,
+					  int val, int val2)
+{
+	struct inv_icm42607_sensor_conf conf = INV_ICM42607_SENSOR_CONF_INIT;
+	struct inv_icm42607_state *st = iio_device_get_drvdata(indio_dev);
+	size_t scales_len = ARRAY_SIZE(inv_icm42607_accel_scale_nano);
+	struct device *dev = regmap_get_device(st->map);
+	unsigned int idx;
+	int ret;
+
+	for (idx = 0; idx < scales_len; idx++) {
+		if (val == inv_icm42607_accel_scale_nano[idx][0] &&
+		    val2 == inv_icm42607_accel_scale_nano[idx][1])
+			break;
+	}
+	if (idx == scales_len)
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
+	return inv_icm42607_set_sensor_conf(st, &conf, IIO_ACCEL);
+}
+
+/* IIO format int + micro , values 0-4 reserved. */
+static const int inv_icm42607_accel_odr[][2] = {
+	[INV_ICM42607_ODR_1600HZ] = { 1600, 0 },
+	[INV_ICM42607_ODR_800HZ] = { 800, 0 },
+	[INV_ICM42607_ODR_400HZ] = { 400, 0 },
+	[INV_ICM42607_ODR_200HZ] = { 200, 0 },
+	[INV_ICM42607_ODR_100HZ] = { 100, 0 },
+	[INV_ICM42607_ODR_50HZ] = { 50, 0 },
+	[INV_ICM42607_ODR_25HZ] = { 25, 0 },
+	[INV_ICM42607_ODR_12_5HZ] = { 12, 500000 },
+	[INV_ICM42607_ODR_6_25HZ_LP] = { 6, 250000 },
+	[INV_ICM42607_ODR_3_125HZ_LP] = { 3, 125000 },
+	[INV_ICM42607_ODR_1_5625HZ_LP] = { 1, 562500 },
+};
+
+static int inv_icm42607_accel_read_odr(struct inv_icm42607_state *st,
+				       int *val, int *val2)
+{
+	unsigned int odr;
+	unsigned int i;
+
+	guard(mutex)(&st->lock);
+
+	odr = st->conf.accel.odr;
+
+	for (i = INV_ICM42607_ODR_1600HZ; i < ARRAY_SIZE(inv_icm42607_accel_odr); i++) {
+		if (i == odr)
+			break;
+	}
+	if (i == ARRAY_SIZE(inv_icm42607_accel_odr))
+		return -EINVAL;
+
+	*val = inv_icm42607_accel_odr[i][0];
+	*val2 = inv_icm42607_accel_odr[i][1];
+
+	return IIO_VAL_INT_PLUS_MICRO;
+}
+
+static int inv_icm42607_accel_write_odr(struct iio_dev *indio_dev,
+					int val, int val2)
+{
+	struct inv_icm42607_sensor_conf conf = INV_ICM42607_SENSOR_CONF_INIT;
+	struct inv_icm42607_state *st = iio_device_get_drvdata(indio_dev);
+	struct device *dev = regmap_get_device(st->map);
+	unsigned int idx;
+	int ret;
+
+	for (idx = INV_ICM42607_ODR_1600HZ;
+	     idx < ARRAY_SIZE(inv_icm42607_accel_odr); idx++) {
+		if (val == inv_icm42607_accel_odr[idx][0] &&
+		    val2 == inv_icm42607_accel_odr[idx][1])
+			break;
+	}
+	if (idx == ARRAY_SIZE(inv_icm42607_accel_odr))
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
+	return inv_icm42607_set_sensor_conf(st, &conf, IIO_ACCEL);
+}
+
+static int inv_icm42607_accel_read_raw(struct iio_dev *indio_dev,
+				       struct iio_chan_spec const *chan,
+				       int *val, int *val2, long mask)
+{
+	struct inv_icm42607_state *st = iio_device_get_drvdata(indio_dev);
+	s16 data;
+	int ret;
+
+	switch (chan->type) {
+	case IIO_ACCEL:
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	switch (mask) {
+	case IIO_CHAN_INFO_RAW:
+		ret = inv_icm42607_read_sensor(indio_dev, chan, &data);
+		if (ret)
+			return ret;
+		*val = data;
+		return IIO_VAL_INT;
+	case IIO_CHAN_INFO_SCALE:
+		return inv_icm42607_accel_read_scale(indio_dev, val, val2);
+	case IIO_CHAN_INFO_SAMP_FREQ:
+		return inv_icm42607_accel_read_odr(st, val, val2);
+	default:
+		return -EINVAL;
+	}
+}
+
+static int inv_icm42607_accel_read_avail(struct iio_dev *indio_dev,
+					 struct iio_chan_spec const *chan,
+					 const int **vals,
+					 int *type, int *length, long mask)
+{
+	switch (mask) {
+	case IIO_CHAN_INFO_SCALE:
+		if (chan->type != IIO_ACCEL)
+			return -EINVAL;
+		*vals = (const int *)inv_icm42607_accel_scale_nano;
+		*type = IIO_VAL_INT_PLUS_NANO;
+		*length = ARRAY_SIZE(inv_icm42607_accel_scale_nano) * 2;
+		return IIO_AVAIL_LIST;
+	case IIO_CHAN_INFO_SAMP_FREQ:
+		*vals = (const int *)inv_icm42607_accel_odr[INV_ICM42607_ODR_1600HZ];
+		*type = IIO_VAL_INT_PLUS_MICRO;
+		*length = (ARRAY_SIZE(inv_icm42607_accel_odr) -
+			   INV_ICM42607_ODR_1600HZ) * 2;
+		return IIO_AVAIL_LIST;
+	default:
+		return -EINVAL;
+	}
+}
+
+static int inv_icm42607_accel_write_raw(struct iio_dev *indio_dev,
+					struct iio_chan_spec const *chan,
+					int val, int val2, long mask)
+{
+	int ret;
+
+	switch (mask) {
+	case IIO_CHAN_INFO_SCALE:
+		if (chan->type != IIO_ACCEL)
+			return -EINVAL;
+		ret = inv_icm42607_accel_write_scale(indio_dev, val, val2);
+		return ret;
+	case IIO_CHAN_INFO_SAMP_FREQ:
+		return inv_icm42607_accel_write_odr(indio_dev, val, val2);
+	default:
+		return -EINVAL;
+	}
+}
+
+static int inv_icm42607_accel_write_raw_get_fmt(struct iio_dev *indio_dev,
+						struct iio_chan_spec const *chan,
+						long mask)
+{
+	switch (mask) {
+	case IIO_CHAN_INFO_SCALE:
+		if (chan->type != IIO_ACCEL)
+			return -EINVAL;
+		return IIO_VAL_INT_PLUS_NANO;
+	case IIO_CHAN_INFO_SAMP_FREQ:
+		return IIO_VAL_INT_PLUS_MICRO;
+	default:
+		return -EINVAL;
+	}
+}
+
+static const struct iio_info inv_icm42607_accel_info = {
+	.read_raw = inv_icm42607_accel_read_raw,
+	.read_avail = inv_icm42607_accel_read_avail,
+	.write_raw = inv_icm42607_accel_write_raw,
+	.write_raw_get_fmt = inv_icm42607_accel_write_raw_get_fmt,
+};
+
+struct iio_dev *inv_icm42607_accel_init(struct inv_icm42607_state *st)
+{
+	struct device *dev = regmap_get_device(st->map);
+	struct inv_icm42607_sensor_state *accel_st;
+	struct iio_dev *indio_dev;
+	const char *name;
+	int ret;
+
+	name = devm_kasprintf(dev, GFP_KERNEL, "%s-accel", st->hw->name);
+	if (!name)
+		return ERR_PTR(-ENOMEM);
+
+	indio_dev = devm_iio_device_alloc(dev, sizeof(*accel_st));
+	if (!indio_dev)
+		return ERR_PTR(-ENOMEM);
+
+	accel_st = iio_priv(indio_dev);
+	accel_st->power_mode = INV_ICM42607_SENSOR_MODE_LOW_NOISE;
+	accel_st->filter = INV_ICM42607_FILTER_BW_73HZ;
+
+	indio_dev->name = name;
+	indio_dev->info = &inv_icm42607_accel_info;
+	indio_dev->modes = INDIO_DIRECT_MODE;
+	indio_dev->channels = inv_icm42607_accel_channels;
+	indio_dev->num_channels = ARRAY_SIZE(inv_icm42607_accel_channels);
+	iio_device_set_drvdata(indio_dev, st);
+
+	ret = devm_iio_device_register(dev, indio_dev);
+	if (ret)
+		return ERR_PTR(ret);
+
+	return indio_dev;
+}
diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
index e6d2fc7c0a34..22cd37e0616e 100644
--- a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
@@ -19,6 +19,8 @@
 #include <linux/timekeeping.h>
 #include <linux/types.h>
 
+#include <asm/byteorder.h>
+
 #include "inv_icm42607.h"
 
 static bool inv_icm42607_is_readable_reg(struct device *dev, unsigned int reg)
@@ -104,6 +106,15 @@ const struct inv_icm42607_hw inv_icm42607p_hw_data = {
 };
 EXPORT_SYMBOL_NS_GPL(inv_icm42607p_hw_data, "IIO_ICM42607");
 
+const struct iio_mount_matrix *
+inv_icm42607_get_mount_matrix(struct iio_dev *indio_dev,
+			      const struct iio_chan_spec *chan)
+{
+	const struct inv_icm42607_state *st = iio_device_get_drvdata(indio_dev);
+
+	return &st->orientation;
+}
+
 int inv_icm42607_get_pwr_mgmt0(struct inv_icm42607_state *st,
 			       enum inv_icm42607_sensor_mode *gyro,
 			       enum inv_icm42607_sensor_mode *accel)
@@ -191,6 +202,174 @@ static int inv_icm42607_set_pwr_mgmt0(struct inv_icm42607_state *st,
 	return 0;
 }
 
+/*
+ * Sanity test between old and new config values, and note if we need
+ * to update register config0 or config1.
+ */
+static void inv_icm42607_update_config(struct inv_icm42607_sensor_conf *conf,
+				       struct inv_icm42607_sensor_conf *oldconf,
+				       bool *config0, bool *config1)
+{
+	if (conf->mode < 0)
+		conf->mode = oldconf->mode;
+	if (conf->fs < 0)
+		conf->fs = oldconf->fs;
+	if (conf->odr < 0)
+		conf->odr = oldconf->odr;
+	if (conf->filter < 0)
+		conf->filter = oldconf->filter;
+
+	*config0 = (conf->fs != oldconf->fs) || (conf->odr != oldconf->odr);
+
+	*config1 = (conf->filter != oldconf->filter);
+}
+
+int inv_icm42607_set_sensor_conf(struct inv_icm42607_state *st,
+				 struct inv_icm42607_sensor_conf *conf,
+				 enum iio_chan_type chan_type)
+{
+	struct inv_icm42607_sensor_conf *oldconf;
+	unsigned int accel_mode, gyro_mode;
+	bool config0, config1;
+	unsigned int val;
+	int ret;
+
+	switch (chan_type) {
+	case IIO_ACCEL:
+		oldconf = &st->conf.accel;
+		break;
+	case IIO_ANGL_VEL:
+		oldconf = &st->conf.gyro;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	/*
+	 * Since we are only making one-shot calls today, we can avoid needless
+	 * on/off cycles if we rely on the runtime power management to handle
+	 * shutting off the sensors when not in use. The downside is if we
+	 * enable both sensors then only read from one, we have to wait for
+	 * runtime PM to turn it off. So just keep the mode of the sensor we
+	 * are not actively using to whatever it's already set as.
+	 */
+	ret = inv_icm42607_get_pwr_mgmt0(st, &gyro_mode, &accel_mode);
+	if (ret)
+		return ret;
+
+	inv_icm42607_update_config(conf, oldconf, &config0, &config1);
+
+	if (config0) {
+		if (chan_type == IIO_ANGL_VEL) {
+			val = FIELD_PREP(INV_ICM42607_GYRO_CONFIG0_FS_SEL_MASK, conf->fs);
+			val |= FIELD_PREP(INV_ICM42607_GYRO_CONFIG0_ODR_MASK, conf->odr);
+			ret = regmap_write(st->map, INV_ICM42607_REG_GYRO_CONFIG0, val);
+		} else {
+			val = FIELD_PREP(INV_ICM42607_ACCEL_CONFIG0_FS_SEL_MASK, conf->fs);
+			val |= FIELD_PREP(INV_ICM42607_ACCEL_CONFIG0_ODR_MASK, conf->odr);
+			ret = regmap_write(st->map, INV_ICM42607_REG_ACCEL_CONFIG0, val);
+		}
+		if (ret)
+			return ret;
+
+		oldconf->fs = conf->fs;
+		oldconf->odr = conf->odr;
+	}
+
+	if (config1) {
+		if (chan_type == IIO_ANGL_VEL) {
+			val = FIELD_PREP(INV_ICM42607_GYRO_CONFIG1_FILTER_MASK,
+					 conf->filter);
+			ret = regmap_update_bits(st->map, INV_ICM42607_REG_GYRO_CONFIG1,
+						 INV_ICM42607_GYRO_CONFIG1_FILTER_MASK, val);
+		} else {
+			val = FIELD_PREP(INV_ICM42607_ACCEL_CONFIG1_FILTER_MASK,
+					 conf->filter);
+			ret = regmap_update_bits(st->map, INV_ICM42607_REG_ACCEL_CONFIG1,
+						 INV_ICM42607_ACCEL_CONFIG1_FILTER_MASK, val);
+		}
+		if (ret)
+			return ret;
+
+		oldconf->filter = conf->filter;
+	}
+
+	oldconf->mode = conf->mode;
+
+	switch (chan_type) {
+	case IIO_ACCEL:
+		return inv_icm42607_set_pwr_mgmt0(st, gyro_mode, conf->mode);
+	case IIO_ANGL_VEL:
+		return inv_icm42607_set_pwr_mgmt0(st, conf->mode, accel_mode);
+	default:
+		return -EINVAL;
+	}
+}
+
+int inv_icm42607_read_sensor(struct iio_dev *indio_dev,
+			     struct iio_chan_spec const *chan,
+			     s16 *val)
+{
+	struct inv_icm42607_sensor_conf conf = INV_ICM42607_SENSOR_CONF_INIT;
+	struct inv_icm42607_state *st = iio_device_get_drvdata(indio_dev);
+	struct inv_icm42607_sensor_state *sensor_st = iio_priv(indio_dev);
+	struct device *dev = regmap_get_device(st->map);
+	unsigned int reg;
+	__be16 data;
+	int ret;
+
+	if ((chan->type != IIO_ANGL_VEL) && (chan->type != IIO_ACCEL))
+		return -EINVAL;
+
+	switch (chan->channel2) {
+	case IIO_MOD_X:
+		if (chan->type == IIO_ANGL_VEL)
+			reg = INV_ICM42607_REG_GYRO_DATA_X1;
+		else
+			reg = INV_ICM42607_REG_ACCEL_DATA_X1;
+		break;
+	case IIO_MOD_Y:
+		if (chan->type == IIO_ANGL_VEL)
+			reg = INV_ICM42607_REG_GYRO_DATA_Y1;
+		else
+			reg = INV_ICM42607_REG_ACCEL_DATA_Y1;
+		break;
+	case IIO_MOD_Z:
+		if (chan->type == IIO_ANGL_VEL)
+			reg = INV_ICM42607_REG_GYRO_DATA_Z1;
+		else
+			reg = INV_ICM42607_REG_ACCEL_DATA_Z1;
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
+	/* enable sensor */
+	conf.mode = sensor_st->power_mode;
+	conf.filter = sensor_st->filter;
+	ret = inv_icm42607_set_sensor_conf(st, &conf, chan->type);
+	if (ret)
+		return ret;
+
+	/* read sensor register data */
+	ret = regmap_bulk_read(st->map, reg, &data, sizeof(data));
+	if (ret)
+		return ret;
+
+	*val = be16_to_cpu(data);
+	if (*val == INV_ICM42607_DATA_INVALID)
+		return -EINVAL;
+
+	return 0;
+}
+
 static int inv_icm42607_set_init_conf(struct inv_icm42607_state *st,
 				      const struct inv_icm42607_conf *conf)
 {
@@ -410,6 +589,11 @@ int inv_icm42607_core_probe(struct regmap *regmap,
 	pm_runtime_set_autosuspend_delay(dev, INV_ICM42607_SUSPEND_DELAY_MS);
 	pm_runtime_use_autosuspend(dev);
 
+	/* Initialize IIO device for Accel */
+	st->indio_accel = inv_icm42607_accel_init(st);
+	if (IS_ERR(st->indio_accel))
+		return PTR_ERR(st->indio_accel);
+
 	return 0;
 }
 EXPORT_SYMBOL_NS_GPL(inv_icm42607_core_probe, "IIO_ICM42607");
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
