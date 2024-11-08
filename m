Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0636D5C0CF
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Nov 2024 14:22:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jVcLk87PrYgvSjujfim/oYojiX+4U7h/rVgPO2bbLIs=; b=Qw13+8V8vc1b9E
	wokbzlU8DKR3btx7o1Vh88nhwKj94ZEQrqHIgdExttF7WioaGWUzwJtkljjaALZQb2ufbSQBeIzqv
	5gUmfa2y4tw1872yi1QZwGxv3f10XuNJkHtm/TUL6NId7ghM1qgNtTBFBRJhgDQPjr0NFt+Q5cOBn
	X8D0q+IWevoh/J+nQbBsQM0F9Fr2hc1ELYCDXtUYg+8vc5jigQOGXjznW9TQGtMzSjQjHt29CN+IR
	iiRo2y+YoYHKSnxvG4pc5Uwbk143Tz/aV/grRsnXz7nVPL478Ic+aneyRSDNgv+xKN2TN0yK1xcbt
	sjUQgUw3eS5gEZDmDi7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9PsL-0000000Appx-0sHn;
	Fri, 08 Nov 2024 14:22:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9PU0-0000000Am3e-3EyL;
	Fri, 08 Nov 2024 13:57:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=78Y1JoVFkZuBkpLjUlEv4mMs5Q6hmXPT2whCgK1XDTI=; b=dNH0V0t0Ayw9j/OiJ5WjyYGdWj
	mgfTW3GzzqcQswfje4C5TAasrSb+TvY2D33GEfMuGWYB1q8scJuDIM+NhmKdS2Yf0lMjnnUee/ciq
	FPnaC0sBjtxxeIGnt8ZEDCldJVjR0n13xL5clhOpGd7MCnMFjCu0/BQ5DDXcCkwrS5on9J+s/I8lm
	BgMwWBvkx+3GVj3MA4nl8gzCBm1ulNgT+jz0ShHueQFUF1ntkovIwwCyBsyQe8pLcktDz7WlDchDG
	8VORumLcPYxc8deZHJY5qK7coYFae+JkFPxXS39Nsp74RSqh/VzuNWkVZYMFnkMJTWQjAbbAei0yK
	A14m9Eag==;
Received: from i53875b28.versanet.de ([83.135.91.40] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t9PTb-0006UM-JH; Fri, 08 Nov 2024 14:56:39 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Dragan Simic <dsimic@manjaro.org>
Cc: hjc@rock-chips.com, andy.yan@rock-chips.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 airlied@gmail.com, simona@ffwll.ch, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] drm/rockchip: dsi: Perform trivial code cleanups
Date: Fri, 08 Nov 2024 14:56:38 +0100
Message-ID: <13633881.uLZWGnKmhe@diego>
In-Reply-To: <35555b58a7284450fb16281514e4e6a3eb9c7b82.1731073565.git.dsimic@manjaro.org>
References: <cover.1731073565.git.dsimic@manjaro.org>
 <35555b58a7284450fb16281514e4e6a3eb9c7b82.1731073565.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241108_055704_822619_61B3A79D 
X-CRM114-Status: GOOD (  20.06  )
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

Hey Dragan,

Am Freitag, 8. November 2024, 14:53:57 CET schrieb Dragan Simic:
> Perform a few trivial code cleanups, to make one logged message a bit more
> consistent with the other logged messages by capitalizing its first word, and
> to avoid line wrapping by using the 100-column width better.
> 
> No intended functional changes are introduced by these code cleanups.
> 
> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
> ---
>  drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c | 12 ++++--------
>  1 file changed, 4 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> index 58a44af0e9ad..f451e70efbdd 100644
> --- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> @@ -1379,7 +1379,7 @@ static int dw_mipi_dsi_rockchip_probe(struct platform_device *pdev)
>  	}
>  
>  	if (!dsi->cdata) {
> -		DRM_DEV_ERROR(dev, "no dsi-config for %s node\n", np->name);
> +		DRM_DEV_ERROR(dev, "No dsi-config for %s node\n", np->name);

this is all probe-related, why not convert to dev_err_probe?

As the doc states [0], DRM_DEV_ERROR is deprecated in favor of dev_err.
So dev_err_probe would be the correct way to go?



[0] https://elixir.bootlin.com/linux/v6.11.6/source/include/drm/drm_print.h#L431

>  		return -EINVAL;
>  	}
>  
> @@ -1408,19 +1408,16 @@ static int dw_mipi_dsi_rockchip_probe(struct platform_device *pdev)
>  			dsi->pllref_clk = NULL;
>  		} else {
>  			ret = PTR_ERR(dsi->pllref_clk);
> -			DRM_DEV_ERROR(dev,
> -				      "Unable to get pll reference clock: %d\n",
> -				      ret);
> +			DRM_DEV_ERROR(dev, "Unable to get pll reference clock: %d\n", ret);
>  			return ret;
>  		}
>  	}
>  
>  	if (dsi->cdata->flags & DW_MIPI_NEEDS_PHY_CFG_CLK) {
>  		dsi->phy_cfg_clk = devm_clk_get(dev, "phy_cfg");
>  		if (IS_ERR(dsi->phy_cfg_clk)) {
>  			ret = PTR_ERR(dsi->phy_cfg_clk);
> -			DRM_DEV_ERROR(dev,
> -				      "Unable to get phy_cfg_clk: %d\n", ret);
> +			DRM_DEV_ERROR(dev, "Unable to get phy_cfg_clk: %d\n", ret);
>  			return ret;
>  		}
>  	}
> @@ -1465,8 +1462,7 @@ static int dw_mipi_dsi_rockchip_probe(struct platform_device *pdev)
>  	if (IS_ERR(dsi->dmd)) {
>  		ret = PTR_ERR(dsi->dmd);
>  		if (ret != -EPROBE_DEFER)
> -			DRM_DEV_ERROR(dev,
> -				      "Failed to probe dw_mipi_dsi: %d\n", ret);
> +			DRM_DEV_ERROR(dev, "Failed to probe dw_mipi_dsi: %d\n", ret);
>  		return ret;
>  	}
>  
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
