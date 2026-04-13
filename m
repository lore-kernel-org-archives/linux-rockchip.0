Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94872F531C7
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Apr 2026 19:37:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=944fwqq4gsZgZZ1Z98XVb3lGrLjlC6A6ZsiH0aVJbxA=; b=WC0/xFlKUS9Gzr
	ggFF6FNjphntUVvmORS5VF6QWF23dMhBgFg2sQZYHBfc0MgCI2xVZ1e6pH5cSvjBH/L0l4vJZrIxc
	agsI5rYrOgpzz8a0cOK5sXJh25LUvANRR2EEpd0DA+HqvLEKhQrsyOBsirIo5pSMzQ1wIeSWT+LJa
	2OlvUyiuzZkwU4lxUETWf0MnwicrzhVmBolLii9zSX1EDfYAahtJpDf0ImJd1swJv80TdnuL7h0wI
	phRGrbcE9JVLNOli93m6NQKoZV7vbs+tVWgMM6U1rJUoQshaJ1Pu7hzF4/GMhMb+POgNrkxrSOoPW
	yuuM+1LHdH4XJsMLeZkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCN6S-0000000GJhG-0pNF;
	Mon, 13 Apr 2026 19:37:48 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCN6P-0000000GJgh-2vnO
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Apr 2026 19:37:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1CE544028D;
	Mon, 13 Apr 2026 19:37:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F3886C2BCAF;
	Mon, 13 Apr 2026 19:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776109065;
	bh=En1ttawX0jEssZolW/p6qsjQd/8okr4Vj7g0UZWFEJs=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=s2SgMvhuxySjPJZd7ZigYv5bHj2NMwwXq1GSnQlGHDh6GL0/X01mvYX9Ei+wZsVG4
	 hnC0kFpKXYlz3LGxSZiFTHIL85dJlmaVWWKBeMhaPX9xoUD+Wxv3KHDDf+8IS+Uc1X
	 d5QBBH1GW1G56bxnd8t9lIj0SvXk9RqdK/6LWd2SlJXnzQC15FGA69ZoIR9YGtOGp0
	 JcIqsmdt97FAm9UUrSDJTauHrnI2XNjlDavZ99fnYTf/p1Wq5fVh2rpbcV1E2S4sg2
	 R3XW1XOYHIKxVkuleDFQkoeuBMwQ/3C5smlH1g3yTm5MkRdApHbwY/2oy8720bQoIX
	 Lk7g0N07986Yw==
Date: Mon, 13 Apr 2026 20:37:34 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V3 7/9] iio: imu: inv_icm42607: Add Interrupt and Wake
 on Movement for icm42607
Message-ID: <20260413203734.3f07a095@jic23-huawei>
In-Reply-To: <20260330195853.392877-8-macroalpha82@gmail.com>
References: <20260330195853.392877-1-macroalpha82@gmail.com>
	<20260330195853.392877-8-macroalpha82@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_123745_785942_7A2F793A 
X-CRM114-Status: GOOD (  19.56  )
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

On Mon, 30 Mar 2026 14:58:51 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for wake on movement for the icm42607 driver.
> 
> At this point the driver is usable as an accelerometer/temperature
> driver, so add the necessary Makefile and Kconfig changes as well.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>l
A few comments on this one.

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607.h b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
> index 56bb09e2c304..f5f1b5fea183 100644
> --- a/drivers/iio/imu/inv_icm42607/inv_icm42607.h
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607.h

...

>
>  struct iio_dev *inv_icm42607_accel_init(struct inv_icm42607_state *st)
> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> index 62a1371b0c4a..4ac3af52c1b8 100644
> --- a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c

> +
> +int inv_icm42607_disable_wom(struct inv_icm42607_state *st)
> +{
> +	int ret;
> +
> +	/* disable WoM interrupt */
> +	ret = regmap_clear_bits(st->map, INV_ICM42607_REG_INT_SOURCE1,
> +				INV_ICM42607_INT_SOURCE1_WOM_INT1_EN);
> +	if (ret)
> +		return ret;
> +
> +	/* disable WoM hardware */
> +	return regmap_clear_bits(st->map, INV_ICM42607_REG_WOM_CONFIG,
> +				 INV_ICM42607_WOM_CONFIG_EN);

regmap_set_bits()

> +}
> +
> +

As below.

>  int inv_icm42607_debugfs_reg(struct iio_dev *indio_dev, unsigned int reg,

> +
> +/**
> + * inv_icm42607_irq_init() - initialize int pin and interrupt handler
> + * @st:		driver internal state
> + * @irq:	irq number
> + * @irq_type:	irq trigger type
> + * @open_drain:	true if irq is open drain, false for push-pull
> + *
> + * Returns 0 on success, a negative error code otherwise.
> + */
> +static int inv_icm42607_irq_init(struct inv_icm42607_state *st, int irq,
> +				int irq_type, bool open_drain)
> +{
> +	struct device *dev = regmap_get_device(st->map);
> +	unsigned int val = 0;
> +	int ret;
> +
> +	switch (irq_type) {
> +	case IRQF_TRIGGER_RISING:
> +	case IRQF_TRIGGER_HIGH:
> +		val = INV_ICM42607_INT_CONFIG_INT1_ACTIVE_HIGH;
> +		break;
> +	default:
> +		val = INV_ICM42607_INT_CONFIG_INT1_ACTIVE_LOW;
> +		break;
> +	}
> +
> +	switch (irq_type) {
> +	case IRQF_TRIGGER_LOW:
> +	case IRQF_TRIGGER_HIGH:
> +		val |= INV_ICM42607_INT_CONFIG_INT1_LATCHED;
> +		break;
> +	default:
> +		break;
> +	}
> +
> +	if (!open_drain)
> +		val |= INV_ICM42607_INT_CONFIG_INT1_PUSH_PULL;
> +
> +	ret = regmap_write(st->map, INV_ICM42607_REG_INT_CONFIG, val);
> +	if (ret)
> +		return ret;
> +
> +	irq_type |= IRQF_ONESHOT;
> +	return devm_request_threaded_irq(dev, irq, inv_icm42607_irq_timestamp,
> +					 inv_icm42607_irq_handler, irq_type,
> +					 st->name, st);
> +}
> +
> +

Trivial but single line is always enough (in IIO anyway)

>  static int inv_icm42607_enable_vddio_reg(struct inv_icm42607_state *st)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
