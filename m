Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C11B0CD5BAB
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 May 2026 16:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aY5Ec1mdqC+4Xh8kMApsM/pU6elR+rLNOdXs7Gfec4o=; b=CJix9oiKlYfw+9
	bfEy2WB1k7WZW1okpB1cxLXlBLVl5w2dlqGTdhfW+LYlIzNOeDIz0Uhy2xrdzibFoSGYkKlBhtsbi
	XzDrRT+HBWLagswN7KHluISilLxF9K+Vqd8D/590YI57goYIguo2GQ1/NvKEr+w9nXFwcOb0iRit0
	f5wCw1/9Z+ALQ4OhAa0OX59LojXTl1H1Kz4Y8dz/pWX7Tt3DQMrv6C5+gvG7hNNV3WWdOpDgCu7Dn
	c3F6q6zE0O7EQjcUR7vZixCA/DGb2K7c1y2W6yiPCHaUW+MqS5cn8svwi1xol29wnhQu60muDo+r8
	7CpweyK8+s9on8zRiPTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPkFM-00000005EPY-1dEZ;
	Wed, 20 May 2026 16:58:16 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPkFJ-00000005EOg-3LXV
	for linux-rockchip@lists.infradead.org;
	Wed, 20 May 2026 16:58:14 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 27AB5418B6;
	Wed, 20 May 2026 16:58:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A97911F00893;
	Wed, 20 May 2026 16:58:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779296292;
	bh=Q+RGdBV1fAOjSGTl0MP2/NwsWkgq8a03gaD/eAA0qA4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=Q2LljfgR9q6D6w2BBozfsmTSjs40lP/A9aBt7eRofslSeK8zDJexEq2DM6d3ZmZG+
	 BipsDXqAfw/rgJaaodgLmV1kMbMAnnIf0yDqqSun2tQhlzjlFYMP+l8fM5IcnI4daT
	 XnZrXD56lT/9WCXkf1x+AsHVig/YwzKViUuPmrqjjYjTz6CrFTMoXSR/FdUnDzvyoE
	 ftR3fJTbIkvP4t3rsyBOD/W9MK5aazyGhHKAgA+UxzTTpQt9KnibapSQRSWYTrmLpJ
	 sE8BS0CFH1cM8ukvwUUmqhiR4BDAnAYEo/CbLhv2DPCLq/EVVq75ilokaDTql08fwm
	 CR9xlBtgUdFRw==
Date: Wed, 20 May 2026 17:58:01 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V8 04/10] iio: imu: inv_icm42607: Add I2C and SPI For
 icm42607
Message-ID: <20260520175801.12f74521@jic23-huawei>
In-Reply-To: <20260518200526.458421-5-macroalpha82@gmail.com>
References: <20260518200526.458421-1-macroalpha82@gmail.com>
	<20260518200526.458421-5-macroalpha82@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_095813_883562_B9812B1E 
X-CRM114-Status: GOOD (  27.45  )
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

On Mon, 18 May 2026 15:05:19 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add I2C and SPI driver support for InvenSense ICM-42607 devices.
> Add necessary Kconfig and Makefile to allow building of (incomplete)
> driver.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Hi Chris.

More trivial stuff. Some of which is just to save
having to do a follow up patch to move to named initializers
for the id tables.

Thanks,

Jonathan

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607.h b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
> index 6c5e7d9b08b7..74d8d3d7c890 100644
> --- a/drivers/iio/imu/inv_icm42607/inv_icm42607.h
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
> @@ -13,6 +13,16 @@
>  #include <linux/regmap.h>
>  #include <linux/regulator/consumer.h>
>  
> +/* serial bus slew rates */
> +enum inv_icm42607_slew_rate {
> +	INV_ICM42607_SLEW_RATE_20_60NS,
> +	INV_ICM42607_SLEW_RATE_12_36NS,
> +	INV_ICM42607_SLEW_RATE_6_18NS,
> +	INV_ICM42607_SLEW_RATE_4_12NS,
> +	INV_ICM42607_SLEW_RATE_2_6NS,
> +	INV_ICM42607_SLEW_RATE_INF_2NS
Probably missing trailing comma. Mind you I'm confused
on what the meaning is of INF_2NS - so maybe a comment?

> +};
> +
>  enum inv_icm42607_sensor_mode {
>  	INV_ICM42607_SENSOR_MODE_OFF,
>  	INV_ICM42607_SENSOR_MODE_STANDBY,
> @@ -325,6 +335,8 @@ struct inv_icm42607_state {
>  typedef int (*inv_icm42607_bus_setup)(struct inv_icm42607_state *);
>  
>  extern const struct regmap_config inv_icm42607_regmap_config;
This is only introduced in this patch.  I'd argue maybe that
should have been in the earlier one?

> +extern const struct inv_icm42607_hw inv_icm42607_hw_data;
> +extern const struct inv_icm42607_hw inv_icm42607p_hw_data;
I'd also have been tempted to push these into the previous patch
even though like the regmap they would have had no users briefly.

>  
>  int inv_icm42607_core_probe(struct regmap *regmap, const struct inv_icm42607_hw *hw,
>  			    inv_icm42607_bus_setup bus_setup);
> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> index b270d48335ba..e9c81b52f9ef 100644
> --- a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c

>  static int inv_icm42607_set_conf(struct inv_icm42607_state *st,
>  				 const struct inv_icm42607_conf *conf)
>  {
> @@ -95,6 +152,11 @@ static int inv_icm42607_setup(struct inv_icm42607_state *st,
>  		return dev_err_probe(dev, ret,
>  				     "reset error, reset done bit not set\n");
>  
> +	/* Sync the regcache again after a reset. */
> +	ret = regcache_sync(st->map);

Silly question but what has this to do with the bus support?  Should
it be in the previous patch.  I suppose you could argue this is where the
cache got introduced.  

> +	if (ret)
> +		return ret;
> +
>  	ret = bus_setup(st);
>  	if (ret)
>  		return ret;
> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c
> new file mode 100644
> index 000000000000..8631579a609a
> --- /dev/null
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c
> @@ -0,0 +1,89 @@

> +
> +static const struct i2c_device_id inv_icm42607_id[] = {
> +	{ "icm42607", (kernel_ulong_t)&inv_icm42607_hw_data },
> +	{ "icm42607p", (kernel_ulong_t)&inv_icm42607p_hw_data },
Named initializers please. (see below)
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(i2c, inv_icm42607_id);
> +
> +static const struct of_device_id inv_icm42607_of_matches[] = {
> +	{
> +		.compatible = "invensense,icm42607",
> +		.data = &inv_icm42607_hw_data,
> +	}, {
> +		.compatible = "invensense,icm42607p",
> +		.data = &inv_icm42607p_hw_data,
> +	},
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(of, inv_icm42607_of_matches);
> +
> +static struct i2c_driver inv_icm42607_driver = {
> +	.driver = {
> +		.name = "inv-icm42607-i2c",
> +		.of_match_table = inv_icm42607_of_matches,
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
> index 000000000000..960b5d3e9abc
> --- /dev/null
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c
> @@ -0,0 +1,101 @@

> +static const struct of_device_id inv_icm42607_of_matches[] = {
> +	{
> +		.compatible = "invensense,icm42607",
> +		.data = &inv_icm42607_hw_data,
> +	},
> +	{
> +		.compatible = "invensense,icm42607p",
> +		.data = &inv_icm42607p_hw_data,
> +	},
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(of, inv_icm42607_of_matches);
> +
> +static const struct spi_device_id inv_icm42607_spi_id_table[] = {
> +	{ "icm42607", (kernel_ulong_t)&inv_icm42607_hw_data },
> +	{ "icm42607p", (kernel_ulong_t)&inv_icm42607p_hw_data },
Please use named initializers (see the work Uwe is doing currently to 
clean this up). It has always been odd that we do it for of_ but
not spi_device_id / i2c_device_id.

That work from Uwe crossed with the development of this series
but I'd rather avoid an immediate follow up patch if we can just
tidy it up from the start.  I'd definitely have fixed this whilst
applying if there was no other reason for a v9.


Jonathan


> +	{ }
> +};
> +MODULE_DEVICE_TABLE(spi, inv_icm42607_spi_id_table);
> +
> +static struct spi_driver inv_icm42607_driver = {
> +	.driver = {
> +		.name = "inv-icm42607-spi",
> +		.of_match_table = inv_icm42607_of_matches,
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
