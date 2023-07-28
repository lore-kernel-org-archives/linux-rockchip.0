Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D501C001DE
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Jul 2023 18:28:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rSCb+puzRbsRr6YXS+nnK3ricbd9yXEDySiEroRzdSk=; b=2ULdWDUcyOs0pf
	wcOfpRUXCcdfKebfj0E6ASd6ArLlBP+vuRi7qXwCcgQVu/PV9SjT+QMwiyuF9bTFUdkBqPPJLx6bJ
	F1aliY6fiphBGSW/yfHEB/tJUfK4+3i4SzMqWU87x7gyOb42bCH3i4va9GmRhnwUXX6vI9Vbk/h3h
	8A1CPt3B0h9NiQ3SzzKYn6u4V0zQykrg+QSaMKI/rXcDhh6FQnZvjlmT0IIrPjycEyg8Bq6JKQKXl
	lO1EJ1b/i8BGn8ZJgMD2PkHj6SIPUVUREn4t8Fw5yllbVgaZkQ2RStdUc7RWrOMA8OfFWTA5tnXQT
	T+wPSKQmqkhZ3ExGiqqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qPSC7-004Wto-2G;
	Fri, 28 Jul 2023 18:28:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qPS8e-004V3w-1M;
	Fri, 28 Jul 2023 18:24:33 +0000
Received: from [185.230.175.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qPS7F-0000Zp-K4; Fri, 28 Jul 2023 20:23:05 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linus.walleij@linaro.org, jic23@kernel.org, lars@metafoo.de,
 haibo.chen@nxp.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 ktsai@capellamicro.com, risca@dalakolonin.se, christophe.jaillet@wanadoo.fr,
 dan.carpenter@linaro.org, linux-arm-kernel@lists.infradead.org,
 linux-iio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Ruan Jinjie <ruanjinjie@huawei.com>
Cc: ruanjinjie@huawei.com
Subject: Re: [PATCH -next] iio: adc: Remove redundant dev_err_probe()
Date: Fri, 28 Jul 2023 20:23:04 +0200
Message-ID: <115418516.nniJfEyVGO@phil>
In-Reply-To: <20230727073912.4178659-1-ruanjinjie@huawei.com>
References: <20230727073912.4178659-1-ruanjinjie@huawei.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230728_112432_465261_FBF3B8CE 
X-CRM114-Status: GOOD (  16.12  )
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

Am Donnerstag, 27. Juli 2023, 09:39:12 CEST schrieb Ruan Jinjie:
> There is no need to call the dev_err() function directly to print a custom
> message when handling an error from either the platform_get_irq() or
> platform_get_irq_byname() functions as both are going to display an
> appropriate error message in case of a failure.
> 
> Signed-off-by: Ruan Jinjie <ruanjinjie@huawei.com>
> ---

>  drivers/iio/adc/rockchip_saradc.c | 2 +-

For Rockchip:
Acked-by: Heiko Stuebner <heiko@sntech.de>

> diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
> index 4b011f7eddec..8270652244c2 100644
> --- a/drivers/iio/adc/rockchip_saradc.c
> +++ b/drivers/iio/adc/rockchip_saradc.c
> @@ -467,7 +467,7 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
>  
>  	irq = platform_get_irq(pdev, 0);
>  	if (irq < 0)
> -		return dev_err_probe(&pdev->dev, irq, "failed to get irq\n");
> +		return irq;
>  
>  	ret = devm_request_irq(&pdev->dev, irq, rockchip_saradc_isr,
>  			       0, dev_name(&pdev->dev), info);





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
