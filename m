Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3633BE77197
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jan 2025 12:45:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rifPp8xvWYTXWjLieQn7KNeqqLYZ/3ZniMWJxphPxzw=; b=bw8ZQdYjSu1I6B
	ZwmBdLuodkESsXZYmIzKCvzwc3q3WRBzKImgtj695RD+sCND3G/ImAlqrfpzH1krDjxdPgG9exYXv
	gyq9cHCF6d7jo/MhbXhnqrUH2oh4yl3VYoEVrK+v05LpmA+xuTmzsQGWDf+nxwWLxkQ5LyQVTlo+m
	VCpVPtsAblZSYhXvTHrzQh5/41Zg6664O7jvpefxdlGlwMFSEeaTKnWEXD/llLkxwozDjKwr/nUev
	DddqgzlwBFpZAhG53SLwiTdibLxOLdEc90aJfUd1+kFxtx47UYCzumK7laMMIOfgUnBCNzfNQKZ8f
	8QyZbuRoBZLTg3QHa38g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVrut-0000000BtOX-1JoD;
	Thu, 09 Jan 2025 12:45:39 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVruq-0000000BtNR-2Ey5
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Jan 2025 12:45:37 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-304d760f12aso6628141fa.2
        for <linux-rockchip@lists.infradead.org>; Thu, 09 Jan 2025 04:45:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736426734; x=1737031534; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VHN/5X/Qy69qyMpCWb8kneKgFMU5IOAUBhcGNPPugoM=;
        b=lNmjmPyh83kP6fuR7NDGzwxt0tHdNmzlA7L9TAPo+S7b+JIFO7VQNgz993KoOthprf
         rVNXLLovReOoOh0lG1yufedhDu/zxoFT7iZRiuLKXb0QfowH3tjpNIlJxzRa6MR3II+F
         Rh4uTvCoa/Yn3rdQUgvlfhUAdNLEgqta6uAU2+JqA9MNmLueHyuxYxArCU4pg865i4gK
         MM+R4VOvZsL2TTBrrIr0VGba2rfDFmUJuK6OFY6HetcenoCoPXGBKRBjq+etQoDHXmY7
         EcPa7oafvNE8cKdfj106PvDXnXFcOwsUlirhX0woBn40JBUPqg2vmO0TSiAi58BEohI6
         7l5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736426734; x=1737031534;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VHN/5X/Qy69qyMpCWb8kneKgFMU5IOAUBhcGNPPugoM=;
        b=tKMeA3xCo67keYIQ+5thaCndAaYP8ne1yoaGgwZ+NGroqDFj047kL4HBH/E4DWAQuo
         hXsTqLFaoVP+Ap/aJb/a+YP0vlLclJPSwft7pwFLpzCEawU1sIrGW43C/aUsn87dKynK
         W80+1e70RzsH4YGltDjcY/bOcouCHCZ5GrbQHrY0iW5IBjzOCzBtu6pNNkmK1HOfn566
         8XU6gTJlqws8tC3aPGMYufU6PXWiiuAEHUXmQlUwLPv72TE0hmrc+KY5e6EIF/rq7ZjE
         XwMK0OQwNjvM7BVx2SuUH4OUJbg/ZLFBNTe71wY3L4VzrN905EcFODb25ZPAaXa83QB9
         qWiA==
X-Forwarded-Encrypted: i=1; AJvYcCWOsNZMw5LmEgBL1699ZtzY+xUNUaZ0KYQPzxUQ5kOqRHGpJhRzLTilUPmE72PVKXfDXQyRMqkTomcT8K+mTA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzwrxJdaIi/dRIG0+HmXlCDJpRv9ErnY7uqbIKfL+6hm8v+mYaw
	E9GvTv4+MJfYRdwTaoBRTIqlgbvWxT9kyrJCaVjHfg3DQNTAbqfFF9oZ0bZSdbM=
X-Gm-Gg: ASbGnct3NR7D+gFfMlYqDjeyFeeqSfJyapivd+C9UsBZ4nhq3uTyFDv953aLKAcHN/M
	NAydDtDBSmTj46Yxqu7YHNXPjs33n5XsW98PjlW3gUoqL/b5S9pjMTvNBsLdWtgV16jqE4aPmXB
	YTT8hP3og8aS+oOkQRJHJUklHaB70PECC0lWal3Ckeyb4HeQBE195TMHMiPkQDESSpsMFIlCkym
	w4xXMcYkaJkMBvuluzpM/JSMb6uWYl5pbiiLvkoqdBn4yeyhfB3UNTktTo4gNKKAA6SXv5Meh5n
	aCXfFdzbCfqAbeJAwWIm8USLPtNedIVjsGpX
X-Google-Smtp-Source: AGHT+IElPQjul5XrLoFmXQxy4bhtqUX4GjET6+7h8yvFk+lQX7gbeGOus+f4biXivZj6ML5v9KKwQQ==
X-Received: by 2002:a05:651c:f11:b0:301:2d8d:a3ba with SMTP id 38308e7fff4ca-305f45a06d8mr18524331fa.23.1736426734459;
        Thu, 09 Jan 2025 04:45:34 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-305ff0cfc32sm1877911fa.45.2025.01.09.04.45.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 04:45:34 -0800 (PST)
Date: Thu, 9 Jan 2025 14:45:32 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v5 11/20] drm/bridge: analogix_dp: Add support to get
 panel from the DP AUX bus
Message-ID: <v3is3v3fpx42i2eh2qrfkx3qx3z7iema3honi544qoc4j2whdo@h6ajv5h53gry>
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
 <20250109032725.1102465-12-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250109032725.1102465-12-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_044536_617689_46FAB67E 
X-CRM114-Status: GOOD (  22.74  )
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

On Thu, Jan 09, 2025 at 11:27:16AM +0800, Damon Ding wrote:
> The main modification is moving the DP AUX initialization from function
> analogix_dp_bind() to analogix_dp_probe(). In order to get the EDID of
> eDP panel during probing, it is also needed to advance PM operaions to
> ensure that eDP controller and phy are prepared for AUX transmission.
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
> - Advance PM operations to make eDP AUX work well
> ---
>  .../drm/bridge/analogix/analogix_dp_core.c    | 62 ++++++++++---------
>  1 file changed, 34 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> index 8251adfce2f9..78e78fb474d3 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> @@ -1548,6 +1548,18 @@ static ssize_t analogix_dpaux_transfer(struct drm_dp_aux *aux,
>  	return ret;
>  }
>  
> +static void analogix_dp_runtime_disable(void *data)
> +{
> +	struct analogix_dp_device *dp = (struct analogix_dp_device *)data;
> +
> +	if (IS_ENABLED(CONFIG_PM)) {
> +		pm_runtime_dont_use_autosuspend(dp->dev);
> +		pm_runtime_disable(dp->dev);
> +	} else {
> +		analogix_dp_suspend(dp);
> +	}
> +}
> +
>  struct analogix_dp_device *
>  analogix_dp_probe(struct device *dev, struct analogix_dp_plat_data *plat_data)
>  {
> @@ -1658,8 +1670,29 @@ analogix_dp_probe(struct device *dev, struct analogix_dp_plat_data *plat_data)
>  	}
>  	disable_irq(dp->irq);
>  
> +	dp->aux.name = "DP-AUX";
> +	dp->aux.transfer = analogix_dpaux_transfer;
> +	dp->aux.dev = dp->dev;
> +	drm_dp_aux_init(&dp->aux);
> +
> +	if (IS_ENABLED(CONFIG_PM)) {
> +		pm_runtime_use_autosuspend(dp->dev);
> +		pm_runtime_set_autosuspend_delay(dp->dev, 100);
> +		pm_runtime_enable(dp->dev);
> +	} else {
> +		ret = analogix_dp_resume(dp);
> +		if (ret)
> +			goto err_disable_clk;
> +	}
> +
> +	ret = devm_add_action_or_reset(dev, analogix_dp_runtime_disable, dp);

This looks like a local version of devm_pm_runtime_enable()

> +	if (ret)
> +		goto err_disable_pm_runtime;
> +
>  	return dp;
>  
> +err_disable_pm_runtime:
> +	analogix_dp_runtime_disable((void *)dp);
>  err_disable_clk:
>  	clk_disable_unprepare(dp->clock);
>  	return ERR_PTR(ret);
> @@ -1708,25 +1741,12 @@ int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev)
>  	dp->drm_dev = drm_dev;
>  	dp->encoder = dp->plat_data->encoder;
>  
> -	if (IS_ENABLED(CONFIG_PM)) {
> -		pm_runtime_use_autosuspend(dp->dev);
> -		pm_runtime_set_autosuspend_delay(dp->dev, 100);
> -		pm_runtime_enable(dp->dev);
> -	} else {
> -		ret = analogix_dp_resume(dp);
> -		if (ret)
> -			return ret;
> -	}
> -
> -	dp->aux.name = "DP-AUX";
> -	dp->aux.transfer = analogix_dpaux_transfer;
> -	dp->aux.dev = dp->dev;
>  	dp->aux.drm_dev = drm_dev;
>  
>  	ret = drm_dp_aux_register(&dp->aux);
>  	if (ret) {
>  		DRM_ERROR("failed to register AUX (%d)\n", ret);
> -		goto err_disable_pm_runtime;
> +		return ret;
>  	}
>  
>  	ret = analogix_dp_create_bridge(drm_dev, dp);
> @@ -1739,13 +1759,6 @@ int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev)
>  
>  err_unregister_aux:
>  	drm_dp_aux_unregister(&dp->aux);
> -err_disable_pm_runtime:
> -	if (IS_ENABLED(CONFIG_PM)) {
> -		pm_runtime_dont_use_autosuspend(dp->dev);
> -		pm_runtime_disable(dp->dev);
> -	} else {
> -		analogix_dp_suspend(dp);
> -	}
>  
>  	return ret;
>  }
> @@ -1762,13 +1775,6 @@ void analogix_dp_unbind(struct analogix_dp_device *dp)
>  	}
>  
>  	drm_dp_aux_unregister(&dp->aux);
> -
> -	if (IS_ENABLED(CONFIG_PM)) {
> -		pm_runtime_dont_use_autosuspend(dp->dev);
> -		pm_runtime_disable(dp->dev);
> -	} else {
> -		analogix_dp_suspend(dp);
> -	}
>  }
>  EXPORT_SYMBOL_GPL(analogix_dp_unbind);
>  
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
