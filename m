Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F9FBC77B7F
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 May 2023 15:34:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0DNbMdTsPWPuWvWVsjHw3xzWcgXE2WkaDKImr7DLGe4=; b=VSnmCsEB9QqXpa
	99kWMIGer7oJ/IXqDjUs+3oZJU0Dp0COcRpBBP9uCEeTDixG9X3dkh97Oz3VU1UN1FR54DLkgLTuh
	PpPpqlZWB0X6UmpAJh48+BO2wXvDyXCrJkz3rpCsD9X7LncZxCbx895gwMHVFXSXkRgvLmxbNTfDH
	QO62ymvh5YS+00AWSjxudAMlqtK4rFEBfSq5SfmN5C3eTLFL/2HNapdSeydGCB1rwpm4acTutABAd
	gIR37Diku5/9C4/jpc73xm6Qgw2t5tTFxMBbkCs+aa4xcojDJ4LMIj0lda4XbUnfV4wq21OZ2s9mN
	xakSu7ecEC96lzLDUSUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pywgb-006Grr-00;
	Tue, 16 May 2023 15:34:01 +0000
Received: from frasgout.his.huawei.com ([185.176.79.56])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pywgV-006GoR-1B;
	Tue, 16 May 2023 15:33:59 +0000
Received: from lhrpeml500005.china.huawei.com (unknown [172.18.147.226])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4QLKsw1wnQz6J7N3;
	Tue, 16 May 2023 23:29:40 +0800 (CST)
Received: from localhost (10.202.227.76) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.23; Tue, 16 May
 2023 16:33:50 +0100
Date: Tue, 16 May 2023 16:33:50 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
CC: <linux-rockchip@lists.infradead.org>,
	<linux-arm-kernel@lists.infradead.org>, Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>, MyungJoo Ham
	<myungjoo.ham@samsung.com>, Will Deacon <will@kernel.org>, Mark Rutland
	<mark.rutland@arm.com>, <kernel@pengutronix.de>, Michael Riesch
	<michael.riesch@wolfvision.net>
Subject: Re: [PATCH v4 03/21] PM / devfreq: rockchip-dfi: Make pmu regmap
 mandatory
Message-ID: <20230516163350.0000757a@Huawei.com>
In-Reply-To: <20230505113856.463650-4-s.hauer@pengutronix.de>
References: <20230505113856.463650-1-s.hauer@pengutronix.de>
	<20230505113856.463650-4-s.hauer@pengutronix.de>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.33; x86_64-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.227.76]
X-ClientProxiedBy: lhrpeml500005.china.huawei.com (7.191.163.240) To
 lhrpeml500005.china.huawei.com (7.191.163.240)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_083355_548842_3ECE7EE0 
X-CRM114-Status: GOOD (  18.13  )
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

On Fri,  5 May 2023 13:38:38 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> As a matter of fact the regmap_pmu already is mandatory because
> it is used unconditionally in the driver. Bail out gracefully in
> probe() rather than crashing later.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Agreed on it uses it unconditionally currently - this is
a fix, so maybe a fixes tag?


> ---
>  drivers/devfreq/event/rockchip-dfi.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> index 98712ac68aa5f..47cc9e48dafab 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -193,14 +193,14 @@ static int rockchip_dfi_probe(struct platform_device *pdev)
>  		return dev_err_probe(dev, PTR_ERR(dfi->clk),
>  				     "Cannot get the clk pclk_ddr_mon\n");
>  
> -	/* try to find the optional reference to the pmu syscon */
>  	node = of_parse_phandle(np, "rockchip,pmu", 0);
> -	if (node) {
> -		dfi->regmap_pmu = syscon_node_to_regmap(node);
> -		of_node_put(node);
> -		if (IS_ERR(dfi->regmap_pmu))
> -			return PTR_ERR(dfi->regmap_pmu);
> -	}
> +	if (!node)
> +		return dev_err_probe(&pdev->dev, -ENODEV, "Can't find pmu_grf registers\n");
> +
> +	dfi->regmap_pmu = syscon_node_to_regmap(node);

of_node_put(node);
needed, or an explanation of why not.

> +	if (IS_ERR(dfi->regmap_pmu))
> +		return PTR_ERR(dfi->regmap_pmu);
> +
>  	dfi->dev = dev;
>  
>  	desc = &dfi->desc;


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
