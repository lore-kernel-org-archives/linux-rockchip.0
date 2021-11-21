Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C0CDC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Nov 2021 18:01:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b3KeHsPDA9WtsU5TQTRuZ5T9vtQQFKa3J5J0XMRCoK0=; b=XDUJcF2LwYcCoc
	XQJxnmsWStg0RDx84uhSnc9/esIAaJ5OrBpEW/SIhbP9JJdB0jpfpZNUXW97kNcJG0vDdv2KKiOfZ
	Fqc+iGpKeS4tFhJ5Lp/IaSml/1g6exZrFg607J008JI98IjTuW35uxciNtB4F0wKnDtBX6HuiV2G4
	AVT+ov4Dr4wYsy3hmLVRWPMXtym6jf97nRvwXVhoB+EB6ISYkWR7//sr/BMmiuvHg5qY4XpOiMFga
	8wtJhDFkSHWuKAjgaGEmxKQgIt7n9qwNM7fwXbwzrKPiy12907ZIIbE68RKqdgoElVCuj/xRdX+Zv
	uYheN7VzB8YSJqBtifug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mor9K-00E6FF-HS; Sun, 21 Nov 2021 18:01:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mor97-00E6Cc-Hg; Sun, 21 Nov 2021 18:00:58 +0000
Received: from ip5f5a6e92.dynamic.kabel-deutschland.de ([95.90.110.146]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mor96-0007x2-7a; Sun, 21 Nov 2021 19:00:56 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-i2c@vger.kernel.org, John Keeping <john@metanate.com>
Cc: John Keeping <john@metanate.com>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] i2c: rk3x: enable clock before getting rate
Date: Sun, 21 Nov 2021 19:00:55 +0100
Message-ID: <1738891.e3IbIVKTtj@diego>
In-Reply-To: <20211004131539.1253195-1-john@metanate.com>
References: <20211004131539.1253195-1-john@metanate.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211121_100057_640311_A9DA0BB1 
X-CRM114-Status: GOOD (  19.72  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Am Montag, 4. Oktober 2021, 15:15:39 CET schrieb John Keeping:
> clk_get_rate() is documented as requiring the clock to be enabled.
> Ensure that the bus clock is enabled before calling clk_get_rate() in
> rk3x_i2c_probe() to satisfy this requirement.
> 
> Signed-off-by: John Keeping <john@metanate.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

Do you maybe want to repost and include the actual i2c-maintainers
in the recipient list?


Heiko

> ---
>  drivers/i2c/busses/i2c-rk3x.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c-rk3x.c
> index 819ab4ee517e..332755fab2a1 100644
> --- a/drivers/i2c/busses/i2c-rk3x.c
> +++ b/drivers/i2c/busses/i2c-rk3x.c
> @@ -1338,8 +1338,15 @@ static int rk3x_i2c_probe(struct platform_device *pdev)
>  		goto err_pclk;
>  	}
>  
> +	ret = clk_enable(i2c->clk);
> +	if (ret < 0) {
> +		dev_err(&pdev->dev, "Can't enable bus clk: %d\n", ret);
> +		goto err_clk_notifier;
> +	}
> +
>  	clk_rate = clk_get_rate(i2c->clk);
>  	rk3x_i2c_adapt_div(i2c, clk_rate);
> +	clk_disable(i2c->clk);
>  
>  	ret = i2c_add_adapter(&i2c->adap);
>  	if (ret < 0)
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
