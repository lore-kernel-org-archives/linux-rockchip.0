Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55A55C531BC
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jul 2026 15:42:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DhobGtz8+zSb+fQPne1nH7RikcTMOS0EE0TdxCXUtlA=; b=2VsooKKGz0qs/f
	1+/IY9r16GxEiPu3mOczWZZ6xVc3gI31PR2lJJVKsLywuEk1QexgfE2575/Fm3MFPYuvdW4ztnq0B
	bO5nn4TK7EVeOjqk5fe7uw5KNyumzSsLGueXwTL15BO1UOxizGfPRVFlKwol3+wiRwrsv1BVKK/qT
	xUMW55BG2BqN2QpN+hqlNnZrJlOKuoMtTwucYJx0lmPK/eq2vKPBd6q41s84YQZiS730wAr/OYu1M
	athdaBonjoXHr5RzTs3tIrSEhSFsMaLmlGFxoxWghOA5+6ZCFX7M7LsoF4Ro1ZUvjfNbl7bkBYLkF
	wVTMamoDQh4e1zpKqVvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmZ5U-0000000CDXW-3NsD;
	Wed, 22 Jul 2026 15:42:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmZ5S-0000000CDUF-2gyQ
	for linux-rockchip@bombadil.infradead.org;
	Wed, 22 Jul 2026 15:42:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=cYBCNpoXRxy3ls9bJHOQ/KLyhBZ7hSK2dIh9PJVXoU0=; b=XvTzsVkyl1pHj90b3GHiV+jFJ4
	wMIVtgwZHe9MY7CKzXjBqNKhHvkSImg6UWNAHu5Ll3UpjpH4MWLyggpw4R7o01nWSBGLCALcbDxjc
	wXjENYReiIt1Eqyj6aPsJWmIq//vbK2PBMkfZjqRxbQdgOsGZusGCyd2rJ2vkL5hJXlkp4xFpxsp+
	Go2jCaR3I/gK2eGaoaCNvc8yT85bqy/ogAttr+7JWZjLtMUUvMtQOQANEJogiPkLROjHD4DkmOgmE
	HxNfKdh8pWj1fB3UghdnFfr+5RQpKGkQ23UvkTxLMa3znLZPRPJi+EWTGvTzK4x2nVVhC4ITl8d00
	0xFKNnAw==;
Received: from mail-ot1-x32a.google.com ([2607:f8b0:4864:20::32a])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wmZ5P-00000000xqA-2ln8
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Jul 2026 15:42:21 +0000
Received: by mail-ot1-x32a.google.com with SMTP id 46e09a7af769-7ec58fa3e01so3653050a34.1
        for <linux-rockchip@lists.infradead.org>; Wed, 22 Jul 2026 08:42:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784734937; x=1785339737; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=cYBCNpoXRxy3ls9bJHOQ/KLyhBZ7hSK2dIh9PJVXoU0=;
        b=KBWlo+UxBBDMtEq20Wd1LCrS3gvhNp0LyaV1PZPaU5zdJphUeRYE32AvLbLdPhg3hx
         Bc42TVPgJLMNTnKfaPx0cBNIIvdoqoqQ2tUsbjfxe7335ciy7pqAZ4cN+xQjOdeFTLx4
         iTBr2vc4aUImp/Iq4BxHvv4AmJ3Pp4I3KxVe4x7+PNUFp9G10aozmuMQFfZ0sn85mZI/
         ES1KGXDN13TpRYWtrtzX9MyPiA3Vj/xeStLymBv/WVKQx6WLBZPGCWEctXWVY9Ns7uq8
         w5AdHPzODeidjN40Lj3Hnjp8KreY2kxiHiMVX5grpalD7q3kWeYi8eY3Yq7G3+ccEtR+
         Q3Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784734937; x=1785339737;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=cYBCNpoXRxy3ls9bJHOQ/KLyhBZ7hSK2dIh9PJVXoU0=;
        b=RHY7gyGl6PCTEMqiYNnUNSlBiXwt7tnec5FQAvsp5bTxwvAyNeK2TlGQ82ILGJpLO/
         dI5eUca78YrDbg0YQ8JV32megoMb5STNUM2Z+k7gXe2x+091YmukMEYXay32m3GpFzyx
         83abZK+cbfzoF0kw91aXdVZwEvkKWvEXwHVlO2u5SP5qUUKRyKqDS4NGiUzW9j7oj/6t
         0OqKJVLUWqTMwZR3phqPvQV/FEjwA/EbnA1S3kmBdoyaPUwAq3uhwBlrPTRHd/AXNAmz
         Bwl+KXQCCt2iybcYsp1093TRqBKIxX7IgmAyAOmQAgJLcfD0yy+Apuy+cRC9aulYHvZL
         573w==
X-Forwarded-Encrypted: i=1; AHgh+RpE4hBdZxmtHVSG7agRON/nqO1Ormn8GUxh3QvTB5/wh8M94WLalko66t3uTJ+gHHZpL+WKCujjs1Rl4TlZ9g==@lists.infradead.org
X-Gm-Message-State: AOJu0YzEzyhGcnHPBltb7PMNhdWiMZyv+b2Jrp6rZ3nlH3TckP59Ti/c
	iVqqv+184R4mcs8Pm+GmefXQ+ckTjv33liFuhkHDgQ9Vi6p+euQ6hq5W
X-Gm-Gg: AR+sD11CRh9HKqYzp2QdDrH/rWcvDVe9ILwDl2M6f2GC8zWQpa7d2WtWt3uXB4fZ0s1
	VEqFJo5g6MYeqCcTkmtg5A/EIYzuMQ1Z9P8xmUZ3cO7sbmQYs59/e7NvXdrJrk1+nVglgaqmino
	LllLOq7I5J6K102eMjpQ9psrrzIfgOHgbJDTJ5nXd78P7BTkSuZZwgVh2JEUZ/Hp1ZTZpaE6ZMi
	fppmhVX6PpLiqfiKwXStsyR5o+aTym+op1blvxymp6ALuh73MMTDAteFZTtg4yJQxGUhiT8YHW6
	7H/xu/B5U8+1DS+6yZ4U+8Yz3MO55WSMWLB9/12jg0N3kC6V36OE8ZSSZMJ4u/nEpOgHsMlHQJh
	gu8RSiEoy8mWXlWEAUFp+Agx5APVlIBX4WxWgsaKpPWXA46Hvn4u24C1HyrRhb0pMRIveF5doUO
	gI
X-Received: by 2002:a05:6820:16a1:b0:69d:d210:cae3 with SMTP id 006d021491bc7-6a53686755emr11604571eaf.48.1784734937402;
        Wed, 22 Jul 2026 08:42:17 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-6aac3a494d4sm1300804eaf.3.2026.07.22.08.42.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2026 08:42:16 -0700 (PDT)
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
Subject: [PATCH V19 5/9] iio: imu: inv_icm42607: Add PM support for icm42607
Date: Wed, 22 Jul 2026 10:39:36 -0500
Message-ID: <20260722153942.144387-6-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260722153942.144387-1-macroalpha82@gmail.com>
References: <20260722153942.144387-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_164219_906143_F7884BA7 
X-CRM114-Status: GOOD (  28.22  )
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
 drivers/iio/imu/inv_icm42607/inv_icm42607.h   |  16 ++
 .../iio/imu/inv_icm42607/inv_icm42607_core.c  | 173 ++++++++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_i2c.c   |  10 +
 .../iio/imu/inv_icm42607/inv_icm42607_spi.c   |  10 +
 4 files changed, 209 insertions(+)

diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607.h b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
index 169e848caf2e..3f803997cff6 100644
--- a/drivers/iio/imu/inv_icm42607/inv_icm42607.h
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
@@ -9,6 +9,7 @@
 #include <linux/bits.h>
 #include <linux/iio/iio.h>
 #include <linux/mutex.h>
+#include <linux/pm.h>
 #include <linux/regmap.h>
 #include <linux/regulator/consumer.h>
 #include <linux/time.h>
@@ -125,6 +126,7 @@ struct inv_icm42607_hw {
  *  @lock:		lock for serializing multiple registers access.
  *  @map:		regmap pointer.
  *  @vddio_supply:	I/O voltage regulator for the chip.
+ *  @vddio_en:		I/O voltage status for runtime PM.
  *  @conf:		chip sensors configurations.
  *  @orientation:	sensor chip orientation relative to main hardware.
  */
@@ -133,6 +135,7 @@ struct inv_icm42607_state {
 	struct mutex lock;
 	struct regmap *map;
 	struct regulator *vddio_supply;
+	bool vddio_en;
 	struct inv_icm42607_conf conf;
 	struct iio_mount_matrix orientation;
 };
@@ -352,11 +355,24 @@ struct inv_icm42607_state {
 #define INV_ICM42607_GYRO_STOP_TIME_US			(45 * USEC_PER_MSEC)
 #define INV_ICM42607_TEMP_STARTUP_TIME_US		77
 
+/*
+ * Suspend delay assumed from other icm42600 series device, not
+ * documented in datasheet.
+ */
+#define INV_ICM42607_SUSPEND_DELAY_MS			(2 * MSEC_PER_SEC)
+
 typedef int (*inv_icm42607_bus_setup)(struct inv_icm42607_state *);
 
 extern const struct regmap_config inv_icm42607_regmap_config;
 extern const struct inv_icm42607_hw inv_icm42607_hw_data;
 extern const struct inv_icm42607_hw inv_icm42607p_hw_data;
+extern const struct dev_pm_ops inv_icm42607_pm_ops;
+
+int inv_icm42607_get_pwr_mgmt0(struct inv_icm42607_state *st,
+			       enum inv_icm42607_sensor_mode *gyro,
+			       enum inv_icm42607_sensor_mode *accel);
+
+int inv_icm42607_sensors_off(struct inv_icm42607_state *st);
 
 int inv_icm42607_core_probe(struct regmap *regmap,
 			    const struct inv_icm42607_hw *hw,
diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
index 6ec1d730017e..d85eaedef070 100644
--- a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
@@ -4,15 +4,19 @@
  */
 
 #include <linux/bitfield.h>
+#include <linux/cleanup.h>
 #include <linux/delay.h>
 #include <linux/device.h>
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
@@ -100,6 +104,93 @@ const struct inv_icm42607_hw inv_icm42607p_hw_data = {
 };
 EXPORT_SYMBOL_NS_GPL(inv_icm42607p_hw_data, "IIO_ICM42607");
 
+int inv_icm42607_get_pwr_mgmt0(struct inv_icm42607_state *st,
+			       enum inv_icm42607_sensor_mode *gyro,
+			       enum inv_icm42607_sensor_mode *accel)
+{
+	unsigned int val;
+	int ret;
+
+	ret = regmap_read(st->map, INV_ICM42607_REG_PWR_MGMT0, &val);
+	if (ret)
+		return ret;
+
+	*gyro = FIELD_GET(INV_ICM42607_PWR_MGMT0_GYRO_MODE_MASK, val);
+	*accel = FIELD_GET(INV_ICM42607_PWR_MGMT0_ACCEL_MODE_MASK, val);
+
+	return 0;
+}
+
+static int inv_icm42607_set_pwr_mgmt0(struct inv_icm42607_state *st,
+				      enum inv_icm42607_sensor_mode gyro,
+				      enum inv_icm42607_sensor_mode accel)
+{
+	enum inv_icm42607_sensor_mode oldaccel, oldgyro;
+	unsigned int sleepval_us;
+	unsigned int val;
+	s64 disable_wait;
+	int ret;
+
+	ret = inv_icm42607_get_pwr_mgmt0(st, &oldgyro, &oldaccel);
+	if (ret)
+		return ret;
+
+	if (gyro == oldgyro && accel == oldaccel)
+		return 0;
+
+	/*
+	 * Datasheet on page 14.26 says we need to ensure the gyro sensor is on
+	 * for a minimum of 45ms. So if we transition from an on state to an
+	 * off state make sure at least 45ms have passed before power off and
+	 * wait if it hasn't. In case some platforms don't respond well to a
+	 * sleep of 0, make sure the fsleep duration is > 0.
+	 */
+	if (!gyro && oldgyro) {
+		disable_wait = clamp(ktime_us_delta(st->conf.gyro_stop, ktime_get()),
+				     0, INV_ICM42607_GYRO_STOP_TIME_US);
+
+		if (disable_wait > 0)
+			fsleep(disable_wait);
+	}
+
+	val = FIELD_PREP(INV_ICM42607_PWR_MGMT0_GYRO_MODE_MASK, gyro) |
+	      FIELD_PREP(INV_ICM42607_PWR_MGMT0_ACCEL_MODE_MASK, accel);
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
+	sleepval_us = 0;
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
+	/*
+	 * Only sleep if sleepval_us is greater than 0 in case some
+	 * platforms have issues with a 0 delay. The 0 delay can happen
+	 * if one or both sensors is shut down.
+	 */
+	if (sleepval_us > 0)
+		fsleep(sleepval_us);
+
+	return 0;
+}
+
 static int inv_icm42607_set_init_conf(struct inv_icm42607_state *st,
 				      const struct inv_icm42607_conf *conf)
 {
@@ -212,20 +303,41 @@ static int inv_icm42607_enable_vddio_reg(struct inv_icm42607_state *st)
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
 
+int inv_icm42607_sensors_off(struct inv_icm42607_state *st)
+{
+	guard(mutex)(&st->lock);
+
+	st->conf.gyro.mode = INV_ICM42607_SENSOR_MODE_OFF;
+	st->conf.accel.mode = INV_ICM42607_SENSOR_MODE_OFF;
+
+	return inv_icm42607_set_pwr_mgmt0(st, st->conf.gyro.mode,
+					  st->conf.accel.mode);
+}
+
 static void inv_icm42607_disable_vddio_reg(void *_data)
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
@@ -240,6 +352,8 @@ int inv_icm42607_core_probe(struct regmap *regmap,
 	if (!st)
 		return -ENOMEM;
 
+	dev_set_drvdata(dev, st);
+
 	ret = devm_mutex_init(dev, &st->lock);
 	if (ret)
 		return ret;
@@ -275,10 +389,69 @@ int inv_icm42607_core_probe(struct regmap *regmap,
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
+	/* Sync the regcache again after regulator shutdown. */
+	regcache_mark_dirty(st->map);
+	ret = regcache_sync(st->map);
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
+	/*
+	 * Set sensors state to off. Since we only support one-shot
+	 * today we can use runtime PM to turn sensors off when not
+	 * in use, and then when needed the reads/writes will
+	 * re-enable the sensors as needed. This reduces complexity,
+	 * however the tradeoff is that an unused sensor won't be
+	 * turned off until the entire chip is no longer in use.
+	 */
+	return inv_icm42607_sensors_off(st);
+}
+
+EXPORT_NS_GPL_DEV_PM_OPS(inv_icm42607_pm_ops, IIO_ICM42607) = {
+	SYSTEM_SLEEP_PM_OPS(inv_icm42607_suspend, inv_icm42607_resume)
+	RUNTIME_PM_OPS(inv_icm42607_runtime_suspend, NULL, NULL)
+};
+
 MODULE_AUTHOR("InvenSense, Inc.");
 MODULE_DESCRIPTION("InvenSense ICM-42607 device driver");
 MODULE_LICENSE("GPL");
diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c
index f2b9067815b0..4a8e4f716803 100644
--- a/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c
@@ -8,6 +8,7 @@
 #include <linux/err.h>
 #include <linux/i2c.h>
 #include <linux/module.h>
+#include <linux/pm_runtime.h>
 #include <linux/regmap.h>
 
 #include "inv_icm42607.h"
@@ -56,6 +57,13 @@ static int inv_icm42607_probe(struct i2c_client *client)
 	return inv_icm42607_core_probe(regmap, hw, inv_icm42607_i2c_bus_setup);
 }
 
+static void inv_icm42607_i2c_remove(struct i2c_client *client)
+{
+	struct inv_icm42607_state *st = dev_get_drvdata(&client->dev);
+
+	inv_icm42607_sensors_off(st);
+}
+
 static const struct i2c_device_id inv_icm42607_id[] = {
 	{
 		.name = "icm42607",
@@ -84,9 +92,11 @@ static struct i2c_driver inv_icm42607_driver = {
 	.driver = {
 		.name = "inv-icm42607-i2c",
 		.of_match_table = inv_icm42607_of_matches,
+		.pm = pm_ptr(&inv_icm42607_pm_ops),
 	},
 	.id_table = inv_icm42607_id,
 	.probe = inv_icm42607_probe,
+	.remove = inv_icm42607_i2c_remove,
 };
 module_i2c_driver(inv_icm42607_driver);
 
diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c
index eb04036a6712..99e112c958a0 100644
--- a/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c
@@ -7,6 +7,7 @@
 #include <linux/dev_printk.h>
 #include <linux/err.h>
 #include <linux/module.h>
+#include <linux/pm_runtime.h>
 #include <linux/regmap.h>
 #include <linux/spi/spi.h>
 
@@ -65,6 +66,13 @@ static int inv_icm42607_probe(struct spi_device *spi)
 	return inv_icm42607_core_probe(regmap, hw, inv_icm42607_spi_bus_setup);
 }
 
+static void inv_icm42607_spi_remove(struct spi_device *spi)
+{
+	struct inv_icm42607_state *st = dev_get_drvdata(&spi->dev);
+
+	inv_icm42607_sensors_off(st);
+}
+
 static const struct spi_device_id inv_icm42607_spi_id_table[] = {
 	{
 		.name = "icm42607",
@@ -94,9 +102,11 @@ static struct spi_driver inv_icm42607_driver = {
 	.driver = {
 		.name = "inv-icm42607-spi",
 		.of_match_table = inv_icm42607_of_matches,
+		.pm = pm_ptr(&inv_icm42607_pm_ops),
 	},
 	.id_table = inv_icm42607_spi_id_table,
 	.probe = inv_icm42607_probe,
+	.remove = inv_icm42607_spi_remove,
 };
 module_spi_driver(inv_icm42607_driver);
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
