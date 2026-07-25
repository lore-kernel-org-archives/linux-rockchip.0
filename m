Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE9D3C531C9
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Jul 2026 00:16:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QKkGDvMwlhY4gUTnF4kR8pN2o3zpkZc19p+oupOFsVM=; b=ABNpWZzWaBMQGe
	XLEl24F5HfrhSxYtI1DXmk1yt88EUxjDLmhNOk1rlRxadgf0sNZBzKjW1XL+wTKad0t215zStug1q
	2ezBH0Opt5xQd8rBSyh0XHQOGl6LLfn/C+kSFTnHyNLNUmiqcoRJd5GeibO3AwwFc9ESb0gPR7wgh
	+Bh6O2gaq7zTRa0SIxoDUiWYycXIhDFqtTNA82u4JLU8LPxGJnNLbY3aTLKdOFTj9/xqSGlf6CGbk
	DJKJqDOVlLX829B7BfCgoFcGk2KEKSIVVYF8wVx+dVJXcNR3UVlhZPufbWMbM8SlpxC2erh2yOF+d
	WiXruBFutnGvY7rdJFug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnQ3h-0000000HOA8-0Ck2;
	Sat, 25 Jul 2026 00:16:05 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnQ3g-0000000HOA2-0OQX
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Jul 2026 00:16:04 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id CFB3A600AD;
	Sat, 25 Jul 2026 00:16:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 215DA1F000E9;
	Sat, 25 Jul 2026 00:16:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784938562;
	bh=IsJR6O4cuUuSOESjrdR4auMydcz5x6NXnnJ1/M2/xJA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=cuea54eOm7lnglQkdpRO21NteRgYUfWpV/D3jxu65QN4+PRV9usGaMC1kF1poAun1
	 1jJ9sPI1RcypBFh4jkVcFl99jvA9GqM9UiLOgyLkhWLFHfdR2W8HOM/N+zLxPSib+c
	 8aJj2moBh0nneD/Xn6kBRLR8WKedGWUqUT3vb1FLIGPZVW+xSfTrHrVheOD/1nEOmc
	 ocx0ZDWkq/BYmz3LfiDpMaPOI0uOWPUeh3yGx/ofxa5Kh4wwU7xpsnaNhZd5HUcabh
	 7mUolWVJPS5xBovyC71JsAvuI0FfKDrLiBxC4Oo9uFXju3uNAJfNUo/yDdWXk8vcfK
	 /0m0PLhqPuHwA==
Date: Sat, 25 Jul 2026 01:15:57 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V19 5/9] iio: imu: inv_icm42607: Add PM support for
 icm42607
Message-ID: <20260725011557.2336b2cd@jic23-huawei>
In-Reply-To: <20260722153942.144387-6-macroalpha82@gmail.com>
References: <20260722153942.144387-1-macroalpha82@gmail.com>
	<20260722153942.144387-6-macroalpha82@gmail.com>
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

On Wed, 22 Jul 2026 10:39:36 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add power management support for the ICM42607 device driver.

Not quite as you've probably noticed from sashiko commenting
again on the cleanup :(

Power management sequences are annoyingly fiddly to get right.
I keep meaning to find some time to bother explore all the common
scenarios and write up patterns that are appropriate for each one.
Never get the time unfortunately.

> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  drivers/iio/imu/inv_icm42607/inv_icm42607.h   |  16 ++
>  .../iio/imu/inv_icm42607/inv_icm42607_core.c  | 173 ++++++++++++++++++
>  .../iio/imu/inv_icm42607/inv_icm42607_i2c.c   |  10 +
>  .../iio/imu/inv_icm42607/inv_icm42607_spi.c   |  10 +
>  4 files changed, 209 insertions(+)


> index 6ec1d730017e..d85eaedef070 100644
> --- a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
...
> +
> +static int inv_icm42607_set_pwr_mgmt0(struct inv_icm42607_state *st,
> +				      enum inv_icm42607_sensor_mode gyro,
> +				      enum inv_icm42607_sensor_mode accel)
> +{
> +	enum inv_icm42607_sensor_mode oldaccel, oldgyro;
> +	unsigned int sleepval_us;
> +	unsigned int val;
> +	s64 disable_wait;
> +	int ret;
> +
> +	ret = inv_icm42607_get_pwr_mgmt0(st, &oldgyro, &oldaccel);
> +	if (ret)
> +		return ret;
> +
> +	if (gyro == oldgyro && accel == oldaccel)
> +		return 0;
> +
> +	/*
> +	 * Datasheet on page 14.26 says we need to ensure the gyro sensor is on
> +	 * for a minimum of 45ms. So if we transition from an on state to an
> +	 * off state make sure at least 45ms have passed before power off and
> +	 * wait if it hasn't. In case some platforms don't respond well to a
> +	 * sleep of 0, make sure the fsleep duration is > 0.
> +	 */
> +	if (!gyro && oldgyro) {
> +		disable_wait = clamp(ktime_us_delta(st->conf.gyro_stop, ktime_get()),
> +				     0, INV_ICM42607_GYRO_STOP_TIME_US);
> +
> +		if (disable_wait > 0)
> +			fsleep(disable_wait);
> +	}
> +
> +	val = FIELD_PREP(INV_ICM42607_PWR_MGMT0_GYRO_MODE_MASK, gyro) |
> +	      FIELD_PREP(INV_ICM42607_PWR_MGMT0_ACCEL_MODE_MASK, accel);
> +	ret = regmap_write(st->map, INV_ICM42607_REG_PWR_MGMT0, val);
> +	if (ret)
> +		return ret;
> +
> +	/*
> +	 * If a state change occurs from off to on, sleep for the startup
> +	 * time of the sensor, unless a sleep_ms is specified. Since more
> +	 * than one sensor can be transitioned from off to on, select the
> +	 * maximum time from each of the sensors changing from off to on.
> +	 * The startup time for the temp sensor is considerably smaller
> +	 * than the startup time for the other sensors and one or more are
> +	 * required to be on for the temp sensor to function, so any start
> +	 * delay should be enough.
> +	 */
> +	sleepval_us = 0;
> +	if (accel && !oldaccel)
> +		sleepval_us = max(sleepval_us, INV_ICM42607_ACCEL_STARTUP_TIME_US);
> +
> +	if (gyro && !oldgyro) {
> +		sleepval_us = max(sleepval_us, INV_ICM42607_GYRO_STARTUP_TIME_US);
> +		/* Track the earliest we can turn off the gyroscope. */
> +		st->conf.gyro_stop = ktime_add_us(ktime_get(),
> +						  INV_ICM42607_GYRO_STOP_TIME_US);
> +	}
> +
> +	/*
> +	 * Only sleep if sleepval_us is greater than 0 in case some
> +	 * platforms have issues with a 0 delay. The 0 delay can happen

Trivial but wrap comments to 80 chars unless there is some other reason.

> +	 * if one or both sensors is shut down.
> +	 */
> +	if (sleepval_us > 0)
> +		fsleep(sleepval_us);
> +
> +	return 0;
> +}

>  int inv_icm42607_core_probe(struct regmap *regmap,
> @@ -240,6 +352,8 @@ int inv_icm42607_core_probe(struct regmap *regmap,
>  	if (!st)
>  		return -ENOMEM;
>  
> +	dev_set_drvdata(dev, st);
> +
>  	ret = devm_mutex_init(dev, &st->lock);
>  	if (ret)
>  		return ret;
> @@ -275,10 +389,69 @@ int inv_icm42607_core_probe(struct regmap *regmap,
>  	if (ret)
>  		return ret;
>  

So for the devm_add_action_or_reset() it probably wants to be somewhere near
here as I'd assume the power down effectively undoes something that starts
from setup?  If it is coupled to nothing at all (can happen if power up
only occurs later due to userspace input) then put it at the end of probe
with a comment saying why it is there.


> +	ret = devm_pm_runtime_set_active_enabled(dev);
> +	if (ret)
> +		return ret;
> +
> +	pm_runtime_set_autosuspend_delay(dev, INV_ICM42607_SUSPEND_DELAY_MS);
> +	pm_runtime_use_autosuspend(dev);
> +
>  	return 0;
>  }
>  EXPORT_SYMBOL_NS_GPL(inv_icm42607_core_probe, "IIO_ICM42607");



> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c
> index f2b9067815b0..4a8e4f716803 100644
> --- a/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c
> @@ -8,6 +8,7 @@
>  #include <linux/err.h>
>  #include <linux/i2c.h>
>  #include <linux/module.h>
> +#include <linux/pm_runtime.h>
>  #include <linux/regmap.h>
>  
>  #include "inv_icm42607.h"
> @@ -56,6 +57,13 @@ static int inv_icm42607_probe(struct i2c_client *client)
>  	return inv_icm42607_core_probe(regmap, hw, inv_icm42607_i2c_bus_setup);
>  }
>  
> +static void inv_icm42607_i2c_remove(struct i2c_client *client)

Sorry but no this is not the way to solve the pm dance.
As Sashiko points out mixing devm and not like this is a path to pain.

The usual solution to this is to use a devm_add_action_or_reset()
at appropriate place in probe.  When runtime pm is involved it can
get complex.  There are various options, but often the easiest is
to add a driver flag that says if the device is powered off and
just check it before powering down.

> +{
> +	struct inv_icm42607_state *st = dev_get_drvdata(&client->dev);
> +
> +	inv_icm42607_sensors_off(st);
> +}

...

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c
> index eb04036a6712..99e112c958a0 100644
> --- a/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c
> @@ -7,6 +7,7 @@
>  #include <linux/dev_printk.h>
>  #include <linux/err.h>
>  #include <linux/module.h>
> +#include <linux/pm_runtime.h>
>  #include <linux/regmap.h>
>  #include <linux/spi/spi.h>
>  
> @@ -65,6 +66,13 @@ static int inv_icm42607_probe(struct spi_device *spi)
>  	return inv_icm42607_core_probe(regmap, hw, inv_icm42607_spi_bus_setup);
>  }
>  
> +static void inv_icm42607_spi_remove(struct spi_device *spi)
> +{
> +	struct inv_icm42607_state *st = dev_get_drvdata(&spi->dev);
> +
> +	inv_icm42607_sensors_off(st);
> +}

Same issue - Remove here ends up out of sequence with the runtime pm disable
handled by devm cleanup. It needs to be a custom devm callback so it
can be done in right order using that infrastructure.

Thanks,

Jonathan


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
