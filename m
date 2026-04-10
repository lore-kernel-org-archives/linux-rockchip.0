Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5ABB1F459E5
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Apr 2026 22:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B8fkJPdh8/gba0gD4cff9tH8f1yDYQcV6Aof+CC1qeU=; b=cad3kDOaU1knyt
	PZs4P76rX2lhRQhttGrvz8492dQjoLce9ANobgVObS8A3pdEIQa9/LltwuKLU5/NQ/Z+QMU4XKO7B
	ZhdPzyc/F32cW3kdHfdI7MeOFqAV/DKihsPlDlA2qbp7/65oy8AzWy1bLm+/D2R6f00KE8WmPAVJY
	/oJSmKyKohcyAGZ/rky1odk3GqJYKVSxdHTjzqnEPtcBO6Uzv9Xhpx/HgavQ899NHqcNDplWlWJMW
	LcVSVaHPhzwzl9b6F0YEx1tYYe587OUfvwNUwksoEBRSN52AqvJ3eNWfyTFNflKNjDgyvqfz+T+OB
	uhGlWrw+4ZQp0ub8Tjhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBJzT-0000000Cr2a-24Dk;
	Fri, 10 Apr 2026 22:06:15 +0000
Received: from mail-oo1-xc2a.google.com ([2607:f8b0:4864:20::c2a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBJzP-0000000Cr0j-3rAT
	for linux-rockchip@lists.infradead.org;
	Fri, 10 Apr 2026 22:06:14 +0000
Received: by mail-oo1-xc2a.google.com with SMTP id 006d021491bc7-66f747175d8so1280680eaf.0
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Apr 2026 15:06:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20251104.gappssmtp.com; s=20251104; t=1775858770; x=1776463570; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=j9076am4mzfnqKCXO40uzm6bV16grH8URJAf1spBMMo=;
        b=Ns60ze08xORIZ7eJkcajAvYxZ2THJ6SpSJi2NGaSAkEgqXuDQUyJKOpA54GNFLI44d
         Dw7LkzBSOoAQc+8uxDiU5GCWjxeWab0nniq6u/G9J61b/sml875vO1xuYpLGviArmHhD
         B38y01r6+UHt4vIFYogAxwHJqx/8kX9H1KWkWKnECewQr7Lw7xnNMNa/A0zwmRFdNYNq
         9rdFij1wMwCF4seWpzAxamws89kgciBb6hNJ+HcdwQZzqd8goYYy6Kv7wAYk24Q9o10B
         9cs2DVg8+xhvsaTJwJUFhAZeKIVJjogzGGNpUSR4YPnetBsbyTyXRbshll2Zb3zM9E28
         YxsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775858770; x=1776463570;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j9076am4mzfnqKCXO40uzm6bV16grH8URJAf1spBMMo=;
        b=Poax6ZrOyy0fCwvYfZriXT+xgBdKuwUei6NhYg1aBretKAggmFR6vFYafxSF3Go9n7
         cXTdM0RR+esILkE4UAoaObntPGGLyPHCVHUjwqhlQGibQlsium7xrZ8/o8oXS7XxcZDq
         iFqyoona6IyV7NOHA/BxtfoEdt4Sv/S7iUfdAYdBvUoWbGYeudkyr/SpZ0AngaU3nqSE
         5juK5mrx1uMkDnDGK4GU6ZR1DiZYZKaJaMyU37GqMU4/DhOs4dBLuW6Zkh1j8LNdSCTT
         99ts2I+9kOn7OTxjYJ73IZBF0tSfqAMatcp5/KCML48WbaomuqnYmppb6o8O90/GyNDy
         MQ1w==
X-Forwarded-Encrypted: i=1; AJvYcCX7pUzWeBO8lFqLm+BWpUFFXwZKYLnqUJqesGr3wiKVABizyHIVg31DpWYRVb3TIP2wZRvIiwFFTkpUUt49/A==@lists.infradead.org
X-Gm-Message-State: AOJu0YwtuDxtsJGrNOid4AUChqHZKk6I+gJb6sOCS/KiymNoyK1Zz9Hr
	1Al++qnHOGVklgnACyU1x5Uyib5yP3fj1x09tbjO6v7juhK7o//VeevYzdhKBHEdRCs=
X-Gm-Gg: AeBDiestsg6gLZULvtCukhg4+DMF38+EwuCaXkNbscNzHfdBiT2ZoFrRYlqWvQZbAsM
	GEdQ0pQcAKvGkmKGOfpYImPDsiIDNMhvDhwwcXSclDapVMdEjot1iJi5l8+xBoErx9CZXzkQoPo
	rBxP+GSGshRboorsEfsznjlEUizmVeqY7fel1Cl3/BBsfAio3n0L6agvK8ALIAqjCUwPAKOlLsH
	nsfaJocaHEalMfyky9hzDb4tLYbszsvNIsvUns/77QSmHVPkM945bNKEAecXRXsayv1uHelJeca
	Q/82CwpyiodHg2RopgBja+WR9EQ5TcW/PZ5U7tn+0Z6TGOVtkLT1AICYfgB7o27EW1m6Jl5NDcl
	UBPpd54YRypifnYqvegNzJ8GTyLbmcWUMsBu2k3BF3wlDbAxOY5KWV79rfIDY7AigMNNCcLOON6
	WUMSlWCmoX6VkERJUJTHnXOyIZ3c50yX2IS2wCwqqqUqX+1tdGdARqBcD5SxSaPQ7/7TI1B/z3m
	A==
X-Received: by 2002:a05:6820:f03:b0:687:d51c:e637 with SMTP id 006d021491bc7-68be5873460mr2265750eaf.7.1775858770102;
        Fri, 10 Apr 2026 15:06:10 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:b75d:2440:dc10:808b? ([2600:8803:e7e4:500:b75d:2440:dc10:808b])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-423ddb20c0fsm2980846fac.11.2026.04.10.15.06.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Apr 2026 15:06:09 -0700 (PDT)
Message-ID: <631f3adb-550a-4902-b6f2-5614cd79ab75@baylibre.com>
Date: Fri, 10 Apr 2026 17:06:08 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 2/9] iio: imu: inv_icm42607: Add Core for inv_icm42607
 Driver
To: Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org
Cc: andy@kernel.org, nuno.sa@analog.com, jic23@kernel.org,
 jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, andriy.shevchenko@intel.com,
 Chris Morgan <macromorgan@hotmail.com>
References: <20260330195853.392877-1-macroalpha82@gmail.com>
 <20260330195853.392877-3-macroalpha82@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260330195853.392877-3-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260410_150611_982738_C64F963E 
X-CRM114-Status: GOOD (  24.74  )
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
> Add the core component of a new inv_icm42607 driver. This includes
> a few setup functions and the full register definition in the
> header file.
> 
> +#define INV_ICM42607_REG_PWR_MGMT0			0x1F
> +#define INV_ICM42607_PWR_MGMT0_ACCEL_LP_CLK_SEL		BIT(7)
> +#define INV_ICM42607_PWR_MGMT0_IDLE			BIT(4)
> +#define INV_ICM42607_PWR_MGMT0_GYRO_MODE_MASK		GENMASK(3, 2)
> +#define INV_ICM42607_PWR_MGMT0_GYRO(_mode)		\
> +	FIELD_PREP(INV_ICM42607_PWR_MGMT0_GYRO_MODE_MASK, (_mode))

We usually try to avoid macros that hide FIELD_PREP(). IMHO, it makes
the code harder to read because you have to jump back and forth to
definitions to see if it really is that.

> +#define INV_ICM42607_PWR_MGMT0_ACCEL_MODE_MASK		GENMASK(1, 0)
> +#define INV_ICM42607_PWR_MGMT0_ACCEL(_mode)		\
> +	FIELD_PREP(INV_ICM42607_PWR_MGMT0_ACCEL_MODE_MASK, (_mode))
> +

...


> +u32 inv_icm42607_odr_to_period(enum inv_icm42607_odr odr)
> +{
> +	static u32 odr_periods[INV_ICM42607_ODR_NB] = {
> +		/* Reserved values */
> +		0, 0, 0, 0, 0,
> +		/* 1600Hz */
> +		625000,
> +		/* 800Hz */
> +		1250000,
> +		/* 400Hz */
> +		2500000,
> +		/* 200Hz */
> +		5000000,
> +		/* 100 Hz */
> +		10000000,
> +		/* 50Hz */
> +		20000000,
> +		/* 25Hz */
> +		40000000,
> +		/* 12.5Hz */
> +		80000000,
> +		/* 6.25Hz */
> +		160000000,
> +		/* 3.125Hz */
> +		320000000,
> +		/* 1.5625Hz */
> +		640000000,
> +	};

No range checking to avoid out-of-bouds access?

> +
> +	return odr_periods[odr];
> +}
> +
> +int inv_icm42607_debugfs_reg(struct iio_dev *indio_dev, unsigned int reg,
> +			     unsigned int writeval, unsigned int *readval)
> +{
> +	struct inv_icm42607_state *st = iio_device_get_drvdata(indio_dev);
> +
> +	guard(mutex)(&st->lock);
> +
> +	if (readval)
> +		return regmap_read(st->map, reg, readval);
> +
> +	return regmap_write(st->map, reg, writeval);
> +}
> +
> +static int inv_icm42607_set_conf(struct inv_icm42607_state *st,
> +				 const struct inv_icm42607_conf *conf)
> +{
> +	unsigned int val;
> +	int ret;
> +
> +	val = INV_ICM42607_PWR_MGMT0_GYRO(conf->gyro.mode) |
> +	INV_ICM42607_PWR_MGMT0_ACCEL(conf->accel.mode);

Indent wrapped lines one tab or line up with INV_ after `= `.

> +	/*
> +	 * No temperature enable reg in datasheet, but BSP driver
> +	 * selected RC oscillator clock in LP mode when temperature
> +	 * was disabled.
> +	 */
> +	if (!conf->temp_en)
> +		val |= INV_ICM42607_PWR_MGMT0_ACCEL_LP_CLK_SEL;
> +	ret = regmap_write(st->map, INV_ICM42607_REG_PWR_MGMT0, val);
> +	if (ret)
> +		return ret;
> +
> +	val = INV_ICM42607_GYRO_CONFIG0_FS_SEL(conf->gyro.fs) |
> +	INV_ICM42607_GYRO_CONFIG0_ODR(conf->gyro.odr);
> +	ret = regmap_write(st->map, INV_ICM42607_REG_GYRO_CONFIG0, val);
> +	if (ret)
> +		return ret;
> +
> +	val = INV_ICM42607_ACCEL_CONFIG0_FS_SEL(conf->accel.fs) |
> +	INV_ICM42607_ACCEL_CONFIG0_ODR(conf->accel.odr);
> +	ret = regmap_write(st->map, INV_ICM42607_REG_ACCEL_CONFIG0, val);
> +	if (ret)
> +		return ret;
> +
> +	val = INV_ICM42607_GYRO_CONFIG1_FILTER(conf->gyro.filter);
> +	ret = regmap_write(st->map, INV_ICM42607_REG_GYRO_CONFIG1, val);
> +	if (ret)
> +		return ret;
> +
> +	val = INV_ICM42607_ACCEL_CONFIG1_FILTER(conf->accel.filter);
> +	ret = regmap_write(st->map, INV_ICM42607_REG_ACCEL_CONFIG1, val);
> +	if (ret)
> +		return ret;
> +
> +	st->conf = *conf;
> +
> +	return 0;
> +}
> +
> +/**
> + *  inv_icm42607_setup() - check and setup chip
> + *  @st:	driver internal state
> + *  @bus_setup:	callback for setting up bus specific registers
> + *
> + *  Returns 0 on success, a negative error code otherwise.
> + */
> +static int inv_icm42607_setup(struct inv_icm42607_state *st,
> +			      inv_icm42607_bus_setup bus_setup)
> +{
> +	const struct inv_icm42607_hw *hw = &inv_icm42607_hw[st->chip];
> +	const struct device *dev = regmap_get_device(st->map);
> +	unsigned int val;
> +	int ret;
> +
> +	ret = regmap_read(st->map, INV_ICM42607_REG_WHOAMI, &val);
> +	if (ret)
> +		return ret;
> +
> +	if (val != hw->whoami)
> +		dev_warn_probe(dev, -ENODEV,
> +			       "invalid whoami %#02x expected %#02x (%s)\n",
> +			       val, hw->whoami, hw->name);
> +
> +	st->name = hw->name;
> +
> +	ret = regmap_write(st->map, INV_ICM42607_REG_SIGNAL_PATH_RESET,
> +			   INV_ICM42607_SIGNAL_PATH_RESET_SOFT_RESET);
> +	if (ret)
> +		return ret;

nit: Add blank line here.

> +	msleep(INV_ICM42607_RESET_TIME_MS);
> +
> +	ret = regmap_read(st->map, INV_ICM42607_REG_INT_STATUS, &val);
> +	if (ret)
> +		return ret;
> +	if (!(val & INV_ICM42607_INT_STATUS_RESET_DONE))
> +		return dev_err_probe(dev, -ENODEV,
> +				     "reset error, reset done bit not set\n");

Could also replace this and msleep with regmap_read_poll_timeout().

> +
> +	ret = bus_setup(st);
> +	if (ret)
> +		return ret;
> +
> +	ret = regmap_update_bits(st->map, INV_ICM42607_REG_INTF_CONFIG0,
> +				 INV_ICM42607_INTF_CONFIG0_SENSOR_DATA_ENDIAN,
> +				 INV_ICM42607_INTF_CONFIG0_SENSOR_DATA_ENDIAN);

Simplify with regmap_set_bits().

> +	if (ret)
> +		return ret;
> +
> +	ret = regmap_update_bits(st->map, INV_ICM42607_REG_INTF_CONFIG1,
> +				 INV_ICM42607_INTF_CONFIG1_CLKSEL_MASK,
> +				 INV_ICM42607_INTF_CONFIG1_CLKSEL_PLL);
> +	if (ret)
> +		return ret;
> +
> +	return inv_icm42607_set_conf(st, hw->conf);
> +}
> +
> +static int inv_icm42607_enable_vddio_reg(struct inv_icm42607_state *st)
> +{
> +	int ret;
> +
> +	ret = regulator_enable(st->vddio_supply);
> +	if (ret)
> +		return ret;
> +
> +	usleep_range(3000, 4000);

Use fsleep() and add a comment to explain why the duration
was chosen.

> +
> +	return 0;
> +}
> +
> +static void inv_icm42607_disable_vddio_reg(void *_data)
> +{
> +	struct inv_icm42607_state *st = _data;
> +
> +	regulator_disable(st->vddio_supply);
> +}
> +
> +int inv_icm42607_core_probe(struct regmap *regmap, int chip,
> +			    inv_icm42607_bus_setup bus_setup)
> +{
> +	struct device *dev = regmap_get_device(regmap);
> +	struct fwnode_handle *fwnode = dev_fwnode(dev);
> +	struct inv_icm42607_state *st;
> +	int irq, irq_type;
> +	bool open_drain;
> +	int ret;
> +
> +	if (chip < INV_CHIP_INVALID || chip >= INV_CHIP_NB)

Only two chips are defined in regmap_read_poll_timeout, so this range
checking seems wrong.

> +		dev_warn_probe(dev, -ENODEV,
> +			       "Invalid chip = %d\n", chip);
> +
> +	/* get INT1 only supported interrupt or fallback to first interrupt */
> +	irq = fwnode_irq_get_byname(fwnode, "INT1");
> +	if (irq < 0 && irq != -EPROBE_DEFER) {
> +		dev_info(dev, "no INT1 interrupt defined, fallback to first interrupt\n");
> +		irq = fwnode_irq_get(fwnode, 0);
> +	}
> +	if (irq < 0)
> +		return dev_err_probe(dev, irq, "error missing INT1 interrupt\n");
> +
> +	irq_type = irq_get_trigger_type(irq);
> +	if (!irq_type)
> +		irq_type = IRQF_TRIGGER_FALLING;
> +
> +	open_drain = device_property_read_bool(dev, "drive-open-drain");
> +
> +	st = devm_kzalloc(dev, sizeof(*st), GFP_KERNEL);
> +	if (!st)
> +		return -ENOMEM;
> +
> +	dev_set_drvdata(dev, st);
> +	mutex_init(&st->lock);
> +	st->chip = chip;
> +	st->map = regmap;
> +	st->irq = irq;
> +
> +	ret = iio_read_mount_matrix(dev, &st->orientation);
> +	if (ret) {
> +		dev_err(dev, "failed to retrieve mounting matrix %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret = devm_regulator_get_enable(dev, "vdd");
> +	if (ret)
> +		return dev_err_probe(dev, ret,
> +				     "Failed to get vdd regulator\n");
> +
> +	msleep(INV_ICM42607_POWER_UP_TIME_MS);
> +
> +	st->vddio_supply = devm_regulator_get(dev, "vddio");

If we aren't implementing power managament, we can just use
devm_regulator_get_enabled() and avoid the devm_add_action_or_reset().

> +	if (IS_ERR(st->vddio_supply))
> +		return PTR_ERR(st->vddio_supply);
> +
> +	ret = inv_icm42607_enable_vddio_reg(st);
> +	if (ret)
> +		return ret;
> +
> +	ret = devm_add_action_or_reset(dev, inv_icm42607_disable_vddio_reg, st);
> +	if (ret)
> +		return ret;
> +
> +	/* Setup chip registers (includes WHOAMI check, reset check, bus setup) */

This comment would be better as part of the function doc comment.

> +	ret = inv_icm42607_setup(st, bus_setup);
> +
> +	return ret;
> +}

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
