Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 291ADC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jul 2024 14:16:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=18BQ08y2IJwDXsH0Kde/bz/uCtFBE2rxSfDOf6uSu8g=; b=Fx+/T5Pz8XPnuG
	nExmQJg/N3P3iVmvG5rKhNST92lNzevqd5VL9Dv7G1p49F4qZpm6jrtgR/E15PnR6wxQkGARX30BX
	Je233LvtdAMRpqROJoQroVJXcUeabm+/7PefJAvxMbisLQf5aMNnvxKJkydxOVS8xdDpd0Mi+naAM
	t/4x0P6cZhKufJo/NnP2ij1bjpHcQsZiitHkgSOKluqPbfQa4mFAPQmSSPsLSTvdH8nHOjt6eCimo
	TOKxsr/MOvGS5LvnnZzSFzmZ8KYcx7cnnJHKR0qxg5iZYdoANxsD6U6U+Ynz7bDEpIgSj7a5rfiLT
	PJ6toHSQfNqWCJKRi0hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXLk7-000000047La-00xs;
	Fri, 26 Jul 2024 14:16:23 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXLjg-000000047GG-36Ha;
	Fri, 26 Jul 2024 14:15:58 +0000
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-70d357040dbso884569b3a.1;
        Fri, 26 Jul 2024 07:15:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722003355; x=1722608155; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=IcU42lVW/EMANVHaPbsQ+AOUlbgahzpVYlZNTt0gz3c=;
        b=cobG8Te9RmvLw3o9N7Ru6SU+kJ1T+bFfX1tsqRJmtlUqKIvhXjAi+0VlGFo6xW7UDf
         MwCVmu+EwN0BY5GmBWKsmmWWtJK+mUXoxLbmHCCO43vT1RgpayGHtE3bHTPMI9NOABmo
         VmFyhG8sDSjJOuMgwOMly015uxxdi0lnRnd2+c8lDZ/w6YM4KjZG6W/VJBxA0Dbd+0rF
         wtYnMx+t83Md/LbyT4ierF3vmtS7WWQ5WDmXp2FUoFyit2f5rf0hLTrnp8eorg5GA5JJ
         ydahicgHc9Yc5c0+zFtD3RCiM/g1krilLabxq/mCx0Ae29GylMHGhoMRa1isRseCDkbr
         kC5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722003355; x=1722608155;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IcU42lVW/EMANVHaPbsQ+AOUlbgahzpVYlZNTt0gz3c=;
        b=tAoBe/YsHS8SNUNHy6LFcjRg+G8YLhj45hCH6rQ5j3IwWVtd86WD+hHzBwaO7oSHti
         VmfrrA39N4DQyTmZRkWUnSvH3qqWybC8dr1eJQNlKLxGBeRSbZCffWmsc1unJwv/M2Gv
         Ezu63UiAX3ne/yhwIIymvRDuTDG5oGjnw8eP6HAu6IyWVn18b4bQedACqHYR58TxR8z6
         ZmzgU1hf1aIhBe8RQeH427bMmOxuuX0Y5Zd/uTnzOuMfh8unC5evA9cp7lAVX0CUE6HR
         nBtiviKPtYOkwu9tKLDNbc86HkoK1NGrwjsGbFT2Y6Ryp9QsRkGZB/it1HBcNAiC1qTO
         27Rw==
X-Forwarded-Encrypted: i=1; AJvYcCVwf7yv40HJ5PSYYEXNbG/QqJnXdgGOT9FqextfVGSlvB7DEJjqZN3bNNvpJvP84I7p6fltqG+8RHbEzYstwZotP0AdMNq/l9m4W6KLzKnmp0Tqhumd+TjKn4CUiTA9cRPgD4VX22syz97Y8rGezbvt6HG9B0vvfNc=
X-Gm-Message-State: AOJu0YzMsmphL674f0k91/LToXJteMhZfnkRWES1nUfzRvmW8kn87uVl
	6AoZ0O0cOxeU4fF4Oxr0UEZlc3wccApP0fWa1nVxyqfYssjWt2VM
X-Google-Smtp-Source: AGHT+IFHRgLy6fU2tz6dkC8CEuix85D6d1Htj4b3oD6BeYcL6dUKIQ0gxO+L9DALAoPyqXUn0jsW2g==
X-Received: by 2002:a05:6a21:9688:b0:1c1:61a9:de4a with SMTP id adf61e73a8af0-1c472acd1camr6581243637.24.1722003354706;
        Fri, 26 Jul 2024 07:15:54 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c? ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7a9f7b7b08dsm2828561a12.19.2024.07.26.07.15.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Jul 2024 07:15:53 -0700 (PDT)
Message-ID: <9572496f-f6b8-4f66-b084-de7644ea60a8@roeck-us.net>
Date: Fri, 26 Jul 2024 07:15:50 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/7] hwmon: add driver for the hwmon parts of qnap-mcu
 devices
To: Heiko Stuebner <heiko@sntech.de>, lee@kernel.org, jdelvare@suse.com,
 dmitry.torokhov@gmail.com, pavel@ucw.cz
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 ukleinek@debian.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-hwmon@vger.kernel.org,
 linux-input@vger.kernel.org, linux-leds@vger.kernel.org
References: <20240725194539.1780790-1-heiko@sntech.de>
 <20240725194539.1780790-6-heiko@sntech.de>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
In-Reply-To: <20240725194539.1780790-6-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240726_071556_832322_888DD323 
X-CRM114-Status: GOOD (  40.07  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 7/25/24 12:45, Heiko Stuebner wrote:
> The MCU can be found on network-attached-storage devices made by QNAP
> and provides access to fan control including reading back its RPM as
> well as reading the temperature of the NAS case.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

checkpatch --strict:

total: 0 errors, 1 warnings, 9 checks, 377 lines checked

Te warning is about the MAINTAINERS file, which is your call,
but please fix the check messages.

That does make me wonder, though. It looks like you don't plan to sign up
to maintain this code. What do you expect to happen with it after it
has been accepted ?

> ---
>   drivers/hwmon/Kconfig          |  12 ++
>   drivers/hwmon/Makefile         |   1 +
>   drivers/hwmon/qnap-mcu-hwmon.c | 352 +++++++++++++++++++++++++++++++++

Documentation (Documentation/hwmon/...) missing.

>   3 files changed, 365 insertions(+)
>   create mode 100644 drivers/hwmon/qnap-mcu-hwmon.c
> 
> diff --git a/drivers/hwmon/Kconfig b/drivers/hwmon/Kconfig
> index e14ae18a973b3..87b6ee463a967 100644
> --- a/drivers/hwmon/Kconfig
> +++ b/drivers/hwmon/Kconfig
> @@ -1806,6 +1806,18 @@ config SENSORS_PWM_FAN
>   	  This driver can also be built as a module. If so, the module
>   	  will be called pwm-fan.
>   
> +config SENSORS_QNAP_MCU_HWMON
> +	tristate "QNAP MCU hardware monitoring"
> +	depends on MFD_QNAP_MCU
> +	depends on THERMAL || THERMAL=n
> +	help
> +	  Say yes here to enable support for fans and temperatures sensors

s/temperatures/temperature/

> +	  connected to a QNAP MCU, as found in a number of QNAP network
> +	  attached storage devices.
> +
> +	  This driver can also be built as a module. If so, the module
> +	  will be called qnap-mcu-hwmon.
> +
>   config SENSORS_RASPBERRYPI_HWMON
>   	tristate "Raspberry Pi voltage monitor"
>   	depends on RASPBERRYPI_FIRMWARE || (COMPILE_TEST && !RASPBERRYPI_FIRMWARE)
> diff --git a/drivers/hwmon/Makefile b/drivers/hwmon/Makefile
> index e3f25475d1f04..b72c6a059e4af 100644
> --- a/drivers/hwmon/Makefile
> +++ b/drivers/hwmon/Makefile
> @@ -188,6 +188,7 @@ obj-$(CONFIG_SENSORS_POWERZ)	+= powerz.o
>   obj-$(CONFIG_SENSORS_POWR1220)  += powr1220.o
>   obj-$(CONFIG_SENSORS_PT5161L)	+= pt5161l.o
>   obj-$(CONFIG_SENSORS_PWM_FAN)	+= pwm-fan.o
> +obj-$(CONFIG_SENSORS_QNAP_MCU_HWMON)	+= qnap-mcu-hwmon.o
>   obj-$(CONFIG_SENSORS_RASPBERRYPI_HWMON)	+= raspberrypi-hwmon.o
>   obj-$(CONFIG_SENSORS_SBTSI)	+= sbtsi_temp.o
>   obj-$(CONFIG_SENSORS_SBRMI)	+= sbrmi.o
> diff --git a/drivers/hwmon/qnap-mcu-hwmon.c b/drivers/hwmon/qnap-mcu-hwmon.c
> new file mode 100644
> index 0000000000000..c4925ece165e2
> --- /dev/null
> +++ b/drivers/hwmon/qnap-mcu-hwmon.c
> @@ -0,0 +1,352 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +/*
> + * Driver for hwmon elements found on QNAP-MCU devices
> + *
> + * Copyright (C) 2024 Heiko Stuebner <heiko@sntech.de>
> + */
> +
> +#include <linux/module.h>
> +#include <linux/hwmon.h>
> +#include <linux/mfd/qnap-mcu.h>
> +#include <linux/platform_device.h>
> +#include <linux/property.h>
> +#include <linux/thermal.h>
> +
> +struct qnap_mcu_hwmon {
> +	struct qnap_mcu *mcu;
> +	struct device *dev;
> +
> +	unsigned int pwm_min;
> +	unsigned int pwm_max;
> +
> +	unsigned int pwm_value;
> +	bool pwm_enabled;
> +
> +	unsigned int fan_state;
> +	unsigned int fan_max_state;
> +	unsigned int *fan_cooling_levels;
> +
> +	struct thermal_cooling_device *cdev;
> +	struct hwmon_chip_info info;
> +};
> +
> +static int qnap_mcu_hwmon_get_rpm(struct qnap_mcu_hwmon *hwm)
> +{
> +	u8 cmd[] = {
> +		[0] = 0x40, /* @ */
> +		[1] = 0x46, /* F */
> +		[2] = 0x41  /* A */
> +	};

Can this be static ?

> +	u8 reply[6];
> +	int ret;
> +
> +	/* poll the fan rpm */
> +	ret = qnap_mcu_exec(hwm->mcu, cmd, sizeof(cmd), reply, sizeof(reply));
> +	if (ret)
> +		return ret;
> +
> +	/* First 2 bytes must mirror the sent command */
> +	if (memcmp(cmd, reply, 2)) {
> +		dev_err(hwm->dev, "malformed data received\n");

Pleas drop those error messages.

> +		return -EIO;
> +	}
> +
> +	return reply[4] * 450;
> +}
> +
> +static int qnap_mcu_hwmon_update_fan(struct qnap_mcu_hwmon *hwm)
> +{
> +	u8 cmd[] = {
> +		[0] = 0x40, /* @ */
> +		[1] = 0x46, /* F */
> +		[2] = 0x57, /* W */
> +		[3] = 0x30, /* 0 ... fan-id? */
> +		[4] = hwm->pwm_enabled ? hwm->pwm_value : 0

Per ABI, pwm_enabled == 0 is
		- 0: no fan speed control (i.e. fan at full speed)
This does the opposite.

I am not sure I understand the intent of pwm_enable.
It seems to me it is supposed to turn off the fan, which
is identical to just setting the pwm value to 0.
If so, why have this attribute in the first place ?

> +	};
> +
> +	/* poll the fan rpm */
> +	return qnap_mcu_exec_with_ack(hwm->mcu, cmd, sizeof(cmd));
> +}
> +
> +static int qnap_mcu_hwmon_get_temp(struct qnap_mcu_hwmon *hwm)
> +{
> +	u8 cmd[] = {
> +		[0] = 0x40, /* @ */
> +		[1] = 0x54, /* T */
> +		[2] = 0x33  /* 3 */
> +	};

static ?

> +	u8 reply[4];
> +	int ret;
> +
> +	/* poll the fan rpm */
> +	ret = qnap_mcu_exec(hwm->mcu, cmd, sizeof(cmd), reply, sizeof(reply));
> +	if (ret)
> +		return ret;
> +
> +	/* First bytes must mirror the sent command */
> +	if (memcmp(cmd, reply, sizeof(cmd))) {
> +		dev_err(hwm->dev, "malformed data received\n");

Same as above.

> +		return -EIO;
> +	}
> +
> +	/*
> +	 * There is an unknown bit set in bit7.
> +	 * Bits [6:0] report the actual temperature as returned by the
> +	 * original qnap firmware-tools, so just drop bit7 for now.
> +	 */
> +	return reply[3] & 0x7f;
> +}
> +
> +static int qnap_mcu_hwmon_write(struct device *dev, enum hwmon_sensor_types type,
> +			 u32 attr, int channel, long val)
> +{
> +	struct qnap_mcu_hwmon *hwm = dev_get_drvdata(dev);
> +
> +	switch (attr) {
> +	case hwmon_pwm_input:
> +		if (val < hwm->pwm_min || val > hwm->pwm_max)
> +			return -EINVAL;
> +

I'd suggest to bail out if the value is outside (0, 255) and then
clamp to (pwm_min, pwm_max). Users of the API are expected to know that
pwm values are between 0 and 255, but not what the actual value range is.

> +		hwm->pwm_value = val;
> +		return qnap_mcu_hwmon_update_fan(hwm);
> +	case hwmon_pwm_enable:
> +		if (val < 0 || val > 1)
> +			return -EINVAL;
> +
> +		hwm->pwm_enabled = val;
> +		return qnap_mcu_hwmon_update_fan(hwm);
> +	default:
> +		return -EOPNOTSUPP;
> +	}
> +
> +	return 0;
> +}
> +
> +static int qnap_mcu_hwmon_read(struct device *dev, enum hwmon_sensor_types type,
> +			     u32 attr, int channel, long *val)
> +{
> +	struct qnap_mcu_hwmon *hwm = dev_get_drvdata(dev);
> +
> +	switch (type) {
> +	case hwmon_pwm:
> +		switch (attr) {
> +		case hwmon_pwm_input:
> +			*val = hwm->pwm_value;

This doesn't return a real pwm value. It returns the most recently configured
value, or 0 if no value was ever set. That makes me really unhappy. At the very least,
if it is indeed impossible to get the actual pwm value from the device, it needs to be
very clearly documented.

> +			return 0;
> +		case hwmon_pwm_enable:
> +			*val = hwm->pwm_enabled;
> +			return 0;

		default:
missing

> +		}
> +		return -EOPNOTSUPP;
> +	case hwmon_fan:
> +		*val = qnap_mcu_hwmon_get_rpm(hwm);

This returns errors as negative rpm values.

> +		return 0;
> +	case hwmon_temp:
> +		*val = qnap_mcu_hwmon_get_temp(hwm);

hwmon ABI expects the temperature in degrees C. This returns
a value between 0 and 0x7f, or in other words temperatures
between 0 and 0.127 degrees C. On top of that, it returns errors
as negative temperatures.

Your call how to fix this. Either
		ret = qnap_mcu_hwmon_get_temp(hwm);
		if (ret < 0)
			return ret;
		*val = ret * 1000;
		return 0;
or
		return qnap_mcu_hwmon_get_temp(hwm, val);

and implement the conversion and return value assignment in
qnap_mcu_hwmon_get_temp().

> +		return 0;
> +	default:
> +		return -EOPNOTSUPP;
> +	}
> +}
> +
> +static umode_t qnap_mcu_hwmon_is_visible(const void *data,
> +				       enum hwmon_sensor_types type,
> +				       u32 attr, int channel)
> +{
> +	switch (type) {
> +	case hwmon_temp:
> +		return 0444;
> +
> +	case hwmon_pwm:
> +		return 0644;
> +
> +	case hwmon_fan:
> +		return 0444;
> +
> +	default:
> +		return 0;
> +	}
> +}
> +
> +static const struct hwmon_ops qnap_mcu_hwmon_hwmon_ops = {
> +	.is_visible = qnap_mcu_hwmon_is_visible,
> +	.read = qnap_mcu_hwmon_read,
> +	.write = qnap_mcu_hwmon_write,
> +};
> +
> +/* thermal cooling device callbacks */
> +static int qnap_mcu_hwmon_get_max_state(struct thermal_cooling_device *cdev,
> +				      unsigned long *state)
> +{
> +	struct qnap_mcu_hwmon *hwm = cdev->devdata;
> +
> +	if (!hwm)
> +		return -EINVAL;
> +
> +	*state = hwm->fan_max_state;
> +
> +	return 0;
> +}
> +
> +static int qnap_mcu_hwmon_get_cur_state(struct thermal_cooling_device *cdev,
> +				      unsigned long *state)
> +{
> +	struct qnap_mcu_hwmon *hwm = cdev->devdata;
> +
> +	if (!hwm)
> +		return -EINVAL;
> +
> +	*state = hwm->fan_state;
> +
> +	return 0;
> +}
> +
> +static int qnap_mcu_hwmon_set_cur_state(struct thermal_cooling_device *cdev,
> +				      unsigned long state)
> +{
> +	struct qnap_mcu_hwmon *hwm = cdev->devdata;
> +	int ret;
> +
> +	if (!hwm || (state > hwm->fan_max_state))

Extra ( )

> +		return -EINVAL;
> +
> +	if (state == hwm->fan_state)
> +		return 0;
> +
> +	if (hwm->fan_cooling_levels[state]) {
> +		hwm->pwm_enabled = 1;
> +		hwm->pwm_value = hwm->fan_cooling_levels[state];
> +	} else {
> +		hwm->pwm_enabled = 0;
> +	}
> +
> +	ret = qnap_mcu_hwmon_update_fan(hwm);
> +	if (ret)
> +		return ret;
> +
> +	hwm->fan_state = state;
> +
> +	return ret;
> +}
> +
> +static const struct thermal_cooling_device_ops qnap_mcu_hwmon_cooling_ops = {
> +	.get_max_state = qnap_mcu_hwmon_get_max_state,
> +	.get_cur_state = qnap_mcu_hwmon_get_cur_state,
> +	.set_cur_state = qnap_mcu_hwmon_set_cur_state,
> +};
> +
> +static int qnap_mcu_hwmon_get_cooling_data(struct device *dev, struct qnap_mcu_hwmon *hwm)
> +{
> +	int num, i, ret;
> +
> +	if (!device_property_present(dev->parent, "cooling-levels"))
> +		return 0;
> +
> +	ret = device_property_count_u32(dev->parent, "cooling-levels");
> +	if (ret <= 0) {
> +		dev_err(dev, "Wrong data!\n");

That doesn't really mean anything to the user. Please refer to
'cooling-levels' like below.

> +		return ret ? : -EINVAL;
> +	}
> +
> +	num = ret;
> +	hwm->fan_cooling_levels = devm_kcalloc(dev, num, sizeof(u32),
> +						   GFP_KERNEL);
> +	if (!hwm->fan_cooling_levels)
> +		return -ENOMEM;
> +
> +	ret = device_property_read_u32_array(dev->parent, "cooling-levels",
> +					     hwm->fan_cooling_levels, num);
> +	if (ret) {
> +		dev_err(dev, "Property 'cooling-levels' cannot be read!\n");
> +		return ret;
> +	}
> +
> +	for (i = 0; i < num; i++) {
> +		if (hwm->fan_cooling_levels[i] > hwm->pwm_max) {
> +			dev_err(dev, "fan state[%d]:%d > %d\n", i,
> +				hwm->fan_cooling_levels[i], hwm->pwm_max);
> +			return -EINVAL;
> +		}
> +	}
> +
> +	hwm->fan_max_state = num - 1;
> +
> +	return 0;
> +}
> +
> +static const struct hwmon_channel_info * const qnap_mcu_hwmon_channels[] = {
> +	HWMON_CHANNEL_INFO(pwm, HWMON_PWM_INPUT | HWMON_PWM_ENABLE),
> +	HWMON_CHANNEL_INFO(fan, HWMON_F_INPUT),
> +	HWMON_CHANNEL_INFO(temp, HWMON_T_INPUT),
> +	NULL
> +};
> +
> +static int qnap_mcu_hwmon_probe(struct platform_device *pdev)
> +{
> +	struct qnap_mcu *mcu = dev_get_drvdata(pdev->dev.parent);
> +	const struct qnap_mcu_variant *variant = qnap_mcu_get_variant_data(mcu);
> +	struct qnap_mcu_hwmon *hwm;
> +	struct thermal_cooling_device *cdev;
> +	struct device *dev = &pdev->dev;
> +	struct device *hwmon;
> +	int ret;
> +
> +	hwm = devm_kzalloc(dev, sizeof(*hwm), GFP_KERNEL);
> +	if (!hwm)
> +		return -ENOMEM;
> +
> +	hwm->mcu = mcu;
> +	hwm->dev = &pdev->dev;
> +	hwm->pwm_min = variant->fan_pwm_min;
> +	hwm->pwm_max = variant->fan_pwm_max;
> +
> +	platform_set_drvdata(pdev, hwm);
> +
> +	/*
> +	 * Set duty cycle to maximum allowed and enable PWM output as well as
> +	 * the regulator. In case of error nothing is changed
> +	 */
> +	hwm->pwm_value = hwm->pwm_max;
> +	hwm->pwm_enabled = 1;
> +	qnap_mcu_hwmon_update_fan(hwm);
> +
> +	hwm->info.ops = &qnap_mcu_hwmon_hwmon_ops;
> +	hwm->info.info = qnap_mcu_hwmon_channels;
> +
> +	hwmon = devm_hwmon_device_register_with_info(dev, "qnapmcu",
> +						     hwm, &hwm->info, NULL);
> +	if (IS_ERR(hwmon))
> +		return dev_err_probe(dev, PTR_ERR(hwmon), "Failed to register hwmon device\n");
> +
> +	ret = qnap_mcu_hwmon_get_cooling_data(dev, hwm);
> +	if (ret)
> +		return ret;
> +

Please move ahead of hwmon device registration. It doesn't make sense to register
the hwmon device only to unregister it because of bad devicetree data.

> +	hwm->fan_state = hwm->fan_max_state;
> +
> +	if (IS_ENABLED(CONFIG_THERMAL)) {
> +		cdev = devm_thermal_of_cooling_device_register(dev,
> +				dev->parent->of_node, "qnap-mcu-hwmon",
> +				hwm, &qnap_mcu_hwmon_cooling_ops);

Does it make sense to register the cooling device even if there is no
cooling device data ?

> +		if (IS_ERR(cdev))
> +			return dev_err_probe(dev, PTR_ERR(cdev),
> +				"Failed to register qnap-mcu-hwmon as cooling device\n");
> +		hwm->cdev = cdev;
> +	}
> +
> +	return 0;
> +}
> +
> +static struct platform_driver qnap_mcu_hwmon_driver = {
> +	.probe = qnap_mcu_hwmon_probe,
> +	.driver = {
> +		.name = "qnap-mcu-hwmon",
> +	},
> +};
> +module_platform_driver(qnap_mcu_hwmon_driver);
> +
> +MODULE_ALIAS("platform:qnap-mcu-hwmon");
> +MODULE_AUTHOR("Heiko Stuebner <heiko@sntech.de>");
> +MODULE_DESCRIPTION("QNAP MCU hwmon driver");
> +MODULE_LICENSE("GPL");


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
