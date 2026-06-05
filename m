Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7670DCD6E7C
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jun 2026 16:08:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6GvIYeuzNGXoXVFVRI/YMLeDu9Pr6q0rKCYZUPX9sSM=; b=2A4rHvnkNR2OIN
	3PIyv10Q6tH6gSOvSW+McYOUhNxmRpBdaiWwShzXVeYZDm6itkTIyL/F1OROPM2QSJXlwlfh8R86g
	n1tzeAbLyj46wcavPDlUsc1CzSzHNQgyViJEGPO1hoiaRnm8PzJ3r+PfK98GR671jhksUR/raG5Te
	UIStxL/nOYsxooN3YmOoWNQ42lOQTJ87rRZTykwoOdCLFBZ6ZSWeK5zJ7V9YWjiPc45UO0LfX5nvO
	JC7tu1h71EyxHtUovTocmxnLxk8Qh5qYxEV4FtqMqbth37tUErLY/Hj8b2fXQzX06Sre6FET4fIg4
	5YpvbzKLx+7y0luW67wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVX6G-00000000sti-3Dv6;
	Fri, 05 Jun 2026 16:08:48 +0000
Received: from mgamail.intel.com ([192.198.163.7])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVX6C-00000000sss-26rc
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Jun 2026 16:08:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1780675724; x=1812211724;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=20ZpNWixaCv9XSjspQ/3hLi4OcsGjY0zsVqGZZY8vMA=;
  b=J+NWZWFrKmwG69ukVjGKjOq5FaXHoyLBhAv8mhlRz6ssPxUG+RPs5Gxk
   6VzPx6X8uNM6oZFV7BuaLGJm6Ozn/3P6g/5zwBs/xpQEHWPS21jCo9bH4
   moreJyqBXPMRv0NLGnDgrJ/oDG/ZRGVj6nzDDS73QikEJQrwtTKWHnttk
   37wYTh8zMpXQ0wyF6sPv8ICiKeubKLxglsGkbdgCOyoeT808c35AyYv0r
   T2A1AnlIc0KGr0EI06/MCcnvs7PZadxFJhl6dNQlqvQILZ7SfixxJuRW4
   uzKck0rXSfpT4Jp9btOA/KCmwcrq0YnMA67x00YlNspbBkFLqmktWIULr
   w==;
X-CSE-ConnectionGUID: owigbATNSrOwshLl6jsffw==
X-CSE-MsgGUID: Ne1KlWZLR1K2WIL5eda1hA==
X-IronPort-AV: E=McAfee;i="6800,10657,11808"; a="106952494"
X-IronPort-AV: E=Sophos;i="6.24,189,1774335600"; 
   d="scan'208";a="106952494"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Jun 2026 09:08:41 -0700
X-CSE-ConnectionGUID: B5g7jFl9TR6h0VRsHMOv0Q==
X-CSE-MsgGUID: ZHnxMt/uRNakWuNPER3XDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,189,1774335600"; 
   d="scan'208";a="249978644"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost) ([10.245.245.178])
  by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Jun 2026 09:08:38 -0700
Date: Fri, 5 Jun 2026 19:08:35 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
	dlechner@baylibre.com, jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V10 3/9] iio: imu: inv_icm42607: Add inv_icm42607 Core
 Driver
Message-ID: <aiL0g8d0Y_JeAC5c@ashevche-desk.local>
References: <20260604201832.60656-1-macroalpha82@gmail.com>
 <20260604201832.60656-4-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260604201832.60656-4-macroalpha82@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260605_090844_557200_31D08ACE 
X-CRM114-Status: GOOD (  24.18  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Jun 04, 2026 at 03:18:25PM -0500, Chris Morgan wrote:

> Add the core component of a new inv_icm42607 driver. This includes
> a few setup functions and the full register definition in the
> header file.

...

> +#ifndef INV_ICM42607_H_
> +#define INV_ICM42607_H_
> +
> +#include <linux/bitfield.h>
> +#include <linux/bitops.h>

I haven't found users for these two.

+ bits.h // BIT() / GENMASK()

> +#include <linux/iio/iio.h>
> +#include <linux/mutex.h>
> +#include <linux/regmap.h>


> +#include <linux/regulator/consumer.h>

No users for this one.

+ types.h // for bool

...

> +enum inv_icm42607_sensor_mode {
> +	INV_ICM42607_SENSOR_MODE_OFF,
> +	INV_ICM42607_SENSOR_MODE_STANDBY,
> +	INV_ICM42607_SENSOR_MODE_LOW_POWER,
> +	INV_ICM42607_SENSOR_MODE_LOW_NOISE,

Are those enums map 1:1 to HW bits or bitfields? If so, assign explicitly e=
ach
of them.

> +	INV_ICM42607_SENSOR_MODE_NB

Is this a terminator like NUMBER_OF ?

> +};

...

> +/* ODR values */
> +enum inv_icm42607_odr {
> +	INV_ICM42607_ODR_1600HZ =3D 5,

See above. This one is problematic. No one should rely on Linux/C enums when
it's about HW bits. All HW related stuff has to be explicit.

> +	INV_ICM42607_ODR_800HZ,
> +	INV_ICM42607_ODR_400HZ,
> +	INV_ICM42607_ODR_200HZ,
> +	INV_ICM42607_ODR_100HZ,
> +	INV_ICM42607_ODR_50HZ,
> +	INV_ICM42607_ODR_25HZ,
> +	INV_ICM42607_ODR_12_5HZ,
> +	INV_ICM42607_ODR_6_25HZ_LP,
> +	INV_ICM42607_ODR_3_125HZ_LP,
> +	INV_ICM42607_ODR_1_5625HZ_LP,
> +	INV_ICM42607_ODR_NB
> +};

...

> +struct inv_icm42607_sensor_conf {
> +	int mode;
> +	int fs;
> +	int odr;
> +	int filter;

All of them are supposed to be signed? Why?

> +};

...

> +struct inv_icm42607_hw {
> +	uint8_t whoami;

What's wrong with u8?

> +	const char *name;
> +	const struct inv_icm42607_conf *conf;
> +};

...

> +#include <linux/delay.h>
> +#include <linux/dev_printk.h>
> +#include <linux/interrupt.h>
> +#include <linux/iio/iio.h>
> +#include <linux/module.h>
> +#include <linux/mutex.h>
> +#include <linux/property.h>
> +#include <linux/regmap.h>
> +#include <linux/regulator/consumer.h>

IWYU, please.

...

> +/**
> + *  inv_icm42607_setup() - check and setup chip
> + *  @st:	driver internal state
> + *  @bus_setup:	callback for setting up bus specific registers
> + *
> + *  Returns 0 on success, a negative error code otherwise.

If you do kernel-doc, validate it. Return section is missing here.

> + */

...

> +{
> +	const struct device *dev =3D regmap_get_device(st->map);
> +	unsigned int val;
> +	int ret;
> +
> +	ret =3D regmap_read(st->map, INV_ICM42607_REG_WHOAMI, &val);
> +	if (ret)
> +		return ret;
> +
> +	if (val !=3D st->hw->whoami)
> +		dev_warn(dev, "Unknown whoami %#02x expected %#02x (%s)\n",
> +			 val, st->hw->whoami, st->hw->name);

dev_warn_probe() ?

> +	ret =3D regmap_write(st->map, INV_ICM42607_REG_SIGNAL_PATH_RESET,
> +			   INV_ICM42607_SIGNAL_PATH_RESET_SOFT_RESET);
> +	if (ret)
> +		return ret;

> +	fsleep(INV_ICM42607_RESET_TIME_MS * 1000);

USEC_PER_MSEC (needs time.h)

> +	ret =3D regmap_read_poll_timeout(st->map, INV_ICM42607_REG_INT_STATUS,
> +				       val, val & INV_ICM42607_INT_STATUS_RESET_DONE,
> +				       INV_ICM42607_RESET_TIME_MS * 100,
> +				       INV_ICM42607_RESET_TIME_MS * 10000);

These are weird, as in the first case it's actually 1/10th of _RESET_TIME_M=
S.
Perhaps you need to reconsider what you use as that constant. Personally I
prefer to see just plain values with the multipliers (to convert to =B5s).

> +	if (ret)
> +		return dev_err_probe(dev, ret,
> +				     "reset error, reset done bit not set\n");
> +
> +	/* Sync the regcache again after a reset. */
> +	regcache_mark_dirty(st->map);
> +	ret =3D regcache_sync(st->map);
> +	if (ret)
> +		return ret;
> +
> +	ret =3D bus_setup(st);

Hmm... This is bad name with potential of name collision in the future (in =
case
driver bus code wants to have the same name for the function).

> +	if (ret)
> +		return ret;
> +
> +	ret =3D regmap_set_bits(st->map, INV_ICM42607_REG_INTF_CONFIG0,
> +			      INV_ICM42607_INTF_CONFIG0_SENSOR_DATA_ENDIAN);
> +	if (ret)
> +		return ret;
> +
> +	ret =3D regmap_update_bits(st->map, INV_ICM42607_REG_INTF_CONFIG1,
> +				 INV_ICM42607_INTF_CONFIG1_CLKSEL_MASK,
> +				 INV_ICM42607_INTF_CONFIG1_CLKSEL_PLL);
> +	if (ret)
> +		return ret;
> +
> +	return inv_icm42607_set_conf(st, st->hw->conf);
> +}

...

> +int inv_icm42607_core_probe(struct regmap *regmap,
> +			    const struct inv_icm42607_hw *hw,
> +			    inv_icm42607_bus_setup bus_setup)
> +{
> +	struct device *dev =3D regmap_get_device(regmap);
> +	struct inv_icm42607_state *st;
> +	int ret;
> +
> +	st =3D devm_kzalloc(dev, sizeof(*st), GFP_KERNEL);
> +	if (!st)
> +		return -ENOMEM;
> +
> +	ret =3D devm_mutex_init(dev, &st->lock);
> +	if (ret)
> +		return ret;
> +
> +	st->hw =3D hw;
> +	st->map =3D regmap;
> +
> +	ret =3D iio_read_mount_matrix(dev, &st->orientation);
> +	if (ret)

> +		return dev_err_probe(dev, ret,
> +				     "failed to retrieve mounting matrix %d\n", ret);

Remove duplicate ret printing.

> +
> +	ret =3D devm_regulator_get_enable(dev, "vdd");
> +	if (ret)
> +		return dev_err_probe(dev, ret,
> +				     "Failed to get vdd regulator\n");
> +
> +	st->vddio_supply =3D devm_regulator_get(dev, "vddio");
> +	if (IS_ERR(st->vddio_supply))
> +		return dev_err_probe(dev, PTR_ERR(st->vddio_supply),
> +				     "Failed to get vddio regulator\n");
> +
> +	ret =3D inv_icm42607_enable_vddio_reg(st);
> +	if (ret)
> +		return ret;
> +
> +	ret =3D devm_add_action_or_reset(dev, inv_icm42607_disable_vddio_reg, s=
t);
> +	if (ret)
> +		return ret;

> +	/* Setup chip registers (includes WHOAMI check, reset check, bus setup)=
 */
> +	ret =3D inv_icm42607_setup(st, bus_setup);
> +	if (ret)
> +		return ret;
> +
> +	return 0;

Just

	return inv_icm42607_setup(st, bus_setup);

? Or is it going to be extended in the next changes?

> +}

-- =

With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
