Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EA41CD98CC
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jun 2026 07:49:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CilUaGORRBkD4Xvtc04fOoXxy3t8kncwQynkMIMCgc0=; b=SH6qowbT4hWpwb
	Lc8xd51TKNubJTJr9rFRx0XGEzm7BwWdq+BvQTHee0TkiqpgC39vIiqGVRC8GZWafA3UWKx0tdPgG
	1kkSGwalxGfj7jBKuRB2sdUsLwLSgQNxRDFAxhR2gxXpa5U7IJ+F56tK23V2Y/XmZzCDUaLEabsbo
	RQ1HKyq4u57oDD7xw6Yhbt/Tq5bT/y3WgSfw1K2GPJdn8YlEPbyWEj2oPcKBigpXpUyfqvGl0cYnX
	gH2fRYB/9WOyhgb3On8R54FxdN7f6yMawk55WUj5QXsOmhSUyuXxLqRfqznWjnl4YOB5hkfovY0vg
	peRxodl2LncKCJpM4J2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXaAf-00000008u3S-2dHb;
	Thu, 11 Jun 2026 07:49:49 +0000
Received: from mgamail.intel.com ([198.175.65.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXaAd-00000008u2w-14Ij
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Jun 2026 07:49:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781164187; x=1812700187;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=K5X9+pmxCxTI6gxbp/ASC2g7N87EzDwCesA1chssCo0=;
  b=NdyGeSYJyGyXhPLT1LWITls/Oigyj65SeJK1ELB6Z0WiiwT+IA3+qO58
   tUeaDoH4U/gGZbCyT55DAApJF0Wk7ysd2TOPoVKYdzdRXASEZkyuMuUQe
   WUukjXPyfxSURy8E1KxbFkCibNvDMB49vw8/41/rtc+keHE9KYfyBMcKW
   FwUbjFQ2xog4ij0Xn0Nfkk8zKdXW1+srG3KuPsKXRc11qQz7PDISYPCU1
   DvjI/jxkQtupKBTjQAAlfkrOR/lLR3Zm0oXY5nJAz6yUQLJLmHtAEvD3+
   0neDwNPqCBVl1o2ZltPX/FGM+I+pk4g5fKjlV8AGVjk3QdQcEAWRuH9yd
   A==;
X-CSE-ConnectionGUID: /+ldhQwhQG+T8tOTDZD8mA==
X-CSE-MsgGUID: pFpNBdCmT+GiiGdQ0pEvTA==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="93078711"
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; 
   d="scan'208";a="93078711"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Jun 2026 00:49:47 -0700
X-CSE-ConnectionGUID: 9gmyUkDjQM6Ss/UD92v01g==
X-CSE-MsgGUID: 97pEHKhtS8OvqbJzmqJh+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; 
   d="scan'208";a="251503107"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.123])
  by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Jun 2026 00:49:43 -0700
Date: Thu, 11 Jun 2026 10:49:41 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
	dlechner@baylibre.com, jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V11 4/9] iio: imu: inv_icm42607: Add I2C and SPI For
 icm42607
Message-ID: <aipolU1W3QNXdd5b@ashevche-desk.local>
References: <20260610175455.19006-1-macroalpha82@gmail.com>
 <20260610175455.19006-5-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260610175455.19006-5-macroalpha82@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_004947_339728_37FB420A 
X-CRM114-Status: GOOD (  14.31  )
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

On Wed, Jun 10, 2026 at 12:54:48PM -0500, Chris Morgan wrote:

> Add I2C and SPI driver support for InvenSense ICM-42607 devices.
> Add necessary Kconfig and Makefile to allow building of (incomplete)
> driver.

...

>  drivers/iio/imu/Kconfig                       |   1 +
>  drivers/iio/imu/Makefile                      |   1 +
>  drivers/iio/imu/inv_icm42607/Kconfig          |  30 +++++
>  drivers/iio/imu/inv_icm42607/Makefile         |  10 ++

These should be part of the previous patch.

...

> +config INV_ICM42607
> +	tristate

To make it compilable w.o. SPI/I2C make this as

	tristate "Inven... Core driver" if COMPILE_TEST


> +	select IIO_BUFFER
> +	select IIO_INV_SENSORS_TIMESTAMP

...

> +obj-$(CONFIG_INV_ICM42607_I2C) += inv-icm42607-i2c.o
> +inv-icm42607-i2c-y += inv_icm42607_i2c.o
> +
> +obj-$(CONFIG_INV_ICM42607_SPI) += inv-icm42607-spi.o
> +inv-icm42607-spi-y += inv_icm42607_spi.o

Add each of them in a separate patch.

...

> +#include <linux/device.h>

Why?
And a lot of missing headers (bitfield.h, dev_printk.h, mod_devicetable.h, err.h)

> +#include <linux/i2c.h>
> +#include <linux/module.h>
> +#include <linux/regmap.h>

...

> +static int inv_icm42607_probe(struct i2c_client *client)
> +{
> +	const struct inv_icm42607_hw *hw;
> +	struct regmap *regmap;
> +
> +	hw = i2c_get_match_data(client);
> +	if (!hw)
> +		return dev_err_probe(&client->dev, -ENODEV,
> +				     "Failed to get i2c data\n");

Add

	struct device *dev = &client->dev;

and modify this and other eligible pieces accordingly.

		return dev_err_probe(dev, -ENODEV, "Failed to get i2c data\n");

> +	regmap = devm_regmap_init_i2c(client, &inv_icm42607_regmap_config);
> +	if (IS_ERR(regmap))
> +		return dev_err_probe(&client->dev, PTR_ERR(regmap),
> +				     "Failed to register i2c regmap %ld\n",

Do not duplicate a printing of an error code.

> +				     PTR_ERR(regmap));

		return dev_err_probe(dev, PTR_ERR(regmap),
				     "Failed to register i2c regmap\n");

> +	return inv_icm42607_core_probe(regmap, hw, inv_icm42607_i2c_bus_setup);
> +}
> +

...

> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c

As per above.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
