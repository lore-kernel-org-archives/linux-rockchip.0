Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DBF1CD4F3D
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 May 2026 16:49:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2JBbWeiRQC9dKuzam+X2Ffr6wH9Wm02jYCPbvL4O+aQ=; b=MYAgRxIxNeywfh
	EwwwG25eJj4Nm7GLHBPLV5hZ/K85hbPoN3wWxYY8Z38GxVT+dplDPtgAY9jleRFDIS6+Ae3YMz5CH
	2llJ3S4iLnjAJHXRDgdYURMq0xIyyOhQxeYxSWrW/zpnM212Nxtlsv8AbgDSOqzlI9CLJzx8bSw6W
	TrEbmsu4dM30s55iBKW8e1lljWrVqaow3JRRBR+Yjv4HFDKxYWKSUYfwhKRUSLmSGke0vLRKNXwro
	WJi+W46VgteSbPncXXeeoz1MI2xYW0pN3BYM4yBQjsa3IpwXpwiH+RuFUrxUsy7aiWb+MOwLMID8n
	E299q92giekh3l8vLF2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPk6c-00000005D7x-16wo;
	Wed, 20 May 2026 16:49:14 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPk6a-00000005D7f-3wjX
	for linux-rockchip@lists.infradead.org;
	Wed, 20 May 2026 16:49:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id EEADB60204;
	Wed, 20 May 2026 16:49:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DCD7C1F000E9;
	Wed, 20 May 2026 16:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779295751;
	bh=2EYGOyHOoy1RVuJWBWnb5bN4dRtWTtSSDwlqhTkXu7I=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=VRtD7X3c3QzEtK90eKxbGHYpUFqgqd1tglBN9Y6o69TruAlm27IqMfMajz/YX5C65
	 bVG+FFjHJmrdwKt/XjvGprimjp7JsTIbtU+CJzTwViR8/48hAJROJ82YmUdaTN6hvy
	 1NYnqf+4nAUq8z50j3whNiKgpCIfR1YZt3HPlPVuiD/ehDXeQy0m6nqRTEYdIsEtgj
	 fVZcg6NVwIpmvgT8+ru/7Qff6TKx3Epq4j8J0DH9EZjhnA2mWy/liVI+L5GYr9LsI2
	 rWkzM4GTxJkB56Kl8y1B49f65+95zrsP9ZQ15b9PwY7bjZRkz75DF8SUVZbvk1t6EM
	 aD/G0vV4H6SlA==
Date: Wed, 20 May 2026 17:49:02 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V8 03/10] iio: imu: inv_icm42607: Add inv_icm42607 Core
 Driver
Message-ID: <20260520174902.3e19117e@jic23-huawei>
In-Reply-To: <20260518200526.458421-4-macroalpha82@gmail.com>
References: <20260518200526.458421-1-macroalpha82@gmail.com>
	<20260518200526.458421-4-macroalpha82@gmail.com>
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

On Mon, 18 May 2026 15:05:18 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add the core component of a new inv_icm42607 driver. This includes
> a few setup functions and the full register definition in the
> header file.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Mainly the interrupt names thing - which is probably a case for
a precursor fix for the existing binding.

Otherwise really small stuff I'd not have bothered you with if we
weren't already looking like we'll need a v9

Jonathan

> ---
>  drivers/iio/imu/inv_icm42607/inv_icm42607.h   | 332 ++++++++++++++++++
>  .../iio/imu/inv_icm42607/inv_icm42607_core.c  | 197 +++++++++++
>  2 files changed, 529 insertions(+)
>  create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607.h
>  create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> 
> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607.h b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
> new file mode 100644
> index 000000000000..6c5e7d9b08b7
> --- /dev/null
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607.h

> +
> +typedef int (*inv_icm42607_bus_setup)(struct inv_icm42607_state *);
> +
> +extern const struct regmap_config inv_icm42607_regmap_config;
> +
> +int inv_icm42607_core_probe(struct regmap *regmap, const struct inv_icm42607_hw *hw,
Trivial but I'd wrap the line above after first ,

Still prefer staying under 80 chars if it doesn't hurt readability and here
it doesn't.

> +			    inv_icm42607_bus_setup bus_setup);
> +
> +#endif
> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> new file mode 100644
> index 000000000000..b270d48335ba
> --- /dev/null
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> @@ -0,0 +1,197 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (C) 2026 InvenSense, Inc.
> + */
> +
> +#include <linux/delay.h>
> +#include <linux/interrupt.h>
> +#include <linux/iio/iio.h>
> +#include <linux/irq.h>
> +#include <linux/module.h>
> +#include <linux/mutex.h>
> +#include <linux/property.h>
> +#include <linux/regmap.h>
> +#include <linux/regulator/consumer.h>

Give the includes another quick check. I'd expect at least
dev_printk.h in here. There may be others missing to following
the approximate include what you use approach preferred for kernel
drivers.

> +#include "inv_icm42607.h"

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
> +	const struct device *dev = regmap_get_device(st->map);
> +	unsigned int val;
> +	int ret;
> +
> +	ret = regmap_read(st->map, INV_ICM42607_REG_WHOAMI, &val);
> +	if (ret)
> +		return ret;
> +
> +	if (val != st->hw->whoami)
> +		dev_warn(dev, "invalid whoami %#02x expected %#02x (%s)\n",

Can we tweak that to unknown whoami

It might well be valid afterall!

> +			 val, st->hw->whoami, st->hw->name);
> +
> +	ret = regmap_write(st->map, INV_ICM42607_REG_SIGNAL_PATH_RESET,
> +			   INV_ICM42607_SIGNAL_PATH_RESET_SOFT_RESET);
> +	if (ret)
> +		return ret;
> +
There is some moaning here from sashiko. I think it's wrong but take a look.

> +	ret = regmap_read_poll_timeout(st->map, INV_ICM42607_REG_INT_STATUS,
> +				       val, val & INV_ICM42607_INT_STATUS_RESET_DONE,
> +				       INV_ICM42607_RESET_TIME_MS * 100,
> +				       INV_ICM42607_RESET_TIME_MS * 1000);
> +	if (ret)
> +		return dev_err_probe(dev, ret,
> +				     "reset error, reset done bit not set\n");
> +
> +	ret = bus_setup(st);
> +	if (ret)
> +		return ret;
> +
> +	ret = regmap_set_bits(st->map, INV_ICM42607_REG_INTF_CONFIG0,
> +			      INV_ICM42607_INTF_CONFIG0_SENSOR_DATA_ENDIAN);
> +	if (ret)
> +		return ret;
> +
> +	ret = regmap_update_bits(st->map, INV_ICM42607_REG_INTF_CONFIG1,
> +				 INV_ICM42607_INTF_CONFIG1_CLKSEL_MASK,
> +				 INV_ICM42607_INTF_CONFIG1_CLKSEL_PLL);
> +	if (ret)
> +		return ret;
> +
> +	return inv_icm42607_set_conf(st, st->hw->conf);
> +}


> +int inv_icm42607_core_probe(struct regmap *regmap, const struct inv_icm42607_hw *hw,
> +			    inv_icm42607_bus_setup bus_setup)
> +{
> +	struct device *dev = regmap_get_device(regmap);
> +	struct inv_icm42607_state *st;
> +	int irq;
> +	int ret;
> +
> +	irq = fwnode_irq_get_byname(dev_fwnode(dev), "INT1");

Sashiko raises a valid point on this one.  The binding has interrupt-names as optional
even if we have interrupts. The binding could document a default but doesn't. 

Can you check the other drivers sharing that binding and either 'fix' the binding
or add a default - I'd guess INT1 - but this wouldn't be the first time a driver
has gotten written against a board that wires INT2 only and that's there for
the default choice.

Note that sashiko's fallback is a bad idea if we don't have a default in the binding!


> +	if (irq < 0)
> +		return dev_err_probe(dev, irq, "Unable to get INT1 interrupt\n");




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
