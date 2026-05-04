Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C011CD3427
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 May 2026 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rKRXiX455ZRBoJ+ocqVDjZNo6wMKLSUzlauTTuBvRzU=; b=Q1Ch1VlY3jcSj+
	CE0PnvXtbq800JB+BYgR5C0JjiuYG3RM6aLMf2CHXwR1nchfo8H1jzhT9D+7kmJwP3U4e2EHuLamY
	32NdrFpMar1JV+24aKKSTzsSXgOk3yTEwUrnrlpPShXN2kQONBViGMx6nXMRFPjMv2F3MxSM4OjOp
	jNJtY0uElGkFklaMGTACBaf4dV/p+wO0ui4ExkLSYamw0s/yu5+C27R3PUXh1FHcGyHISq58hYoAX
	KjMAERto9QaCnhMFeQSIXHssioPKTyaMqTHrlUVfuZ2Hi04ZJOdqyqJyhF+CMxyLsvk/QGM/FSe8o
	DUzmLdA/b6sTF3d3LvGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJxpf-0000000Dx9Q-18Dx;
	Mon, 04 May 2026 18:15:51 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJxpd-0000000Dx8x-0qLA
	for linux-rockchip@lists.infradead.org;
	Mon, 04 May 2026 18:15:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 4CA5E41808;
	Mon,  4 May 2026 18:15:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 091FAC2BCB8;
	Mon,  4 May 2026 18:15:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777918548;
	bh=Jo0bMb9H44ijTSfFfhQ4fargPipTvFE09gFg7hlCjbw=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=gtHGlM7zpqqSdMOZYaEx9y3VmiBII1XKpmFJzGucchUKn/fPExUVSlmpihllna2fq
	 BjuO2LHH6T+mFh7YS+VYd+tLj0MEBb/YrbpLxCcb6rJqyRsY1jeqxFk3kEtNAOUnKl
	 qk/WSuvC3l3dQZCMzso9o/tTrwrGP6YKKIwuo+BD1opYEP1iKsCgkgXQ1IXP9KBRo8
	 R87DHXeM9ZuHDPTK7X8QX4Z2CFjaH1Ax/S+WPmme4yrQ46hJPjiwsc/bflYW40P/2z
	 6Sohm6DCSgmXAxKl5cYo3r7PnX0clQDx7mRTaOJ/bfQFZb8HQQkohsB5JI9Mb5mtbh
	 nK17mxPE3iX8w==
Date: Mon, 4 May 2026 19:15:37 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V4 03/10] iio: imu: inv_icm42607: Add I2C and SPI For
 icm42607
Message-ID: <20260504191537.17fb8d05@jic23-huawei>
In-Reply-To: <20260501221152.194251-4-macroalpha82@gmail.com>
References: <20260501221152.194251-1-macroalpha82@gmail.com>
	<20260501221152.194251-4-macroalpha82@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260504_111549_289777_B7E30E8E 
X-CRM114-Status: GOOD (  17.91  )
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

On Fri,  1 May 2026 17:11:42 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add I2C and SPI driver support for InvenSense ICM-42607 devices.
> Add necessary Kconfig and Makefile to allow building of (incomplete)
> driver.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c
> new file mode 100644
> index 000000000000..7a02bbab3a63
> --- /dev/null
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c

> +static const struct of_device_id inv_icm42607_of_matches[] = {
> +	{
> +		.compatible = "invensense,icm42607",
> +		.data = (void *)INV_CHIP_ICM42607,
> +	},
> +	{
> +		.compatible = "invensense,icm42607p",
> +		.data = (void *)INV_CHIP_ICM42607P,
> +	},
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(of, inv_icm42607_of_matches);
> +
> +static const struct spi_device_id inv_icm42607_spi_id_table[] = {
> +	{ "icm42607", INV_CHIP_ICM42607 },
> +	{ "icm42607p", INV_CHIP_ICM42607P },
Very strong preference in new code to not use enums for the data.
That explains why you need the magic invalid in previous patch.

Can we instead just use pointers to the per chip data relevant
to each one? That usually means some externs in the header.

We used to do things how you have it here, but the enums always
end up proving a pain as drivers get more complex.  They also
encourage part specific code when it should almost always be
part specific constant data.

Currently I'm not sure what is different between these parts.
If nothing yet from point of view of what the driver supports
then don't bother providing data 'yet'.

Jonathan



> +	{ }
> +};

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
