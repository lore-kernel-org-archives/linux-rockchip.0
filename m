Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C023F45A11
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Apr 2026 22:22:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aEGcG9iJR6ssVOyYww8TbaJ3Cdhm1hgDIgx4pvRlx3g=; b=30cn6zmAvBlVfL
	THOa5hvMWh2SHepy/1/HVrKEGAQ4th44IdbPBpDfEUWO/3g3EQxbn76hYoi2Lwkdo/ZGtCWRJ+Jw8
	JQnuwZN6PNQkIdDLHOD/cgHsPxqGg/a63ERyu38H9T3/3qjD5ynpfEmico1ZE9JD6vSPbkovjm0M8
	a4HdTFj4k8ErFl12ohN7HAqWjrCuumoLPbfYyIxYWen7a/6zzZp5aDjwaHrVbvSo8YFLtA5yOksrR
	Afmi5wnTkyrRIz/QnZBRUoXOqAlT62AQ8BLxybmOG3tAGmnUHFHL2QhhHX9NDNUJCgDdoQab6Hh6u
	KW8efv+NRiydGM2mZQ1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBKEf-0000000CsOx-49cp;
	Fri, 10 Apr 2026 22:21:57 +0000
Received: from mail-ot1-x329.google.com ([2607:f8b0:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBKEd-0000000CsOc-0Ae3
	for linux-rockchip@lists.infradead.org;
	Fri, 10 Apr 2026 22:21:56 +0000
Received: by mail-ot1-x329.google.com with SMTP id 46e09a7af769-7dbcd61429cso1267584a34.2
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Apr 2026 15:21:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20251104.gappssmtp.com; s=20251104; t=1775859714; x=1776464514; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SsVW3RunaT7CXICWyhIRNRbEGIyTnfeR0pi5Qn2NLII=;
        b=hZqpvtaKwA+E4CikVGB28EYoKngcFlG1Jz9m8ITyd4I+BgUIhk8BB7015qQla1Q206
         9PRVlRLVlBB9rfGq3XStGHax34Xd1TU7mE/8R/P6Z+rnofpbZFnmCsoDmBWX/BfSz6sX
         RSIaBMHMhA0VTiuq1PE/aM+UcJk6kwUvoeWRUxY1s08Lz4KtC+EK9JM836tR+xX47nZt
         PQAgCE1GLjCbt5Pmna6F3qjG/PdzsntO3vda/PvoWVWumBj9BVZ+YKJyovnMUXIBzBF3
         y7zACfrg60oSUpdisw8ajG9sfnD7zRxARxl+r9HhRN6tuPU0LTpF7oi+ZeiUDp/3iwxk
         ixKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775859714; x=1776464514;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SsVW3RunaT7CXICWyhIRNRbEGIyTnfeR0pi5Qn2NLII=;
        b=b2Xw0ljlXB516h7bOZIX0GQerxMGT9pcywV7fdCQMbYjdqMlOsyFGQXKzgQrsev47z
         QHlI/YhFeFJ4gEaKLurDvn38qENNcIfeWWINiRTlZBD6OjxFlCqgN9xA9tcMJVPy/owJ
         wd+8FJYFRTKqa19wnz6eHu+JKgTfyQCnF+Rpi6CQBRakhHJfyEOhXQv2vwDDEo3+hIqR
         +4teRH9SRWPSADuhHUNUnDsLjsya6fpoCXNBScbBkvu93I7PtFCxFZciePF07vn1fvUk
         vmgBQz8BXH/mgrOVUeiX5I3oqnYn5OEnF1WS1ttirwL5R3HLIJxcikbbC83ml323XPPw
         9NbA==
X-Forwarded-Encrypted: i=1; AJvYcCVt6oGxL10oOFgFFwE3iOImyChKEh6edAacM7zduOKjSK58X9HGnrwCmGlmn1VVsS3rXGo7CHHw7pBNzmmBNQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzZHhUbNIboskz8Vj6gK8nDCG+tPF6aMcuF22yKjorvTnqFFTf6
	8YV51YG27RtMc/Lg7lrPpwK4RxxtzebPxw7xb/n4Xjhpj1nF7F2bafP6aOKa9lS/kSU=
X-Gm-Gg: AeBDievgZvvHBurLGdv15H+41l+6a0R//DMwLohrmPvOmJ2shinJSrJw5zzj5uyuoLA
	5a45QoJeb36xZKHLtBK81y51QDcLWt29UFPaC3+nL93fr2H5DUo4AJvqqmnBOReLSngHUVOWANV
	KKxtjLltwbSEnCJdbVLn83ZBF9qfzMSbRN7eltK4STDSwzvNBg5b1yplYAeEXdSupsJuH8O9Z26
	akaAI8FkOgIh1HuNDTc5wGoiN2fM9n2OQMr97FBpsyRDDhx9ZUniQ7H6IZxPWQiG4EzquLPz4Yx
	qBQedNxclbP+JdAkXJ4w86M8zrVs/cFLCT7d1k2BHhetww7uu1vvhoXCzd5+4IbRcVhsWk1GlHZ
	uCZk1/TUrnOjTtrUM1OlwWR2Y1F62u4IQnt/4q3XoZo9+67k9OWm/GFREoArtpudjuTPLrfGJJr
	81KDdV1YFTEFgYZAkc0KSBdhM9BeFtuUXrd1qOGIocIuhiR6C71O6gFmdU5+fOH182ZdSEgSfJ6
	w==
X-Received: by 2002:a05:6830:4123:b0:7d7:4ee9:c39a with SMTP id 46e09a7af769-7dc27c59836mr3114877a34.4.1775859713715;
        Fri, 10 Apr 2026 15:21:53 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:b75d:2440:dc10:808b? ([2600:8803:e7e4:500:b75d:2440:dc10:808b])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7dc2696532bsm2805612a34.21.2026.04.10.15.21.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Apr 2026 15:21:53 -0700 (PDT)
Message-ID: <a68ad9a0-858e-41a6-a265-b5c46193cd26@baylibre.com>
Date: Fri, 10 Apr 2026 17:21:52 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 3/9] iio: imu: inv_icm42607: Add I2C and SPI For
 icm42607
To: Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org
Cc: andy@kernel.org, nuno.sa@analog.com, jic23@kernel.org,
 jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, andriy.shevchenko@intel.com,
 Chris Morgan <macromorgan@hotmail.com>
References: <20260330195853.392877-1-macroalpha82@gmail.com>
 <20260330195853.392877-4-macroalpha82@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260330195853.392877-4-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260410_152155_136603_1EACAC7D 
X-CRM114-Status: GOOD (  28.00  )
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

On 3/30/26 2:58 PM, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add I2C and SPI driver support for InvenSense ICM-42607 devices.

> Include runtime power management on each device.

Power management seems unrelated, so likey belongs in a separate patch.

> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  drivers/iio/imu/inv_icm42607/inv_icm42607.h   |  14 ++
>  .../iio/imu/inv_icm42607/inv_icm42607_core.c  | 204 ++++++++++++++++++
>  .../iio/imu/inv_icm42607/inv_icm42607_i2c.c   |  93 ++++++++
>  .../iio/imu/inv_icm42607/inv_icm42607_spi.c   | 100 +++++++++
>  4 files changed, 411 insertions(+)
>  create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c
>  create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c
> 
> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607.h b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
> index 609188c40ffc..7d13091aa8df 100644
> --- a/drivers/iio/imu/inv_icm42607/inv_icm42607.h
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
> @@ -11,6 +11,7 @@
>  #include <linux/regmap.h>
>  #include <linux/mutex.h>
>  #include <linux/regulator/consumer.h>
> +#include <linux/pm.h>
>  #include <linux/iio/iio.h>
>  #include <linux/iio/common/inv_sensors_timestamp.h>
>  
> @@ -21,6 +22,16 @@ enum inv_icm42607_chip {
>  	INV_CHIP_NB,
>  };
>  
> +/* serial bus slew rates */
> +enum inv_icm42607_slew_rate {
> +	INV_ICM42607_SLEW_RATE_20_60NS,
> +	INV_ICM42607_SLEW_RATE_12_36NS,
> +	INV_ICM42607_SLEW_RATE_6_18NS,
> +	INV_ICM42607_SLEW_RATE_4_12NS,
> +	INV_ICM42607_SLEW_RATE_2_6NS,
> +	INV_ICM42607_SLEW_RATE_INF_2NS,
> +};
> +
>  enum inv_icm42607_sensor_mode {
>  	INV_ICM42607_SENSOR_MODE_OFF,
>  	INV_ICM42607_SENSOR_MODE_STANDBY,
> @@ -413,6 +424,9 @@ struct inv_icm42607_sensor_state {
>  
>  typedef int (*inv_icm42607_bus_setup)(struct inv_icm42607_state *);
>  
> +extern const struct regmap_config inv_icm42607_regmap_config;
> +extern const struct dev_pm_ops inv_icm42607_pm_ops;
> +
>  u32 inv_icm42607_odr_to_period(enum inv_icm42607_odr odr);
>  
>  int inv_icm42607_debugfs_reg(struct iio_dev *indio_dev, unsigned int reg,
> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> index 6b7078387568..da04c820dab2 100644
> --- a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> @@ -12,12 +12,33 @@
>  #include <linux/interrupt.h>
>  #include <linux/irq.h>
>  #include <linux/regulator/consumer.h>
> +#include <linux/pm_runtime.h>
>  #include <linux/property.h>
>  #include <linux/regmap.h>
>  #include <linux/iio/iio.h>
>  
>  #include "inv_icm42607.h"
>  
> +static const struct regmap_range_cfg inv_icm42607_regmap_ranges[] = {
> +	{
> +		.name = "user bank",
> +		.range_min = 0x0000,
> +		.range_max = 0x00FF,
> +		.window_start = 0,
> +		.window_len = 0x0100,
> +	},
> +};
> +
> +const struct regmap_config inv_icm42607_regmap_config = {
> +	.reg_bits = 8,
> +	.val_bits = 8,
> +	.max_register = 0x00FF,
> +	.ranges = inv_icm42607_regmap_ranges,
> +	.num_ranges = ARRAY_SIZE(inv_icm42607_regmap_ranges),
> +	.cache_type = REGCACHE_NONE,
> +};
> +EXPORT_SYMBOL_NS_GPL(inv_icm42607_regmap_config, "IIO_ICM42607");

It would make more sense to include the regmap config in the first patch
since it is shared.

> +
>  struct inv_icm42607_hw {
>  	uint8_t whoami;
>  	const char *name;
> @@ -86,6 +107,62 @@ u32 inv_icm42607_odr_to_period(enum inv_icm42607_odr odr)
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
> +	val = INV_ICM42607_PWR_MGMT0_GYRO(gyro) |
> +	INV_ICM42607_PWR_MGMT0_ACCEL(accel);
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
> @@ -219,6 +296,10 @@ static int inv_icm42607_enable_vddio_reg(struct inv_icm42607_state *st)
>  static void inv_icm42607_disable_vddio_reg(void *_data)
>  {
>  	struct inv_icm42607_state *st = _data;
> +	struct device *dev = regmap_get_device(st->map);
> +
> +	if (pm_runtime_status_suspended(dev))
> +		return;
>  
>  	regulator_disable(st->vddio_supply);
>  }
> @@ -289,11 +370,134 @@ int inv_icm42607_core_probe(struct regmap *regmap, int chip,
>  
>  	/* Setup chip registers (includes WHOAMI check, reset check, bus setup) */
>  	ret = inv_icm42607_setup(st, bus_setup);
> +	if (ret)
> +		return ret; /* Return error from setup (e.g., WHOAMI fail) */
> +
> +	/* Setup runtime power management */

Would add a blank line here if this is meant to apply to more than the
following line. Otherwise it doesn't add much.

> +	ret = devm_pm_runtime_set_active_enabled(dev);
> +	if (ret)
> +		return ret;
> +
> +	pm_runtime_set_autosuspend_delay(dev, INV_ICM42607_SUSPEND_DELAY_MS);
> +	pm_runtime_use_autosuspend(dev);
>  
>  	return ret;
>  }
>  EXPORT_SYMBOL_NS_GPL(inv_icm42607_core_probe, "IIO_ICM42607");
>  

...

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c
> new file mode 100644
> index 000000000000..eb72973debc5
> --- /dev/null
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c
> @@ -0,0 +1,93 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (C) 2026 InvenSense, Inc.
> + */
> +
> +#include <linux/kernel.h>
> +#include <linux/device.h>
> +#include <linux/module.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/i2c.h>
> +#include <linux/regmap.h>
> +#include <linux/property.h>
> +
> +#include "inv_icm42607.h"
> +
> +static int inv_icm42607_i2c_bus_setup(struct inv_icm42607_state *st)
> +{
> +	unsigned int mask, val;
> +	int ret;
> +
> +	ret = regmap_update_bits(st->map, INV_ICM42607_REG_INTF_CONFIG1,
> +				 INV_ICM42607_INTF_CONFIG1_I3C_DDR_EN |
> +				 INV_ICM42607_INTF_CONFIG1_I3C_SDR_EN, 0);

regmap_clear_bits()

> +	if (ret)
> +		return ret;
> +
> +	mask = INV_ICM42607_DRIVE_CONFIG2_I2C_MASK;

Local mask variable isn't helping much.

> +	val = INV_ICM42607_DRIVE_CONFIG2_I2C(INV_ICM42607_SLEW_RATE_12_36NS);
> +	ret = regmap_update_bits(st->map, INV_ICM42607_REG_DRIVE_CONFIG2,
> +				 mask, val);
> +	if (ret)
> +		return ret;
> +
> +	return regmap_update_bits(st->map, INV_ICM42607_REG_INTF_CONFIG0,
> +				  INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_MASK,
> +				  INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_SPI_DIS);
> +}
> +
> +static int inv_icm42607_probe(struct i2c_client *client)
> +{
> +	const void *match;
> +	enum inv_icm42607_chip chip;
> +	struct regmap *regmap;
> +
> +	if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_I2C_BLOCK))
> +		return -EOPNOTSUPP;
> +
> +	match = device_get_match_data(&client->dev);

Should be i2c_get_match_data(). And we recently decided to standardize
on not checking for NULL return.

> +	if (!match)
> +		return -EINVAL;
> +	chip = (uintptr_t)match;
> +
> +	regmap = devm_regmap_init_i2c(client, &inv_icm42607_regmap_config);
> +	if (IS_ERR(regmap))
> +		return PTR_ERR(regmap);
> +
> +	return inv_icm42607_core_probe(regmap, chip, inv_icm42607_i2c_bus_setup);
> +}
> +
> +static const struct i2c_device_id inv_icm42607_id[] = {
> +	{ "icm42607", INV_CHIP_ICM42607 },
> +	{ "icm42607p", INV_CHIP_ICM42607P },
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(i2c, inv_icm42607_id);
> +
> +static const struct of_device_id inv_icm42607_of_matches[] = {
> +	{
> +		.compatible = "invensense,icm42607",
> +		.data = (void *)INV_CHIP_ICM42607,
> +	}, {
> +		.compatible = "invensense,icm42607p",
> +		.data = (void *)INV_CHIP_ICM42607P,
> +	},
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(of, inv_icm42607_of_matches);
> +
> +static struct i2c_driver inv_icm42607_driver = {
> +	.driver = {
> +		.name = "inv-icm42607-i2c",
> +		.of_match_table = inv_icm42607_of_matches,
> +		.pm = pm_ptr(&inv_icm42607_pm_ops),
> +	},
> +	.id_table = inv_icm42607_id,
> +	.probe = inv_icm42607_probe,
> +};
> +module_i2c_driver(inv_icm42607_driver);
> +
> +MODULE_AUTHOR("InvenSense, Inc.");
> +MODULE_DESCRIPTION("InvenSense ICM-42607x I2C driver");
> +MODULE_LICENSE("GPL");
> +MODULE_IMPORT_NS("IIO_ICM42607");
> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c
> new file mode 100644
> index 000000000000..51ce3deeb706
> --- /dev/null
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c
> @@ -0,0 +1,100 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (C) 2026 InvenSense, Inc.
> + */
> +
> +#include <linux/kernel.h>
> +#include <linux/device.h>
> +#include <linux/module.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/spi/spi.h>
> +#include <linux/regmap.h>
> +#include <linux/property.h>
> +
> +#include "inv_icm42607.h"
> +
> +static int inv_icm42607_spi_bus_setup(struct inv_icm42607_state *st)
> +{
> +	unsigned int mask, val;
> +	int ret;
> +
> +	ret = regmap_update_bits(st->map, INV_ICM42607_REG_DEVICE_CONFIG,
> +				 INV_ICM42607_DEVICE_CONFIG_SPI_AP_4WIRE,
> +				 INV_ICM42607_DEVICE_CONFIG_SPI_AP_4WIRE);

regmap_set_bits()

> +	if (ret)
> +		return ret;
> +
> +	ret = regmap_update_bits(st->map, INV_ICM42607_REG_INTF_CONFIG1,
> +				 INV_ICM42607_INTF_CONFIG1_I3C_DDR_EN |
> +				 INV_ICM42607_INTF_CONFIG1_I3C_SDR_EN, 0);

regmap_clear_bits()

> +	if (ret)
> +		return ret;
> +
> +	mask = INV_ICM42607_DRIVE_CONFIG3_SPI_MASK;
> +	val = INV_ICM42607_DRIVE_CONFIG3_SPI(INV_ICM42607_SLEW_RATE_INF_2NS);
> +	ret = regmap_update_bits(st->map, INV_ICM42607_REG_DRIVE_CONFIG3,
> +				 mask, val);
> +	if (ret)
> +		return ret;
> +
> +	return regmap_update_bits(st->map, INV_ICM42607_REG_INTF_CONFIG0,
> +				  INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_MASK,
> +				  INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_I2C_DIS);
> +}
> +
> +static int inv_icm42607_probe(struct spi_device *spi)
> +{
> +	const void *match;
> +	enum inv_icm42607_chip chip;
> +	struct regmap *regmap;
> +
> +	match = device_get_match_data(&spi->dev);
> +	if (!match)
> +		return -EINVAL;

Should be spi_get_device_match_data(). And we recently decided to standardize
on not checking for NULL return.

> +	chip = (uintptr_t)match;

uintptr_t is frowned upon in the kernel. Stick with kernel_ulong_t.

> +
> +	regmap = devm_regmap_init_spi(spi, &inv_icm42607_regmap_config);
> +	if (IS_ERR(regmap))
> +		return dev_err_probe(&spi->dev, PTR_ERR(regmap),
> +				     "Failed to register spi regmap %ld\n",
> +				     PTR_ERR(regmap));
> +
> +	return inv_icm42607_core_probe(regmap, chip,
> +				       inv_icm42607_spi_bus_setup);
> +}
> +
> +static const struct of_device_id inv_icm42607_of_matches[] = {
> +	{
> +		.compatible = "invensense,icm42607",
> +		.data = (void *)INV_CHIP_ICM42607,
> +	},
> +	{
> +		.compatible = "invensense,icm42607p",
> +		.data = (void *)INV_CHIP_ICM42607P,
> +	},
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(of, inv_icm42607_of_matches);
> +
> +static const struct spi_device_id inv_icm42607_spi_id_table[] = {
> +	{ "icm42607", INV_CHIP_ICM42607 },
> +	{ "icm42607p", INV_CHIP_ICM42607P },
> +	{ },

No trailing comma.

> +};
> +MODULE_DEVICE_TABLE(spi, inv_icm42607_spi_id_table);
> +
> +static struct spi_driver inv_icm42607_driver = {
> +	.driver = {
> +		.name = "inv-icm42607-spi",
> +		.of_match_table = inv_icm42607_of_matches,
> +		.pm = &inv_icm42607_pm_ops,
> +	},
> +	.id_table = inv_icm42607_spi_id_table,
> +	.probe = inv_icm42607_probe,
> +};
> +module_spi_driver(inv_icm42607_driver);
> +
> +MODULE_AUTHOR("InvenSense, Inc.");
> +MODULE_DESCRIPTION("InvenSense ICM-42607x SPI driver");
> +MODULE_LICENSE("GPL");
> +MODULE_IMPORT_NS("IIO_ICM42607");


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
