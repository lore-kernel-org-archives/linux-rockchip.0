Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C19D51094489
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Mar 2026 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iWpBnSXm+fjfmzEDZAuXHFCWz1rLNJ1qXnV221BOky4=; b=BDkK1/tCjHOvbB
	NHnd7HG835ypGmtSODuWehx4YJV+9RjIOngbbHWI/ZzwwDVogGVGJQAmOQszNnS/W4MS4GktpXXmk
	/S2ydGxt9vJMtb8NwsL/Lfpp+cxoLvbZFKvho99kaHPXyF16lrI1G07Snj4wvS9SSQSgbSR3f0Psk
	yXNC1JMWRRlPiFWPlqL6LUQ3+riUnGawRIucuJypkr538mBhz2aGQTlp9Y5GbDQcmFMWlg1/BTFU1
	Hli0v8kaax5eubnp2DlZ/Hz73df3kNbnoxntfA8Q36m8+sVxCKftEPbK5EcUDCRUXSQQOkOd/BRju
	yDkwO5snpii1kgqo8iAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4056-0000000Eg4y-2Pql;
	Sat, 21 Mar 2026 17:25:48 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4053-0000000Eg4Z-0KQG
	for linux-rockchip@lists.infradead.org;
	Sat, 21 Mar 2026 17:25:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 4FF5340A15;
	Sat, 21 Mar 2026 17:25:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0BF62C2BCAF;
	Sat, 21 Mar 2026 17:25:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774113944;
	bh=fwl11kL8Op8XMSdszzWCD76kZNKa2UFglzZhJStW7Ns=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=WbB+gcBz88AqbGHV7m1yNr589Q92lqe2wGWKVU5UUrNfMa3iISrhDQOrkbVhJoQ2T
	 SnDcx1NUsY45DP8JdVW9RPSfarXPjQPQbFgRp9NDUTUMyxQgo8DuO3YJkL8qfbw1Ch
	 VUgEhzRKQYTTwBBGyHrBLUbW2cknO/xy7j85nsp8KAVKaLRp7f1cPESEfViN8sfx4t
	 +cHramp+cChI8wuQxBHVyEkRLFN8n8QA+dnVeY0SfaHufGbkiOmjPrtkzp7/mMng3N
	 bz4A/x4dFwUGAzrAKT6iPN1eS0bq5RGT7auaEELdGaxOTQAfEZbm617Pbhx4jqc5Kk
	 nlD0vVlM8Pv3g==
Date: Sat, 21 Mar 2026 17:25:34 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V2 3/5] iio: imu: inv_icm42600: Add registers for
 icm42607
Message-ID: <20260321172534.388e71f5@jic23-huawei>
In-Reply-To: <20260319182956.146976-4-macroalpha82@gmail.com>
References: <20260319182956.146976-1-macroalpha82@gmail.com>
	<20260319182956.146976-4-macroalpha82@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.51; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260321_102546_351217_C9CAD644 
X-CRM114-Status: GOOD (  11.33  )
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

On Thu, 19 Mar 2026 13:29:39 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add the register layout for the icm_42607. Most of the registers are
> similar to that of the icm42600, though at different addresses.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Hi Chris,

Just taking a quick look given Jean-Baptiste's concerns
about doing this in the existing driver.

Thanks,

Jonathan

>  
> +/* ICM42607 Specific registers. */
> +
> +/* Virtual register addresses: @bank on MSB (4 upper bits), @address on LSB */
> +
> +/* Register Map for User Bank 0 */
> +#define INV_ICM42607_REG_DEVICE_CONFIG			0x01
> +#define INV_ICM42607_DEVICE_CONFIG_SPI_AP_4WIRE		BIT(2)
> +#define INV_ICM42607_DEVICE_CONFIG_SPI_MODE		BIT(0)
> +
> +#define INV_ICM42607_REG_SIGNAL_PATH_RESET		0x02
> +#define INV_ICM42607_SIGNAL_PATH_RESET_SOFT_RESET	BIT(4)
> +#define INV_ICM42607_SIGNAL_PATH_RESET_FIFO_FLUSH	BIT(2)
> +
> +#define INV_ICM42607_REG_DRIVE_CONFIG1			0x03
> +#define INV_ICM42607_DRIVE_CONFIG1_I3C_DDR_MASK		GENMASK(5, 3)
> +#define INV_ICM42607_DRIVE_CONFIG1_I3C_DDR(_rate)	\
> +FIELD_PREP(INV_ICM42607_DRIVE_CONFIG1_I3C_DDR_MASK, (_rate))

I'd indent the second line of these two line defines to make it easier to
see it's a continuation.

> +#define INV_ICM42607_DRIVE_CONFIG1_I3C_SDR_MASK		GENMASK(2, 0)
> +#define INV_ICM42607_DRIVE_CONFIG1_I3C_SDR(_rate)	\
> +FIELD_PREP(INV_ICM42607_DRIVE_CONFIG1_I3C_SDR_MASK, (_rate))


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
