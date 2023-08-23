Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65D92C3DA6F
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Aug 2023 17:10:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6li9FkKN6Gr9XXzUXdvO8EChSYIIOLgpX8ZTSi8Oz4U=; b=2H43aldXSzvW6U
	EhAmWIcnVnFHVYi4g968WQNItB6QvF/eLijnmjB6VcGgCvqhO5zCDCJKyjeRdVC7Lin0Nj2dvT7sX
	j2DIMxtUNj5Y8WDYAe6zLSr+Tc+OFepA9zXMd+zzOqUesZXLsUDUax/SRGIdPgKntHHrgjF1Gn95j
	QTdANAuZtdlHADr7QhhpQncLl4ZR7FNTPyWuDWPz2xThSktHwgU+oGTyPRiBydq7ja24t5XG1Pbl9
	rjlC7j40cn0AOE8HPdpIoKZ2IdF9Sc3T1QhbnGXJCJaYvS/nXDKk2dXNr7z+Sbt0p2Ezvbq/TcL3g
	IdW+WCdEb6vfYoRL6a9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYrNY-001BWu-2l;
	Wed, 23 Aug 2023 17:10:48 +0000
Received: from frasgout.his.huawei.com ([185.176.79.56])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYrNT-001BTV-0L;
	Wed, 23 Aug 2023 17:10:45 +0000
Received: from lhrpeml500005.china.huawei.com (unknown [172.18.147.201])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4RWCPp3qVPz6HJb9;
	Thu, 24 Aug 2023 01:09:50 +0800 (CST)
Received: from localhost (10.202.227.76) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.31; Wed, 23 Aug
 2023 18:10:33 +0100
Date: Wed, 23 Aug 2023 18:10:32 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Li Zetao <lizetao1@huawei.com>
CC: <andrew@aj.id.au>, <angelogioacchino.delregno@collabora.com>,
	<avifishman70@gmail.com>, <bcm-kernel-feedback-list@broadcom.com>,
	<benjaminfair@google.com>, <broonie@kernel.org>,
	<chin-ting_kuo@aspeedtech.com>, <clg@kaod.org>, <conor.dooley@microchip.com>,
	<daire.mcnamara@microchip.com>, <fancer.lancer@gmail.com>,
	<florian.fainelli@broadcom.com>, <heiko@sntech.de>, <jbrunet@baylibre.com>,
	<joel@jms.id.au>, <khilman@baylibre.com>, <linus.walleij@linaro.org>,
	<linux-amlogic@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-aspeed@lists.ozlabs.org>, <linux-mediatek@lists.infradead.org>,
	<linux-riscv@lists.infradead.org>, <linux-rockchip@lists.infradead.org>,
	<linux-rpi-kernel@lists.infradead.org>, <linux-spi@vger.kernel.org>,
	<martin.blumenstingl@googlemail.com>, <matthias.bgg@gmail.com>,
	<neil.armstrong@linaro.org>, <olteanv@gmail.com>, <openbmc@lists.ozlabs.org>,
	<rjui@broadcom.com>, <sbranden@broadcom.com>, <tali.perry1@gmail.com>,
	<tmaimon77@gmail.com>, <venture@google.com>, <yuenn@google.com>
Subject: Re: [PATCH -next v2 02/25] spi: armada-3700: Use helper function
 devm_clk_get_prepared()
Message-ID: <20230823181032.00001455@Huawei.com>
In-Reply-To: <20230823133938.1359106-3-lizetao1@huawei.com>
References: <20230822131237.1022815-1-lizetao1@huawei.com>
	<20230823133938.1359106-1-lizetao1@huawei.com>
	<20230823133938.1359106-3-lizetao1@huawei.com>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.33; x86_64-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.227.76]
X-ClientProxiedBy: lhrpeml100004.china.huawei.com (7.191.162.219) To
 lhrpeml500005.china.huawei.com (7.191.163.240)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230823_101043_445889_4911AEA3 
X-CRM114-Status: GOOD (  18.60  )
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

On Wed, 23 Aug 2023 21:39:15 +0800
Li Zetao <lizetao1@huawei.com> wrote:

> Since commit 7ef9651e9792 ("clk: Provide new devm_clk helpers for prepared
> and enabled clocks"), devm_clk_get() and clk_prepare() can now be replaced
> by devm_clk_get_prepared() when driver prepares the clocks for the whole
> lifetime of the device. Moreover, it is no longer necessary to unprepare
> the clocks explicitly.
> 
> Signed-off-by: Li Zetao <lizetao1@huawei.com>

Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>

> ---
> v1 -> v2: Drop the empty remove function a3700_spi_remove().
> 
>  drivers/spi/spi-armada-3700.c | 23 +++--------------------
>  1 file changed, 3 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/spi/spi-armada-3700.c b/drivers/spi/spi-armada-3700.c
> index 0103ac0158c0..3c9ed412932f 100644
> --- a/drivers/spi/spi-armada-3700.c
> +++ b/drivers/spi/spi-armada-3700.c
> @@ -865,18 +865,12 @@ static int a3700_spi_probe(struct platform_device *pdev)
>  
>  	init_completion(&spi->done);
>  
> -	spi->clk = devm_clk_get(dev, NULL);
> +	spi->clk = devm_clk_get_prepared(dev, NULL);
>  	if (IS_ERR(spi->clk)) {
>  		dev_err(dev, "could not find clk: %ld\n", PTR_ERR(spi->clk));
>  		goto error;
>  	}
>  
> -	ret = clk_prepare(spi->clk);
> -	if (ret) {
> -		dev_err(dev, "could not prepare clk: %d\n", ret);
> -		goto error;
> -	}
> -
>  	host->max_speed_hz = min_t(unsigned long, A3700_SPI_MAX_SPEED_HZ,
>  					clk_get_rate(spi->clk));
>  	host->min_speed_hz = DIV_ROUND_UP(clk_get_rate(spi->clk),
> @@ -888,40 +882,29 @@ static int a3700_spi_probe(struct platform_device *pdev)
>  			       dev_name(dev), host);
>  	if (ret) {
>  		dev_err(dev, "could not request IRQ: %d\n", ret);
> -		goto error_clk;
> +		goto error;
>  	}
>  
>  	ret = devm_spi_register_controller(dev, host);
>  	if (ret) {
>  		dev_err(dev, "Failed to register host\n");
> -		goto error_clk;
> +		goto error;
>  	}
>  
>  	return 0;
>  
> -error_clk:
> -	clk_unprepare(spi->clk);
>  error:
>  	spi_controller_put(host);
>  out:
>  	return ret;
>  }
>  
> -static void a3700_spi_remove(struct platform_device *pdev)
> -{
> -	struct spi_controller *host = platform_get_drvdata(pdev);
> -	struct a3700_spi *spi = spi_controller_get_devdata(host);
> -
> -	clk_unprepare(spi->clk);
> -}
> -
>  static struct platform_driver a3700_spi_driver = {
>  	.driver = {
>  		.name	= DRIVER_NAME,
>  		.of_match_table = of_match_ptr(a3700_spi_dt_ids),
>  	},
>  	.probe		= a3700_spi_probe,
> -	.remove_new	= a3700_spi_remove,
>  };
>  
>  module_platform_driver(a3700_spi_driver);


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
