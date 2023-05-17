Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93225C7EE2A
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 May 2023 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a8rXaHitqApxF5+ndZDYiAS6Oe9mFcV7G42TP2w+uBs=; b=O4NEkdHkPqU0wy
	91qSZmuqzbJ5Ni+FS9KzlDlubmNovmKJSIJf4pSfRAOEbWCNzbs+Z0eN+B1fpzSwn9IQM0h4n9/p3
	UxygPLk4nGkmKxmSvjP7ENx7YwnlX9yHxZ0TUwKVUG/+KWUoKkRHe2uXp+ThBe3DTa4BO20r9Nzdk
	9tHCOHSTkSJY5HWT0Z+r34g3nWgXeFreG1dkSt+iUJrQXVAzW47egPjvARfj9JPxBcsz1fW4YFtaa
	67HccAwzGFl+B2ClEsZ6mYQaJZ0KMDIPyTxd0ne62dUvo2yuTNLIoOIMPWVSDygVhWxOeckskyfuH
	B3wyV7yCsR1+kr+9/MGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzEaN-009SIw-2X;
	Wed, 17 May 2023 10:40:47 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzEaK-009SGk-0L;
	Wed, 17 May 2023 10:40:45 +0000
Received: from [IPV6:2001:b07:2ed:14ed:a962:cd4d:a84:1eab] (unknown [IPv6:2001:b07:2ed:14ed:a962:cd4d:a84:1eab])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 214C1660563D;
	Wed, 17 May 2023 11:40:40 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1684320041;
	bh=yjvnp4Vt6ChNqCAMpDPQmMO345ddeKIOJ8C7wndocbM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=UBpb9LpjM5tLTlnK7p+f3bqtwfaL1jTko3W05/rXbUYLZb6cKNTNT9NhNOqNVQ/EX
	 hF1okH8H5XQ3Sbl0P6LNQGqWj5sO4axnLC83N5ZbIX3YlF3fCLjJQNeEcPiKpkxwwS
	 5+SkTrCvsk0y1N+hwHUT9Y5vONPtYkz2ktpxtSB4qx8Nuv1gliQFTfkIZrgNPMnHop
	 RSrRf1Ml4KMUriGFIbcgG4+3zkaZFFD2HZi0lT9OsTJciL1cAW5i0ZmXMsptUNAVjn
	 jLvEEOOZMIS1VocvoqVSvVUJ2bQJLeV29awz6if8VZd3oCXsp7S5iZCIBQYVlHOUoN
	 YoNVbT4pz30hw==
Message-ID: <d1955b9e-c719-9c7c-b1fd-f11fa97e44af@collabora.com>
Date: Wed, 17 May 2023 12:40:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH 5/7] iio: adc: rockchip_saradc: Use dev_err_probe
Content-Language: en-US
To: Shreeya Patel <shreeya.patel@collabora.com>, jic23@kernel.org,
 lars@metafoo.de, heiko@sntech.de, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, sebastian.reichel@collabora.com
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 gustavo.padovan@collabora.com, serge.broslavsky@collabora.com
References: <20230516230051.14846-1-shreeya.patel@collabora.com>
 <20230516230051.14846-6-shreeya.patel@collabora.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230516230051.14846-6-shreeya.patel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_034044_277174_1052E065 
X-CRM114-Status: GOOD (  20.58  )
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

Il 17/05/23 01:00, Shreeya Patel ha scritto:
> Use dev_err_probe instead of dev_err in probe function,
> which simplifies code a little bit and prints the error
> code.
> 
> Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
> ---
>   drivers/iio/adc/rockchip_saradc.c | 45 ++++++++++++++-----------------
>   1 file changed, 20 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
> index 5e1e8575bc76..a52021fd477d 100644
> --- a/drivers/iio/adc/rockchip_saradc.c
> +++ b/drivers/iio/adc/rockchip_saradc.c

..snip..

> @@ -494,23 +492,20 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
>   	 * This may become user-configurable in the future.
>   	 */
>   	ret = clk_set_rate(info->clk, info->data->clk_rate);
> -	if (ret < 0) {
> -		dev_err(&pdev->dev, "failed to set adc clk rate, %d\n", ret);
> -		return ret;
> -	}
> +	if (ret < 0)
> +		return dev_err_probe(&pdev->dev, ret,
> +				     "failed to set adc clk rate\n");
>   
>   	ret = regulator_enable(info->vref);
> -	if (ret < 0) {
> -		dev_err(&pdev->dev, "failed to enable vref regulator\n");
> -		return ret;
> -	}
> +	if (ret < 0)
> +		return dev_err_probe(&pdev->dev, ret,
> +				     "failed to enable vref regulator\n");
> +
>   	ret = devm_add_action_or_reset(&pdev->dev,
>   				       rockchip_saradc_regulator_disable, info);
> -	if (ret) {
> -		dev_err(&pdev->dev, "failed to register devm action, %d\n",
> -			ret);
> -		return ret;
> -	}
> +	if (ret)
> +		return dev_err_probe(&pdev->dev, ret,
> +				     "failed to register devm action\n");

It's not your fault - and it's about a pre-existing issue, but there's that:
you're returning an error if devm_add_action_or_reset() fails (which is highly
unlikely), but you're leaving the regulator enabled!

As for how to proceed here, I would suggest to fix this issue in a separated
commit (before the dev_err_probe() conversion); it'd look like...

	if (ret) {
		regulator_disable(info->vref);
		dev_err( .... blurb );
		return ret;
	}

and after the conversion it'd look like...

	if (ret) {
		regulator_disable(info->vref);
		return dev_err_probe( ... blurb );
	}

Cheers,
Angelo

>   
>   	ret = regulator_get_voltage(info->vref);
>   	if (ret < 0)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
