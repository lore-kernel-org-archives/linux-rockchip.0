Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1029CCD98D2
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jun 2026 11:13:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Clkd/0Bp0gOkljM3iyrQYYtRt9vQg5nNyH/qhZC1NRI=; b=Mjsnh7+gVnZ9Cx
	CJDmlQZUJpHj3FtWNcI0vTZnOT6LpFoHsCuH4Nig3pXljVNc3bjQqYwtblW9P79hl/PCHHgqJPtPM
	ZrHYMGMvbUzfvn2P3f8+gXXoG7bFXaGlGwNMMzhPVRVPyWT88JNVQEBcECqx9OPMzPVHhmrGuSJ83
	g7fxn7Yt90RpnlJjpbToI2DNd/gd2au1v7BXrbB0o4rXI6HBU4KFPx6zIlHHY1c1BxvRmlYFkWkV+
	b3LqB8aZ6FndxiiBxqwrFEuZuuFVAqAyM7VbxS/1hTDU1lPFsxFhlncoX2WulxhvW8erlWVyI7RpR
	8ilYn/0i+MXqX1DpPWOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXdLT-00000009Hzq-0dNk;
	Thu, 11 Jun 2026 11:13:11 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXdLR-00000009Hza-2MxY
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Jun 2026 11:13:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D403360098;
	Thu, 11 Jun 2026 11:13:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 194AD1F00893;
	Thu, 11 Jun 2026 11:12:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781176382;
	bh=GF22alfEsZ7Aj2kyDUA7F/rXbdcAZKycOhAhKwwxKyc=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=G7amzcdyJY2HL5ZLEeJ/ZKCVWLtQpUV/IbYrOpcu0UJefokAGuRlwuM4XnpqHT+Gw
	 g7XIwBjfjruSSnMqRlEnI1Kqi/yb0A8FgPq4nvc7iSW6ISO50+fFDkn8QegSr93NAQ
	 qDZ/tl8ZJLtmVaryMNuBlK/MuFX56Nr6fyXMUNuCjGGmOFZbgpjkQauq1nCjugFItj
	 VOydb8Z9O9BGW8CL1b8ZKSOLg2kmzwM2EWDlpJuXRJM4UrZ7WQPpHvooJ35qk503SJ
	 nTH5QLnD2/pZHD5EdncnJdaVztVGH7WFoye8BJBTqiPqcVM38DcIRE6t9ALDq7iurs
	 wbi7/8QJQz0cA==
Date: Thu, 11 Jun 2026 12:12:52 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V11 4/9] iio: imu: inv_icm42607: Add I2C and SPI For
 icm42607
Message-ID: <20260611121252.679bc6ec@jic23-huawei>
In-Reply-To: <20260610175455.19006-5-macroalpha82@gmail.com>
References: <20260610175455.19006-1-macroalpha82@gmail.com>
	<20260610175455.19006-5-macroalpha82@gmail.com>
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

On Wed, 10 Jun 2026 12:54:48 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add I2C and SPI driver support for InvenSense ICM-42607 devices.
> Add necessary Kconfig and Makefile to allow building of (incomplete)
> driver.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Some similar missing FIELD_PREP() comments. Not a bug, but
a readability issue that is easy to resolve.

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> index 334264120b42..26dc09bbeaed 100644
> --- a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
>
> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c
> new file mode 100644
> index 000000000000..2946d5465853
> --- /dev/null
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c
> @@ -0,0 +1,92 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (C) 2026 InvenSense, Inc.
> + */
> +
> +#include <linux/device.h>
> +#include <linux/i2c.h>
> +#include <linux/module.h>
> +#include <linux/regmap.h>
> +
> +#include "inv_icm42607.h"
> +
> +static int inv_icm42607_i2c_bus_setup(struct inv_icm42607_state *st)
> +{
> +	unsigned int val;
> +	int ret;
> +
> +	ret = regmap_clear_bits(st->map, INV_ICM42607_REG_INTF_CONFIG1,
> +				INV_ICM42607_INTF_CONFIG1_I3C_DDR_EN |
> +				INV_ICM42607_INTF_CONFIG1_I3C_SDR_EN);
> +	if (ret)
> +		return ret;
> +
> +	val = FIELD_PREP(INV_ICM42607_DRIVE_CONFIG2_I2C_MASK,
> +			 INV_ICM42607_SLEW_RATE_12_36NS);
> +	ret = regmap_update_bits(st->map, INV_ICM42607_REG_DRIVE_CONFIG2,
> +				 INV_ICM42607_DRIVE_CONFIG2_I2C_MASK, val);
> +	if (ret)
> +		return ret;
> +
> +	return regmap_update_bits(st->map, INV_ICM42607_REG_INTF_CONFIG0,
> +				  INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_MASK,
> +				  INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_SPI_DIS);
FIELD_PREP() (see below)
> +}

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c
> new file mode 100644
> index 000000000000..3485777ac5b6
> --- /dev/null
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c
> @@ -0,0 +1,104 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (C) 2026 InvenSense, Inc.
> + */
> +
> +#include <linux/device.h>
> +#include <linux/module.h>
> +#include <linux/regmap.h>
> +#include <linux/spi/spi.h>
> +
> +#include "inv_icm42607.h"
> +
> +static int inv_icm42607_spi_bus_setup(struct inv_icm42607_state *st)
> +{
> +	unsigned int val;
> +	int ret;
> +
> +	/* Only support 4-wire mode for now. */
> +	ret = regmap_set_bits(st->map, INV_ICM42607_REG_DEVICE_CONFIG,
> +				      INV_ICM42607_DEVICE_CONFIG_SPI_AP_4WIRE);
> +	if (ret)
> +		return ret;
> +
> +	ret = regmap_clear_bits(st->map, INV_ICM42607_REG_INTF_CONFIG1,
> +				INV_ICM42607_INTF_CONFIG1_I3C_DDR_EN |
> +				INV_ICM42607_INTF_CONFIG1_I3C_SDR_EN);
> +	if (ret)
> +		return ret;
> +
> +	val = FIELD_PREP(INV_ICM42607_DRIVE_CONFIG3_SPI_MASK,
> +			 INV_ICM42607_SLEW_RATE_2NS);
> +	ret = regmap_update_bits(st->map, INV_ICM42607_REG_DRIVE_CONFIG3,
> +				 INV_ICM42607_DRIVE_CONFIG3_SPI_MASK, val);
> +	if (ret)
> +		return ret;
> +
> +	return regmap_update_bits(st->map, INV_ICM42607_REG_INTF_CONFIG0,
> +				  INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_MASK,
> +				  INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_I2C_DIS);
Should be a FIELD_PREP() for readability (so reviewer doesn't need to check
this field includes bit 0)

> +}
>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
