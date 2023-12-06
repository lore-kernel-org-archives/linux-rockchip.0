Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8CC0C4167B
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Dec 2023 09:30:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JFiEto3H/AryMJFXlGx3fRYCcvBWrXwzryQGGwGr/P8=; b=3WidWpz9hf2kzp
	YJb2Vb6y8INazTLk17odp8M1EI005gt2fGuvTWWL79dJoZZaRI/kbUw46qyOIRv8gpKnnjydQLGpl
	jcYwc7iB5I8EbW9liF5J/TtOI3B5RLx31/DP/rIy9UOAN85o/n2iA1ght09GSCnCuF0/K+S9R6wFf
	z+o+c1LNrl3D4QbOdFQhqyPmO4B2BkYbzXbw1g7K4STmzUl3GfEhUWrDgpZZbQnwUSW7sP7jJGs6A
	y/y6yXtRlkkzG2xQfnLKw91jCHpoMiEaqv5Tr7EjtI1cWIUbyfFx2Nu2XKkwDl6N6NSC8AwtyLx1H
	XP5bXE/RWTQ0p5E3TpuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAoEC-009YcA-2a;
	Wed, 06 Dec 2023 09:30:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAoE9-009Yb9-0s;
	Wed, 06 Dec 2023 09:29:58 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rAoE4-0008Mk-HT; Wed, 06 Dec 2023 10:29:52 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andi Shyti <andi.shyti@kernel.org>,
 Jensen Huang <jensenhuang@friendlyarm.com>
Cc: Jensen Huang <jensenhuang@friendlyarm.com>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] i2c: rk3x: fix potential spinlock recursion on poll
Date: Wed, 06 Dec 2023 10:29:51 +0100
Message-ID: <5298230.31r3eYUQgx@diego>
In-Reply-To: <20231206090641.18849-1-jensenhuang@friendlyarm.com>
References: <20231206090641.18849-1-jensenhuang@friendlyarm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231206_012957_312061_2559585F 
X-CRM114-Status: GOOD (  21.59  )
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

Am Mittwoch, 6. Dezember 2023, 10:06:40 CET schrieb Jensen Huang:
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
> 
> Signed-off-by: Jensen Huang <jensenhuang@friendlyarm.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>


> ---
>  drivers/i2c/busses/i2c-rk3x.c | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c-rk3x.c
> index a044ca0c35a1..94514637c3bd 100644
> --- a/drivers/i2c/busses/i2c-rk3x.c
> +++ b/drivers/i2c/busses/i2c-rk3x.c
> @@ -200,6 +200,7 @@ struct rk3x_i2c {
>  	struct clk *clk;
>  	struct clk *pclk;
>  	struct notifier_block clk_rate_nb;
> +	int irq;
>  
>  	/* Settings */
>  	struct i2c_timings t;
> @@ -1087,13 +1088,18 @@ static int rk3x_i2c_xfer_common(struct i2c_adapter *adap,
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
> @@ -1310,6 +1316,8 @@ static int rk3x_i2c_probe(struct platform_device *pdev)
>  		return ret;
>  	}
>  
> +	i2c->irq = irq;
> +
>  	platform_set_drvdata(pdev, i2c);
>  
>  	if (i2c->soc_data->calc_timings == rk3x_i2c_v0_calc_timings) {
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
