Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CCDDE77199
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jan 2025 12:58:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=06XicTyD7zWiwFGIR9n6doSPqnB5y/iGv9jeCO6CMtU=; b=yjWaZOm+hAFv01
	5PLdLV+azX3VhJTMyV1qCh+BAhSBv6Ftb1OhFbXsdJokOURgCmXlt4i+U12nW+f81nih+7CfRgyH8
	tMZGRdjTpXMAEDzS9o3Yb3NpLWtKAZeNqVWKL3UVYz+2pHqQOTDZwWvJtZQrZn2pYqzAUWnqoIYvF
	TiIxbIyhbZvcEZH/KkLe3eUsJhvUmb529sALa28Eiln9KizGzZxYzAUXItHbulLrijYc4hOu4AGbp
	V7Jcvwq9Z89cKoxwrTOupSybskCydEKJ4VrxHSLPBxi0zKe2QMcGQtb+StPtN2XA1p2Mq7WSv1ZSH
	qLTHdMIwQfFPR/2LuE1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVs71-0000000BvHo-08WY;
	Thu, 09 Jan 2025 12:58:11 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVs6w-0000000BvEs-3OkG
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Jan 2025 12:58:08 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-5401d3ea5a1so885139e87.3
        for <linux-rockchip@lists.infradead.org>; Thu, 09 Jan 2025 04:58:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736427485; x=1737032285; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PluEJNm6A4jMqOqyB0FTg4D45gj8yEkPQ1baSXUmCTM=;
        b=lj9vCnM3KQp9k4o/nXMSeolcwbevtxzmJB4Vu8527jX03UuS0yA5sJEa+MKjajfo3D
         BX9El+zOEafkArR7ULgWJWhKqMm4cPGwVlbBuq1959O20oi8HOrhDDzwK9iC+R9SpCW9
         8dQ28K55JQGMH9GLex0QO+TE0RbVW3iODCPv2q27kWPIU6qUdgS8xkpGKKCUyUa9pofF
         cVTpbbutp7yl9BOji1d7dJzxNbzBJDjq/qS4xXteT5TjVQ5I52Hd9TSptwEI/bivteNj
         A765leJZE6hcPsPilBpTg9yJeI4NHuAq1PUXQTvCV+nwHW3oMSbqV0kUc1HIJRAmahxu
         QK2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736427485; x=1737032285;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PluEJNm6A4jMqOqyB0FTg4D45gj8yEkPQ1baSXUmCTM=;
        b=s05201DQb9HN8cw1A4iNx7d/ZCVVfnbKZuao6KEZ4Aqt2D2Ssj1WHpTuir+uyvge5U
         z6alnMYBmRdOQx5X2prR+2QmLOCAJWzFtP8nL1ka56KA52RvKcWEmiUoWyCxva2WwiPA
         LSGlBMTk3gE1gmtamYZupE7+v97satlyTKFgIBiz1AxhNqJWCL/D87qc7vUCBR3e8xek
         dTIZCAgYN7EPe1XJ9KM8JnjHTczINyU/iHlccbZQFXKXGe8Gwd5hyeokYCaDRatwnzzY
         Ieik5s7kSdBR+LYRcybvFKVfWNr9zN9ygyrxuWrIjzETtSGE/i89yeC1JGQxN6ZkyN23
         sEAQ==
X-Forwarded-Encrypted: i=1; AJvYcCUNy/jYL3u7MstDcPauJb7OyGuaH2+3nfbMNYYshSlTSzO30s+57+krEF+OrcWtQWilJ0CqbhRP1s5FtKfccA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx2YT3lVgut8vyre3En6yx5d1Zko/qh/NwWZUoGwzceweNhnERf
	tJUF/fnuYWXHdE0aUcAY4nBQJeMJcz6dbq1ITImnO2YVUuF/p89ComJtYIRu39c=
X-Gm-Gg: ASbGncsrZ7z12s0BYB0ukSrmZvlkYDoT9UhGLYzY5ZKYJwST8HfUqvtxJH3MkrZ5Stj
	jTy6zLyJixS0Cp67czNqm5x0UEBDbYuUazu1zp0GUT5JtQmqzjc0h8HKRL7DRa9Epm9rYBG1yr8
	PmCKDkmPgQel6P1gWLMhRXx5FTsP5JXayCsvz8XKRzj9eAQOEBrTeGX5g99LPhcsMOTZHbzTDil
	xDRlz/vqk6BWy7rjYmSzNGgOTUqSRxoP5UGpG+YPQI+8A7DkxxDLvvc7uIWvHkzFxv6W98NvOCT
	vcPQGkf7NEg7QnjutEx3uYega+k9bAMQEW17
X-Google-Smtp-Source: AGHT+IEvGTGt6x25ztvT/50kVctTk1CY/fLXQXxYXUd2ctSdHixShfg0M2M1+bWWr8+u7Ko3bFZHyg==
X-Received: by 2002:a05:6512:3082:b0:540:1b2d:8ee1 with SMTP id 2adb3069b0e04-54284507047mr1803562e87.11.1736427485004;
        Thu, 09 Jan 2025 04:58:05 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428bde9633sm197114e87.0.2025.01.09.04.58.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 04:58:04 -0800 (PST)
Date: Thu, 9 Jan 2025 14:58:03 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v5 10/20] drm/bridge: analogix_dp: support to get
 &analogix_dp_device.plat_data and &analogix_dp_device.aux
Message-ID: <uqsmsoumny6ovf7n56tbcjmdzbzikk2iijk62bvefh5tjtgrvu@a7ogvep5e4yt>
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
 <20250109032725.1102465-11-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250109032725.1102465-11-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_045806_885046_42E1F26D 
X-CRM114-Status: GOOD (  17.34  )
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

On Thu, Jan 09, 2025 at 11:27:15AM +0800, Damon Ding wrote:
> Add two new functions: one to find &analogix_dp_device.plat_data via
> &drm_dp_aux, and the other to get &analogix_dp_device.aux. Both of them
> serve for the function of getting panel from DP AUX bus, which is why
> they are included in a single commit.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 14 ++++++++++++++
>  include/drm/bridge/analogix_dp.h                   |  4 ++++
>  2 files changed, 18 insertions(+)
> 
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> index b05f5b9f5258..8251adfce2f9 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> @@ -1794,6 +1794,20 @@ int analogix_dp_stop_crc(struct drm_connector *connector)
>  }
>  EXPORT_SYMBOL_GPL(analogix_dp_stop_crc);
>  
> +struct analogix_dp_plat_data *analogix_dp_aux_to_plat_data(struct drm_dp_aux *aux)
> +{
> +	struct analogix_dp_device *dp = to_dp(aux);
> +
> +	return dp->plat_data;
> +}
> +EXPORT_SYMBOL_GPL(analogix_dp_aux_to_plat_data);
> +
> +struct drm_dp_aux *analogix_dp_get_aux(struct analogix_dp_device *dp)
> +{
> +	return &dp->aux;
> +}
> +EXPORT_SYMBOL_GPL(analogix_dp_get_aux);
> +
>  MODULE_AUTHOR("Jingoo Han <jg1.han@samsung.com>");
>  MODULE_DESCRIPTION("Analogix DP Core Driver");
>  MODULE_LICENSE("GPL v2");
> diff --git a/include/drm/bridge/analogix_dp.h b/include/drm/bridge/analogix_dp.h
> index 6002c5666031..1b119b547988 100644
> --- a/include/drm/bridge/analogix_dp.h
> +++ b/include/drm/bridge/analogix_dp.h
> @@ -7,6 +7,7 @@
>  #ifndef _ANALOGIX_DP_H_
>  #define _ANALOGIX_DP_H_
>  
> +#include <drm/display/drm_dp_aux_bus.h>

Nit: it should be enough to fordward-declare struct drm_dp_aux here.

Nevertheless:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


>  #include <drm/drm_crtc.h>
>  
>  struct analogix_dp_device;
> @@ -48,4 +49,7 @@ void analogix_dp_unbind(struct analogix_dp_device *dp);
>  int analogix_dp_start_crc(struct drm_connector *connector);
>  int analogix_dp_stop_crc(struct drm_connector *connector);
>  
> +struct analogix_dp_plat_data *analogix_dp_aux_to_plat_data(struct drm_dp_aux *aux);
> +struct drm_dp_aux *analogix_dp_get_aux(struct analogix_dp_device *dp);
> +
>  #endif /* _ANALOGIX_DP_H_ */
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
