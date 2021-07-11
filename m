Return-Path: <SRS0=P8Gh=MD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	UNWANTED_LANGUAGE_BODY autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA752C07E9C
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Jul 2021 13:38:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2C79F613C3
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Jul 2021 13:38:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2C79F613C3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4WLAbOo9Ew9dhoXXxY3/wrdmCtp1/TizoqNj90/t7KI=; b=tx4JwPH+6ecmpT
	572lW0YlrU4OhEAoteVKIooqjdcidbCvfZ2cX2xuXk7xZ+TNPvvSC+Y3EWXiOuL2eILMWmJwmPZ+L
	E6RA/Wpi1xpzkICTCFm1NAWFRWlPyOYr5mKjzvOrgTzbdsCDHrUXXQ4Z0lr7JLco0oQaerQ7IzBhU
	pXY+7/QQV3WDuOs/u5JN+FAnGWIzd1ETnLuu7L/tFTGppn4DAEDIKcMIKlmb4nQs29z52lR/fxCfo
	h8Hwf5EmYeEXpJtRVTFB6ZuWVoNnD4eaZLhWtHHVywSSuyFHqXfQsoY3ue7PkZDhSMMkosgvP11B/
	+q5S+Ym+XxVytTvk9CXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m2ZfU-0057gy-6v; Sun, 11 Jul 2021 13:38:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m2ZfS-0057ge-05
 for linux-rockchip@lists.infradead.org; Sun, 11 Jul 2021 13:38:47 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m2ZfQ-0007Ul-TE; Sun, 11 Jul 2021 15:38:44 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Jonathan Cameron <jic23@kernel.org>, Simon Xue <xxm@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, Johan Jonker <jbx6244@gmail.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org,
 Simon Xue <xxm@rock-chips.com>
Subject: Re: [PATCH v1 2/2] iio: adc: rockchip_saradc: add support for rk3568
 saradc
Date: Sun, 11 Jul 2021 15:38:44 +0200
Message-ID: <3140115.MfA8il8Al2@diego>
In-Reply-To: <20210705012552.3781-1-xxm@rock-chips.com>
References: <20210705012526.3731-1-xxm@rock-chips.com>
 <20210705012552.3781-1-xxm@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210711_063846_094808_C8EBED05 
X-CRM114-Status: GOOD (  16.56  )
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

Am Montag, 5. Juli 2021, 03:25:52 CEST schrieb Simon Xue:
> It is similar to other devices, but with 8 channels.
> 
> Signed-off-by: Simon Xue <xxm@rock-chips.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  drivers/iio/adc/rockchip_saradc.c | 22 +++++++++++++++++++++-
>  1 file changed, 21 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
> index 12584f1631d8..f3eb8d2e50dc 100644
> --- a/drivers/iio/adc/rockchip_saradc.c
> +++ b/drivers/iio/adc/rockchip_saradc.c
> @@ -35,7 +35,7 @@
>  #define SARADC_DLY_PU_SOC_MASK		0x3f
>  
>  #define SARADC_TIMEOUT			msecs_to_jiffies(100)
> -#define SARADC_MAX_CHANNELS		6
> +#define SARADC_MAX_CHANNELS		8
>  
>  struct rockchip_saradc_data {
>  	const struct iio_chan_spec	*channels;
> @@ -192,6 +192,23 @@ static const struct rockchip_saradc_data rk3399_saradc_data = {
>  	.clk_rate = 1000000,
>  };
>  
> +static const struct iio_chan_spec rockchip_rk3568_saradc_iio_channels[] = {
> +	SARADC_CHANNEL(0, "adc0", 10),
> +	SARADC_CHANNEL(1, "adc1", 10),
> +	SARADC_CHANNEL(2, "adc2", 10),
> +	SARADC_CHANNEL(3, "adc3", 10),
> +	SARADC_CHANNEL(4, "adc4", 10),
> +	SARADC_CHANNEL(5, "adc5", 10),
> +	SARADC_CHANNEL(6, "adc6", 10),
> +	SARADC_CHANNEL(7, "adc7", 10),
> +};
> +
> +static const struct rockchip_saradc_data rk3568_saradc_data = {
> +	.channels = rockchip_rk3568_saradc_iio_channels,
> +	.num_channels = ARRAY_SIZE(rockchip_rk3568_saradc_iio_channels),
> +	.clk_rate = 1000000,
> +};
> +
>  static const struct of_device_id rockchip_saradc_match[] = {
>  	{
>  		.compatible = "rockchip,saradc",
> @@ -202,6 +219,9 @@ static const struct of_device_id rockchip_saradc_match[] = {
>  	}, {
>  		.compatible = "rockchip,rk3399-saradc",
>  		.data = &rk3399_saradc_data,
> +	}, {
> +		.compatible = "rockchip,rk3568-saradc",
> +		.data = &rk3568_saradc_data,
>  	},
>  	{},
>  };
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
