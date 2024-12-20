Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE896E77184
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Dec 2024 00:16:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=61LjQY6TbFXlxT49663+LC/IOFjHWueyY9RqeP+4MIA=; b=1+RwJXINrx6wqi
	trIwSkD/6TRkllYjwOb7dBdlu9/jac7/k+z59bN8JiDhUK+5ipXkBG4O5bTe0CxgzUXFRqG1JfhsJ
	xtEYbKbDTxmwqJ+TcTN5MSUiyCJI1rv0U/bZjB0tV0TMsLdswSJRG8p7NcJGW5Sq7MwkHZiTvbK1b
	BAIpIqSlIP9AaiFO9XwwgfKrm0zZMq1XWcSlBkl9CK8+Bp2Awqgt0Tlv9SW66YDBUAYiVTzkd243R
	F0POayUj6pjQYpoPygKq+8bRNsGQ3t3anVMgo7Q7OC0MsvZdCBZ/n7DJTHxiQ5PZCmrJE8vML02EW
	TXuhyibX6QzRxi8VE57A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOQhE-00000003RG4-1DeB;
	Fri, 20 Dec 2024 00:16:48 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOQhC-00000003REu-1kaz
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Dec 2024 00:16:47 +0000
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-300392cc4caso15089211fa.3
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Dec 2024 16:16:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734653804; x=1735258604; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OvJSw2Y9AN4Bj+vC236l/3ETv8TjOwlc4v68lk/FkAI=;
        b=LfFZsKOc+qxwQ/2gEJwky5LMgFViqYyBv5IEnHjbN6SNBxEnSwSsB2WFBzeVckRACG
         gMibdKKiauEQmByp0Z1qyOu5Jzu/2b8D3DjX0ucXBqjLXqzL4+ZF4drrv27gsp55aH9S
         24iuVJ/RZdn+5hmuplLK3O1zK+G2A4P+vDjcW2nBRI3fwZmjKKgZrFX22X1ccDYQJouu
         fuMy5kRhnw/evAreW7jkTlV95MLg3+S3gRU1i/hvzTYmHiwgFP8ZqO3TW8ltE/M4TAIj
         kydAdBJyCRtmnksyTVJljRo5J7YdHX9vtxXlHd6U/KLu3v/KCVOKwQc2ypxN9dku4uMy
         CiLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734653804; x=1735258604;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OvJSw2Y9AN4Bj+vC236l/3ETv8TjOwlc4v68lk/FkAI=;
        b=CzKChcsaxtBg0ZJrX87UAM/hQMGiGSN4GCY05oqHhQ7v/8z/vo6TWcRxO/iWbGBc3o
         SAOoT6B+fVk3Ufqi2UPMSJyx0JSikH0QOdHnIn8isyeYeHhRlykRw/qaYyPY8DRLhE9a
         12o9a2FKGnUwVxjhcETLubVFQpHn3BM6cCMDSkCIePJsoWj6I32/cldY0RFDpLFI8Jq3
         1060V89HbKuw+CQw8d6j4OobJrscAst5+i9BYAMm+oA+pFAN9CKWdMtyQ5kL5Qm+tMOS
         UkypHzQYjIsr+o+gozI3dC+YocTHHn7FXCDr0MRsHB7ClO+0/dREtWI43O/+GVTh65R3
         iEPQ==
X-Forwarded-Encrypted: i=1; AJvYcCWTe1a99xyLeSynVtL4LNZc4sqTuCbQHDC2Eesi1V4B+j1JbsF3UPw4Ib6nT5gTI8j5J1S+XuVYCfY50m1gHw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx0Or6GcZZNJPEtHzdTguGkvBzATmaVcNqghbe86bfINqUt3CRD
	3S8CczkYxsrj/fzGa34rQqepO/v7eIpEt08KrZkEwrFJk3qRdhPzShwxOG/m6yQ=
X-Gm-Gg: ASbGncuKgpdttv2TmxDBHAYcd0XkCihjuGT2k719yrmj5pMuAJC0vn0ijiDny4hneOh
	iYdC83yNkIdLK9YHRnkcYQ2KJsOlo1Fg39th5cqJ0iHbDJOP7/6zV90VsGtG/bviZeSHXx4zhOr
	wNo+P3cem17V9s3hYYz7W7YzmI+tfJ+DpUpb4tyfj0eCrfcU7K5SvA46W7dkFS/xmBlUZwzwHbH
	v9/ZpLlREmm/IUpBnMdt8JuljGwQVETfPu+QHJir9efNvmcJRckkq5UDY+IG71O5kQxdraFUyo8
	TuPdXOtXCI8G1//FlLDmfshqi6D+2HcVFRJK
X-Google-Smtp-Source: AGHT+IFzvivVhPXKl3I4o3iSV3ve0+PcDzlRsGs5VisyomFwo0ktK1fC6BvzsZrAH0qVPPj4EFPZsg==
X-Received: by 2002:a05:651c:543:b0:302:17e7:e17e with SMTP id 38308e7fff4ca-3046831fbc7mr2884171fa.0.1734653804472;
        Thu, 19 Dec 2024 16:16:44 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045b06a200sm3596771fa.79.2024.12.19.16.16.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2024 16:16:43 -0800 (PST)
Date: Fri, 20 Dec 2024 02:16:41 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v3 08/15] drm/rockchip: analogix_dp: Add support to get
 panel from the DP AUX bus
Message-ID: <aiggslcdbdmnc2amlvmzycyxmu3f5zp6kt4ifgzq5gkuugmnem@oqnwf4o7hbss>
References: <20241219080604.1423600-1-damon.ding@rock-chips.com>
 <20241219080604.1423600-9-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241219080604.1423600-9-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241219_161646_467139_4F0EEE5D 
X-CRM114-Status: GOOD (  27.43  )
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

On Thu, Dec 19, 2024 at 04:05:57PM +0800, Damon Ding wrote:
> The rockchip_dp_of_panel_on_aux_bus() helps to check whether the DT
> configurations related to the DP AUX bus are correct or not.
> 
> If failed to get the panel from the platform bus, it is good to try
> the DP AUX bus. Then, the probing process will continue until it enters
> the analogix_dp_bind(), where devm_of_dp_aux_populate_bus() is called
> after &analogix_dp_device.aux has been initialized.

No. devm_of_dp_aux_populate_bus() should be called before bind(). And
bind should only be called from the done_probing() callback. The reason
is very simple: the panel driver might be built as a module and might be
not available when the analogix driver is being probed.

Also, please invert the logic of the commit message (and the driver).
The platform bus should be a fallback if there is no AUX bus panel, not
other way around.

> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 24 +++++++++++++++++--
>  1 file changed, 22 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> index ba5263f85ee2..60c902abf40b 100644
> --- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> @@ -317,6 +317,24 @@ static const struct drm_encoder_helper_funcs rockchip_dp_encoder_helper_funcs =
>  	.atomic_check = rockchip_dp_drm_encoder_atomic_check,
>  };
>  
> +static bool rockchip_dp_of_panel_on_aux_bus(const struct device_node *np)
> +{
> +	struct device_node *bus_node, *panel_node;
> +
> +	bus_node = of_get_child_by_name(np, "aux-bus");
> +	if (!bus_node)
> +		return false;
> +
> +	panel_node = of_get_child_by_name(bus_node, "panel");
> +	of_node_put(bus_node);
> +	if (!panel_node)
> +		return false;
> +
> +	of_node_put(panel_node);
> +
> +	return true;
> +}
> +
>  static int rockchip_dp_of_probe(struct rockchip_dp_device *dp)
>  {
>  	struct device *dev = dp->dev;
> @@ -435,8 +453,10 @@ static int rockchip_dp_probe(struct platform_device *pdev)
>  		return -ENODEV;
>  
>  	ret = drm_of_find_panel_or_bridge(dev->of_node, 1, 0, &panel, NULL);
> -	if (ret < 0)
> -		return ret;
> +	if (ret < 0) {
> +		if (!rockchip_dp_of_panel_on_aux_bus(dev->of_node))
> +			return ret;
> +	}
>  
>  	dp = devm_kzalloc(dev, sizeof(*dp), GFP_KERNEL);
>  	if (!dp)
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
