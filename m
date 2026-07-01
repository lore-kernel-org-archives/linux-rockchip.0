Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36545C43327
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Jul 2026 19:15:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kMqNKd8F3FcK+zrhJD58nlST1bHaXTviE0FK450HFbk=; b=kpzdvcmT40Ura/
	fZEmSUFJLdJV3OFecxjm2Ak+nkp0X7Pl/eURG+r83dQuaJJXfIV1XpwSeN3EpWJTuv3l9J5CUFPkQ
	Nba31Gbl18ky9a0tj7uleCUuSIa2YJYuQ9oQX4rQObHXcVAvwzz89gjxGpgDpcen3eLy0JG5rKT1R
	Svfrq8bV4CUuvlc8WHEWL/UxujK9zS6i5qnBTCZQC51XTaSGpsAZ8nr85vFNjyvpO3HYn2d+ACc4l
	0zXgXAvAntcLbcoLMKZG0VUbtx5Wo6suJ2dkrok40tAx3fFbAzdBAJmmqJeMJAbYaObEERhGX8wJQ
	Y0lHjaB9olX8/vv3GMTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf0Ou-00000002tFe-1Lws;
	Wed, 01 Jul 2026 19:15:12 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf0Ot-00000002tFP-0pFd
	for linux-rockchip@lists.infradead.org;
	Wed, 01 Jul 2026 19:15:11 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7C4E8403B1;
	Wed,  1 Jul 2026 19:15:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5704E1F000E9;
	Wed,  1 Jul 2026 19:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782933310;
	bh=PXI6rfCP7rz/KIG0Vkr+So4lrOQjJolN3JUOSQDEk48=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=WthTVLL3lgIP4mIjdkO7naf0W27hBU72WTeYtVQnHcR+DerF0bDIteht2+xlgsBnT
	 paaPLqDT3TdVMhm0BS2waNk56dCZAP7cvAqJYlOEWJlTXIL+soJRrJ+MqkqFJHcqW7
	 Zxi6H2vKaiIkxW5jrVdZPIdI07+NcjtJNGyvNXIaxfBLbN8kEH5xW3vKl04zF8g4y/
	 DXQnEkILwJsczXh4QtyzlZQsWgffpwwAdky18HC5Af4CLHKXgLgmDS6UBkEOvab+UL
	 sR60x/+w1skGlPhocNULpdG9N9KyJqn/z3Li+Dz9QKnT04GkU6i3t5Mbq2+5EY88bF
	 R+WN4xo92gOrA==
Date: Wed, 1 Jul 2026 20:15:01 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V15 3/9] iio: imu: inv_icm42607: Add inv_icm42607 Core
 Driver
Message-ID: <20260701201501.2f1dcdca@jic23-huawei>
In-Reply-To: <20260626161230.93069-4-macroalpha82@gmail.com>
References: <20260626161230.93069-1-macroalpha82@gmail.com>
	<20260626161230.93069-4-macroalpha82@gmail.com>
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

On Fri, 26 Jun 2026 11:12:24 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add the core component of a new inv_icm42607 driver. This includes
> a few setup functions and the full register definition in the
> header file, as well as the bits necessary to compile and probe the
> device when used on an i2c bus.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Hi Chris

A few minor formatting things from a fresh read.

Thanks,

Jonathan

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607.h b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
> new file mode 100644
> index 000000000000..88d35323bade
> --- /dev/null
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
> @@ -0,0 +1,364 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +/*
> + * Copyright (C) 2026 InvenSense, Inc.
> + */
> +
> +#ifndef INV_ICM42607_H_
> +#define INV_ICM42607_H_
> +
> +#include <asm/byteorder.h>
> +#include <linux/bits.h>
> +#include <linux/iio/iio.h>
> +#include <linux/mutex.h>
> +#include <linux/regmap.h>
> +#include <linux/regulator/consumer.h>
> +#include <linux/time.h>
> +#include <linux/types.h>
> +

Generally asm includes come in their own block
after the linux ones.

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c
> new file mode 100644
> index 000000000000..bde931752eb8
> --- /dev/null
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c
> @@ -0,0 +1,97 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (C) 2026 InvenSense, Inc.
> + */
> +
> +#include <linux/bitfield.h>
> +#include <linux/dev_printk.h>
> +#include <linux/err.h>
> +#include <linux/i2c.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/module.h>
> +#include <linux/regmap.h>
> +
> +

Really trivial, but one blank line is enough here.

> +#include "inv_icm42607.h"
> +



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
