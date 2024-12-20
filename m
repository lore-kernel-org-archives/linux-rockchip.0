Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1190E77184
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Dec 2024 00:18:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mZUiO3ySQISbjcDmsktMOC0rC1jshjto8BORdVjFHQc=; b=SlXZHIDjAhGkcy
	tZORJng+7F4bL6B4qR0qMlElGo2stBXiJQIff9DhgC3MzmG6kjEJ1FSF+IUHLPNgnj7V0ckWfb2nn
	GgVRtF1+XnZHgJJw2xTyLr5Whsy8rPW6FQfGKImIPTAyi4hTujwJRiOoHkNI8fpx7sg9JFxM6KBVh
	Cusaww9iZL+NVHSC6MrA+JQ3ug3jmgXeh00rVlm7MGVs3vAgrxfItwglAwnE/t8/Ow6KVrq2r+EGU
	gEOX/9SxniS6LsP072gcm1AZuZBo8OH643anRz7UlLusviEt14RYNJ9gKwHO/7Nw9P1PVT0T/wH8h
	TSLgynXDE3YrWN4xfLoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOQiM-00000003RRa-2g3V;
	Fri, 20 Dec 2024 00:17:58 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOQiJ-00000003RPH-2nfp
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Dec 2024 00:17:56 +0000
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-3022484d4e4so15418211fa.1
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Dec 2024 16:17:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734653874; x=1735258674; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=88ypJKEjfY/PQxYw2dDvihxL+GlYw4/eG83FW6BzWoY=;
        b=m7pYb+4AgH95gguwnzkz6byWUlEhVz7J8e0VsCGuoel8sG38IUzvjuTgBKdiUxsh4K
         Gvqd5VDb97ta55VaXmH+qL0eM99epNu424QCHBcrJLpdWAM7yr3h8Wr9P8s/7MMQGhzT
         hhFp91T0lOxEHKJjA6njlfBFh9jKFLUAFESv/Dpyi0SyJTP/v0/bZNAWO3sxIG0Is+OG
         aXxjuDLOJqF7hzRRzXU3oKkNEG2TwhCJ8J+csY00dEuVYAu9Md4Ic01YsqgcsPMQcNFl
         goLPR275+3CIZFpR/6k14gNU3jPY4LFdqmOUusrMRW1Njf3rhc3HhZWzdfhgrO8veUPt
         VdXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734653874; x=1735258674;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=88ypJKEjfY/PQxYw2dDvihxL+GlYw4/eG83FW6BzWoY=;
        b=J3NVJpG0matFJxXDsNXDvMSV+MGvp+mGiM453XM3Q3RpUoei0KFqGPcsfPWs5mA0jr
         E12ZJMmmffDCUa0O/HWFFypcI98Bb898mTehgUNkU+U/Bx54NK8zlymTehsqi5PoiGQH
         nMnygSa6BtPDcegZ6oCDy7q54sSZqvCaKoU02hrff+yaIz4WYsshuvNfmqj9zpc4tQOQ
         4GHHM0d7pB9s+xuCXh65OREBqL4dBiii8cx3y8nRpj+9RX188PuWjI9wJQ7VAkn9YrkW
         Hm3ixt0ELPn6EJ2C50iDNs9IpLLYOOW0nYD8D4cv2uydieZtgNgrO7tKJntW/5nuj7N6
         uxzQ==
X-Forwarded-Encrypted: i=1; AJvYcCX8VQNsjhmdX1RggTG2XspTM/0oD/4bOb9IY8MErHtWNA97kDaVqtWzc9mNOqw9O/FpbW8n3pUI3NkJFZvl1A==@lists.infradead.org
X-Gm-Message-State: AOJu0YzFk1Jayhw64FrYGmj5eCwfXvAPSJSBVpGf8vCW9m9xLSXHISYG
	au7nsNXmvK5j4Uc465xvyEh8/ScNjLfVxGC8BimCCHfSQkyXfUHQ3r525WWMnaQ=
X-Gm-Gg: ASbGnctVOfjzxI1Ff4KKn/KC3qJw0paeW15PSQ9UhLyI4JEr2N2TP7VvCtV5ZpIY2Jf
	h6NFboxAhn1ZPfbTHrOsd5Gyfm0DTCt79T2B+LtK6flnNSWCS54yc1FK4oEdZ8/HtPRMPUv/xin
	SF8bA4o6SErU4A96L3/xcyL0tjFbUQxUGYznQQdhQtJGdWKA/uVLIQxOTZjz1iRWj+B7PrfMP3W
	d4ZAu0BwuHhIxSqr2xUME25UxRlfr4Kd3900vePhvDODnj7iwnxgXPm/rhS8b6tvJBreurXn+Er
	OjvXykfe5SyoqAhwgiBiRq2fOXw2B+x5UB4F
X-Google-Smtp-Source: AGHT+IFB2i5vKnWXGFFd2MWZqu6ISfQEn6gsPEZ+iz0AquMdjU/HdGNzEaZYfYTM6DlCEi0nsU27SA==
X-Received: by 2002:a05:651c:4ca:b0:302:4130:e19c with SMTP id 38308e7fff4ca-30468571039mr2038491fa.19.1734653874050;
        Thu, 19 Dec 2024 16:17:54 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045ad6cb8asm3815281fa.18.2024.12.19.16.17.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2024 16:17:52 -0800 (PST)
Date: Fri, 20 Dec 2024 02:17:50 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v3 09/15] drm/bridge: analogix_dp: Add support to get
 panel from the DP AUX bus
Message-ID: <irh3rei7to7gevrr5dqwa3qr3nl2lunenyvvvlqnpiyplbk2vj@ooedydnvl4df>
References: <20241219080604.1423600-1-damon.ding@rock-chips.com>
 <20241219080604.1423600-10-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241219080604.1423600-10-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241219_161755_712608_DB887B0C 
X-CRM114-Status: GOOD (  23.58  )
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

On Thu, Dec 19, 2024 at 04:05:58PM +0800, Damon Ding wrote:
> If the panel can not be found in the beginning of rockchip_dp_probe()
> using the platform bus, we can still try to find it in analogix_dp_bind()
> through the DP AUX bus after the &analogix_dp_device.aux has been
> initialized.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  .../drm/bridge/analogix/analogix_dp_core.c    | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> index 9429c50cc1bc..eae02819e3bb 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> @@ -19,12 +19,14 @@
>  #include <linux/platform_device.h>
>  
>  #include <drm/bridge/analogix_dp.h>
> +#include <drm/display/drm_dp_aux_bus.h>
>  #include <drm/drm_atomic.h>
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_bridge.h>
>  #include <drm/drm_crtc.h>
>  #include <drm/drm_device.h>
>  #include <drm/drm_edid.h>
> +#include <drm/drm_of.h>
>  #include <drm/drm_panel.h>
>  #include <drm/drm_print.h>
>  #include <drm/drm_probe_helper.h>
> @@ -1733,6 +1735,23 @@ int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev)
>  		goto err_disable_pm_runtime;
>  	}
>  
> +	if (!dp->plat_data->panel) {
> +		/*
> +		 * If the edp-panel module has not yet been initialized, the
> +		 * devm_of_dp_aux_populate_bus() function will return 0 and
> +		 * the done_probing() callback will not be called either.
> +		 * Consequently, the panel will never be found.
> +		 *
> +		 * This is the reason why we do not use the done_probing()
> +		 * callback and do not check the reture value here.

NAK. It is there for exactly this reason, to account for the panel
driver being not present yet. Please make a use of the done_probing()
callback.

> +		 */
> +		devm_of_dp_aux_populate_bus(&dp->aux, NULL);
> +		ret = drm_of_find_panel_or_bridge(dp->dev->of_node, 1, 0,
> +						  &dp->plat_data->panel, NULL);
> +		if (ret)
> +			goto err_unregister_aux;
> +	}
> +
>  	ret = analogix_dp_create_bridge(drm_dev, dp);
>  	if (ret) {
>  		DRM_ERROR("failed to create bridge (%d)\n", ret);
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
