Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6E6E109190D
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Mar 2026 18:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HC216ZrTOJTG34ra/zZ7o7wS3tfdlAAZxmSyFtV3L28=; b=OEj+/fdGJZ5yXF
	xClUdbryjXPxFwktD1uUl2yv14sLpR9qhKTnHuS8kk/cPL/wt0OpwWTWU6MpuDVFrf59DnwsGpvt+
	wWZj4hlBzr8osklD0bXLBRfCNBW4HoOAuW+xjcmO/irQOxN8cFMLFYqSTRxwwXts9+v4S2iUsw0rZ
	izw8S+MUEZyq4kVS4FOUkNUkkDhlmHDQ7XcMenmm+gY+gIqaaHeGLzN6PV5CjBjgGJ5XmBEZixv71
	d2GYNSBMjl1AujSkIS6r8xPDlLbUWSNKkwBH9XSvvYh4qLczID6stYXU5t9WxD9/BohuZGr6BINYW
	1r+9+aSS6Im2THUfcuHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3IAZ-0000000BMER-2TjY;
	Thu, 19 Mar 2026 18:32:31 +0000
Received: from mail-ot1-x32d.google.com ([2607:f8b0:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3IAV-0000000BMBW-2bKP
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Mar 2026 18:32:28 +0000
Received: by mail-ot1-x32d.google.com with SMTP id 46e09a7af769-7d738fe814cso773160a34.3
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Mar 2026 11:32:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773945146; x=1774549946; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E4zWFRQiJXRC4uOxEJ1OTAIev3CXmuaCaKD0LH5mlcc=;
        b=OiFGpJWoc30oGYZq4s4x0ZIJvHtuhSFBPbw6Z/oBUJNhHtvZ2dvmHPh6sgrStuokf0
         DwfmtgwFpel9AQPWs5ryjfR1EFLpB9uY0Av98vtP9P7AocLvm0/J2/IMu+p7hkMb27av
         kSo/hvfkYECVDjnUX3c4GTMp9gHZKYs4094tg349Qn+/0OaXoeZUOqyVMvImjOVNxEmB
         BteXwXzvzsy8p7g6rRXG2QlvGxz8rSNQN/4Hy3zBJFMOVwe2ieuOkH4/Aqm8EOg6hXc+
         D1XMGJP1PWWxkwCnjVbKAYaaZapXs1hULmQs3/VB4kBDr4h1meOk4Z7WvzCHLhQX5p0x
         PToQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773945146; x=1774549946;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=E4zWFRQiJXRC4uOxEJ1OTAIev3CXmuaCaKD0LH5mlcc=;
        b=Vxyr3mFu1TVOK0HEm1amtY6je/nxVNSvlPbPmM6bM+py5gBYWXUYDoTXas4sXQQYvw
         nb1ApXDcEUrXWMwgWoV5d0ecH0pDPNmQ+5A2o1hWOUIzWUES7OfR0yvQCsFe1dY4tZO6
         QpuKmRKcLxA6scrK0Ar6oAlE+l1HI1rrHSLD/lcELKP5khSQ4ALyZokbGSc/4nueMrX1
         E51ui6PZume8hUyTmQSY3LnkeWthnf8aCPSs0RFIeW0JogvM9RZdHT58r6P4IhxL6/yv
         2MC6oIWoRPwzYeDj0URoUTLBFinbrK6IrNuhzSemvxKAqoyQWQ/OLsc2D/qYcnHpg3gp
         5/Qw==
X-Forwarded-Encrypted: i=1; AJvYcCW2JZjvlhYwgvw8yHCmJcpLvmpqtpiME3dLqZPD3TNLnxjVrYYVkevCrhwciTSHOjxH8XfVFKpcuIRFqNJszw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwxJ4FJAWtWLqUGqR2R2nl36Kd4O6gc0i5mnT+OPGI9kM2UfvCb
	ZBg+DU+NpMFLza1kk8NX3piZR94CN55bLX6mNs5OVlUT3vZVDCHtjJ4x
X-Gm-Gg: ATEYQzw8bc7jjZQPhNTK4azHedZjl6qSHypPEi4xtis0lde5+j0+W2Q5e2X9JdrOL4z
	p4FheDD4tIyEZRlc/40ud5b9NMpt/fmpULLzBp8LbSDGzSTrevdUjQzBaJmBCQ3dG+eFGSSf4W0
	aZu/1xKWnHAL3WlrSr45h2exVUtzWZyM/7Q/2a2VyDjI5uZ0z5SNU1g/kwtDslWBXl3n0JxIFlg
	VCZUcBkJi0K4DfNGGZ9f71+Oom+34OOEyCFccSGY04T6r83n9bI0oGc+pu/DiJm943kP0GrOIO1
	nP8uIDCLqYQ5rfYVxqKPr+rCZU6yXDHiDFEhZy8Io/T4cC1qIWBwbhz/V+C490j7B0kryKTeg/B
	xTmPGMJl/gmBECvE284krl7KRRMF3kAlM0+rRXpWGdYD2fzch2B3kWbWnA64m/iSyr7ZqMaDh+6
	ACveYS0HRsqLMZIBAnrhIh
X-Received: by 2002:a05:6830:7301:b0:7d7:ccd6:3cd4 with SMTP id 46e09a7af769-7d7eaff4107mr156936a34.23.1773945146387;
        Thu, 19 Mar 2026 11:32:26 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d7eadcb11csm172193a34.13.2026.03.19.11.32.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 11:32:25 -0700 (PDT)
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
Subject: [PATCH V2 2/5] iio: imu: inv_icm42600: Add support for using alternate registers
Date: Thu, 19 Mar 2026 13:29:38 -0500
Message-ID: <20260319182956.146976-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260319182956.146976-1-macroalpha82@gmail.com>
References: <20260319182956.146976-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_113227_711071_AB8CCCC9 
X-CRM114-Status: GOOD (  23.96  )
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

Add support to the existing inv_icm42600 to support similar hardware
with slightly different register layouts. For example the icm42607
and icm42607p has most of the same functionality and even many of
the same registers, but the addresses for indiviual registers differ.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/iio/imu/inv_icm42600/inv_icm42600.h   |  28 +-
 .../iio/imu/inv_icm42600/inv_icm42600_accel.c |  15 +-
 .../iio/imu/inv_icm42600/inv_icm42600_core.c  | 257 ++++++++++--------
 .../iio/imu/inv_icm42600/inv_icm42600_gyro.c  |  13 +-
 4 files changed, 188 insertions(+), 125 deletions(-)

diff --git a/drivers/iio/imu/inv_icm42600/inv_icm42600.h b/drivers/iio/imu/inv_icm42600/inv_icm42600.h
index c8b48a5c5ed0..b89078cb5ba0 100644
--- a/drivers/iio/imu/inv_icm42600/inv_icm42600.h
+++ b/drivers/iio/imu/inv_icm42600/inv_icm42600.h
@@ -143,6 +143,26 @@ struct inv_icm42600_apex {
 	} wom;
 };
 
+typedef int (*inv_icm42600_bus_setup)(struct inv_icm42600_state *);
+
+struct inv_icm42600_funcs {
+	int (*setup)(struct inv_icm42600_state *st,
+		     inv_icm42600_bus_setup bus_setup);
+
+	/* timestamp_setup optional, not present on icm42607 */
+	int (*timestamp_setup)(struct inv_icm42600_state *st);
+
+	int (*buffer_init)(struct inv_icm42600_state *st);
+	int (*gyro_init)(struct inv_icm42600_state *st,
+			 struct iio_dev *indio_dev);
+	int (*accel_init)(struct inv_icm42600_state *st,
+			  struct iio_dev *indio_dev);
+	int (*suspend)(struct device *dev);
+	int (*resume)(struct device *dev);
+	int (*runtime_suspend)(struct device *dev);
+	int (*runtime_resume)(struct device *dev);
+};
+
 /**
  *  struct inv_icm42600_state - driver state variables
  *  @lock:		lock for serializing multiple registers access.
@@ -160,6 +180,7 @@ struct inv_icm42600_apex {
  *  @timestamp:		interrupt timestamps.
  *  @apex:		APEX (Advanced Pedometer and Event detection) management
  *  @fifo:		FIFO management structure.
+ *  @hw_funcs:		Device specific hardware functions.
  *  @buffer:		data transfer buffer aligned for DMA.
  */
 struct inv_icm42600_state {
@@ -180,6 +201,7 @@ struct inv_icm42600_state {
 	} timestamp;
 	struct inv_icm42600_apex apex;
 	struct inv_icm42600_fifo fifo;
+	struct inv_icm42600_funcs *hw_funcs;
 	u8 buffer[3] __aligned(IIO_DMA_MINALIGN);
 };
 
@@ -440,8 +462,6 @@ struct inv_icm42600_sensor_state {
 #define INV_ICM42600_TEMP_STARTUP_TIME_MS	14
 #define INV_ICM42600_SUSPEND_DELAY_MS		2000
 
-typedef int (*inv_icm42600_bus_setup)(struct inv_icm42600_state *);
-
 extern const struct regmap_config inv_icm42600_regmap_config;
 extern const struct regmap_config inv_icm42600_spi_regmap_config;
 extern const struct dev_pm_ops inv_icm42600_pm_ops;
@@ -472,11 +492,11 @@ int inv_icm42600_debugfs_reg(struct iio_dev *indio_dev, unsigned int reg,
 int inv_icm42600_core_probe(struct regmap *regmap, int chip,
 			    inv_icm42600_bus_setup bus_setup);
 
-struct iio_dev *inv_icm42600_gyro_init(struct inv_icm42600_state *st);
+int inv_icm42600_gyro_init(struct inv_icm42600_state *st, struct iio_dev *indio_dev);
 
 int inv_icm42600_gyro_parse_fifo(struct iio_dev *indio_dev);
 
-struct iio_dev *inv_icm42600_accel_init(struct inv_icm42600_state *st);
+int inv_icm42600_accel_init(struct inv_icm42600_state *st, struct iio_dev *indio_dev);
 
 int inv_icm42600_accel_parse_fifo(struct iio_dev *indio_dev);
 
diff --git a/drivers/iio/imu/inv_icm42600/inv_icm42600_accel.c b/drivers/iio/imu/inv_icm42600/inv_icm42600_accel.c
index 0ab6eddf0543..cbb27c4e6b82 100644
--- a/drivers/iio/imu/inv_icm42600/inv_icm42600_accel.c
+++ b/drivers/iio/imu/inv_icm42600/inv_icm42600_accel.c
@@ -1137,22 +1137,21 @@ static const struct iio_info inv_icm42600_accel_info = {
 	.write_event_value = inv_icm42600_accel_write_event_value,
 };
 
-struct iio_dev *inv_icm42600_accel_init(struct inv_icm42600_state *st)
+int inv_icm42600_accel_init(struct inv_icm42600_state *st, struct iio_dev *indio_dev)
 {
 	struct device *dev = regmap_get_device(st->map);
 	const char *name;
 	struct inv_icm42600_sensor_state *accel_st;
 	struct inv_sensors_timestamp_chip ts_chip;
-	struct iio_dev *indio_dev;
 	int ret;
 
 	name = devm_kasprintf(dev, GFP_KERNEL, "%s-accel", st->name);
 	if (!name)
-		return ERR_PTR(-ENOMEM);
+		return -ENOMEM;
 
 	indio_dev = devm_iio_device_alloc(dev, sizeof(*accel_st));
 	if (!indio_dev)
-		return ERR_PTR(-ENOMEM);
+		return -ENOMEM;
 	accel_st = iio_priv(indio_dev);
 
 	switch (st->chip) {
@@ -1189,18 +1188,18 @@ struct iio_dev *inv_icm42600_accel_init(struct inv_icm42600_state *st)
 	ret = devm_iio_kfifo_buffer_setup(dev, indio_dev,
 					  &inv_icm42600_buffer_ops);
 	if (ret)
-		return ERR_PTR(ret);
+		return ret;
 
 	ret = devm_iio_device_register(dev, indio_dev);
 	if (ret)
-		return ERR_PTR(ret);
+		return ret;
 
 	/* accel events are wakeup capable */
 	ret = devm_device_init_wakeup(&indio_dev->dev);
 	if (ret)
-		return ERR_PTR(ret);
+		return ret;
 
-	return indio_dev;
+	return 0;
 }
 
 int inv_icm42600_accel_parse_fifo(struct iio_dev *indio_dev)
diff --git a/drivers/iio/imu/inv_icm42600/inv_icm42600_core.c b/drivers/iio/imu/inv_icm42600/inv_icm42600_core.c
index 76eb22488e5f..29c8c1871e06 100644
--- a/drivers/iio/imu/inv_icm42600/inv_icm42600_core.c
+++ b/drivers/iio/imu/inv_icm42600/inv_icm42600_core.c
@@ -703,113 +703,11 @@ static void inv_icm42600_disable_vddio_reg(void *_data)
 	regulator_disable(st->vddio_supply);
 }
 
-int inv_icm42600_core_probe(struct regmap *regmap, int chip,
-			    inv_icm42600_bus_setup bus_setup)
-{
-	struct device *dev = regmap_get_device(regmap);
-	struct fwnode_handle *fwnode = dev_fwnode(dev);
-	struct inv_icm42600_state *st;
-	int irq, irq_type;
-	bool open_drain;
-	int ret;
-
-	if (chip <= INV_CHIP_INVALID || chip >= INV_CHIP_NB) {
-		dev_err(dev, "invalid chip = %d\n", chip);
-		return -ENODEV;
-	}
-
-	/* get INT1 only supported interrupt or fallback to first interrupt */
-	irq = fwnode_irq_get_byname(fwnode, "INT1");
-	if (irq < 0 && irq != -EPROBE_DEFER) {
-		dev_info(dev, "no INT1 interrupt defined, fallback to first interrupt\n");
-		irq = fwnode_irq_get(fwnode, 0);
-	}
-	if (irq < 0)
-		return dev_err_probe(dev, irq, "error missing INT1 interrupt\n");
-
-	irq_type = irq_get_trigger_type(irq);
-	if (!irq_type)
-		irq_type = IRQF_TRIGGER_FALLING;
-
-	open_drain = device_property_read_bool(dev, "drive-open-drain");
-
-	st = devm_kzalloc(dev, sizeof(*st), GFP_KERNEL);
-	if (!st)
-		return -ENOMEM;
-
-	dev_set_drvdata(dev, st);
-	mutex_init(&st->lock);
-	st->chip = chip;
-	st->map = regmap;
-	st->irq = irq;
-
-	ret = iio_read_mount_matrix(dev, &st->orientation);
-	if (ret) {
-		dev_err(dev, "failed to retrieve mounting matrix %d\n", ret);
-		return ret;
-	}
-
-	ret = devm_regulator_get_enable(dev, "vdd");
-	if (ret)
-		return dev_err_probe(dev, ret,
-				     "Failed to get vdd regulator\n");
-
-	msleep(INV_ICM42600_POWER_UP_TIME_MS);
-
-	st->vddio_supply = devm_regulator_get(dev, "vddio");
-	if (IS_ERR(st->vddio_supply))
-		return PTR_ERR(st->vddio_supply);
-
-	ret = inv_icm42600_enable_regulator_vddio(st);
-	if (ret)
-		return ret;
-
-	ret = devm_add_action_or_reset(dev, inv_icm42600_disable_vddio_reg, st);
-	if (ret)
-		return ret;
-
-	/* setup chip registers */
-	ret = inv_icm42600_setup(st, bus_setup);
-	if (ret)
-		return ret;
-
-	ret = inv_icm42600_timestamp_setup(st);
-	if (ret)
-		return ret;
-
-	ret = inv_icm42600_buffer_init(st);
-	if (ret)
-		return ret;
-
-	st->indio_gyro = inv_icm42600_gyro_init(st);
-	if (IS_ERR(st->indio_gyro))
-		return PTR_ERR(st->indio_gyro);
-
-	st->indio_accel = inv_icm42600_accel_init(st);
-	if (IS_ERR(st->indio_accel))
-		return PTR_ERR(st->indio_accel);
-
-	ret = inv_icm42600_irq_init(st, irq, irq_type, open_drain);
-	if (ret)
-		return ret;
-
-	/* setup runtime power management */
-	ret = devm_pm_runtime_set_active_enabled(dev);
-	if (ret)
-		return ret;
-
-	pm_runtime_set_autosuspend_delay(dev, INV_ICM42600_SUSPEND_DELAY_MS);
-	pm_runtime_use_autosuspend(dev);
-
-	return ret;
-}
-EXPORT_SYMBOL_NS_GPL(inv_icm42600_core_probe, "IIO_ICM42600");
-
 /*
  * Suspend saves sensors state and turns everything off.
  * Check first if runtime suspend has not already done the job.
  */
-static int inv_icm42600_suspend(struct device *dev)
+static int inv_icm42600_hw_suspend(struct device *dev)
 {
 	struct inv_icm42600_state *st = dev_get_drvdata(dev);
 	struct device *accel_dev;
@@ -867,7 +765,7 @@ static int inv_icm42600_suspend(struct device *dev)
  * System resume gets the system back on and restores the sensors state.
  * Manually put runtime power management in system active state.
  */
-static int inv_icm42600_resume(struct device *dev)
+static int inv_icm42600_hw_resume(struct device *dev)
 {
 	struct inv_icm42600_state *st = dev_get_drvdata(dev);
 	struct inv_icm42600_sensor_state *gyro_st = iio_priv(st->indio_gyro);
@@ -920,7 +818,7 @@ static int inv_icm42600_resume(struct device *dev)
 }
 
 /* Runtime suspend will turn off sensors that are enabled by iio devices. */
-static int inv_icm42600_runtime_suspend(struct device *dev)
+static int inv_icm42600_hw_runtime_suspend(struct device *dev)
 {
 	struct inv_icm42600_state *st = dev_get_drvdata(dev);
 	int ret;
@@ -940,7 +838,7 @@ static int inv_icm42600_runtime_suspend(struct device *dev)
 }
 
 /* Sensors are enabled by iio devices, no need to turn them back on here. */
-static int inv_icm42600_runtime_resume(struct device *dev)
+static int inv_icm42600_hw_runtime_resume(struct device *dev)
 {
 	struct inv_icm42600_state *st = dev_get_drvdata(dev);
 
@@ -949,6 +847,153 @@ static int inv_icm42600_runtime_resume(struct device *dev)
 	return inv_icm42600_enable_regulator_vddio(st);
 }
 
+static struct inv_icm42600_funcs inv_icm42600_hw_funcs = {
+	.setup = &inv_icm42600_setup,
+	.timestamp_setup = &inv_icm42600_timestamp_setup,
+	.buffer_init = &inv_icm42600_buffer_init,
+	.gyro_init = &inv_icm42600_gyro_init,
+	.accel_init = &inv_icm42600_accel_init,
+	.suspend = &inv_icm42600_hw_suspend,
+	.resume = &inv_icm42600_hw_resume,
+	.runtime_suspend = &inv_icm42600_hw_runtime_suspend,
+	.runtime_resume = &inv_icm42600_hw_runtime_resume,
+};
+
+int inv_icm42600_core_probe(struct regmap *regmap, int chip,
+			    inv_icm42600_bus_setup bus_setup)
+{
+	struct device *dev = regmap_get_device(regmap);
+	struct fwnode_handle *fwnode = dev_fwnode(dev);
+	struct inv_icm42600_state *st;
+	int irq, irq_type;
+	bool open_drain;
+	int ret;
+
+	if (chip <= INV_CHIP_INVALID || chip >= INV_CHIP_NB) {
+		dev_err(dev, "invalid chip = %d\n", chip);
+		return -ENODEV;
+	}
+
+	/* get INT1 only supported interrupt or fallback to first interrupt */
+	irq = fwnode_irq_get_byname(fwnode, "INT1");
+	if (irq < 0 && irq != -EPROBE_DEFER) {
+		dev_info(dev, "no INT1 interrupt defined, fallback to first interrupt\n");
+		irq = fwnode_irq_get(fwnode, 0);
+	}
+	if (irq < 0)
+		return dev_err_probe(dev, irq, "error missing INT1 interrupt\n");
+
+	irq_type = irq_get_trigger_type(irq);
+	if (!irq_type)
+		irq_type = IRQF_TRIGGER_FALLING;
+
+	open_drain = device_property_read_bool(dev, "drive-open-drain");
+
+	st = devm_kzalloc(dev, sizeof(*st), GFP_KERNEL);
+	if (!st)
+		return -ENOMEM;
+
+	dev_set_drvdata(dev, st);
+	mutex_init(&st->lock);
+	st->chip = chip;
+	st->map = regmap;
+	st->irq = irq;
+
+	ret = iio_read_mount_matrix(dev, &st->orientation);
+	if (ret) {
+		dev_err(dev, "failed to retrieve mounting matrix %d\n", ret);
+		return ret;
+	}
+
+	ret = devm_regulator_get_enable(dev, "vdd");
+	if (ret)
+		return dev_err_probe(dev, ret,
+				     "Failed to get vdd regulator\n");
+
+	msleep(INV_ICM42600_POWER_UP_TIME_MS);
+
+	st->vddio_supply = devm_regulator_get(dev, "vddio");
+	if (IS_ERR(st->vddio_supply))
+		return PTR_ERR(st->vddio_supply);
+
+	ret = inv_icm42600_enable_regulator_vddio(st);
+	if (ret)
+		return ret;
+
+	ret = devm_add_action_or_reset(dev, inv_icm42600_disable_vddio_reg, st);
+	if (ret)
+		return ret;
+
+	/* setup chip registers based on hardware */
+	st->hw_funcs = &inv_icm42600_hw_funcs;
+
+	ret = st->hw_funcs->setup(st, bus_setup);
+	if (ret)
+		return ret;
+
+	/* Timestamp setup optional for ICM42607 */
+	if (st->hw_funcs->timestamp_setup) {
+		ret = st->hw_funcs->timestamp_setup(st);
+		if (ret)
+			return ret;
+	}
+
+	ret = st->hw_funcs->buffer_init(st);
+	if (ret)
+		return ret;
+
+	ret = st->hw_funcs->gyro_init(st, st->indio_gyro);
+	if (ret)
+		return ret;
+
+	ret = st->hw_funcs->accel_init(st, st->indio_accel);
+	if (ret)
+		return ret;
+
+	ret = inv_icm42600_irq_init(st, irq, irq_type, open_drain);
+	if (ret)
+		return ret;
+
+	/* setup runtime power management */
+	ret = devm_pm_runtime_set_active_enabled(dev);
+	if (ret)
+		return ret;
+
+	pm_runtime_set_autosuspend_delay(dev, INV_ICM42600_SUSPEND_DELAY_MS);
+	pm_runtime_use_autosuspend(dev);
+
+	return ret;
+}
+EXPORT_SYMBOL_NS_GPL(inv_icm42600_core_probe, "IIO_ICM42600");
+
+static int inv_icm42600_suspend(struct device *dev)
+{
+	struct inv_icm42600_state *st = dev_get_drvdata(dev);
+
+	return st->hw_funcs->suspend(dev);
+}
+
+static int inv_icm42600_resume(struct device *dev)
+{
+	struct inv_icm42600_state *st = dev_get_drvdata(dev);
+
+	return st->hw_funcs->resume(dev);
+}
+
+static int inv_icm42600_runtime_suspend(struct device *dev)
+{
+	struct inv_icm42600_state *st = dev_get_drvdata(dev);
+
+	return st->hw_funcs->runtime_suspend(dev);
+}
+
+static int inv_icm42600_runtime_resume(struct device *dev)
+{
+	struct inv_icm42600_state *st = dev_get_drvdata(dev);
+
+	return st->hw_funcs->runtime_resume(dev);
+}
+
 EXPORT_NS_GPL_DEV_PM_OPS(inv_icm42600_pm_ops, IIO_ICM42600) = {
 	SYSTEM_SLEEP_PM_OPS(inv_icm42600_suspend, inv_icm42600_resume)
 	RUNTIME_PM_OPS(inv_icm42600_runtime_suspend,
diff --git a/drivers/iio/imu/inv_icm42600/inv_icm42600_gyro.c b/drivers/iio/imu/inv_icm42600/inv_icm42600_gyro.c
index 11339ddf1da3..32aa2e52df2e 100644
--- a/drivers/iio/imu/inv_icm42600/inv_icm42600_gyro.c
+++ b/drivers/iio/imu/inv_icm42600/inv_icm42600_gyro.c
@@ -725,22 +725,21 @@ static const struct iio_info inv_icm42600_gyro_info = {
 	.hwfifo_flush_to_buffer = inv_icm42600_gyro_hwfifo_flush,
 };
 
-struct iio_dev *inv_icm42600_gyro_init(struct inv_icm42600_state *st)
+int inv_icm42600_gyro_init(struct inv_icm42600_state *st, struct iio_dev *indio_dev)
 {
 	struct device *dev = regmap_get_device(st->map);
 	const char *name;
 	struct inv_icm42600_sensor_state *gyro_st;
 	struct inv_sensors_timestamp_chip ts_chip;
-	struct iio_dev *indio_dev;
 	int ret;
 
 	name = devm_kasprintf(dev, GFP_KERNEL, "%s-gyro", st->name);
 	if (!name)
-		return ERR_PTR(-ENOMEM);
+		return -ENOMEM;
 
 	indio_dev = devm_iio_device_alloc(dev, sizeof(*gyro_st));
 	if (!indio_dev)
-		return ERR_PTR(-ENOMEM);
+		return -ENOMEM;
 	gyro_st = iio_priv(indio_dev);
 
 	switch (st->chip) {
@@ -775,13 +774,13 @@ struct iio_dev *inv_icm42600_gyro_init(struct inv_icm42600_state *st)
 	ret = devm_iio_kfifo_buffer_setup(dev, indio_dev,
 					  &inv_icm42600_buffer_ops);
 	if (ret)
-		return ERR_PTR(ret);
+		return ret;
 
 	ret = devm_iio_device_register(dev, indio_dev);
 	if (ret)
-		return ERR_PTR(ret);
+		return ret;
 
-	return indio_dev;
+	return 0;
 }
 
 int inv_icm42600_gyro_parse_fifo(struct iio_dev *indio_dev)
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
