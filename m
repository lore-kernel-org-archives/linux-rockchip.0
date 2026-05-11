Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D0A0CD4840
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 May 2026 17:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pCY6asoQi7mKjBOxKxNtlSkJfsm02PTar8EVnh8u/9c=; b=2bJ3tfaUIGRtVY
	2E7AA5YtptQkI2ax2O+nl8GH9Lu8b1xPWeDsPrZCItBRHknDnypdAzFvW3S9whN6P97ZK17YGwxid
	VCnUWvRf6wFf8ek6AhfiRVGfJcC9BMgQa/Ea3CiupnHbmIO3iH145lsCqLeLdaZ/bwgKY7BI/29XL
	RgJRPna3/ErTmawsW7Vg7OzmNZ7Bc2cknCP8AswaYQQUziY33khBVsYAXcLFsySi6FL974dU5/5dM
	DJv/nJjhdONsP8Nbt1IXg2C5oOFrSf+59/N1IEXitLpXD7Ry4LcB1CCQxPuqcCnWfEoLdbj6NpVxX
	mSYuktXfNlUE365yncjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMUQy-0000000EMZg-3Rt9;
	Mon, 11 May 2026 17:28:48 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMUQw-0000000EMYp-1pwE
	for linux-rockchip@lists.infradead.org;
	Mon, 11 May 2026 17:28:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id B513243F2D;
	Mon, 11 May 2026 17:28:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94B30C2BCB0;
	Mon, 11 May 2026 17:28:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778520525;
	bh=/7lcKVtHcO2bade24O1Ns8KyvOdt6ALKGo8fUbFVtN4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=XTtvDwwI79E4njgtXHfNOGBpIzWYX0SBy1hs4DHwer35jw3Gn2GCI8USWitGgTbp+
	 S0qkO1LX5z3i78TNeAwvJHokU9IpGH7L2IYPrpZ5OouVJtihV35sgoPNj5yo9IUVed
	 Ge5rJ2QAw9QOIBrt9eXFaxCKvonam4Z3NWzTSlUY8XR28N8KaEKBLOQBrD+Y4w0KhC
	 fmmsZ+u9VrzUsQrj1odv0pGaxCnFCf7Fwoj2cSrjukGRrbWtOK5JBn0K4oLEOyjWCC
	 PgFe4Vc9835XliGjND/gyc/bgXFFxM6KK+sp2jX8rjz8EtK5+W5M+PH6QnxfvyHbo7
	 9WrS+GBMI008w==
Date: Mon, 11 May 2026 18:28:35 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V5 03/11] iio: imu: inv_icm42607: Add inv_icm42607 Core
 Driver
Message-ID: <20260511182835.3754c543@jic23-huawei>
In-Reply-To: <20260509191907.24734-4-macroalpha82@gmail.com>
References: <20260509191907.24734-1-macroalpha82@gmail.com>
	<20260509191907.24734-4-macroalpha82@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_102846_519155_CC2EA37F 
X-CRM114-Status: GOOD (  20.00  )
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

On Sat,  9 May 2026 14:18:57 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add the core component of a new inv_icm42607 driver. This includes
> a few setup functions and the full register definition in the
> header file.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Hi Chris

The sashiko bot has taken a look and had some comments
and one in this patch is valid.

https://sashiko.dev/#/patchset/20260509191907.24734-1-macroalpha82%40gmail.com

It's minor though so if everything else looks good I might
just tweak whilst applying.


> ---
>  drivers/iio/imu/inv_icm42607/inv_icm42607.h   | 332 ++++++++++++++++++
>  .../iio/imu/inv_icm42607/inv_icm42607_core.c  | 210 +++++++++++
>  2 files changed, 542 insertions(+)
>  create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607.h
>  create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> 
> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607.h b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
> new file mode 100644
> index 000000000000..10dcd3473e9c
> --- /dev/null
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> new file mode 100644
> index 000000000000..e84e84416dab
> --- /dev/null
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
> +		dev_warn_probe(dev, -ENODEV,
> +			       "invalid whoami %#02x expected %#02x (%s)\n",
> +			       val, st->hw->whoami, st->hw->name);
Sashiko correctly called this out as a bit nonsensical.
dev_warn_probe() is useful for dealing with deferral or that can't happen
with allowing a return dev_warn_probe() type call.

In this particular case it brings us nothing over dev_warn() so better
to just use that.

> +
> +	ret = regmap_write(st->map, INV_ICM42607_REG_SIGNAL_PATH_RESET,
> +			   INV_ICM42607_SIGNAL_PATH_RESET_SOFT_RESET);
> +	if (ret)
> +		return ret;



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
