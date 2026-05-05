Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1942CD342F
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 May 2026 10:17:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XNwTzp01K0ikkJwZ41z6Lfbj1KBx6J82Q695BupChxo=; b=IeRdJdwhgfYtlT
	R+048yL6fBLxIZNiMAX22DyEZ7uo7wEMtdr5uq9Pil+cQqaMkYZRO5LOTqkZmzzkXwQQLpFyXz4Dw
	PStrckjs5SOllSQJHSBIZ+iioiVQYFC4tC1DkRE6e3Q6DEy/z54qYzX1dGMRuWG2ZQg4X0LFV36FH
	IHsScEooyT9nWOMovFzZdWrWGqBHVXHitpfziyJGAs3EXiw0A1CyB2hp8dXL8MnRJQqtEc96RtIWg
	Fr6+HoTG2hXrji1AMUnZiBPrplgLWjiwm1kC78AIBtjpPKwfc82weoHRWq1hQRx2fM1In3TTXbMaZ
	Yc//DOWG68+2uvLqxMBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKCqX-0000000FsRh-3W2E;
	Tue, 05 May 2026 10:17:45 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKCqW-0000000FsRW-1Zgf
	for linux-rockchip@bombadil.infradead.org;
	Tue, 05 May 2026 10:17:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=+loU1pHN7c/ejrq1r3ATmnsxvnnrJ9x/QHfvt6S+0zo=; b=aW6/kZkvXHwxbm24RM/z67lOHs
	7gLn/qkjPQE8OlJyn9GsTE2oDWInyplA3OrceqSLK0m5zdJbTb6WrMLj7L7ejrBo92so1TsZhC+WQ
	ONpHipZi3pwahLtfzyE06jNA44Ha+c5tmcSfWHqwgMJAfKcsxI8vCFgqIBeWiSlgWc+ym7u9QgDcZ
	Al+WUm56b57v9ykUvW/lw91OzzmqZ0tOFemk9yr97lNLDVQe9g/bvV8pW2LR2aBUZSNTqfikNaSq4
	kWo8tHEHvH1OzfYJW+UpYJ++zDAo7LmDK3aFvQHPhSoK15k7ahdBN1OPXWo7EIZ7o0lq09ugLNktT
	HaMhI4EA==;
Received: from sea.source.kernel.org ([172.234.252.31])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKCqT-0000000DAKe-1HgG
	for linux-rockchip@lists.infradead.org;
	Tue, 05 May 2026 10:17:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id DB978438D6;
	Tue,  5 May 2026 10:17:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84821C2BCB4;
	Tue,  5 May 2026 10:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777976257;
	bh=HiZy0Hq2RZxmk3TPPKQemNpPCrDQCvf6ZPEVCZexKAU=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=HPhMJ8fEh1VnXw3SGcS/g6PyuN1kKUoUYlnXkKsdAoTDGCAw39otgQf19rbzhrtPq
	 aa6RCPMGZtoFAmb+Iv68pXJpEC0Y6LHZMCz/JTcIKh4QXF7qm2aortty6FFL/kiDMR
	 3iAk/3MRpztY+wkXIXa38KhKeFuigA28ty287WhUyKMnoGW7v/RFA07SEfctQDoMyS
	 dQOOsuvzXUQZHv8+h4X6ekoGR/+cyXKUEdmL4xJmS0/dHuiNB761wNLeNNziLLnHcv
	 0Taf5dH6VshB58z419zZbpKMuS/nipNCsKKHXc3BdGeVCJmBTzSdG1cSf49IGOPAwp
	 ieQWsQnCSjRdQ==
Date: Tue, 5 May 2026 11:17:28 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V4 06/10] iio: imu: inv_icm42607: Add Temp Support in
 icm42607
Message-ID: <20260505111728.4fdd9eec@jic23-huawei>
In-Reply-To: <20260501221152.194251-7-macroalpha82@gmail.com>
References: <20260501221152.194251-1-macroalpha82@gmail.com>
	<20260501221152.194251-7-macroalpha82@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_111741_807006_2422997F 
X-CRM114-Status: GOOD (  19.32  )
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

On Fri,  1 May 2026 17:11:45 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add functions for reading temperature sensor data.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
A few minor things.

Thanks,

Jonathan

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_temp.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_temp.c
> new file mode 100644
> index 000000000000..bcc11620c74c
> --- /dev/null
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_temp.c
> @@ -0,0 +1,81 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (C) 2026 InvenSense, Inc.
> + */
> +
> +#include <linux/kernel.h>

As in previous avoid this by using more specific headers.

> +#include <linux/device.h>
> +#include <linux/mutex.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/regmap.h>

blank line here to match other files.

> +#include <linux/iio/iio.h>
> +
> +#include "inv_icm42607.h"
> +#include "inv_icm42607_temp.h"
> +
> +static int inv_icm42607_temp_read(struct inv_icm42607_state *st, s16 *temp)
> +{
> +	struct device *dev = regmap_get_device(st->map);
> +	__be16 *raw;
> +	int ret;
> +
> +	PM_RUNTIME_ACQUIRE_AUTOSUSPEND(dev, pm);
> +	if (PM_RUNTIME_ACQUIRE_ERR(&pm))
> +		return -ENXIO;
> +
> +	guard(mutex)(&st->lock);
> +
> +	ret = inv_icm42607_set_temp_conf(st, true, NULL);
> +	if (ret)
> +		return ret;
> +
> +	raw = &st->buffer[0];
> +	ret = regmap_bulk_read(st->map, INV_ICM42607_REG_TEMP_DATA1, raw, sizeof(*raw));
> +	if (ret)
> +		return ret;
> +
> +	*temp = be16_to_cpup(raw);
> +	if (*temp == INV_ICM42607_DATA_INVALID)
> +		ret = -EINVAL;
		return -EINVAL;

	return 0;

is no longer and to me a tiny bit simpler to read.

> +
> +	return ret;
> +}

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_temp.h b/drivers/iio/imu/inv_icm42607/inv_icm42607_temp.h
> new file mode 100644
> index 000000000000..d0bd6c460ff2
> --- /dev/null
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_temp.h
> @@ -0,0 +1,30 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +/*
> + * Copyright (C) 2026 InvenSense, Inc.
> + */
> +
> +#ifndef INV_ICM42607_TEMP_H_
> +#define INV_ICM42607_TEMP_H_
> +
> +#include <linux/iio/iio.h>

Need header for BIT() and I'm not seeing a need for this one.
Just add forward defs for struct iio_dev and struct iio_chan_spec

> +
> +#define INV_ICM42607_TEMP_CHAN(_index)				\
> +{								\
> +	.type = IIO_TEMP,					\
> +	.info_mask_separate =					\
> +		BIT(IIO_CHAN_INFO_RAW) |			\
> +		BIT(IIO_CHAN_INFO_OFFSET) |			\
> +		BIT(IIO_CHAN_INFO_SCALE),			\
> +	.scan_index = _index,					\
> +	.scan_type = {						\
> +		.sign = 's',					\
> +		.realbits = 16,					\
> +		.storagebits = 16,				\
> +	},							\
> +}
> +
> +int inv_icm42607_temp_read_raw(struct iio_dev *indio_dev,
> +			       struct iio_chan_spec const *chan,
> +			       int *val, int *val2, long mask);
> +
> +#endif


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
