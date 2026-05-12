Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F357CD4F3F
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 May 2026 22:19:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dgGK0jql10+pfpGtV0+bRj+e1L6k3dwhxtVOBUlb7UQ=; b=e9mWRCPWkTlsG7
	t+gF4n3ZVNCHyZpQK0HRBzRV+TomSjZ0hyrQSx7VfynyENCQ/MWDFOYsDxVZtRmUA7nCIKLsKOIAB
	KT7hsJm045GmbUOtaULWYrA9Z1n50uxfZiBR2r7ENDRJmYoUXV3gg4QYv4l++zKhz87nYn+VGQH52
	cjpsWQ4kp7x628LeJCifh1Dh//7e3ckC+QayNbfP0BuDE5zoQlTaM1t6LMvSq3+2jT3qPgonPVStp
	RFhthmYl+ODgZk+7WdwB6IH+kL4W+tnFeJvxT7NYFDMNGCjCHsi3L0v1HmndPwwswdopCJecnpiFh
	Jw2VhlTdq5AMueFfh3GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMvRZ-00000000ZHM-3c3f;
	Tue, 12 May 2026 22:19:13 +0000
Received: from mail-oi1-x231.google.com ([2607:f8b0:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMvRU-00000000ZDE-2pze
	for linux-rockchip@lists.infradead.org;
	Tue, 12 May 2026 22:19:09 +0000
Received: by mail-oi1-x231.google.com with SMTP id 5614622812f47-48270ea6dd1so1673420b6e.3
        for <linux-rockchip@lists.infradead.org>; Tue, 12 May 2026 15:19:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778624347; x=1779229147; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1kN0dKWRj4ob0c4aSpEOl+jsXwCbydR+VRen1sSmJEI=;
        b=IVXCCn7NVfINRNt3Ix1K+3l7rjvH6uvlvCki3g2F5+wJuIo2HrNw8DWaushI3Tg24s
         6HLhVYINOTb8cCwO5L3LRqnSSVwlJeBoaSLzBkA+P9PBpoBzHFUVpEZeM2PSypO2E0u1
         f2373fRWDBNNrl6dsr5qOrvNr0/UfNpEBlNmf4F3nTlhpO8S7V/fNvJIVO6PhglG789V
         B8Va1gFeEXkp/seil8rtr0jb1YGnyeZ/IgxQtUBT/NRfWR/HNZ31RWoVEd1uqD++FD/b
         tY11VyfMEW+KIYgmOIvH2T/7kg8sv21VedZrZ0gJzRlh4MyUto/K2hKOh6gUzI1n4WFn
         +/bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778624347; x=1779229147;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1kN0dKWRj4ob0c4aSpEOl+jsXwCbydR+VRen1sSmJEI=;
        b=eNFU9HeGqB7OKr33IXcmoh7QVhx8gkk0bbgcGwV7dQnv7G6s25C3XXSb87bnoAGfWC
         W5zRnmmXsDSRC/HokdvF6z51TosCY4aR48K7BNj4p4RBcBIRhcEAg5FtAfrz7Wp+jrru
         jw4Omba0qskx/AeZ3RLXBMEgJrcytrssB3n/044HPmcgD+T/mW61Z2PxkYuReuqcUbQx
         hHELHIi9CRxJHhPdlMHJMbkoOA/MPoDAIiBffVASqRh4E9GgI2cAs/oapt+SVajwFVrc
         JXQB5vNu38VhvBK0+MnioqqT9ptVqbJbLNZmAhbUKuJzmY6pZehfT5/77C0oKy+4s4RK
         mhTg==
X-Forwarded-Encrypted: i=1; AFNElJ+OIRcsxxPSpu3ci0FNpD3DA8etGl0vK8DDF25GlyHi5/NyRDN1qxowUR0eGheQJGxxGuyfXGoITAmhTGMYLA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyr6CUg5p2rtr9452KRv01OZfg0yXF48YjgJQ1c22/UhnUAGrBu
	igIGbvG3fkz1pq9sTFPOLAqBEn2htkVtjsJhNrFL9yr5FGbU7GuZ8JVB
X-Gm-Gg: Acq92OFKhjlxyhp4E3IBW/5n4P3lO7HZFloNxcgC92NQAcHWHN5ITSgdEeDIShzXOCd
	+WXrwUmxtwtaiaFDXpR7iHYbGG4MHGf/azpa89b8GaAUd4yqaEqy7/H23ZnxIS4NCjxOZLJMuhZ
	Im6z6kFTuCac0ISE1Eul/QE+Zi7+nOyM02hTSYLeQIFZ4enzD5q5npqlWygfp5sPX8U1nsaERhl
	mNcW4XVs4xPTQovCQvIWifSjsadNG/W65qUzlbcb6VI5BqnkoDe/tlmAzAbSnll1koZVGufrwRO
	zC+qKNniG3VGAXzQwZ0gShsyTetYtIZiSwN18SiXV0yiQ1p34Xch4dkEeV0n/6n9yo5YVBzdvos
	6f+4BlHi4EdTSyVa/lObvGEP1bQd9EzEwfYYselqQCa/pvloCVVm1Mutl/4nG97/vbItaOnuza+
	Dw/yjBrMnbpZyEZFdd2OPa
X-Received: by 2002:a05:6808:448d:b0:482:a71b:95ca with SMTP id 5614622812f47-482b28fa894mr763500b6e.18.1778624347516;
        Tue, 12 May 2026 15:19:07 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-47c76986f87sm23291473b6e.13.2026.05.12.15.19.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 May 2026 15:19:07 -0700 (PDT)
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
Subject: [PATCH V6 05/11] iio: imu: inv_icm42607: Add PM support for icm42607
Date: Tue, 12 May 2026 17:16:26 -0500
Message-ID: <20260512221634.256747-6-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260512221634.256747-1-macroalpha82@gmail.com>
References: <20260512221634.256747-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260512_151908_756124_7C976824 
X-CRM114-Status: GOOD (  22.67  )
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
 drivers/iio/imu/inv_icm42607/inv_icm42607.h   |  12 ++
 .../iio/imu/inv_icm42607/inv_icm42607_core.c  | 151 ++++++++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_i2c.c   |   1 +
 .../iio/imu/inv_icm42607/inv_icm42607_spi.c   |   1 +
 4 files changed, 165 insertions(+)

diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607.h b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
index 2c20e95b237a..5f37999e39a5 100644
--- a/drivers/iio/imu/inv_icm42607/inv_icm42607.h
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
@@ -10,6 +10,7 @@
 #include <linux/bitops.h>
 #include <linux/iio/iio.h>
 #include <linux/mutex.h>
+#include <linux/pm.h>
 #include <linux/regmap.h>
 #include <linux/regulator/consumer.h>
 
@@ -96,24 +97,34 @@ struct inv_icm42607_hw {
 	const struct inv_icm42607_conf *conf;
 };
 
+struct inv_icm42607_suspended {
+	enum inv_icm42607_sensor_mode gyro;
+	enum inv_icm42607_sensor_mode accel;
+	bool temp;
+};
+
 /**
  *  struct inv_icm42607_state - driver state variables
  *  @lock:		lock for serializing multiple registers access.
  *  @hw:		Hardware specific data.
  *  @map:		regmap pointer.
  *  @vddio_supply:	I/O voltage regulator for the chip.
+ *  @vddio_en:		I/O voltage status for runtime PM.
  *  @irq:		chip irq, required to enable/disable and set wakeup
  *  @orientation:	sensor chip orientation relative to main hardware.
  *  @conf:		chip sensors configurations.
+ *  @suspended:		suspended sensors configuration.
  */
 struct inv_icm42607_state {
 	struct mutex lock;
 	const struct inv_icm42607_hw *hw;
 	struct regmap *map;
 	struct regulator *vddio_supply;
+	bool vddio_en;
 	int irq;
 	struct iio_mount_matrix orientation;
 	struct inv_icm42607_conf conf;
+	struct inv_icm42607_suspended suspended;
 };
 
 /* Virtual register addresses: @bank on MSB (4 upper bits), @address on LSB */
@@ -339,6 +350,7 @@ typedef int (*inv_icm42607_bus_setup)(struct inv_icm42607_state *);
 extern const struct regmap_config inv_icm42607_regmap_config;
 extern const struct inv_icm42607_hw inv_icm42607_hw_data;
 extern const struct inv_icm42607_hw inv_icm42607p_hw_data;
+extern const struct dev_pm_ops inv_icm42607_pm_ops;
 
 int inv_icm42607_core_probe(struct regmap *regmap, const struct inv_icm42607_hw *hw,
 			    inv_icm42607_bus_setup bus_setup);
diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
index 6119379ca6a8..dfd2fed7bf1e 100644
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
@@ -72,6 +73,62 @@ const struct inv_icm42607_hw inv_icm42607p_hw_data = {
 };
 EXPORT_SYMBOL_NS_GPL(inv_icm42607p_hw_data, "IIO_ICM42607");
 
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
 static int inv_icm42607_set_conf(struct inv_icm42607_state *st,
 				 const struct inv_icm42607_conf *conf)
 {
@@ -185,11 +242,15 @@ static int inv_icm42607_enable_vddio_reg(struct inv_icm42607_state *st)
 {
 	int ret;
 
+	if (st->vddio_en)
+		return 0;
+
 	ret = regulator_enable(st->vddio_supply);
 	if (ret)
 		return ret;
 
 	fsleep(INV_ICM42607_POWER_UP_TIME_US);
+	st->vddio_en = 1;
 
 	return 0;
 }
@@ -198,7 +259,10 @@ static void inv_icm42607_disable_vddio_reg(void *_data)
 {
 	struct inv_icm42607_state *st = _data;
 
+	if (!st->vddio_en)
+		return;
 	regulator_disable(st->vddio_supply);
+	st->vddio_en = 0;
 }
 
 int inv_icm42607_core_probe(struct regmap *regmap, const struct inv_icm42607_hw *hw,
@@ -256,10 +320,97 @@ int inv_icm42607_core_probe(struct regmap *regmap, const struct inv_icm42607_hw
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
+	int ret;
+
+	guard(mutex)(&st->lock);
+
+	if (pm_runtime_suspended(dev))
+		return 0;
+
+	ret = inv_icm42607_set_pwr_mgmt0(st, INV_ICM42607_SENSOR_MODE_OFF,
+					 INV_ICM42607_SENSOR_MODE_OFF,
+					 false, NULL);
+	if (ret)
+		return ret;
+	inv_icm42607_disable_vddio_reg(st);
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
+	int ret;
+
+	guard(mutex)(&st->lock);
+
+	if (pm_runtime_suspended(dev))
+		return 0;
+
+	ret = inv_icm42607_enable_vddio_reg(st);
+	if (ret)
+		return ret;
+
+	/* Nothing else to restore at this time. */
+
+	return 0;
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
+	inv_icm42607_disable_vddio_reg(st);
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
index 8631579a609a..a51c764bf1dc 100644
--- a/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c
@@ -77,6 +77,7 @@ static struct i2c_driver inv_icm42607_driver = {
 	.driver = {
 		.name = "inv-icm42607-i2c",
 		.of_match_table = inv_icm42607_of_matches,
+		.pm = pm_ptr(&inv_icm42607_pm_ops),
 	},
 	.id_table = inv_icm42607_id,
 	.probe = inv_icm42607_probe,
diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c
index 49438fa6f867..9ba3dd0c689a 100644
--- a/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c
@@ -90,6 +90,7 @@ static struct spi_driver inv_icm42607_driver = {
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
