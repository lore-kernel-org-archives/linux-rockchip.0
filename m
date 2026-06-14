Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF50ECD98D2
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Jun 2026 16:19:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zjlbEu9Q/lR2oBYE+2RD6aKpWuV+NaekVoLZ7o9ChQU=; b=uHx0BY4U8im0Tt
	OQl2g5g2pcxcfdMANpYDZEpy0dIOMW0lqrY5KZW+1TWwhjiMuFjhkAiiLVglYWlb8KxPlTSIyUG5i
	J9Z6HFWDkMZtwP/e1CT02eJkvcXoV71n8sIrfxF/6ICc4VH5kTubezcY4cadujRpMexmhC2/LcXMD
	1O+zaSy8vxYLbkYPK17jsS89t0tLR+/MZ8YhN0oNxqGIrk05Hf7tXj6ILISjn/4NamwS5rNlSJBfx
	Uuw6ExgqYBImogkKY8w516Ok6G6SXiTsppIPBAtezJNfhE6CpKQKXIEeWjV1C13fTCWlEwC4HSCpL
	Yz8TAjwwh3l0B0ggZqWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYnY3-0000000DAVQ-35to;
	Sun, 14 Jun 2026 16:18:59 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYnY3-0000000DAVK-0Ujm
	for linux-rockchip@lists.infradead.org;
	Sun, 14 Jun 2026 16:18:59 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7DD974409B;
	Sun, 14 Jun 2026 16:18:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F0221F000E9;
	Sun, 14 Jun 2026 16:18:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781453938;
	bh=vfiPIMniAWdC1PsQ0hJ1yVaU8+9W++L3dc25YiOQvD0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=LHEPG9D7UVhPmjlJTEDFlmtaX9mhck4/8f++HRh2fIcs01XtbDN9WM88B2KiWeV2G
	 RRy9ienGZS9G8G+5Lw7cBg1D3WIl8ljtp98iFVCn0n/NtJCF5P30pXAqdlCUIlyFqn
	 tzUyWf95LG3cFgZvrFeAlDi7owpawi/hwbx+1J8D4RUd9T1SwNJqUwW3iHX3HziCK9
	 FY3RhToTmtdgFclKDqwjHZ/Rafd2VDQt4O3CGj2+taHZvTvcW+icMFoAhs0UqEtRhe
	 PZ0ZJzURPF+EDFSrmtd66uja+zfC2RA4By4bHIH2G5+CiZ4TS0rZbmeGhLszigZb5U
	 iB6XT0QUJ1WWw==
Date: Sun, 14 Jun 2026 17:18:47 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V12 3/9] iio: imu: inv_icm42607: Add inv_icm42607 Core
 Driver
Message-ID: <20260614171847.3c412ca3@jic23-huawei>
In-Reply-To: <20260611202607.85376-4-macroalpha82@gmail.com>
References: <20260611202607.85376-1-macroalpha82@gmail.com>
	<20260611202607.85376-4-macroalpha82@gmail.com>
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

On Thu, 11 Jun 2026 15:26:00 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add the core component of a new inv_icm42607 driver. This includes
> a few setup functions and the full register definition in the
> header file, as well as the bits necessary to compile and probe the
> device when used on an i2c bus.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Hi Chris,

Given this is nearly ready to merge I took a look at Sashiko and
seems it has found a few more things.

Other than those, looks good to me.

Jonathan

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607.h b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
> new file mode 100644
> index 000000000000..c85d3b74166f
> --- /dev/null
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607.h

> +#define INV_ICM42607_REG_INTF_CONFIG0			0x35
> +#define INV_ICM42607_INTF_CONFIG0_FIFO_COUNT_FORMAT	BIT(6)
> +#define INV_ICM42607_INTF_CONFIG0_FIFO_COUNT_ENDIAN	BIT(5)
> +#define INV_ICM42607_INTF_CONFIG0_SENSOR_DATA_ENDIAN	BIT(4)
> +#define INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_MASK	GENMASK(1, 0)
> +#define INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_SPI_DIS	\
> +	FIELD_PREP(INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_MASK, 2)
Define this as simply 2.

> +#define INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_I2C_DIS	\
> +	FIELD_PREP(INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_MASK, 3)
and 3
not the FIELD_PREPified version

Sashiko correctly called out that it is field_prepped again at
the callsite.  As the mask includes lowest bit this is will 'work'
but definitely isn't what you intended!


> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> new file mode 100644
> index 000000000000..5d40f1ee53d6
> --- /dev/null
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c

> +static bool inv_icm42607_is_readable_reg(struct device *dev, unsigned int reg)
> +{
> +	switch (reg) {
> +	case INV_ICM42607_REG_MCLK_RDY ... INV_ICM42607_REG_INT_CONFIG:
> +	case INV_ICM42607_REG_TEMP_DATA1 ... INV_ICM42607_REG_TMST_FSYNCL:
> +	case INV_ICM42607_REG_APEX_DATA4 ... INV_ICM42607_REG_INTF_CONFIG1:
> +	case INV_ICM42607_REG_INT_STATUS_DRDY ... INV_ICM42607_REG_FIFO_DATA:
Sashiko pointed out that the WOM_ registers, 4b to 4d are in the defines, but
not readable or writeable which seems like an omission.

So far only matters for debug, but perhaps better to add them from the start.

> +	case INV_ICM42607_REG_WHOAMI:
> +		return true;
> +	}
> +
> +	return false;
> +}
> +
> +static bool inv_icm42607_is_writeable_reg(struct device *dev, unsigned int reg)
> +{
> +	switch (reg) {
> +	case INV_ICM42607_REG_DEVICE_CONFIG ... INV_ICM42607_REG_INT_CONFIG:
> +	case INV_ICM42607_REG_PWR_MGMT0 ... INV_ICM42607_REG_INT_SOURCE4:
> +	case INV_ICM42607_REG_INTF_CONFIG0 ... INV_ICM42607_REG_INTF_CONFIG1:
> +		return true;
> +	}
> +
> +	return false;
> +}

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
