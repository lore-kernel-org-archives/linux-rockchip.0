Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42B96CD5BD1
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 May 2026 12:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sc9C2B3mbKureIsK4z8m+4IvIHzEbzD+egKlJqosPrg=; b=AlDdFSTTX6xeQ4
	DlvjZrKf5Q+nLB4v3B4PwZf/AoI4iCLjxZtbl14BhkdMava/QXcQNOWFaxtgoqPeqGgkU/DUxGdRO
	3D0qUj28LTZlJpLcXBMNhblWgNZYwQdCRYZEHg+x3mjAZlQy7CE8dwgWMMUmZ0xbPdBGnylmaUVdg
	guPO46bM0U2AeVFT6B3yTCjP0VEMsk2k9eTD9VlCp7ftdRK7wBo9sFit80QAEptFr6TfgtuEpEIqn
	BzLmnATNfNBVp+Ud12M28OX4/z99OsoEkXl/l6i8Vk1XGX92O0cOSK6LfDt4DAo+84K0OqV+KKQlo
	W1/0rGnIUCvJVqo0EZ1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTfbx-00000009bSf-3NP6;
	Sun, 31 May 2026 12:49:49 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTfbx-00000009bSO-1HxD
	for linux-rockchip@lists.infradead.org;
	Sun, 31 May 2026 12:49:49 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E943360123;
	Sun, 31 May 2026 12:49:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2CDE91F00893;
	Sun, 31 May 2026 12:49:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780231787;
	bh=0FQT6mOQRjHPoUHEtFPyGoBL6/gd6UgwcPgHmimCaC8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=d/BQ7x0AM6FYpvv7+jiRlmdnet8xq7jq37iFPAFIDu2ll7AjI+ZijVXMZBnVgvyr2
	 KpjMSnjcqvRrO7AGrjF5GFkbq7nSOKyIzicB5S6bBxeMpOjshpeE9z+pVWZOfmYJyn
	 8QZ1Wz4+R2KC1Z062DJSR8avWWwIvT7U3ehPHGtBM8PaOuDz/1TQZuuL77dHjQM6Ge
	 kW8wVHXkkAliFJKua8ycsmmeQgmRbFPmeiar9HDVKu1U9puzneD9U024dF7MP3DtG7
	 lsFqbK2USg2sbla2PVUUrY7bWOv2VQzY+kkhgsp1YhCzr/L4I3C/8Bxg6ZLCdTALL7
	 0vJqcqWR+l0Ew==
Date: Sun, 31 May 2026 13:49:36 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V9 09/11] iio: imu: inv_icm42607: Add IRQ for icm42607
Message-ID: <20260531134936.051e9824@jic23-huawei>
In-Reply-To: <20260530031739.109063-10-macroalpha82@gmail.com>
References: <20260530031739.109063-1-macroalpha82@gmail.com>
	<20260530031739.109063-10-macroalpha82@gmail.com>
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

On Fri, 29 May 2026 22:17:36 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add IRQ support for the icm42607 driver.
Note I'm only calling out a few things sashiko commented on. Make sure
you verify any others are fixed or false positives.

https://sashiko.dev/#/patchset/20260530031739.109063-1-macroalpha82%40gmail.com

I didn't have anything non sashiko related to add to this patch.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../iio/imu/inv_icm42607/inv_icm42607_core.c  | 97 ++++++++++++++++++-
>  1 file changed, 96 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> index 6b623fb679f3..3c91623dffb2 100644
> --- a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c

> +
> +static irqreturn_t inv_icm42607_irq_handler(int irq, void *_data)
> +{
> +	struct inv_icm42607_state *st = _data;
> +	struct device *dev = regmap_get_device(st->map);
> +	unsigned int status;
> +	int ret;
> +
> +	mutex_lock(&st->lock);
> +
> +	ret = regmap_read(st->map, INV_ICM42607_REG_INT_STATUS, &status);
> +	if (ret) {
> +		dev_err(dev, "Interrut status read error %d\n", ret);
> +		goto out_unlock;
> +	}
> +
> +	if (status & INV_ICM42607_INT_STATUS_FIFO_FULL)
> +		dev_warn(dev, "FIFO full data lost!\n");
> +
> +	if (status & INV_ICM42607_INT_STATUS_FIFO_THS) {
> +		mutex_unlock(&st->lock);
> +		ret = inv_icm42607_buffer_fifo_read(st, 0);
> +		if (ret) {
> +			dev_err(dev, "FIFO read error %d\n", ret);
> +			goto out_unlock;
Sashiko caught this one.

Lock isn't held.  This dance is horrible though.  Normally we avoid this
by having an unlocked variant of the inner function 
__inv_icm42607_buffer_fifo_read() and a locked wrapper without the underscores.
Or push the lock out of there in general and add a __must_hold() marking so
we can detect any paths that don't have the lock.

> +		}
> +
> +		mutex_lock(&st->lock);
> +		ret = inv_icm42607_buffer_fifo_parse(st);
> +		if (ret)
> +			dev_err(dev, "FIFO parsing error %d\n", ret);
> +	}
> +
> +out_unlock:
> +	mutex_unlock(&st->lock);
> +	return IRQ_HANDLED;
> +}

> +
>  static int inv_icm42607_enable_vddio_reg(struct inv_icm42607_state *st)
>  {
>  	int ret;
> @@ -367,13 +452,18 @@ int inv_icm42607_core_probe(struct regmap *regmap,
>  {
>  	struct device *dev = regmap_get_device(regmap);
>  	struct inv_icm42607_state *st;
> -	int irq;
> +	int irq, irq_type;
> +	bool open_drain;
>  	int ret;
>  
>  	irq = fwnode_irq_get_byname(dev_fwnode(dev), "INT1");
>  	if (irq < 0)
>  		return dev_err_probe(dev, irq, "Unable to get INT1 interrupt\n");
>  
> +	irq_type = irq_get_trigger_type(irq);
> +
> +	open_drain = device_property_read_bool(dev, "drive-open-drain");
> +
>  	st = devm_kzalloc(dev, sizeof(*st), GFP_KERNEL);
>  	if (!st)
>  		return -ENOMEM;
> @@ -433,6 +523,11 @@ int inv_icm42607_core_probe(struct regmap *regmap,
>  	if (IS_ERR(st->indio_accel))
>  		return PTR_ERR(st->indio_accel);
>  
> +	/* Initialize interrupt handling */
> +	ret = inv_icm42607_irq_init(st, irq, irq_type, open_drain);

Sashiko asks some stuff about ordering wrt to this call. It is relatively
unusual to register an irq after the driver is exposed to userspace. Tends to
lead to potentially silly races.  Can we move it before device registration
and rely on presence checks to handle any interrupts that we see before those
iio devices are registered?


> +	if (ret)
> +		return ret;
> +
>  	return 0;
>  }
>  EXPORT_SYMBOL_NS_GPL(inv_icm42607_core_probe, "IIO_ICM42607");


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
