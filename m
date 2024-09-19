Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C785CF3959
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Sep 2024 15:26:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BI/w3X4DTElzXffCXKxJN7+AicrJdTlzCo5hor9uHn0=; b=pJRQO8zAyIpG92
	PgUFLUvlHaZYo/l6FvYydw9ToVyfGGEZGPSKSEG9Z7ui7snh4FMs0HkPgS8JwTqB0wE+ViJnxj0vR
	AwWoAkLQRNjoh3cw4GNj2QpcJGZFzE0BT1mL2vr09+AAXhuaXZ0HoD3Uk8kX7B5tpvb3WpucZ0Enb
	WqWtbFUtsqu/bCmNIQ3QgHo4Bl8h+vZwnz9rFQbJtFRuuAyLwGFMTNeH25ela0zoAsQV3z+OR44y9
	1JABZyLZ2bsngfvYFKAA5+5bCtQWwfqr7tEOY2jdBkSlPS3Tn/BUbQAZSH65Am8B0w0X5/mhpzaf7
	ClkFWR2dKN8KerYkIlEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1srJ3O-0000000AY9S-04uR;
	Thu, 19 Sep 2024 15:26:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1srJ2G-0000000AXyx-45Jz;
	Thu, 19 Sep 2024 15:25:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=LjaYF2Z7w5SmD4vG50lRcgoF9Gjve69ED8MY5XqnnmA=; b=u9qx8ymcS9UCr0AQBPfuSNE+g0
	ITiUNc9P4vJpYL9d6SHPt9tm4fL6piac8lVSWFrkRuDPlWgiCLACnDcSsIb+UlgHG+BEV2IIAXfJC
	JHuCNNRNDgqPszBAxH2VFW7LpA0s4AfSyqCGEqbmHnXrOx3UZoTCkiI9spGvj4Gs3RX2mr9LGy6G9
	zBadwW8MiYVMBJJrk4dzriLsCR59Xuegiq3OVbEJxaw6kRAvXX6QPPa1hPeb0kETITwYVGuonRtwP
	ikwG2blpwLdBwyolWOkR73evTtQ/Za6W/ChGzYX86Rcgtm2JunOuM/G3QJxfzh2b9DnA3sO7ehX0F
	NrO27rJA==;
Received: from ip092042140082.rev.nessus.at ([92.42.140.82] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1srJ1w-0003ot-1F; Thu, 19 Sep 2024 17:25:19 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: hjc@rock-chips.com, andy.yan@rock-chips.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 airlied@gmail.com, daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, krzk@kernel.org, jic23@kernel.org,
 Jinjie Ruan <ruanjinjie@huawei.com>
Cc: ruanjinjie@huawei.com
Subject: Re: [PATCH -next v2 3/3] drm/rockchip: Simplified with dev_err_probe()
Date: Thu, 19 Sep 2024 17:25:06 +0200
Message-ID: <2013930.8hb0ThOEGa@phil>
In-Reply-To: <20240827030357.1006220-4-ruanjinjie@huawei.com>
References: <20240827030357.1006220-1-ruanjinjie@huawei.com>
 <20240827030357.1006220-4-ruanjinjie@huawei.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240919_082537_019516_6B2C9E63 
X-CRM114-Status: GOOD (  20.74  )
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

Am Dienstag, 27. August 2024, 05:03:57 CEST schrieb Jinjie Ruan:
> Use dev_err_probe to replace deprecated() DRM_DEV_ERROR(), which
> can simplfy code.
> 
> Signed-off-by: Jinjie Ruan <ruanjinjie@huawei.com>
> ---
>  drivers/gpu/drm/rockchip/rockchip_lvds.c | 30 +++++++++---------------
>  1 file changed, 11 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.c b/drivers/gpu/drm/rockchip/rockchip_lvds.c
> index 700ac730887d..92679e54c71d 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_lvds.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_lvds.c

> @@ -467,24 +465,22 @@ static int rk3288_lvds_probe(struct platform_device *pdev,
>  
>  	lvds->pins->p = devm_pinctrl_get(lvds->dev);
>  	if (IS_ERR(lvds->pins->p)) {
> -		DRM_DEV_ERROR(lvds->dev, "no pinctrl handle\n");
> +		dev_err(lvds->dev, "no pinctrl handle\n");

you're mixing things here.

The commit message talks about dev_err_probe but you're doing
here and below a DRM_DEV_ERROR to dev_err conversion, which also
partially happens in patch 2 of this series.

Please structure things in a way that the patch content matches
the patch description :-)


Thanks a lot
Heiko

>  		devm_kfree(lvds->dev, lvds->pins);
>  		lvds->pins = NULL;
>  	} else {
>  		lvds->pins->default_state =
>  			pinctrl_lookup_state(lvds->pins->p, "lcdc");
>  		if (IS_ERR(lvds->pins->default_state)) {
> -			DRM_DEV_ERROR(lvds->dev, "no default pinctrl state\n");
> +			dev_err(lvds->dev, "no default pinctrl state\n");
>  			devm_kfree(lvds->dev, lvds->pins);
>  			lvds->pins = NULL;
>  		}
>  	}
>  
>  	ret = clk_prepare(lvds->pclk);
> -	if (ret < 0) {
> -		DRM_DEV_ERROR(lvds->dev, "failed to prepare pclk_lvds\n");
> -		return ret;
> -	}
> +	if (ret < 0)
> +		return dev_err_probe(lvds->dev, ret, "failed to prepare pclk_lvds\n");
>  
>  	return 0;
>  }
> @@ -700,22 +696,18 @@ static int rockchip_lvds_probe(struct platform_device *pdev)
>  
>  	lvds->grf = syscon_regmap_lookup_by_phandle(dev->of_node,
>  						    "rockchip,grf");
> -	if (IS_ERR(lvds->grf)) {
> -		DRM_DEV_ERROR(dev, "missing rockchip,grf property\n");
> -		return PTR_ERR(lvds->grf);
> -	}
> +	if (IS_ERR(lvds->grf))
> +		return dev_err_probe(dev, PTR_ERR(lvds->grf), "missing rockchip,grf property\n");
>  
>  	ret = lvds->soc_data->probe(pdev, lvds);
> -	if (ret) {
> -		DRM_DEV_ERROR(dev, "Platform initialization failed\n");
> -		return ret;
> -	}
> +	if (ret)
> +		return dev_err_probe(dev, ret, "Platform initialization failed\n");
>  
>  	dev_set_drvdata(dev, lvds);
>  
>  	ret = component_add(&pdev->dev, &rockchip_lvds_component_ops);
>  	if (ret < 0) {
> -		DRM_DEV_ERROR(dev, "failed to add component\n");
> +		dev_err(dev, "failed to add component\n");
>  		clk_unprepare(lvds->pclk);
>  	}
>  
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
