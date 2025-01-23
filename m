Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2B7BC0218C
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jan 2025 11:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iKzKBhb8eFMoGDr1in1C7w/kkp0JsE7ASNWbaZ1/ZF8=; b=Lr/6BR7dKhhNIS
	e4qqbDDwYE3lCjzD37CQtBoTpBMN2X66KTH/TKuO2TphgJGCqYaFDR2Wso2lXdD/YDEXbvfMoFaCd
	B1gt2HA3bkPJX0F723ybBj6lIiIJ7Gbn/L4JKRR/bYij1P5PFAX6UP/VQaXKI2QqJgw398fhOR7/j
	7s6x/mo50hG2n6JY6lefL9WCYFK1+Aw4WaX3RuAwL0vLolHoYykHfjfnzLCxCe7UQSojq5VhLl2Hu
	4dx6y1y7WVYnrU56H4W6PvtGCt2t25o4wVt4vNi0tCrofeNk0F9k3BiY09QU1XnJuxc2bbB6VfKuD
	KgW7xL0z8htElro7Lc9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tavMS-0000000CKAA-3iw8;
	Thu, 23 Jan 2025 11:27:00 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tavML-0000000CK7L-41eJ
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Jan 2025 11:26:55 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-540215984f0so866768e87.1
        for <linux-rockchip@lists.infradead.org>; Thu, 23 Jan 2025 03:26:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737631612; x=1738236412; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DFfpTSbOh8RvHyE6RIKYPSmJaoOLiJCGJd9BE4mSXsw=;
        b=R7RCy18UNDWGNH+PQ2mVwKcnSM1955tBeejPzdfe654sPOSk1AhtQFnTwLEi87dgRn
         QPrIRwSgR1FpLbzHq/7Q+tyotGrnlq9qvjkcGg3P94x/i9u9F19vTtM0IngfT5xJWyIr
         uZguydu0dgarKYizk4Oz/ycFELOPfIijnnzbwADxgwxSeqVv6acuKRWTnkUYpJxtRto6
         Y8YUSpIYHVGUuxRVbuJaCDq/7hTDBM/5Px6I5UiykhGvU4HtrzDX7/DXaZt0u5J28CoK
         Zj3VcGiopfk0YfYn0fIx6+xYl+8sO0ewf+NJ5olacJcb2DbN2XLAe+e9xf/2tlDrBRYU
         FVEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737631612; x=1738236412;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DFfpTSbOh8RvHyE6RIKYPSmJaoOLiJCGJd9BE4mSXsw=;
        b=VAxKY2lmtQz9palS8Vhef+7YE6fUmEZNrqb8ea7H1CPEjoJvZ9yDM+14JJ5VNnpl1Q
         Up3dOvcG6ed2eWiK0u/K6glanVakSggfsY26+XuLBltQ8rROmyNYMT9IEZMhzVLCPci0
         ttG7WsAdeCE1p4yb9J/z1ar0sCeeD5bOMcbIveyMtNDkcCpfpfw7UumYw6lWOOoaalgs
         l9oLTZRPE1Alz9r4UZQkAC/Q4KxhUWRlvM1kzyJdTl1ToGYHETrUFDHr8oHfQQGWIwix
         eieF9S/CJzeIBQl58geIFTrYb3EUAeskFSTkTNdkkH41H70t0aWCbmHz3RSKwRXt4Ftn
         uIbw==
X-Forwarded-Encrypted: i=1; AJvYcCXKyrCexok7bU9a+xvAFzj9K70MJXqWGYc/pJPriSfc5lhB/632HACOI8jBy1+5s3UWrL9pB4YSl7VlQCaLTQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyZhy7bC28GtyVXf1wHRGDKOW+ZK2QF8u0YaVoo9+vPRaorVcnh
	qSfPzJQ+XpGujLe4iBC0FqYdhlqei9Hd8JQUb9Edak3AYrqhiIZQTdqoXqibyZw=
X-Gm-Gg: ASbGncv5+6+1bJG9WDfkFP3JRWEC+oMK6FgJ6CxLrvEqek7ZGvzICv+qBvsBPrRyhsY
	IMTH/gO01dIUu9CmfbKH9bjKxfJscuODi5C2bQyrvjIYgbKO0Tdl7SGtL5ribjElHvIm6cxE4RT
	6ipHFCJybggS8HV6fMOBBrEKpKJVXTEtnjf7eUuD5ljTn1M9ywXq9iNYyvVQq7u0BzSVVQWnLoQ
	qfRRRZQjj8eWEsssc19NNulf1SHIpa6iQOi4oEHtpgkYKgoDgmyAwKCsmuLgAJx60OPqaq8itbp
	WvXHbcX1HmNisTWAe/PlnPwNzYjX+JDdyshTPe9DGZ/k0zwS2qb2AbyiT49x
X-Google-Smtp-Source: AGHT+IGNOaD089OMXfqr3Dnm2V/eB8MHKGKnVwiIKkPGlQzS9RJucZ1gI7lV8A7Yejq/M0G2xCRCQQ==
X-Received: by 2002:a05:6512:2346:b0:53e:335e:7756 with SMTP id 2adb3069b0e04-5439c287bf9mr8252435e87.46.1737631612246;
        Thu, 23 Jan 2025 03:26:52 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543a24d2237sm2273345e87.9.2025.01.23.03.26.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jan 2025 03:26:51 -0800 (PST)
Date: Thu, 23 Jan 2025 13:26:49 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v6 08/14] drm/rockchip: analogix_dp: Add support to get
 panel from the DP AUX bus
Message-ID: <jhl5ae6wzydxmauvwlw7g6kqqdcanwfi6sgeenhczsbwzdzlym@n5pbe4jk6ult>
References: <20250123100747.1841357-1-damon.ding@rock-chips.com>
 <20250123100747.1841357-9-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250123100747.1841357-9-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250123_032653_994011_7493CCC5 
X-CRM114-Status: GOOD (  28.00  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, vkoul@kernel.org, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Jan 23, 2025 at 06:07:41PM +0800, Damon Ding wrote:
> Move drm_of_find_panel_or_bridge() a little later and combine it with
> component_add() into a new function rockchip_dp_link_panel(). The function
> will serve as done_probing() callback of devm_of_dp_aux_populate_bus(),
> aiding to support for obtaining the eDP panel via the DP AUX bus.
> 
> If failed to get the panel from the DP AUX bus, it will then try the other
> way to get panel information through the platform bus.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 
> Changes in v4:
> - Use done_probing() to call drm_of_find_panel_or_bridge() and
>   component_add() when getting panel from the DP AUX bus
> 
> Changes in v5:
> - Use the functions exported by the Analogix side to get the pointers of
>   struct analogix_dp_plat_data and struct drm_dp_aux.
> - Use dev_err() instead of drm_err() in rockchip_dp_poweron().
> 
> Changes in v6:
> - Keep drm_err() in rockchip_dp_poweron()
> - Pass 'dp' in drm_...() rather than 'dp->drm_dev'
> ---
>  .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 37 ++++++++++++++-----
>  1 file changed, 28 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> index 13f32aeea7ca..004b1b68d1cf 100644
> --- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> @@ -393,11 +393,27 @@ static const struct component_ops rockchip_dp_component_ops = {
>  	.unbind = rockchip_dp_unbind,
>  };
>  
> +static int rockchip_dp_link_panel(struct drm_dp_aux *aux)
> +{
> +	struct analogix_dp_plat_data *plat_data = analogix_dp_aux_to_plat_data(aux);
> +	struct rockchip_dp_device *dp = pdata_encoder_to_dp(plat_data);
> +	int ret;
> +
> +	ret = drm_of_find_panel_or_bridge(dp->dev->of_node, 1, 0, &plat_data->panel, NULL);
> +	if (ret)
> +		return ret;
> +
> +	ret = component_add(dp->dev, &rockchip_dp_component_ops);
> +	if (ret)
> +		return ret;
> +
> +	return ret;
> +}
> +
>  static int rockchip_dp_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
>  	const struct rockchip_dp_chip_data *dp_data;
> -	struct drm_panel *panel = NULL;
>  	struct rockchip_dp_device *dp;
>  	struct resource *res;
>  	int i;
> @@ -407,10 +423,6 @@ static int rockchip_dp_probe(struct platform_device *pdev)
>  	if (!dp_data)
>  		return -ENODEV;
>  
> -	ret = drm_of_find_panel_or_bridge(dev->of_node, 1, 0, &panel, NULL);
> -	if (ret < 0 && ret != -ENODEV)
> -		return ret;
> -
>  	dp = devm_kzalloc(dev, sizeof(*dp), GFP_KERNEL);
>  	if (!dp)
>  		return -ENOMEM;
> @@ -434,7 +446,6 @@ static int rockchip_dp_probe(struct platform_device *pdev)
>  
>  	dp->dev = dev;
>  	dp->adp = ERR_PTR(-ENODEV);
> -	dp->plat_data.panel = panel;
>  	dp->plat_data.dev_type = dp->data->chip_type;
>  	dp->plat_data.power_on = rockchip_dp_poweron;
>  	dp->plat_data.power_off = rockchip_dp_powerdown;
> @@ -450,9 +461,17 @@ static int rockchip_dp_probe(struct platform_device *pdev)
>  	if (IS_ERR(dp->adp))
>  		return PTR_ERR(dp->adp);
>  
> -	ret = component_add(dev, &rockchip_dp_component_ops);
> -	if (ret)
> -		return ret;
> +	ret = devm_of_dp_aux_populate_bus(analogix_dp_get_aux(dp->adp), rockchip_dp_link_panel);
> +	if (ret) {
> +		if (ret != -ENODEV) {
> +			drm_err(dp, "failed to populate aux bus : %d\n", ret);
> +			return ret;

return dev_err_probe().

With that fixed:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


> +		}
> +
> +		ret = rockchip_dp_link_panel(analogix_dp_get_aux(dp->adp));
> +		if (ret)
> +			return ret;
> +	}
>  
>  	return 0;
>  }
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
