Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38FBBD64063
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Nov 2024 16:34:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ttUMGHgmDfMarhljiobuHySstK19qkO3Euiqp88Rivc=; b=ol5PR/quqRSC6Z
	NbXMROC3Ft51gO4BfUGWYWEG8yqeupOsg5m5ycUZ7xqoY/k+UJG5Ir0iCJU8KzDp5MrubxXpMUkCL
	PZcVQ3i2NFKeEA2CsENEaIqVv/zlp7EEeARrejjM2ki0wz+SufJzC2re/1sKAuVEAkvNIGdWPFr4P
	oiq4cTgCxADezshge0u1zz/mljLUGpmpcuiPLcw+i5mGYyrfmt0UKGsgy49D5InGTIfWQDU6/Usnh
	xcTB6vN04VSvSuACfHrIJeHCjBGlXcDb2kImQzZ2Z4rOdDbDQAhasQYGwaLn7LJkS1smccqLOXg0a
	oIDgC1pmU6ca6nHU2czQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9RwI-0000000BFA9-1YYS;
	Fri, 08 Nov 2024 16:34:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9RtS-0000000BDDz-1FAc
	for linux-rockchip@lists.infradead.org;
	Fri, 08 Nov 2024 16:31:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=izN+X3JybrKK3iW3oQFoGwC3TrXxDusclG/MM8ky+oc=; b=a93gCj5EQaa5WFfrWF+Gdcnm5F
	uw8saVwmq4piDb+9MXm+v9IJ2WY8MB5TGAGH+e2H1FhIMlDdLr8OG/ZZlSYxQV/hnIJ/zYaFL3JOd
	IS39aRFipWyrpa4UcbHBDS4F4U/Sm9QvXtqh/1PxxjUQXkcEg2pNU14Al929Z+bwRMiwvNJAqXWKA
	8uzIdw9bBva4uujwZkKW4f4dGxcR5DOYy5sRxrxWSFXvIXpi8m2c5tkbJbbm+7X3eg8CHcAmAyTFM
	17SsXfveEXhvgDWW0ZFVrOw73ztGmjXzoa6kVCbkikg3wWktlN/5PLO1nKmPPFDvapn5IDzq2mGHa
	vTV0iBlQ==;
Received: from i53875b28.versanet.de ([83.135.91.40] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t9RtO-0007OO-3f; Fri, 08 Nov 2024 17:31:26 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Diederik de Haas <didi.debian@cknow.org>
Cc: dsimic@manjaro.org, andy.yan@rock-chips.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 linux-kernel@vger.kernel.org, Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH] drm/rockchip: dsi: convert to dev_err_probe in probe function
Date: Fri, 08 Nov 2024 17:31:25 +0100
Message-ID: <3594835.iIbC2pHGDl@diego>
In-Reply-To: <D5GWE4WJZMM8.1MPHPPQR2QW46@cknow.org>
References: <20241108144425.1009916-1-heiko@sntech.de>
 <D5GWE4WJZMM8.1MPHPPQR2QW46@cknow.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241108_083130_401943_E8CB5120 
X-CRM114-Status: GOOD (  27.03  )
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

Am Freitag, 8. November 2024, 16:21:24 CET schrieb Diederik de Haas:
> On Fri Nov 8, 2024 at 3:44 PM CET, Heiko Stuebner wrote:
> > From: Heiko Stuebner <heiko.stuebner@cherry.de>
> >
> > DRM_DEV_ERROR is deprecated and using dev_err_probe saves quite a number
> > of lines too, so convert the error prints for the dsi-driver.
> >
> > Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
> 
> Should this have a Fixes tag?
> Because in the PineTab2 case it reported an error, which was actually
> just a deferred probe.

A deferred-probe is an error ;-)   -517 in fact  ... just that convention
nowadays is to not actively report on it but "fail" silently.

So personally I don't really consider it a fix, but more a style thing.
I guess I'll let others chime in for that.


Heiko

> 
> > ---
> >  .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 80 ++++++-------------
> >  1 file changed, 26 insertions(+), 54 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> > index 58a44af0e9ad..3224ab749352 100644
> > --- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> > +++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> > ...
> > @@ -1378,67 +1376,47 @@ static int dw_mipi_dsi_rockchip_probe(struct platform_device *pdev)
> >  		i++;
> >  	}
> >  
> > -	if (!dsi->cdata) {
> > -		DRM_DEV_ERROR(dev, "no dsi-config for %s node\n", np->name);
> > -		return -EINVAL;
> > -	}
> > +	if (!dsi->cdata)
> > +		return dev_err_probe(dev, -EINVAL, "No dsi-config for %s node\n", np->name);
> >  
> >  	/* try to get a possible external dphy */
> >  	dsi->phy = devm_phy_optional_get(dev, "dphy");
> > -	if (IS_ERR(dsi->phy)) {
> > -		ret = PTR_ERR(dsi->phy);
> > -		DRM_DEV_ERROR(dev, "failed to get mipi dphy: %d\n", ret);
> > -		return ret;
> > -	}
> > +	if (IS_ERR(dsi->phy))
> > +		return dev_err_probe(dev, PTR_ERR(dsi->phy), "Failed to get mipi dphy\n");
> 
> I think from this line.
> 
> Cheers,
>   Diederik
> 
> >  
> >  	dsi->pclk = devm_clk_get(dev, "pclk");
> > -	if (IS_ERR(dsi->pclk)) {
> > -		ret = PTR_ERR(dsi->pclk);
> > -		DRM_DEV_ERROR(dev, "Unable to get pclk: %d\n", ret);
> > -		return ret;
> > -	}
> > +	if (IS_ERR(dsi->pclk))
> > +		return dev_err_probe(dev, PTR_ERR(dsi->pclk), "Unable to get pclk\n");
> >  
> >  	dsi->pllref_clk = devm_clk_get(dev, "ref");
> >  	if (IS_ERR(dsi->pllref_clk)) {
> > -		if (dsi->phy) {
> > +		if (dsi->phy)
> >  			/*
> >  			 * if external phy is present, pll will be
> >  			 * generated there.
> >  			 */
> >  			dsi->pllref_clk = NULL;
> > -		} else {
> > -			ret = PTR_ERR(dsi->pllref_clk);
> > -			DRM_DEV_ERROR(dev,
> > -				      "Unable to get pll reference clock: %d\n",
> > -				      ret);
> > -			return ret;
> > -		}
> > +		else
> > +			return dev_err_probe(dev, PTR_ERR(dsi->pllref_clk),
> > +					     "Unable to get pll reference clock\n");
> >  	}
> >  
> >  	if (dsi->cdata->flags & DW_MIPI_NEEDS_PHY_CFG_CLK) {
> >  		dsi->phy_cfg_clk = devm_clk_get(dev, "phy_cfg");
> > -		if (IS_ERR(dsi->phy_cfg_clk)) {
> > -			ret = PTR_ERR(dsi->phy_cfg_clk);
> > -			DRM_DEV_ERROR(dev,
> > -				      "Unable to get phy_cfg_clk: %d\n", ret);
> > -			return ret;
> > -		}
> > +		if (IS_ERR(dsi->phy_cfg_clk))
> > +			return dev_err_probe(dev, PTR_ERR(dsi->phy_cfg_clk),
> > +					     "Unable to get phy_cfg_clk\n");
> >  	}
> >  
> >  	if (dsi->cdata->flags & DW_MIPI_NEEDS_GRF_CLK) {
> >  		dsi->grf_clk = devm_clk_get(dev, "grf");
> > -		if (IS_ERR(dsi->grf_clk)) {
> > -			ret = PTR_ERR(dsi->grf_clk);
> > -			DRM_DEV_ERROR(dev, "Unable to get grf_clk: %d\n", ret);
> > -			return ret;
> > -		}
> > +		if (IS_ERR(dsi->grf_clk))
> > +			return dev_err_probe(dev, PTR_ERR(dsi->grf_clk), "Unable to get grf_clk\n");
> >  	}
> >  
> >  	dsi->grf_regmap = syscon_regmap_lookup_by_phandle(np, "rockchip,grf");
> > -	if (IS_ERR(dsi->grf_regmap)) {
> > -		DRM_DEV_ERROR(dev, "Unable to get rockchip,grf\n");
> > -		return PTR_ERR(dsi->grf_regmap);
> > -	}
> > +	if (IS_ERR(dsi->grf_regmap))
> > +		return dev_err_probe(dev, PTR_ERR(dsi->grf_regmap), "Unable to get rockchip,grf\n");
> >  
> >  	dsi->dev = dev;
> >  	dsi->pdata.base = dsi->base;
> > ...
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
