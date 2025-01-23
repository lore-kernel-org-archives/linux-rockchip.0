Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E3FEC02182
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jan 2025 11:20:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qxoUjySM0H0jmuDKEzRCqTCBZXYMisLJx9r6eAEyQio=; b=junFwAG0xAksDG
	t1t06wzriiWupsTzJeCwc0r+AX6r8F9QfQMf/rxSWLKCVms96CoXTqmi60pC6TGvhmY0/v2q+sqPV
	lGgzXNao2kgV4ty00NTxqsTWXvz0FA/D4HoWEfDuIOG9s0eCx4uisZDNCcvSDgvWDAOu9m/uPVNy6
	PrrRJAQjiuu0kfCzXll6NvY0zA6S4sehkmkr0T/bnIsRJeEYT2TO3/UWGFs9oRMADu5/C9mHgm/0K
	sy/T1MNBfYaHgCwAZFybuOnFBjlMvcEQT8PQOTEMQsZ1zqqVeb/ptBrVmIWV9lOILRIOX/cxpDvja
	D+Ynkh+aZ4CeDnfmSLVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tavFi-0000000CJBc-2a7h;
	Thu, 23 Jan 2025 11:20:02 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tavFf-0000000CJ9j-3ad7
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Jan 2025 11:20:01 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-53f22fd6887so898015e87.2
        for <linux-rockchip@lists.infradead.org>; Thu, 23 Jan 2025 03:19:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737631198; x=1738235998; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1bsSCY5UtFIH4J3YGmp49wNWDSra2kfjxxhdqkpeB0c=;
        b=L3SFEcXGb9eEgcwKiJduSO8X3b6hjHhxzaE/+RtSJH9lCt9iXxSReolAVW6MGFRzV5
         wS1gpjWLZdaEqT9h2YkwcxA5C6mkcn/SGcpPhYgv4AHYjLyacdOD/wisaR7snR9s+ekx
         Wi75C5JDofg3Qnc25DAWmk6rz3K4CIsEct5cTHzFUemgfmgChYZIU6MX4gVOYD5wgJQZ
         Zd7Mb1axtRZGnD1O30AWJ1VemCzxVEBmwVyE6OTsOKVygpMo39lmx8+YhPAfacnpSppD
         MteB4LD7k9GN05JSVT5+V3fJmv4gZNt43zUTK803SGqAFa1e0qvvPGwzs0RE5W3i88hB
         KQGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737631198; x=1738235998;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1bsSCY5UtFIH4J3YGmp49wNWDSra2kfjxxhdqkpeB0c=;
        b=o9hUru2jr0koh4Q3jLOrEh0ZEXrmNQqDK5SurNBQ1eG0V5nRXm633MYGhRsvJ7/xE2
         dPW10pYlW4BU56s9QogXAUT3Ue/YCMPFH1euPEQrprXvzz7KnvhWoKRiR0vfTB2qBC0h
         0eC98OyFxOvzuyare6BYNu7gY5ZUzbmnFaVGwVjhgzORhMK6noPP0F49d7N6MoSiaP9E
         77i1HnRngT7wrtRh7yc/XzUhjwHyTPPeNW7ckbN1ufTs1KySc5i+Lv+dalniBj6esmJN
         7nDwnryZlZgH3tzk0re6E93B3+dEiO4LWZUS/HeCn+AuZRDjRC2kTvLi6gx2Y/N6BvLk
         Z+9w==
X-Forwarded-Encrypted: i=1; AJvYcCXmF9/mElN+034Pscn1PQP1qKHKVMoRxL6uOWjuSEUVDppJqs4EkKAatcgNdO3XZjRfg8AehWXAz3Tjv2iHEA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyZQqDHt968fLlYVSippmvMUz7WpEoESUnp3rjOgwbqrY9y9k1S
	adu8CpCswwPOqovDnilrftmKqfF7K1eDXCmufXXTljW0KzZstIykop3KPrVRwKc=
X-Gm-Gg: ASbGncs/DVsaNxDtR2SIIWlEQ2b1EOp8tPmaaURA+LPL1+pc5Ys+kREg8F71HVRxs1w
	tn4VNAi/comBGu/D5BvORriCbIIfKOxefF12DcBrVvdCfoQXwaSJAxiPbizFjZz+nvNsbYSWHaX
	yvk7eiuCjI1ZdzdAUC7ehsro+W1sZ2yM9kV3qqUM4JkKdC7s7aXY6aIIVcMEKdv/TSt7bupqfkH
	fiGXvkxF35rW2mWh/niadyeBKbZQjlYBkw+Z4oJcwNry2j3iqeYJdx8unu7BseF6gF/9ilYOMF4
	UN21vVMlEZZh0sMED7FMeykCAZwm3N7IZST1ucVKxP3Mgp0SDz39kGCGP8dj
X-Google-Smtp-Source: AGHT+IFJoD1ZpSDXSEK4+7GESjrAS6LXVt6ZkzdoNAPzcbKpEHkPVqYdSxIGbzeDq/Vi6d+KuKKiiA==
X-Received: by 2002:a05:6512:10c8:b0:540:353a:df8e with SMTP id 2adb3069b0e04-5439c282caemr9883136e87.39.1737631197914;
        Thu, 23 Jan 2025 03:19:57 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5439af60a20sm2652478e87.137.2025.01.23.03.19.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jan 2025 03:19:56 -0800 (PST)
Date: Thu, 23 Jan 2025 13:19:55 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v6 06/14] drm/bridge: analogix_dp: support to get
 &analogix_dp_device.plat_data and &analogix_dp_device.aux
Message-ID: <y4yzgkvcmvmphviuoroijaaotd2zdworbs5tfhdxh74kchirk6@dgoqwoksckiz>
References: <20250123100747.1841357-1-damon.ding@rock-chips.com>
 <20250123100747.1841357-7-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250123100747.1841357-7-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250123_031959_897300_41145B8D 
X-CRM114-Status: GOOD (  17.29  )
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

On Thu, Jan 23, 2025 at 06:07:39PM +0800, Damon Ding wrote:
> Add two new functions: one to find &analogix_dp_device.plat_data via
> &drm_dp_aux, and the other to get &analogix_dp_device.aux. Both of them
> serve for the function of getting panel from DP AUX bus, which is why
> they are included in a single commit.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
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

Nit: it should be enough to just forward-declare struct drm_dp_aux
instead.

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
