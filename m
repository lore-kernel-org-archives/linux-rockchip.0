Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E508AF45A12
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Apr 2026 22:59:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fOIwpBFq6Ve4WFnkLJ07fjyxBtTml8w7lrNPdO179DU=; b=bWoh/TvAfpcZtJ
	plbfBi2zlbDNwObNJAXnLyB6ruffezZNabOtfGuNEeZfhT4fzQ6MUqgrKhp/ukJfUYieyIzLLugx5
	nAaMxH8X5vDOkuj88zUliIVqazhvFzVQKW21qFOfuicIGAhps9aGsAnogumvmopPvCu780VLJNU5v
	FCgyIcPJjjHhIVznjj+BDoL6XXPRlsjQjxEqcYdwbTrZ8HJ0R5Lkrkm/Gmk4jnOuACAOvncIoAQtp
	TOR4lP5DXMOlJTCzxPjgPcV0o1nyFaopVornbodY90sEV5vMY1OzVEK48YB+H/17SaHp9AxIm2ZEe
	2p+Tpl44fJUHZjPOaF8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBKoi-0000000Cu9W-12s5;
	Fri, 10 Apr 2026 22:59:12 +0000
Received: from mail-ot1-x331.google.com ([2607:f8b0:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBKoe-0000000Cu95-1Ulu
	for linux-rockchip@lists.infradead.org;
	Fri, 10 Apr 2026 22:59:10 +0000
Received: by mail-ot1-x331.google.com with SMTP id 46e09a7af769-7dbec19732eso2370740a34.3
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Apr 2026 15:59:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20251104.gappssmtp.com; s=20251104; t=1775861947; x=1776466747; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=c5uotYa64SkY0JJQXrtFnEms1wBEHD+5UDUHdnuEME8=;
        b=Ro0Lbtpd/1/P8PVJsQ0Sx51zESA9UPTOJfCLmVMYy/ClXOnsSR10cwX4tHNcOYnZJy
         CCc5SjbD9hlS32pQDDDsCFTEJL5vkphSec/hTsa1LxB4vnf7F/Ug7UNfeABeyqW6t7wy
         bzmoe8ERcwP5Cw7I1mb8w0p7NY6qbCW2VFiD7VcCx29Ab2XoagRiKuBJsV+m14/KWC7m
         sOuCuzKRPT7Ye2OuFYL3wLmzd8gY4Rbqvp+/+ufV7FRekK2cclwurTsby52GHhRzKiuM
         z5pMvSZxvsQGXgUao3PNBGmDRS1xTpjfW+uTce01+k9n+16meREdsaT1xJIgNlSD+qu3
         d3uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775861947; x=1776466747;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c5uotYa64SkY0JJQXrtFnEms1wBEHD+5UDUHdnuEME8=;
        b=m0lV0mWJV0Ro/OwV95xEsCGmD+AfZcFH7VyAQjRq6IdFTGh3jydRKWc9aA8CrY9gwm
         3YaTptCuNeyM3Bw4Jrd9Ypbv07+AEP2CWt5h8EeKEWWzSfU5ZP3dbCPu3LE4AGIR+PTO
         bDd+2Co+/b0Eg1py+ej2iGtBagcOByDipSPLjBMpIZUIYHPL5k2r62FPyC1b2UxLhUs4
         cLGKJhTF5Lj81GMyWSeiNbpac7W5My7hXB3jirDYBru9xmf59pNTcCYMkxVUAR7UQv2q
         XRzTByEvTNqXONuxAnpsusr1F2NfH2To+jx474A/IimhgzNM3dQYKjDIlfdTC6N7fGUD
         azng==
X-Forwarded-Encrypted: i=1; AJvYcCUO+duSPyJQopFhGEKUW85TP10f8XgGA0bmFb9PJhG+bkNXw7vwfSbrzm/eyS5HSqFNkM/7H85CKup/hyJy+g==@lists.infradead.org
X-Gm-Message-State: AOJu0YxAPaWmwu8wzzJgJt5uNg+gh05u1A4SImJ9Xbxx/obo339r1uas
	60gMAI98/rfWihG5rCydb5VKcchW2kIqeyni3SyyrhitT+eehUWg3CvV28r9YxDaOPU=
X-Gm-Gg: AeBDieu/F84vbxB1JWbkMwOIb5R+Fqj5yhIyFA9iBkhoqcPjzKVrULuBRvtOgN/qd4z
	xcxO2b/P+HvqnqfgFu/jflhwdjMDPv1h8Iuc3ahMaw4blRsq5flptc6q7gc811kc9Jj3o2VYsyh
	f7QkAhfAwUfqfrKWzstywSCr4/ZA01Fv92MTvFAvWiVlN8NRJ5CIlLAC3+N6wTy9wEN7/gn2sRB
	uhaY9/ATWn3p2wn/fttQD6lTolad9NIPTRRlFZ1GckoxMehUU9PRnkbfklPYkw5ZFj277uRDmIS
	Mykm8wHLfN6deHqMrXdvUCjSIjFR87wJ6TRmZZReLh0o7T85ZWPDglf1xL8jCl6q65AREU0GObX
	1flD6MHJBdFiO5lAM849u1katY6a2OHKSbnvjHzRDVaTy84N7RZbMSZhZrDKYI3NmQug1qv8AsS
	guTGbmaCo61fmuyiBRayx2Sb9V4+/TfTw9NQ3gHp7ARhNgwmk+azEREGRFWzrDRHFUxTrwepLLJ
	D+iJ6CdIoaI
X-Received: by 2002:a05:6830:67d8:b0:7d7:f5d5:1916 with SMTP id 46e09a7af769-7dc27e160bfmr3391264a34.11.1775861946942;
        Fri, 10 Apr 2026 15:59:06 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:b75d:2440:dc10:808b? ([2600:8803:e7e4:500:b75d:2440:dc10:808b])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7dc2d1aca3asm1861163a34.6.2026.04.10.15.59.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Apr 2026 15:59:06 -0700 (PDT)
Message-ID: <f1ae57fe-1ad5-46ee-9f0c-245f4deec7ce@baylibre.com>
Date: Fri, 10 Apr 2026 17:59:05 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 6/9] iio: imu: inv_icm42607: Add Accelerometer for
 icm42607
To: Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org
Cc: andy@kernel.org, nuno.sa@analog.com, jic23@kernel.org,
 jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, andriy.shevchenko@intel.com,
 Chris Morgan <macromorgan@hotmail.com>
References: <20260330195853.392877-1-macroalpha82@gmail.com>
 <20260330195853.392877-7-macroalpha82@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260330195853.392877-7-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260410_155908_694126_8BFB6BD8 
X-CRM114-Status: GOOD (  25.49  )
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
> Add icm42607 accelerometer sensor for icm42607.
> 

...

> +static const unsigned long inv_icm42607_accel_scan_masks[] = {
> +	/* 3-axis accel + temperature */
> +	INV_ICM42607_SCAN_MASK_ACCEL_3AXIS | INV_ICM42607_SCAN_MASK_TEMP,

This is going to make it so that the temperature channel is always read
even if it isn't enabled and additional work is needed when pushing to
buffers to remove it again.

It looks like it is possible to read accel and temp separatly, so
there shuold be two more lines here,

	INV_ICM42607_SCAN_MASK_ACCEL_3AXIS,
	INV_ICM42607_SCAN_MASK_TEMP,

I forget what the correct order is though.

> +	0,
> +};
> +
> +/* enable accelerometer sensor and FIFO write */
> +static int inv_icm42607_accel_update_scan_mode(struct iio_dev *indio_dev,
> +					       const unsigned long *scan_mask)
> +{
> +	struct inv_icm42607_state *st = iio_device_get_drvdata(indio_dev);
> +	struct inv_icm42607_sensor_state *accel_st = iio_priv(indio_dev);
> +	struct inv_icm42607_sensor_conf conf = INV_ICM42607_SENSOR_CONF_INIT;
> +	unsigned int fifo_en = 0;
> +	unsigned int sleep_temp = 0;
> +	unsigned int sleep_accel = 0;
> +	unsigned int sleep;
> +	int ret;
> +
> +	mutex_lock(&st->lock);
> +
> +	if (*scan_mask & INV_ICM42607_SCAN_MASK_TEMP) {
> +		/* enable temp sensor */
> +		ret = inv_icm42607_set_temp_conf(st, true, &sleep_temp);
> +		if (ret)
> +			goto out_unlock;
> +		fifo_en |= INV_ICM42607_SENSOR_TEMP;
> +	}
> +
> +	if (*scan_mask & INV_ICM42607_SCAN_MASK_ACCEL_3AXIS) {
> +		/* enable accel sensor */
> +		conf.mode = accel_st->power_mode;
> +		conf.filter = accel_st->filter;
> +		ret = inv_icm42607_set_accel_conf(st, &conf, &sleep_accel);
> +		if (ret)
> +			goto out_unlock;
> +		fifo_en |= INV_ICM42607_SENSOR_ACCEL;
> +	}
> +
> +	/* update data FIFO write */
> +	ret = inv_icm42607_buffer_set_fifo_en(st, fifo_en | st->fifo.en);
> +
> +out_unlock:
> +	mutex_unlock(&st->lock);
> +	/* sleep maximum required time */

Would be better if the comment explain _why_ we need to sleep.

The code is pretty obvious that it does what the comment says, so
it doesn't add much.

> +	sleep = max(sleep_accel, sleep_temp);
> +	if (sleep)

Probably don't need the if here as msleep() should handle 0 without actually
sleeping.

> +		msleep(sleep);
> +	return ret;
> +}
> +
> +static int inv_icm42607_accel_read_sensor(struct iio_dev *indio_dev,
> +					  struct iio_chan_spec const *chan,
> +					  s16 *val)
> +{
> +	struct inv_icm42607_state *st = iio_device_get_drvdata(indio_dev);
> +	struct inv_icm42607_sensor_state *accel_st = iio_priv(indio_dev);
> +	struct device *dev = regmap_get_device(st->map);
> +	struct inv_icm42607_sensor_conf conf = INV_ICM42607_SENSOR_CONF_INIT;
> +	unsigned int reg;
> +	__be16 *data;
> +	int ret;
> +
> +	if (chan->type != IIO_ACCEL)
> +		return -EINVAL;
> +
> +	switch (chan->channel2) {
> +	case IIO_MOD_X:
> +		reg = INV_ICM42607_REG_ACCEL_DATA_X1;
> +		break;
> +	case IIO_MOD_Y:
> +		reg = INV_ICM42607_REG_ACCEL_DATA_Y1;
> +		break;
> +	case IIO_MOD_Z:
> +		reg = INV_ICM42607_REG_ACCEL_DATA_Z1;
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	PM_RUNTIME_ACQUIRE_AUTOSUSPEND(dev, pm);
> +	if (PM_RUNTIME_ACQUIRE_ERR(&pm))
> +		return -ENXIO;
> +
> +	guard(mutex)(&st->lock);
> +
> +	/* enable accel sensor */
> +	conf.mode = accel_st->power_mode;
> +	conf.filter = accel_st->filter;
> +	ret = inv_icm42607_set_accel_conf(st, &conf, NULL);
> +	if (ret)
> +		return ret;
> +
> +	/* read accel register data */
> +	data = (__be16 *)&st->buffer[0];
> +	ret = regmap_bulk_read(st->map, reg, data, sizeof(*data));
> +	if (ret)
> +		return ret;
> +
> +	*val = (int16_t)be16_to_cpup(data);

We don't use int16_t in the kernel (ideally). Stick with s16.

Although cast isn't needed here since val is already s16.

> +	if (*val == INV_ICM42607_DATA_INVALID)
> +		ret = -EINVAL;
> +
> +	return ret;
> +}
> +
> +/* IIO format int + nano */

Usually we make these 2-D arrays for readability and then cast to int * if needed.

> +static const int inv_icm42607_accel_scale[] = {
> +	/* +/- 16G => 0.004788403 m/s-2 */
> +	[2 * INV_ICM42607_ACCEL_FS_16G] = 0,
> +	[2 * INV_ICM42607_ACCEL_FS_16G + 1] = 4788403,
> +	/* +/- 8G => 0.002394202 m/s-2 */
> +	[2 * INV_ICM42607_ACCEL_FS_8G] = 0,
> +	[2 * INV_ICM42607_ACCEL_FS_8G + 1] = 2394202,
> +	/* +/- 4G => 0.001197101 m/s-2 */
> +	[2 * INV_ICM42607_ACCEL_FS_4G] = 0,
> +	[2 * INV_ICM42607_ACCEL_FS_4G + 1] = 1197101,
> +	/* +/- 2G => 0.000598550 m/s-2 */
> +	[2 * INV_ICM42607_ACCEL_FS_2G] = 0,
> +	[2 * INV_ICM42607_ACCEL_FS_2G + 1] = 598550,
> +};
> +

...

> +static int inv_icm42607_accel_read_calibbias(struct inv_icm42607_state *st,
> +					     struct iio_chan_spec const *chan,
> +					     int *val, int *val2)
> +{
> +	/* Not actually supported in the ICM-42607P registers */
> +	return -EOPNOTSUPP;
> +}

Can we just not create the attribute instead of returning an error?


> +static int inv_icm42607_accel_write_raw_get_fmt(struct iio_dev *indio_dev,
> +						struct iio_chan_spec const *chan,
> +						long mask)
> +{
> +	if (chan->type != IIO_ACCEL)
> +		return -EINVAL;
> +
> +	switch (mask) {
> +	case IIO_CHAN_INFO_SCALE:
> +		return IIO_VAL_INT_PLUS_NANO;
> +	case IIO_CHAN_INFO_SAMP_FREQ:
> +		return IIO_VAL_INT_PLUS_MICRO;
> +	case IIO_CHAN_INFO_CALIBBIAS:
> +		return IIO_VAL_INT_PLUS_MICRO;

Can write this as:

	case IIO_CHAN_INFO_SAMP_FREQ:
	case IIO_CHAN_INFO_CALIBBIAS:
		return IIO_VAL_INT_PLUS_MICRO;

> +	default:
> +		return -EINVAL;
> +	}
> +}
> +

...

> +int inv_icm42607_set_accel_conf(struct inv_icm42607_state *st,
> +				struct inv_icm42607_sensor_conf *conf,
> +				unsigned int *sleep_ms)
> +{
> +	struct inv_icm42607_sensor_conf *oldconf = &st->conf.accel;
> +	unsigned int val;
> +	int ret;
> +
> +	if (conf->mode < 0)
> +		conf->mode = oldconf->mode;
> +	if (conf->fs < 0)
> +		conf->fs = oldconf->fs;
> +	if (conf->odr < 0)
> +		conf->odr = oldconf->odr;
> +	if (conf->filter < 0)
> +		conf->filter = oldconf->filter;
> +
> +	if (conf->fs != oldconf->fs || conf->odr != oldconf->odr) {

We could use the regmap cache feature to avoid having to manual keep
track of old values. Or just always write the same values anyway. I
find that is nice when debugging hardware with a logic analyzer. Unless
there is some measureable performance improvlment here?

> +		val = INV_ICM42607_ACCEL_CONFIG0_FS_SEL(conf->fs) |
> +		INV_ICM42607_ACCEL_CONFIG0_ODR(conf->odr);
> +		ret = regmap_write(st->map, INV_ICM42607_REG_ACCEL_CONFIG0, val);
> +		if (ret)
> +			return ret;
> +		oldconf->fs = conf->fs;
> +		oldconf->odr = conf->odr;
> +	}
> +
> +	if (conf->filter != oldconf->filter) {
> +		if (conf->mode == INV_ICM42607_SENSOR_MODE_LOW_POWER) {
> +			val = INV_ICM42607_ACCEL_CONFIG1_AVG(conf->filter);
> +			ret = regmap_update_bits(st->map, INV_ICM42607_REG_ACCEL_CONFIG1,
> +						 INV_ICM42607_ACCEL_CONFIG1_AVG_MASK, val);
> +		} else {
> +			val = INV_ICM42607_ACCEL_CONFIG1_FILTER(conf->filter);
> +			ret = regmap_update_bits(st->map, INV_ICM42607_REG_ACCEL_CONFIG1,
> +						 INV_ICM42607_ACCEL_CONFIG1_FILTER_MASK, val);
> +		}
> +		if (ret)
> +			return ret;
> +		oldconf->filter = conf->filter;
> +	}
> +
> +	return inv_icm42607_set_pwr_mgmt0(st, st->conf.gyro.mode, conf->mode,
> +					  st->conf.temp_en, sleep_ms);
> +}
> +

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
