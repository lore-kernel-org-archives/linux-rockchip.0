Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58704CD98D2
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Jun 2026 16:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Hm1m5LG3jWr62hAoM5cmYGfdqlQzj4t70ktjDgOlnM=; b=ca/39nie962b2E
	NTZo+CUhh9CltUDVOnpac9GutXU8KCK7xpwa4jUennWXtTopiI4F+uTGxTg1VYfq7GoUecomEhhGL
	g29xDc7Bsf03StG21IjxlL6Tr/99l+ZnUW5NZu78wJs4zbI9pu8WIWtOpR7SfxhCSHvI7gG5cnvEw
	l8QxHAke29mBahoEQ1m87DvzUSwQ0HqfTkrPxPy2NW6/ciM7FlWG2dz45EE4CPlP0cM1b9JHmfsx/
	4kfEwVYgezNkKuNTxvy7ESAIHgARf4JkwOMK+MSyJuJGhSxHWMxf6OULaoqXzmqTbMmhY8U+uHMbU
	K5RyouuQV0J9RfzR71qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYnne-0000000DBGn-0Wug;
	Sun, 14 Jun 2026 16:35:06 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYnnc-0000000DBGU-3UNc
	for linux-rockchip@lists.infradead.org;
	Sun, 14 Jun 2026 16:35:04 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id B2E11600AE;
	Sun, 14 Jun 2026 16:35:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B3881F000E9;
	Sun, 14 Jun 2026 16:34:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781454903;
	bh=idYHJBBU/SGZVcFt0UoqqHmT+v7vxO/szRsvlKZMY08=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=Vnf08imHxkrAx5spB3j0OrCVRmU6tnfytvx6wYMbEc4PAO6RK6v4DqaFH7yLGtSjD
	 pMuS/clZUsNSJg8H2sYDoQGCakIN5Ye0XYdBhc1e8T3kEpRoVK+K88ac4sWMvAjU6S
	 /KEhbXsoFdsL782CUAimrE80NKOcuQ9dvXS0W5fHnHEqmRfkp7sOqfJaguAXYCwk7X
	 IYePgX6mol6cfcDMc9MZXg66CYcZOdQMDwUsQ4BaGoxApQOBtW8IfG+EkSAr8yFifm
	 BYAxGE81oy3a2y+/TyB3pAW5qf4UWklvdHv6IoCiFGU3xFj+l84WFrrROLfDfVLTz+
	 3DhJ7fQl97jAw==
Date: Sun, 14 Jun 2026 17:34:53 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V12 6/9] iio: imu: inv_icm42607: Add Temp Support in
 icm42607
Message-ID: <20260614173453.0db01d3f@jic23-huawei>
In-Reply-To: <20260611202607.85376-7-macroalpha82@gmail.com>
References: <20260611202607.85376-1-macroalpha82@gmail.com>
	<20260611202607.85376-7-macroalpha82@gmail.com>
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

On Thu, 11 Jun 2026 15:26:03 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add functions for reading temperature sensor data.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
The buffer isn't safe for use for DMA.  See below.
I'm not sure I'd have noticed. This used to be a common bug but not seen it that
often recently for some reason!

Jonathan

  
> ---
>  drivers/iio/imu/inv_icm42607/Makefile         |  1 +
>  drivers/iio/imu/inv_icm42607/inv_icm42607.h   |  5 ++
>  .../iio/imu/inv_icm42607/inv_icm42607_core.c  | 18 +++++
>  .../iio/imu/inv_icm42607/inv_icm42607_temp.c  | 76 +++++++++++++++++++
>  .../iio/imu/inv_icm42607/inv_icm42607_temp.h  | 37 +++++++++
>  5 files changed, 137 insertions(+)
>  create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_temp.c
>  create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_temp.h
> 
> diff --git a/drivers/iio/imu/inv_icm42607/Makefile b/drivers/iio/imu/inv_icm42607/Makefile
> index be109102e203..c04953ed42ce 100644
> --- a/drivers/iio/imu/inv_icm42607/Makefile
> +++ b/drivers/iio/imu/inv_icm42607/Makefile
> @@ -2,6 +2,7 @@
>  
>  obj-$(CONFIG_INV_ICM42607) += inv-icm42607.o
>  inv-icm42607-y += inv_icm42607_core.o
> +inv-icm42607-y += inv_icm42607_temp.o
>  
>  obj-$(CONFIG_INV_ICM42607_I2C) += inv-icm42607-i2c.o
>  inv-icm42607-i2c-y += inv_icm42607_i2c.o
> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607.h b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
> index 28edc12d5373..53dd23509a53 100644
> --- a/drivers/iio/imu/inv_icm42607/inv_icm42607.h
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
> @@ -114,6 +114,7 @@ struct inv_icm42607_suspended {
>  
>  /**
>   *  struct inv_icm42607_state - driver state variables
> + *  @buffer:		data transfer buffer aligned for DMA.
>   *  @hw:		Hardware specific data.
>   *  @map:		regmap pointer.
>   *  @vddio_supply:	I/O voltage regulator for the chip.
> @@ -124,6 +125,7 @@ struct inv_icm42607_suspended {
>   *  @orientation:	sensor chip orientation relative to main hardware.
>   */
>  struct inv_icm42607_state {
> +	__be16 buffer[3] __aligned(IIO_DMA_MINALIGN);

Look in more depth at what this does.   Key thing is there is a reason
this should always be at the end of the iio_priv() structure.

(Sashiko caught this btw)

>  	const struct inv_icm42607_hw *hw;
>  	struct regmap *map;
>  	struct regulator *vddio_supply;
> @@ -363,6 +365,9 @@ extern const struct inv_icm42607_hw inv_icm42607_hw_data;
>  extern const struct inv_icm42607_hw inv_icm42607p_hw_data;
>  extern const struct dev_pm_ops inv_icm42607_pm_ops;
>  



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
