Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56C2ACD3423
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 May 2026 22:14:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fQg7/XE8q9wupB1vvL7sISOD09e/0SKxAwWtGa9HlGw=; b=jc35s1u1xobxq2
	jma3IrtNPcbMDw+G3F+ldgb+7BylzAAhZNCKEjvXcmAB4fkxEEeKMB4QRIe+I5bGNWnjW7/QuYmq7
	Q/IOHKnO4Xm3o6NOykxtdHwBaLNy31NFYFLH2trIcqhnsQdyJF96TD1ZF2Sa/cfXimt5cLBNsCvWW
	Pb5HjnAXbeTSmzsMLyWptXPrUrwJK2PrgpOc0+q0YE7Ex6Ye52vo/qpelGoChq3Zc28yB3tjRAEQF
	bAApfIR/0CutSyfjShHDAFUu/hMChXNQfWqOrCIbXfscFTTXUKBD4iVnQ9mXVNl4sv7chUSoat2PS
	j36PmjQOGc4mixg7s9zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIw7x-00000007kW5-229N;
	Fri, 01 May 2026 22:14:29 +0000
Received: from mail-oi1-x229.google.com ([2607:f8b0:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIw7t-00000007kSb-3WoG
	for linux-rockchip@lists.infradead.org;
	Fri, 01 May 2026 22:14:27 +0000
Received: by mail-oi1-x229.google.com with SMTP id 5614622812f47-479d593a0c3so1806495b6e.0
        for <linux-rockchip@lists.infradead.org>; Fri, 01 May 2026 15:14:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777673664; x=1778278464; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GKFlzqqR7i9M4h/gUS3RyPKE+MqjlN+AWOAgNuHiyzc=;
        b=UwDsDM0IEnUkoujgnKW67FK/TbYcL+SaQ7lJfh+cjL5c+oMAPLvBDKG6pxugWrSS3X
         jKGvKFFYk29MEyVsmywOCSLpE2u9QvOL6elnZhJ0KMhdVCM09z8Wo7pqnap8tD4oO32y
         W99n3/1/fTudG64k5UI4H5nWBPO0bTD+h7V+j96ROTQCp+pTm51hKcFFCYl6Iuyg4KHj
         qwtxPFzWTY58quu7HnUqp6GM2AZl2s7Zd5snv1gayd6zqiusJpbLxVlKqDzLrv0PpAWo
         6WoZOZU9g6+xrOIUeSzowpdX8Oc6tzHXx/Z6sp/Obk6+8wbtbL3DiIm4he/Yomeh7bIz
         z5CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777673664; x=1778278464;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GKFlzqqR7i9M4h/gUS3RyPKE+MqjlN+AWOAgNuHiyzc=;
        b=e7l0GxwT/haMFcuAd6vnMiP2ZTVk0MhuyrD5BQs0k+oC4WQLCuP8G2m/SO/oRpZhCv
         iSr/a83hjE5C4xYPTodJMXPPT18PJ0Ikzq6UPhsCOMlDad6uSbfG1HN1p/7aqVZeI2SU
         uoKOd+tPkYbewHk1nbzWFlbUNqBvespNJHanxtknGkPfFidf0/RaJ5+hXI231NwfO89o
         sWPx30RSLBgdO040BJ+Q6vKHRv2iYjWKI6NGURWur+j4WRLEY+FfKiCL00WGmQe1heeu
         hS9laq0Lpvo+hdJYl48q3l5c0gEQXPbShSUDiOgdEdoCwpoYO8UoJrVFadT4nUtVKlN+
         dgUA==
X-Forwarded-Encrypted: i=1; AFNElJ8inPOc6xG0CKCJRCNKifDLF6txSLoruFO8E07uLfGvJzOIaUoUSQExpohd8HzNeTE9YJapp0iZ4CL6la+Vsg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwH4hYyMH7l3BdEc+TxSBCn4xiuit9P3Wwl8U8EafFhKBuOzHRN
	cKf/NlFUrazHLH/k47XKT9uJH8FKBvFyjgQXSXmAeUec/sg6mdt5+lg9
X-Gm-Gg: AeBDieui3plpztttJmBQlDFUgqFFOZHusMV1qtf1qujHGNXM2NZeOCBXxA6g7n6RwHh
	WU6esFS42iYPNFPIWibdMS5j8DaLxQRjd70EwRpMa4k9I7IMFOkOyhcO/m+EtNl3SG8jfTNuDCg
	ea9FOAfJ+D7JmO94lXxezYQnnpkBn6U7PsBq5w8jC9H9yvC4HVTbT7q5WDdiEma8y9FMa4u5Gta
	fek+7ySGSU3+PDOC+Nq3R5z9dSVM75PHdC5g+koiwJweRjVP5hqiy0rPjJLu/NAUBnY+3ueCbi1
	HyCJw/87c890X7LDAtYs5633DEJufey4pNfjScCkQ7bRwmwjuD3b8+M8kW4/brMZmfFY5Zsfe8U
	zrCCquj422xY8ugvRF5AoFDUGHQFtK0JX1cTPJkoqlMkCL7DeKAP6YINiPHUEKkkFMZ1HDD+3+n
	MIrXrlqCu87vs8CliXY2M3p9nQZj8qiR0=
X-Received: by 2002:a05:6808:ecb:b0:47b:be30:5b36 with SMTP id 5614622812f47-47c61f6b480mr3568963b6e.3.1777673664594;
        Fri, 01 May 2026 15:14:24 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7ded51a9612sm1827337a34.26.2026.05.01.15.14.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 May 2026 15:14:24 -0700 (PDT)
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
Subject: [PATCH V4 04/10] iio: imu: inv_icm42607: Add PM support for icm42607
Date: Fri,  1 May 2026 17:11:43 -0500
Message-ID: <20260501221152.194251-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260501221152.194251-1-macroalpha82@gmail.com>
References: <20260501221152.194251-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260501_151425_976342_79053842 
X-CRM114-Status: GOOD (  21.87  )
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
 drivers/iio/imu/inv_icm42607/inv_icm42607.h   |   2 +
 .../iio/imu/inv_icm42607/inv_icm42607_core.c  | 177 ++++++++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_i2c.c   |   1 +
 .../iio/imu/inv_icm42607/inv_icm42607_spi.c   |   1 +
 4 files changed, 181 insertions(+)

diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607.h b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
index 763d731ccc60..7facc114adc5 100644
--- a/drivers/iio/imu/inv_icm42607/inv_icm42607.h
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
@@ -11,6 +11,7 @@
 #include <linux/iio/common/inv_sensors_timestamp.h>
 #include <linux/iio/iio.h>
 #include <linux/mutex.h>
+#include <linux/pm.h>
 #include <linux/regmap.h>
 #include <linux/regulator/consumer.h>
 
@@ -390,6 +391,7 @@ struct inv_icm42607_sensor_state {
 typedef int (*inv_icm42607_bus_setup)(struct inv_icm42607_state *);
 
 extern const struct regmap_config inv_icm42607_regmap_config;
+extern const struct dev_pm_ops inv_icm42607_pm_ops;
 
 u32 inv_icm42607_odr_to_period(enum inv_icm42607_odr odr);
 
diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
index 1ac3a573863c..af3784040b7a 100644
--- a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
@@ -9,6 +9,7 @@
 #include <linux/irq.h>
 #include <linux/module.h>
 #include <linux/mutex.h>
+#include <linux/pm_runtime.h>
 #include <linux/property.h>
 #include <linux/regmap.h>
 #include <linux/regulator/consumer.h>
@@ -106,6 +107,62 @@ u32 inv_icm42607_odr_to_period(enum inv_icm42607_odr odr)
 	return odr_periods[odr];
 }
 
+static int inv_icm42607_set_pwr_mgmt0(struct inv_icm42607_state *st,
+				      enum inv_icm42607_sensor_mode gyro,
+				      enum inv_icm42607_sensor_mode accel,
+				      bool temp, unsigned int *sleep_ms)
+{
+	enum inv_icm42607_sensor_mode oldgyro = st->conf.gyro.mode;
+	enum inv_icm42607_sensor_mode oldaccel = st->conf.accel.mode;
+	bool oldtemp = st->conf.temp_en;
+	unsigned int sleepval;
+	unsigned int val;
+	int ret;
+
+	if (gyro == oldgyro && accel == oldaccel && temp == oldtemp)
+		return 0;
+
+	val = FIELD_PREP(INV_ICM42607_PWR_MGMT0_GYRO_MODE_MASK, gyro);
+	val |= FIELD_PREP(INV_ICM42607_PWR_MGMT0_ACCEL_MODE_MASK, accel);
+	if (!temp)
+		val |= INV_ICM42607_PWR_MGMT0_ACCEL_LP_CLK_SEL;
+	ret = regmap_write(st->map, INV_ICM42607_REG_PWR_MGMT0, val);
+	if (ret)
+		return ret;
+
+	st->conf.gyro.mode = gyro;
+	st->conf.accel.mode = accel;
+	st->conf.temp_en = temp;
+
+	sleepval = 0;
+	if (temp && !oldtemp) {
+		if (sleepval < INV_ICM42607_TEMP_STARTUP_TIME_MS)
+			sleepval = INV_ICM42607_TEMP_STARTUP_TIME_MS;
+	}
+	if (accel != oldaccel && oldaccel == INV_ICM42607_SENSOR_MODE_OFF) {
+		usleep_range(200, 300);
+		if (sleepval < INV_ICM42607_ACCEL_STARTUP_TIME_MS)
+			sleepval = INV_ICM42607_ACCEL_STARTUP_TIME_MS;
+	}
+	if (gyro != oldgyro) {
+		if (oldgyro == INV_ICM42607_SENSOR_MODE_OFF) {
+			usleep_range(200, 300);
+			if (sleepval < INV_ICM42607_GYRO_STARTUP_TIME_MS)
+				sleepval = INV_ICM42607_GYRO_STARTUP_TIME_MS;
+		} else if (gyro == INV_ICM42607_SENSOR_MODE_OFF) {
+			if (sleepval < INV_ICM42607_GYRO_STOP_TIME_MS)
+				sleepval = INV_ICM42607_GYRO_STOP_TIME_MS;
+		}
+	}
+
+	if (sleep_ms)
+		*sleep_ms = sleepval;
+	else if (sleepval)
+		msleep(sleepval);
+
+	return 0;
+}
+
 int inv_icm42607_debugfs_reg(struct iio_dev *indio_dev, unsigned int reg,
 			     unsigned int writeval, unsigned int *readval)
 {
@@ -313,10 +370,130 @@ int inv_icm42607_core_probe(struct regmap *regmap, int chip,
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
 
+/*
+ * Suspend saves sensors state and turns everything off.
+ * Check first if runtime suspend has not already done the job.
+ */
+static int inv_icm42607_suspend(struct device *dev)
+{
+	struct inv_icm42607_state *st = dev_get_drvdata(dev);
+	struct device *accel_dev;
+	bool wakeup;
+	int accel_conf;
+	int ret = 0;
+
+	guard(mutex)(&st->lock);
+
+	st->suspended.gyro = st->conf.gyro.mode;
+	st->suspended.accel = st->conf.accel.mode;
+	st->suspended.temp = st->conf.temp_en;
+	if (pm_runtime_suspended(dev))
+		return 0;
+
+	/* keep chip on and wake-up capable if APEX and wakeup on */
+	accel_dev = &st->indio_accel->dev;
+	wakeup = st->apex.on && device_may_wakeup(accel_dev);
+	if (wakeup) {
+		/* keep accel on and setup irq for wakeup */
+		accel_conf = st->conf.accel.mode;
+		enable_irq_wake(st->irq);
+		disable_irq(st->irq);
+	} else {
+		accel_conf = INV_ICM42607_SENSOR_MODE_OFF;
+	}
+
+	ret = inv_icm42607_set_pwr_mgmt0(st, INV_ICM42607_SENSOR_MODE_OFF,
+					 INV_ICM42607_SENSOR_MODE_OFF, false,
+					 NULL);
+	if (ret)
+		return ret;
+
+	if (!wakeup)
+		regulator_disable(st->vddio_supply);
+
+	return 0;
+}
+
+/*
+ * System resume gets the system back on and restores the sensors state.
+ * Manually put runtime power management in system active state.
+ */
+static int inv_icm42607_resume(struct device *dev)
+{
+	struct inv_icm42607_state *st = dev_get_drvdata(dev);
+	struct device *accel_dev;
+	bool wakeup;
+	int ret;
+
+	guard(mutex)(&st->lock);
+
+	if (pm_runtime_suspended(dev))
+		return 0;
+
+	/* check wakeup capability */
+	accel_dev = &st->indio_accel->dev;
+	wakeup = st->apex.on && device_may_wakeup(accel_dev);
+	/* restore irq state */
+	if (wakeup) {
+		enable_irq(st->irq);
+		disable_irq_wake(st->irq);
+	} else {
+		ret = inv_icm42607_enable_vddio_reg(st);
+		if (ret)
+			return ret;
+	}
+
+	/* restore sensors state */
+	ret = inv_icm42607_set_pwr_mgmt0(st, st->suspended.gyro,
+					 st->suspended.accel,
+					 st->suspended.temp, NULL);
+	return ret;
+}
+
+static int inv_icm42607_runtime_suspend(struct device *dev)
+{
+	struct inv_icm42607_state *st = dev_get_drvdata(dev);
+	int ret = 0;
+
+	guard(mutex)(&st->lock);
+
+	ret = inv_icm42607_set_pwr_mgmt0(st, INV_ICM42607_SENSOR_MODE_OFF,
+					 INV_ICM42607_SENSOR_MODE_OFF, false,
+					 NULL);
+	if (ret)
+		return ret;
+
+	regulator_disable(st->vddio_supply);
+
+	return 0;
+}
+
+static int inv_icm42607_runtime_resume(struct device *dev)
+{
+	struct inv_icm42607_state *st = dev_get_drvdata(dev);
+
+	guard(mutex)(&st->lock);
+
+	return inv_icm42607_enable_vddio_reg(st);
+}
+
+EXPORT_NS_GPL_DEV_PM_OPS(inv_icm42607_pm_ops, IIO_ICM42607) = {
+	SYSTEM_SLEEP_PM_OPS(inv_icm42607_suspend, inv_icm42607_resume)
+	RUNTIME_PM_OPS(inv_icm42607_runtime_suspend,
+		       inv_icm42607_runtime_resume, NULL)
+};
+
 MODULE_AUTHOR("InvenSense, Inc.");
 MODULE_DESCRIPTION("InvenSense ICM-42607x device driver");
 MODULE_LICENSE("GPL");
diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c
index 83cdb9c87167..24cf39d52592 100644
--- a/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c
@@ -78,6 +78,7 @@ static struct i2c_driver inv_icm42607_driver = {
 	.driver = {
 		.name = "inv-icm42607-i2c",
 		.of_match_table = inv_icm42607_of_matches,
+		.pm = pm_ptr(&inv_icm42607_pm_ops),
 	},
 	.id_table = inv_icm42607_id,
 	.probe = inv_icm42607_probe,
diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c
index 7a02bbab3a63..9ee3b39b1b08 100644
--- a/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c
@@ -84,6 +84,7 @@ static struct spi_driver inv_icm42607_driver = {
 	.driver = {
 		.name = "inv-icm42607-spi",
 		.of_match_table = inv_icm42607_of_matches,
+		.pm = &inv_icm42607_pm_ops,
 	},
 	.id_table = inv_icm42607_spi_id_table,
 	.probe = inv_icm42607_probe,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
