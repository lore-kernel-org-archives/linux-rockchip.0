Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE047C43638
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jun 2026 16:15:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0PCVwIPHzbrmnguCJSe9E/CA4GR+U6pEjt8300NO59g=; b=k6MubVgz4CyHFF
	i3UGj9Cl3T8TgddYCPDyfI4CY2rn4sOXJveD4fR3wjdhuCQJJn+t6Wx5fYVn9L77nJJEo26Z/vf6O
	OVuemDVgwKXIH4U01sOMd7EYMH0wdN3x7N+nCdnASTtSuW6yUaXmaQtGmxuz2YjQqJ877pCtib3SE
	2YMkzaT0YPF8WOD7tshXHbfVHT78c1hmbPfGeUx3jjr5XfbMQd+1E2ApUX8kG1hvFAS5tXsVsQ381
	Tq++jH9s689T8YVg6vd2NFm/RJip34gYe38emmL+AmO2jR0e7pFywU8GPZW04bDWWY07Tdy/hJm59
	pK74+IZTNfo7mQjDwDpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd9Cn-0000000BbfT-3uKD;
	Fri, 26 Jun 2026 16:15:01 +0000
Received: from mail-ot1-x32b.google.com ([2607:f8b0:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd9Cj-0000000Bbbo-37qA
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jun 2026 16:14:58 +0000
Received: by mail-ot1-x32b.google.com with SMTP id 46e09a7af769-7e94cd6f99aso1286546a34.3
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Jun 2026 09:14:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782490497; x=1783095297; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fCSrfQX0Rn0O34RkVnCubJXjgpd2VYZ6SU0CwsYowUU=;
        b=cYav7F332Z6DNQ+yxk4/wZJUumQU7/Kz3fEbJ2fi6RxozVe0EkyIWxmkhWAPNA9aq6
         80eH/Cs3D9uYg0zRm4OLykO2MTNkq6HRNsv1JfVtLXugycBkubpvl+Ff6Te6zLV9zwYR
         KeyNP7W1STp5gOeuMsUCZwKw0y1ZMsalEH+n4KhfMLUU7ddqCOwNPiIMcu7/ab7idQzj
         eyOCut9ESeazjV46VgYgxbofwvVDzqTnJIsWdmcD3JapQPOLn6fVy+Y60gL6Mm6ID44x
         XixQwNuUKBSn4YcYGn2Q3k2haBH4hEOEJn1+484+CVkyCnnmcOPW/L8ZXq/BQvTnX/oT
         yU5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782490497; x=1783095297;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fCSrfQX0Rn0O34RkVnCubJXjgpd2VYZ6SU0CwsYowUU=;
        b=PiOPtDd+U+6YPEtDYw3dHYcp9Xau1LHxwcbob+6CR0z24OietERQ7Wtyo3bDhgVmJP
         XZvsTOH8BgdsQ6I75oBYvePD7T2k6MIZe1uRxC/G5zfDCoKtUYFRDVyRVhHGfbIm3x8h
         meQswNEiLQJ82LBg4tn2MNYXoSX+ctzxI4xqd+62fWiS/DFAzsM6Ld2QtXSfzAsTgDFq
         ZGiEfb3YbA0soI/5UwYOjOn7CpzxFr3rcm7D+KJA+CkD5wa+lsBuWkAiZzF0ZQ3fHVLj
         Jib5F5Vmcxyf+STV5sx/xdBCgVlo54WzytmmW0DjkYLStueP/yGAzxUoAxZ4tuQKVMAw
         DKTQ==
X-Forwarded-Encrypted: i=1; AFNElJ88cRyYsGFchayfyH2zAFGmee08ujjuvauWtpPMKgdR7exIQK26R3TNkV7TX6jnitJ/GhT6N9CaL0Glg2BrKA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy3JKBv+04/bvZL24fZLakh3+97wd7jgPZ7p9AygWcg4oVaiUaT
	gt8P6hipAomSny+9FDjiCeH8zTVFwQ7Q4V/c2/QpLAsl+USaaNhV+c/O
X-Gm-Gg: AfdE7cnAoFvuAuw1WXZZEHbahxHR/iUvXo7RXi1os4mmvPNBLFsl34nJcDrshsY79up
	TpxY6AC3HEx94cRLdoKB8F0P8xJAeMLkh77NM9aLdLWxkwJ8R89t3JXBmKfjmBwSqG8bqvG6DZB
	pWI6ohluHcHcMXvQ80yYWHVUk+JqGZRPKNIj+fnz7FxhzYI3QtMFiMtEwpEb34UwFLAcwcanwIW
	r52Zlx1orLtHFCzktEBYQN5e4p78gPVAiLwoPasokERDPQxqc3DmcICWTLXOXHK2fbEIPC6+MIk
	H5g5vltt6WFrxTLImO6BMdcGU8qOrz2J3p3hAHuXEN3kL3+sOo++QTVOWxAN5IoplPTZC3I534p
	XqRDDzez6IpMsNWpwpJXPq5ldezIdjAHTZxOxDYSF7nT65JUfTWLpMOFqWMzg6S7q/q256xkBcb
	JpOci+4QXjc14=
X-Received: by 2002:a05:6830:610d:b0:7dc:df37:844b with SMTP id 46e09a7af769-7e99bf3f3e7mr6787284a34.4.1782490496989;
        Fri, 26 Jun 2026 09:14:56 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7e9aa579235sm1970211a34.1.2026.06.26.09.14.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jun 2026 09:14:56 -0700 (PDT)
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
Subject: [PATCH V15 5/9] iio: imu: inv_icm42607: Add PM support for icm42607
Date: Fri, 26 Jun 2026 11:12:26 -0500
Message-ID: <20260626161230.93069-6-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260626161230.93069-1-macroalpha82@gmail.com>
References: <20260626161230.93069-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_091457_802736_97C3EF49 
X-CRM114-Status: GOOD (  23.99  )
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

Add power management support for the ICM42607 device driver.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/iio/imu/inv_icm42607/inv_icm42607.h   |  17 ++
 .../iio/imu/inv_icm42607/inv_icm42607_core.c  | 146 ++++++++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_i2c.c   |   1 +
 .../iio/imu/inv_icm42607/inv_icm42607_spi.c   |   1 +
 4 files changed, 165 insertions(+)

diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607.h b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
index 88d35323bade..219cfcf7ac99 100644
--- a/drivers/iio/imu/inv_icm42607/inv_icm42607.h
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
@@ -10,6 +10,7 @@
 #include <linux/bits.h>
 #include <linux/iio/iio.h>
 #include <linux/mutex.h>
+#include <linux/pm.h>
 #include <linux/regmap.h>
 #include <linux/regulator/consumer.h>
 #include <linux/time.h>
@@ -118,12 +119,19 @@ struct inv_icm42607_hw {
 	u8 whoami;
 };
 
+struct inv_icm42607_suspended {
+	enum inv_icm42607_sensor_mode gyro;
+	enum inv_icm42607_sensor_mode accel;
+};
+
 /**
  *  struct inv_icm42607_state - driver state variables
  *  @hw:		Hardware specific data.
  *  @lock:		lock for serializing multiple registers access.
  *  @map:		regmap pointer.
  *  @vddio_supply:	I/O voltage regulator for the chip.
+ *  @vddio_en:		I/O voltage status for runtime PM.
+ *  @suspended:		suspended sensors configuration.
  *  @conf:		chip sensors configurations.
  *  @orientation:	sensor chip orientation relative to main hardware.
  */
@@ -132,6 +140,8 @@ struct inv_icm42607_state {
 	struct mutex lock;
 	struct regmap *map;
 	struct regulator *vddio_supply;
+	bool vddio_en;
+	struct inv_icm42607_suspended suspended;
 	struct inv_icm42607_conf conf;
 	struct iio_mount_matrix orientation;
 };
@@ -351,11 +361,18 @@ struct inv_icm42607_state {
 #define INV_ICM42607_GYRO_STOP_TIME_US			(45 * USEC_PER_MSEC)
 #define INV_ICM42607_TEMP_STARTUP_TIME_US		77
 
+/*
+ * Suspend delay assumed from other icm42600 series device, not
+ * documented in datasheet.
+ */
+#define INV_ICM42607_SUSPEND_DELAY_MS			2000
+
 typedef int (*inv_icm42607_bus_setup)(struct inv_icm42607_state *);
 
 extern const struct regmap_config inv_icm42607_regmap_config;
 extern const struct inv_icm42607_hw inv_icm42607_hw_data;
 extern const struct inv_icm42607_hw inv_icm42607p_hw_data;
+extern const struct dev_pm_ops inv_icm42607_pm_ops;
 
 int inv_icm42607_core_probe(struct regmap *regmap,
 			    const struct inv_icm42607_hw *hw,
diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
index 9b82a0499d35..738970ed5c66 100644
--- a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
@@ -4,16 +4,20 @@
  */
 
 #include <linux/bitfield.h>
+#include <linux/cleanup.h>
 #include <linux/delay.h>
 #include <linux/dev_printk.h>
 #include <linux/device/devres.h>
 #include <linux/err.h>
 #include <linux/iio/iio.h>
+#include <linux/ktime.h>
 #include <linux/module.h>
 #include <linux/mutex.h>
+#include <linux/pm_runtime.h>
 #include <linux/regmap.h>
 #include <linux/regulator/consumer.h>
 #include <linux/time.h>
+#include <linux/timekeeping.h>
 #include <linux/types.h>
 
 #include "inv_icm42607.h"
@@ -102,6 +106,71 @@ const struct inv_icm42607_hw inv_icm42607p_hw_data = {
 };
 EXPORT_SYMBOL_NS_GPL(inv_icm42607p_hw_data, "IIO_ICM42607");
 
+static int inv_icm42607_set_pwr_mgmt0(struct inv_icm42607_state *st,
+				      enum inv_icm42607_sensor_mode gyro,
+				      enum inv_icm42607_sensor_mode accel)
+{
+	unsigned int oldaccel, oldgyro;
+	unsigned int sleepval_us = 0;
+	unsigned int val;
+	s64 disable_wait;
+	int ret;
+
+	ret = regmap_read(st->map, INV_ICM42607_REG_PWR_MGMT0, &val);
+	if (ret)
+		return ret;
+
+	oldaccel = FIELD_GET(INV_ICM42607_PWR_MGMT0_ACCEL_MODE_MASK, val);
+	oldgyro = FIELD_GET(INV_ICM42607_PWR_MGMT0_GYRO_MODE_MASK, val);
+
+	if (gyro == oldgyro && accel == oldaccel)
+		return 0;
+
+	/*
+	 * Datasheet on page 14.26 says we need to ensure the gyro sensor is on
+	 * for a minimum of 45ms. So if we transition from an on state to an
+	 * off state make sure at least 45ms have passed before power off and
+	 * wait if it hasn't.
+	 */
+	if (!gyro && oldgyro) {
+		disable_wait = ktime_us_delta(st->conf.gyro_stop,
+					      ktime_get());
+		disable_wait = clamp(disable_wait, 0,
+				     INV_ICM42607_GYRO_STOP_TIME_US);
+		fsleep(disable_wait);
+	}
+
+	val = FIELD_PREP(INV_ICM42607_PWR_MGMT0_GYRO_MODE_MASK, gyro);
+	val |= FIELD_PREP(INV_ICM42607_PWR_MGMT0_ACCEL_MODE_MASK, accel);
+	ret = regmap_write(st->map, INV_ICM42607_REG_PWR_MGMT0, val);
+	if (ret)
+		return ret;
+
+	/*
+	 * If a state change occurs from off to on, sleep for the startup
+	 * time of the sensor, unless a sleep_ms is specified. Since more
+	 * than one sensor can be transitioned from off to on, select the
+	 * maximum time from each of the sensors changing from off to on.
+	 * The startup time for the temp sensor is considerably smaller
+	 * than the startup time for the other sensors and one or more are
+	 * required to be on for the temp sensor to function, so any start
+	 * delay should be enough.
+	 */
+	if (accel && !oldaccel)
+		sleepval_us = max(sleepval_us, INV_ICM42607_ACCEL_STARTUP_TIME_US);
+
+	if (gyro && !oldgyro) {
+		sleepval_us = max(sleepval_us, INV_ICM42607_GYRO_STARTUP_TIME_US);
+		/* Track the earliest we can turn off the gyroscope. */
+		st->conf.gyro_stop = ktime_add_us(ktime_get(),
+						  INV_ICM42607_GYRO_STOP_TIME_US);
+	}
+
+	fsleep(sleepval_us);
+
+	return 0;
+}
+
 static int inv_icm42607_set_init_conf(struct inv_icm42607_state *st,
 				      const struct inv_icm42607_conf *conf)
 {
@@ -214,12 +283,17 @@ static int inv_icm42607_enable_vddio_reg(struct inv_icm42607_state *st)
 {
 	int ret;
 
+	if (st->vddio_en)
+		return 0;
+
 	ret = regulator_enable(st->vddio_supply);
 	if (ret)
 		return ret;
 
 	fsleep(INV_ICM42607_POWER_UP_TIME_US);
 
+	st->vddio_en = true;
+
 	return 0;
 }
 
@@ -227,7 +301,12 @@ static void inv_icm42607_disable_vddio_reg(void *_data)
 {
 	struct inv_icm42607_state *st = _data;
 
+	if (!st->vddio_en)
+		return;
+
 	regulator_disable(st->vddio_supply);
+
+	st->vddio_en = false;
 }
 
 int inv_icm42607_core_probe(struct regmap *regmap,
@@ -242,6 +321,8 @@ int inv_icm42607_core_probe(struct regmap *regmap,
 	if (!st)
 		return -ENOMEM;
 
+	dev_set_drvdata(dev, st);
+
 	ret = devm_mutex_init(dev, &st->lock);
 	if (ret)
 		return ret;
@@ -277,10 +358,75 @@ int inv_icm42607_core_probe(struct regmap *regmap,
 	if (ret)
 		return ret;
 
+	ret = devm_pm_runtime_set_active_enabled(dev);
+	if (ret)
+		return ret;
+
+	pm_runtime_set_autosuspend_delay(dev, INV_ICM42607_SUSPEND_DELAY_MS);
+	pm_runtime_use_autosuspend(dev);
+
 	return 0;
 }
 EXPORT_SYMBOL_NS_GPL(inv_icm42607_core_probe, "IIO_ICM42607");
 
+static int inv_icm42607_suspend(struct device *dev)
+{
+	struct inv_icm42607_state *st = dev_get_drvdata(dev);
+	int ret;
+
+	ret = pm_runtime_force_suspend(dev);
+	if (ret)
+		return ret;
+
+	inv_icm42607_disable_vddio_reg(st);
+
+	return 0;
+}
+
+static int inv_icm42607_resume(struct device *dev)
+{
+	struct inv_icm42607_state *st = dev_get_drvdata(dev);
+	int ret;
+
+	ret = inv_icm42607_enable_vddio_reg(st);
+	if (ret)
+		return ret;
+
+	return pm_runtime_force_resume(dev);
+}
+
+static int inv_icm42607_runtime_suspend(struct device *dev)
+{
+	struct inv_icm42607_state *st = dev_get_drvdata(dev);
+
+	guard(mutex)(&st->lock);
+
+	/* save sensors state */
+	st->suspended.gyro = st->conf.gyro.mode;
+	st->suspended.accel = st->conf.accel.mode;
+
+	return inv_icm42607_set_pwr_mgmt0(st, INV_ICM42607_SENSOR_MODE_OFF,
+					  INV_ICM42607_SENSOR_MODE_OFF);
+}
+
+static int inv_icm42607_runtime_resume(struct device *dev)
+{
+	struct inv_icm42607_state *st = dev_get_drvdata(dev);
+
+	guard(mutex)(&st->lock);
+
+	/* restore sensors state */
+	return inv_icm42607_set_pwr_mgmt0(st, st->suspended.gyro,
+					  st->suspended.accel);
+}
+
+EXPORT_NS_GPL_DEV_PM_OPS(inv_icm42607_pm_ops, IIO_ICM42607) = {
+	SYSTEM_SLEEP_PM_OPS(inv_icm42607_suspend, inv_icm42607_resume)
+	RUNTIME_PM_OPS(inv_icm42607_runtime_suspend,
+		       inv_icm42607_runtime_resume,
+		       NULL)
+};
+
 MODULE_AUTHOR("InvenSense, Inc.");
 MODULE_DESCRIPTION("InvenSense ICM-42607 device driver");
 MODULE_LICENSE("GPL");
diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c
index bde931752eb8..aed04be28528 100644
--- a/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c
@@ -85,6 +85,7 @@ static struct i2c_driver inv_icm42607_driver = {
 	.driver = {
 		.name = "inv-icm42607-i2c",
 		.of_match_table = inv_icm42607_of_matches,
+		.pm = pm_ptr(&inv_icm42607_pm_ops),
 	},
 	.id_table = inv_icm42607_id,
 	.probe = inv_icm42607_probe,
diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c
index 6072ed7adc86..137cd34582d8 100644
--- a/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c
@@ -95,6 +95,7 @@ static struct spi_driver inv_icm42607_driver = {
 	.driver = {
 		.name = "inv-icm42607-spi",
 		.of_match_table = inv_icm42607_of_matches,
+		.pm = pm_ptr(&inv_icm42607_pm_ops),
 	},
 	.id_table = inv_icm42607_spi_id_table,
 	.probe = inv_icm42607_probe,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
