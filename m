Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 661B5FF885A
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 May 2026 18:26:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AzV0BO9zQ5GM8Odzy+f4Ijfs2QW5DfRmIyhvOpC6USY=; b=4wR43n9hfIqNgk
	FpI77BIR4WYetwsekJU1pNU2P+syFWi7Ercg5smXQNzFt7DaqvlRnZKzlISmPn+yWjEB+z/r5XWHw
	HGoFKZ8vJ+utE3flLEM4DPDyeyM4PydXppb06oxOLCm8TFfwlt2miCm6O/RdGp6Os9+EkroZ0u3fR
	HnD/SHsnBz+1/UP0bXRIs+lhLoRDkvvybU1EeZz0nn3GQKMR95iFdq4EzFOO+uWiaQhV9axKEaQr4
	5T8ToLKNEOx3wdakRH7V8KqK0LGppOlHCHIPdsEmMGarZhNWN2o9wNk5ET/oahavTBVv8jWJ0d1d0
	PCXGU8zvdkFBgTYUoRtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJy0A-0000000E00m-0PXr;
	Mon, 04 May 2026 18:26:42 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJy08-0000000E00Y-0wXA
	for linux-rockchip@lists.infradead.org;
	Mon, 04 May 2026 18:26:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 723FF600C3;
	Mon,  4 May 2026 18:26:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ADB13C2BCB8;
	Mon,  4 May 2026 18:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777919199;
	bh=37Ot73A4fj0D5GowVRnxYtFfCqaZs359WtRnBjznzU4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=qSUwpjznKGAEqwntxKcoOXrL6pCU2OsVZgZuRu6sMWy9TTRqw3IMQ/wn3Y+83vmIL
	 16i17TFaz5Fpup7d0XO/401IatwBwzUCAYQuSM8FQhZzvwUcidtPMOboOK8mW/Bhnz
	 Zr51HKy1HPDSSBQo/OOUn/h0SmqU9TY7QO0KFA9x/F4ceOudefmw+828sa6T0shDJq
	 /ZjEPFj6LEeQrb4udjSwJ/p9tKPY+N/M6AIR0hYc/pQHjbry8JHkcFX0nYZfvd/K7d
	 hdRu6Y3pMUuB/FPGz3scfHV189Z0poxi3nHnDnD2sViGH6x+NRGqABpjtxytX2lKDF
	 1A5a8EQBsaDeQ==
Date: Mon, 4 May 2026 19:26:29 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V4 04/10] iio: imu: inv_icm42607: Add PM support for
 icm42607
Message-ID: <20260504192629.64e2f1d9@jic23-huawei>
In-Reply-To: <20260501221152.194251-5-macroalpha82@gmail.com>
References: <20260501221152.194251-1-macroalpha82@gmail.com>
	<20260501221152.194251-5-macroalpha82@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
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

On Fri,  1 May 2026 17:11:43 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add power management support for the ICM42607 device driver.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

I think this suffers from usual problem we get when runtime_pm
handles a regulator that we are also registering to be turned off
via devm.  That devm path needs to check if device is already runtime
suspended. Be careful about paths in probe() where we might check
runtime suspend state that isn't set yet.

https://sashiko.dev/#/patchset/20260501221152.194251-1-macroalpha82%40gmail.com
Has quite a bit to say no the series in general. It may
not always be right but some of the stuff in this patch is.

> ---
>  drivers/iio/imu/inv_icm42607/inv_icm42607.h   |   2 +
>  .../iio/imu/inv_icm42607/inv_icm42607_core.c  | 177 ++++++++++++++++++
>  .../iio/imu/inv_icm42607/inv_icm42607_i2c.c   |   1 +
>  .../iio/imu/inv_icm42607/inv_icm42607_spi.c   |   1 +
>  4 files changed, 181 insertions(+)
> 
> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607.h b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
> index 763d731ccc60..7facc114adc5 100644
> --- a/drivers/iio/imu/inv_icm42607/inv_icm42607.h
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
> @@ -11,6 +11,7 @@
>  #include <linux/iio/common/inv_sensors_timestamp.h>
>  #include <linux/iio/iio.h>
>  #include <linux/mutex.h>
> +#include <linux/pm.h>
>  #include <linux/regmap.h>
>  #include <linux/regulator/consumer.h>
>  
> @@ -390,6 +391,7 @@ struct inv_icm42607_sensor_state {
>  typedef int (*inv_icm42607_bus_setup)(struct inv_icm42607_state *);
>  
>  extern const struct regmap_config inv_icm42607_regmap_config;
> +extern const struct dev_pm_ops inv_icm42607_pm_ops;
>  
>  u32 inv_icm42607_odr_to_period(enum inv_icm42607_odr odr);
>  
> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> index 1ac3a573863c..af3784040b7a 100644
> --- a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> @@ -9,6 +9,7 @@
>  #include <linux/irq.h>
>  #include <linux/module.h>
>  #include <linux/mutex.h>
> +#include <linux/pm_runtime.h>
>  #include <linux/property.h>
>  #include <linux/regmap.h>
>  #include <linux/regulator/consumer.h>
> @@ -106,6 +107,62 @@ u32 inv_icm42607_odr_to_period(enum inv_icm42607_odr odr)
>  	return odr_periods[odr];
>  }
>  
> +static int inv_icm42607_set_pwr_mgmt0(struct inv_icm42607_state *st,
> +				      enum inv_icm42607_sensor_mode gyro,
> +				      enum inv_icm42607_sensor_mode accel,
> +				      bool temp, unsigned int *sleep_ms)
> +{
> +	enum inv_icm42607_sensor_mode oldgyro = st->conf.gyro.mode;
> +	enum inv_icm42607_sensor_mode oldaccel = st->conf.accel.mode;
> +	bool oldtemp = st->conf.temp_en;
> +	unsigned int sleepval;
> +	unsigned int val;
> +	int ret;
> +
> +	if (gyro == oldgyro && accel == oldaccel && temp == oldtemp)
> +		return 0;
> +
> +	val = FIELD_PREP(INV_ICM42607_PWR_MGMT0_GYRO_MODE_MASK, gyro);
> +	val |= FIELD_PREP(INV_ICM42607_PWR_MGMT0_ACCEL_MODE_MASK, accel);
> +	if (!temp)
> +		val |= INV_ICM42607_PWR_MGMT0_ACCEL_LP_CLK_SEL;
> +	ret = regmap_write(st->map, INV_ICM42607_REG_PWR_MGMT0, val);
> +	if (ret)
> +		return ret;
> +
> +	st->conf.gyro.mode = gyro;
> +	st->conf.accel.mode = accel;
> +	st->conf.temp_en = temp;
> +
> +	sleepval = 0;
> +	if (temp && !oldtemp) {
> +		if (sleepval < INV_ICM42607_TEMP_STARTUP_TIME_MS)
> +			sleepval = INV_ICM42607_TEMP_STARTUP_TIME_MS;
> +	}
> +	if (accel != oldaccel && oldaccel == INV_ICM42607_SENSOR_MODE_OFF) {
> +		usleep_range(200, 300);
> +		if (sleepval < INV_ICM42607_ACCEL_STARTUP_TIME_MS)
> +			sleepval = INV_ICM42607_ACCEL_STARTUP_TIME_MS;
> +	}
> +	if (gyro != oldgyro) {
> +		if (oldgyro == INV_ICM42607_SENSOR_MODE_OFF) {
> +			usleep_range(200, 300);
> +			if (sleepval < INV_ICM42607_GYRO_STARTUP_TIME_MS)
> +				sleepval = INV_ICM42607_GYRO_STARTUP_TIME_MS;
> +		} else if (gyro == INV_ICM42607_SENSOR_MODE_OFF) {
> +			if (sleepval < INV_ICM42607_GYRO_STOP_TIME_MS)
> +				sleepval = INV_ICM42607_GYRO_STOP_TIME_MS;
> +		}
> +	}
> +
> +	if (sleep_ms)
> +		*sleep_ms = sleepval;
> +	else if (sleepval)
> +		msleep(sleepval);
> +
> +	return 0;
> +}
> +
>  int inv_icm42607_debugfs_reg(struct iio_dev *indio_dev, unsigned int reg,
>  			     unsigned int writeval, unsigned int *readval)
>  {
> @@ -313,10 +370,130 @@ int inv_icm42607_core_probe(struct regmap *regmap, int chip,
>  	if (ret)
>  		return ret;
>  
> +	ret = devm_pm_runtime_set_active_enabled(dev);

This will interact with the status setup you need as mentioned above for devm
code to work right.

> +	if (ret)
> +		return ret;
> +
> +	pm_runtime_set_autosuspend_delay(dev, INV_ICM42607_SUSPEND_DELAY_MS);
> +	pm_runtime_use_autosuspend(dev);
> +
>  	return 0;
>  }
>  EXPORT_SYMBOL_NS_GPL(inv_icm42607_core_probe, "IIO_ICM42607");
>  
> +/*
> + * Suspend saves sensors state and turns everything off.
> + * Check first if runtime suspend has not already done the job.
> + */
> +static int inv_icm42607_suspend(struct device *dev)
> +{
> +	struct inv_icm42607_state *st = dev_get_drvdata(dev);
> +	struct device *accel_dev;
> +	bool wakeup;
> +	int accel_conf;
> +	int ret = 0;

Always set before use so no need to init here.

> +
> +	guard(mutex)(&st->lock);
> +
> +	st->suspended.gyro = st->conf.gyro.mode;
> +	st->suspended.accel = st->conf.accel.mode;
> +	st->suspended.temp = st->conf.temp_en;
> +	if (pm_runtime_suspended(dev))
> +		return 0;
> +
> +	/* keep chip on and wake-up capable if APEX and wakeup on */
> +	accel_dev = &st->indio_accel->dev;

Never set at this point in series. (Sashiko raised this)


> +	wakeup = st->apex.on && device_may_wakeup(accel_dev);
> +	if (wakeup) {
> +		/* keep accel on and setup irq for wakeup */
> +		accel_conf = st->conf.accel.mode;
> +		enable_irq_wake(st->irq);
> +		disable_irq(st->irq);
> +	} else {
> +		accel_conf = INV_ICM42607_SENSOR_MODE_OFF;
> +	}
> +
> +	ret = inv_icm42607_set_pwr_mgmt0(st, INV_ICM42607_SENSOR_MODE_OFF,
> +					 INV_ICM42607_SENSOR_MODE_OFF, false,
> +					 NULL);
> +	if (ret)
> +		return ret;
> +
> +	if (!wakeup)
> +		regulator_disable(st->vddio_supply);
> +
> +	return 0;
> +}

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
