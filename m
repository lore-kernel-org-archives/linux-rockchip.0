Return-Path: <SRS0=KXJX=CT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 38792C433E2
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Sep 2020 09:37:05 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B906B20809
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Sep 2020 09:37:04 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="YByjXwP6";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=st.com header.i=@st.com header.b="yCROhYCW"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B906B20809
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=st.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=60r9NS4Kgsvb8eTVRq2MIs3UJqqGwqocx3DVQjv7S6Q=; b=YByjXwP6AYpK15Sxa4WBJm2RP
	QlLgGRAoCDGvEgZqEZ5bbANomv9dL70zFSQV2GcR8Hrn6VnXNBPRle0MJwVZ/bj5fmYKKMhBBiCZ3
	rmO41lClk/PTgS8J9eGxbt1ezAJcDzqoA3ZmGxK41Uh6INqUMv9hKXpmtEobUDSMOZ/Ilg0GzLZNK
	Whf0QgXqm2qqT5WJbuH67i54RJsdsxxNNK7RhRpFRjfmtx7Dz21dnlSrqwSolEBOPKdqcQJfOVgWN
	fxbc5IbBbCEtc9ohxO2nwasrxYS/QXcTkcjtc1E6tJr0apYCfALBawaaXOmLyG0w8iP0iK7PRFnID
	qE1M1HA2Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kGJ0k-0001Bn-Kh; Thu, 10 Sep 2020 09:36:58 +0000
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kGJ0i-0001BJ-Hv; Thu, 10 Sep 2020 09:36:57 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 08A9WvjY018630; Thu, 10 Sep 2020 11:36:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=date : from : to : cc :
 subject : message-id : references : mime-version : content-type :
 in-reply-to; s=STMicroelectronics;
 bh=htF5W68VT3+jaLIm4WZe10OWVU7UYb45MQ9aXHRF1so=;
 b=yCROhYCWdgIz8wOPw4PtsKSJqhWpURbMqwcJYEVPFC3bss6G9pG9VzfAlEDYIi/jXrbB
 7L0IYZXQwBa24D/ARYktaV8Nct0Eoh/MSoLOJ88aziEngyxK++PzWQatix4CW7z4+nzM
 fo5a1IYLE8ZIn98Xy5qnz4DFLtHYsYwceiVf58rzGfKpeepeYMO+HSpqYBj7wYrXDLEa
 A6KS+qwz4XyU2MvgDaRsIZ6XOBzxxkmDb7SpXXV0QMkkla+uIGTx/2uXb/0aVoL9wQuf
 5pjc98J7PVRa3uKVXEZ3EUG9UXgXK9soEZXg9x+tg7t4BJESpcAwo1A8xFghAlWeUmBh Xg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 33c051ja88-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 10 Sep 2020 11:36:48 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C6C0210002A;
 Thu, 10 Sep 2020 11:36:43 +0200 (CEST)
Received: from Webmail-eu.st.com (gpxdag3node5.st.com [10.75.127.72])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 874D5220AE5;
 Thu, 10 Sep 2020 11:36:43 +0200 (CEST)
Received: from gnbcxd0016.gnb.st.com (10.75.127.48) by GPXDAG3NODE5.st.com
 (10.75.127.72) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 10 Sep
 2020 11:36:42 +0200
Date: Thu, 10 Sep 2020 11:36:41 +0200
From: Alain Volmat <alain.volmat@st.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 1/9] i2c: stm32: Simplify with dev_err_probe()
Message-ID: <20200910093641.GB1975@gnbcxd0016.gnb.st.com>
Mail-Followup-To: Krzysztof Kozlowski <krzk@kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Michal Simek <michal.simek@xilinx.com>,
 Sekhar Nori <nsekhar@ti.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Oleksij Rempel <linux@rempel-privat.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Pierre-Yves MORDRET <pierre-yves.mordret@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Peter Rosin <peda@axentia.se>, Wolfram Sang <wsa@kernel.org>,
 linux-i2c@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com
References: <20200902150643.14839-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200902150643.14839-1-krzk@kernel.org>
X-Disclaimer: ce message est personnel / this message is private
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG7NODE2.st.com (10.75.127.20) To GPXDAG3NODE5.st.com
 (10.75.127.72)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-09-10_01:2020-09-10,
 2020-09-10 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200910_053656_802301_AEEE927B 
X-CRM114-Status: GOOD (  25.38  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Heiko Stuebner <heiko@sntech.de>, Sekhar Nori <nsekhar@ti.com>,
 Pierre-Yves MORDRET <pierre-yves.mordret@st.com>, linux-i2c@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, linux-stm32@st-md-mailman.stormreply.com,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-rockchip@lists.infradead.org,
 Michal Simek <michal.simek@xilinx.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 bcm-kernel-feedback-list@broadcom.com, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Ray Jui <rjui@broadcom.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>,
 linux-kernel@vger.kernel.org, Oleksij Rempel <linux@rempel-privat.de>,
 Wolfram Sang <wsa@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, Peter Rosin <peda@axentia.se>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On Wed, Sep 02, 2020 at 05:06:35PM +0200, Krzysztof Kozlowski wrote:
> Common pattern of handling deferred probe can be simplified with
> dev_err_probe().  Less code and the error value gets printed.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Reviewed-by: Alain Volmat <alain.volmat@st.com>

> ---
>  drivers/i2c/busses/i2c-stm32.c   | 11 ++++-------
>  drivers/i2c/busses/i2c-stm32f4.c |  6 ++----
>  drivers/i2c/busses/i2c-stm32f7.c | 24 +++++++++---------------
>  3 files changed, 15 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-stm32.c b/drivers/i2c/busses/i2c-stm32.c
> index 3f69a3bb6119..198f848b7be9 100644
> --- a/drivers/i2c/busses/i2c-stm32.c
> +++ b/drivers/i2c/busses/i2c-stm32.c
> @@ -25,9 +25,8 @@ struct stm32_i2c_dma *stm32_i2c_dma_request(struct device *dev,
>  	/* Request and configure I2C TX dma channel */
>  	dma->chan_tx = dma_request_chan(dev, "tx");
>  	if (IS_ERR(dma->chan_tx)) {
> -		ret = PTR_ERR(dma->chan_tx);
> -		if (ret != -EPROBE_DEFER)
> -			dev_err(dev, "can't request DMA tx channel\n");
> +		ret = dev_err_probe(dev, PTR_ERR(dma->chan_tx),
> +				    "can't request DMA tx channel\n");
>  		goto fail_al;
>  	}
>  
> @@ -45,10 +44,8 @@ struct stm32_i2c_dma *stm32_i2c_dma_request(struct device *dev,
>  	/* Request and configure I2C RX dma channel */
>  	dma->chan_rx = dma_request_chan(dev, "rx");
>  	if (IS_ERR(dma->chan_rx)) {
> -		ret = PTR_ERR(dma->chan_rx);
> -		if (ret != -EPROBE_DEFER)
> -			dev_err(dev, "can't request DMA rx channel\n");
> -
> +		ret = dev_err_probe(dev, PTR_ERR(dma->chan_rx),
> +				    "can't request DMA rx channel\n");
>  		goto fail_tx;
>  	}
>  
> diff --git a/drivers/i2c/busses/i2c-stm32f4.c b/drivers/i2c/busses/i2c-stm32f4.c
> index 48e269284369..937c2c8fd349 100644
> --- a/drivers/i2c/busses/i2c-stm32f4.c
> +++ b/drivers/i2c/busses/i2c-stm32f4.c
> @@ -797,10 +797,8 @@ static int stm32f4_i2c_probe(struct platform_device *pdev)
>  
>  	rst = devm_reset_control_get_exclusive(&pdev->dev, NULL);
>  	if (IS_ERR(rst)) {
> -		ret = PTR_ERR(rst);
> -		if (ret != -EPROBE_DEFER)
> -			dev_err(&pdev->dev, "Error: Missing reset ctrl\n");
> -
> +		ret = dev_err_probe(&pdev->dev, PTR_ERR(rst),
> +				    "Error: Missing reset ctrl\n");
>  		goto clk_free;
>  	}
>  	reset_control_assert(rst);
> diff --git a/drivers/i2c/busses/i2c-stm32f7.c b/drivers/i2c/busses/i2c-stm32f7.c
> index bff3479fe122..a8f1758e4c5b 100644
> --- a/drivers/i2c/busses/i2c-stm32f7.c
> +++ b/drivers/i2c/busses/i2c-stm32f7.c
> @@ -1968,11 +1968,9 @@ static int stm32f7_i2c_probe(struct platform_device *pdev)
>  						    "wakeup-source");
>  
>  	i2c_dev->clk = devm_clk_get(&pdev->dev, NULL);
> -	if (IS_ERR(i2c_dev->clk)) {
> -		if (PTR_ERR(i2c_dev->clk) != -EPROBE_DEFER)
> -			dev_err(&pdev->dev, "Failed to get controller clock\n");
> -		return PTR_ERR(i2c_dev->clk);
> -	}
> +	if (IS_ERR(i2c_dev->clk))
> +		return dev_err_probe(&pdev->dev, PTR_ERR(i2c_dev->clk),
> +				     "Failed to get controller clock\n");
>  
>  	ret = clk_prepare_enable(i2c_dev->clk);
>  	if (ret) {
> @@ -1982,10 +1980,8 @@ static int stm32f7_i2c_probe(struct platform_device *pdev)
>  
>  	rst = devm_reset_control_get(&pdev->dev, NULL);
>  	if (IS_ERR(rst)) {
> -		ret = PTR_ERR(rst);
> -		if (ret != -EPROBE_DEFER)
> -			dev_err(&pdev->dev, "Error: Missing reset ctrl\n");
> -
> +		ret = dev_err_probe(&pdev->dev, PTR_ERR(rst),
> +				    "Error: Missing reset ctrl\n");
>  		goto clk_free;
>  	}
>  	reset_control_assert(rst);
> @@ -2052,13 +2048,11 @@ static int stm32f7_i2c_probe(struct platform_device *pdev)
>  	i2c_dev->dma = stm32_i2c_dma_request(i2c_dev->dev, phy_addr,
>  					     STM32F7_I2C_TXDR,
>  					     STM32F7_I2C_RXDR);
> -	if (PTR_ERR(i2c_dev->dma) == -ENODEV)
> +	if (PTR_ERR(i2c_dev->dma) == -ENODEV) {
>  		i2c_dev->dma = NULL;
> -	else if (IS_ERR(i2c_dev->dma)) {
> -		ret = PTR_ERR(i2c_dev->dma);
> -		if (ret != -EPROBE_DEFER)
> -			dev_err(&pdev->dev,
> -				"Failed to request dma error %i\n", ret);
> +	} else if (IS_ERR(i2c_dev->dma)) {
> +		ret = dev_err_probe(&pdev->dev, PTR_ERR(i2c_dev->dma),
> +				    "Failed to request dma error\n");
>  		goto fmp_clear;
>  	}
>  
> -- 
> 2.17.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
