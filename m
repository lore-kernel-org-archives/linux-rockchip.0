Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BCB1C4167B
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Dec 2023 08:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mmMDrC8wt7AtwpouZJMaBxDwvebN3ilwUe9647AfLAY=; b=aaGgmKtE9HBXgUZT0RB0nFpL74
	sHfGjRFA/lmfPwmbWAcgSmRkF4Oiq91IF3Aws59hf7Z8WJR/TbFLwTp9yCDRz2EgTXfUrSiUS+qkq
	ZdvCZHGzaCG0EU2YzVsDrxCptLkbZ0kAZyYt+QN7LahXhgbS3mNqRaCyvM0D5DUC42MhioR3xXJbp
	sOSa5/TDsg6jxOGGMYej1PLcsnmQZSu5hymsVb58GHTteYNpEjBDfFxM8wnmnyBb24zN6m6bWspy7
	5sCNRECOdt39BgVDV5ojnxBdFSHQNZ2fVgs3dBj1oBWWquqdbGQmIIJspTceaLtzm5I+P7MVIZquS
	aJD2d5Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rB9sh-00CExm-02;
	Thu, 07 Dec 2023 08:37:15 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rB9sb-00CEvg-2o;
	Thu, 07 Dec 2023 08:37:12 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1701938223;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ItJvp86mvKeMDbvON2mlBeaPlnTZSQtaPqu7Y3Wk7gc=;
	b=apBinFhY27PhsJ07Cw8uCjWrCpuBCPMK6GzUR0aOWW5xTxRSCNgeP0H8ZpHndVXiHzIJek
	7RBgE81Zb1CJwIL3wY5aosDGgdKxnSCQL5vTOreX624afVuqQDQ6tQVfxxXbOh86cFOicD
	mX4yi4bmZl+dyplE/4A5Vkjf7xYmPYHUdU1NDWR2+kOREsEL56pH8VOWOUv9QYMmAVLqLV
	rSgE6Mv+wUVyrvmjiJP09lpSFoXmNCnRl+OTWuJWn2ER71IT4bAY+epz3HDR1/717pbC/j
	SKXXbzGYOGXwlqw3VEY4TUQW5bRcl4q9vzzRYHKWkGoiTwHvJ67/He09CzU9sw==
Date: Thu, 07 Dec 2023 09:37:03 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Jensen Huang <jensenhuang@friendlyarm.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Andi Shyti <andi.shyti@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org, Dmitry Osipenko
 <dmitry.osipenko@collabora.com>, Chris Morgan <macroalpha82@gmail.com>,
 Benjamin Bara <bbara93@gmail.com>
Subject: Re: [PATCH v2] i2c: rk3x: fix potential spinlock recursion on poll
In-Reply-To: <20231207082200.16388-1-jensenhuang@friendlyarm.com>
References: <20231207082200.16388-1-jensenhuang@friendlyarm.com>
Message-ID: <ebf6cf8ec3b5befd673d295061fa2738@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_003710_548575_998AF9B9 
X-CRM114-Status: GOOD (  18.72  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2023-12-07 09:21, Jensen Huang wrote:
> Possible deadlock scenario (on reboot):
> rk3x_i2c_xfer_common(polling)
>     -> rk3x_i2c_wait_xfer_poll()
>         -> rk3x_i2c_irq(0, i2c);
>             --> spin_lock(&i2c->lock);
>             ...
>         <rk3x i2c interrupt>
>         -> rk3x_i2c_irq(0, i2c);
>             --> spin_lock(&i2c->lock); (deadlock here)
> 
> Store the IRQ number and disable/enable it around the polling transfer.
> This patch has been tested on NanoPC-T4.

In case you haven't already seen the related discussion linked below, 
please have a look.  I also added more people to the list of recipients, 
in an attempt to make everyone aware of the different approaches to 
solving this issue.

https://lore.kernel.org/all/655177f4.050a0220.d85c9.3ba0@mx.google.com/T/#m6fc9c214452fec6681843e7f455978c35c6f6c8b

> Signed-off-by: Jensen Huang <jensenhuang@friendlyarm.com>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> Reviewed-by: Andi Shyti <andi.shyti@kernel.org>
> ---
> Changes in v2:
>  - Add description for member 'irq' to fix build warning
> 
>  drivers/i2c/busses/i2c-rk3x.c | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-rk3x.c 
> b/drivers/i2c/busses/i2c-rk3x.c
> index a044ca0c35a1..4362db7c5789 100644
> --- a/drivers/i2c/busses/i2c-rk3x.c
> +++ b/drivers/i2c/busses/i2c-rk3x.c
> @@ -178,6 +178,7 @@ struct rk3x_i2c_soc_data {
>   * @clk: function clk for rk3399 or function & Bus clks for others
>   * @pclk: Bus clk for rk3399
>   * @clk_rate_nb: i2c clk rate change notify
> + * @irq: irq number
>   * @t: I2C known timing information
>   * @lock: spinlock for the i2c bus
>   * @wait: the waitqueue to wait for i2c transfer
> @@ -200,6 +201,7 @@ struct rk3x_i2c {
>  	struct clk *clk;
>  	struct clk *pclk;
>  	struct notifier_block clk_rate_nb;
> +	int irq;
> 
>  	/* Settings */
>  	struct i2c_timings t;
> @@ -1087,13 +1089,18 @@ static int rk3x_i2c_xfer_common(struct
> i2c_adapter *adap,
> 
>  		spin_unlock_irqrestore(&i2c->lock, flags);
> 
> -		rk3x_i2c_start(i2c);
> -
>  		if (!polling) {
> +			rk3x_i2c_start(i2c);
> +
>  			timeout = wait_event_timeout(i2c->wait, !i2c->busy,
>  						     msecs_to_jiffies(WAIT_TIMEOUT));
>  		} else {
> +			disable_irq(i2c->irq);
> +			rk3x_i2c_start(i2c);
> +
>  			timeout = rk3x_i2c_wait_xfer_poll(i2c);
> +
> +			enable_irq(i2c->irq);
>  		}
> 
>  		spin_lock_irqsave(&i2c->lock, flags);
> @@ -1310,6 +1317,8 @@ static int rk3x_i2c_probe(struct platform_device 
> *pdev)
>  		return ret;
>  	}
> 
> +	i2c->irq = irq;
> +
>  	platform_set_drvdata(pdev, i2c);
> 
>  	if (i2c->soc_data->calc_timings == rk3x_i2c_v0_calc_timings) {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
