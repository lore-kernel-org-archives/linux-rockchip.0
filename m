Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0A2FD5E399
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Nov 2024 04:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YSRA6rAC+WnFBQoedMu5yqUYl6kZLro3njOvmLlBHEM=; b=GBC4MRPZ15Z4jAlrBwnQmbbxT3
	wNSmHRj30VwnkAtNMGAFDldH3JxFK8x//F9hLccv90L3oMCqEn4RDKws/oB2agldSpcaeKq5R09W6
	COLhszU6f3jDlXrMz8J7BobblUmy/oBHlVZmVq7ta1OHQ5pWRPJvs09CIPVvRtL+WS6cCK8szkf2q
	K8dP/xzHJwRNVK0FII1mxdDDxlxa/n9Utlm2A/1AnTLOhejKAogiU31NvujN4aJmXbSZRUBKziZHh
	38arjsFlbXMaXxAxI+3cw7HHoZ97etHvSB+/leA7C9VX1EWM1pj4JXt4Ll9Is5h5SLKulLNqiSbtq
	AoYBu9zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9zqj-0000000EMbb-3zcO;
	Sun, 10 Nov 2024 04:46:57 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9zqg-0000000EMbF-1tkQ
	for linux-rockchip@lists.infradead.org;
	Sun, 10 Nov 2024 04:46:56 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1731214010;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=TSQQKGly1uqhX8y15qRC2c6ounkwqxRMpntMg43D7Ak=;
	b=hWGwMcPI0yueGl5xWzUcPyjTYBSfnxpK4iwjN/mtNJ7cVAmnT5h0QhfOJcsgTvRbjLjDld
	saPsLsUXNLOV+Uff+RmjjpVKly8g07lhyj5YAOQS+gUY8vPcwpQf12bD0oTfAbi5jocHPp
	4n9MZRSTGkDUSyukhmvV91qU/wySwWslqOMwyT0xK0xm2P2ZMfPfwq/muLRG7y4Fs9fzca
	YSGq2td8LC+sqvWZGQbQLewGLQial5hHWEPOfGceWdO9wGNTh6G1ALM5FX3bnA7SlApTpa
	1KNqqjlOI5r90JLREN5XsIywET9xsGiLaqvEHl2Ihgk0AhPC3v3jFobB3rvshA==
Date: Sun, 10 Nov 2024 05:46:48 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 andy.yan@rock-chips.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, linux-kernel@vger.kernel.org, Heiko
 Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH] drm/rockchip: dsi: convert to dev_err_probe in probe
 function
In-Reply-To: <20241108144425.1009916-1-heiko@sntech.de>
References: <20241108144425.1009916-1-heiko@sntech.de>
Message-ID: <0ebf024568d041e2f7b8f6af46dad295@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241109_204654_857557_B7262D3A 
X-CRM114-Status: GOOD (  23.38  )
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

Hello Heiko,

Thanks for the patch.  Please, see a couple of comments below.

On 2024-11-08 15:44, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
> 
> DRM_DEV_ERROR is deprecated and using dev_err_probe saves quite a 
> number
> of lines too, so convert the error prints for the dsi-driver.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
> ---
>  .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 80 ++++++-------------
>  1 file changed, 26 insertions(+), 54 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> index 58a44af0e9ad..3224ab749352 100644
> --- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> @@ -1356,17 +1356,15 @@ static int dw_mipi_dsi_rockchip_probe(struct
> platform_device *pdev)
>  	struct resource *res;
>  	const struct rockchip_dw_dsi_chip_data *cdata =
>  				of_device_get_match_data(dev);
> -	int ret, i;
> +	int i;
> 
>  	dsi = devm_kzalloc(dev, sizeof(*dsi), GFP_KERNEL);
>  	if (!dsi)
>  		return -ENOMEM;
> 
>  	dsi->base = devm_platform_get_and_ioremap_resource(pdev, 0, &res);
> -	if (IS_ERR(dsi->base)) {
> -		DRM_DEV_ERROR(dev, "Unable to get dsi registers\n");
> -		return PTR_ERR(dsi->base);
> -	}
> +	if (IS_ERR(dsi->base))
> +		return dev_err_probe(dev, PTR_ERR(dsi->base), "Unable to get dsi 
> registers\n");
> 
>  	i = 0;
>  	while (cdata[i].reg) {
> @@ -1378,67 +1376,47 @@ static int dw_mipi_dsi_rockchip_probe(struct
> platform_device *pdev)
>  		i++;
>  	}
> 
> -	if (!dsi->cdata) {
> -		DRM_DEV_ERROR(dev, "no dsi-config for %s node\n", np->name);
> -		return -EINVAL;
> -	}
> +	if (!dsi->cdata)
> +		return dev_err_probe(dev, -EINVAL, "No dsi-config for %s node\n", 
> np->name);
> 
>  	/* try to get a possible external dphy */
>  	dsi->phy = devm_phy_optional_get(dev, "dphy");
> -	if (IS_ERR(dsi->phy)) {
> -		ret = PTR_ERR(dsi->phy);
> -		DRM_DEV_ERROR(dev, "failed to get mipi dphy: %d\n", ret);
> -		return ret;
> -	}
> +	if (IS_ERR(dsi->phy))
> +		return dev_err_probe(dev, PTR_ERR(dsi->phy), "Failed to get mipi 
> dphy\n");

After spending a couple of days thinking about it, I think this
particular change should be extracted into a separate patch and
submitted additionally for the inclusion into stable kernels.

My reasoning behind that is the "spamming" of the kernel log with
multiple suspiciously looking error messages when getting the dphy
results in deferred probing, which IMHO looks really bad and may
cause false impression of underlying issues.

If you agree with this suggestion, please feel free to use the
relevant parts of the description of the patch I submitted and
withdrawn earlier, [*] to provide the required rationale for the
inclusion into stable kernels.

[*] 
https://lore.kernel.org/linux-rockchip/559094275c3e41cae7c89e904341f89a1240a51a.1731073565.git.dsimic@manjaro.org/

>  	dsi->pclk = devm_clk_get(dev, "pclk");
> -	if (IS_ERR(dsi->pclk)) {
> -		ret = PTR_ERR(dsi->pclk);
> -		DRM_DEV_ERROR(dev, "Unable to get pclk: %d\n", ret);
> -		return ret;
> -	}
> +	if (IS_ERR(dsi->pclk))
> +		return dev_err_probe(dev, PTR_ERR(dsi->pclk), "Unable to get 
> pclk\n");
> 
>  	dsi->pllref_clk = devm_clk_get(dev, "ref");
>  	if (IS_ERR(dsi->pllref_clk)) {
> -		if (dsi->phy) {
> +		if (dsi->phy)
>  			/*
>  			 * if external phy is present, pll will be
>  			 * generated there.
>  			 */
>  			dsi->pllref_clk = NULL;
> -		} else {
> -			ret = PTR_ERR(dsi->pllref_clk);
> -			DRM_DEV_ERROR(dev,
> -				      "Unable to get pll reference clock: %d\n",
> -				      ret);
> -			return ret;
> -		}
> +		else
> +			return dev_err_probe(dev, PTR_ERR(dsi->pllref_clk),
> +					     "Unable to get pll reference clock\n");
>  	}
> 
>  	if (dsi->cdata->flags & DW_MIPI_NEEDS_PHY_CFG_CLK) {
>  		dsi->phy_cfg_clk = devm_clk_get(dev, "phy_cfg");
> -		if (IS_ERR(dsi->phy_cfg_clk)) {
> -			ret = PTR_ERR(dsi->phy_cfg_clk);
> -			DRM_DEV_ERROR(dev,
> -				      "Unable to get phy_cfg_clk: %d\n", ret);
> -			return ret;
> -		}
> +		if (IS_ERR(dsi->phy_cfg_clk))
> +			return dev_err_probe(dev, PTR_ERR(dsi->phy_cfg_clk),
> +					     "Unable to get phy_cfg_clk\n");
>  	}
> 
>  	if (dsi->cdata->flags & DW_MIPI_NEEDS_GRF_CLK) {
>  		dsi->grf_clk = devm_clk_get(dev, "grf");
> -		if (IS_ERR(dsi->grf_clk)) {
> -			ret = PTR_ERR(dsi->grf_clk);
> -			DRM_DEV_ERROR(dev, "Unable to get grf_clk: %d\n", ret);
> -			return ret;
> -		}
> +		if (IS_ERR(dsi->grf_clk))
> +			return dev_err_probe(dev, PTR_ERR(dsi->grf_clk), "Unable to get 
> grf_clk\n");
>  	}
> 
>  	dsi->grf_regmap = syscon_regmap_lookup_by_phandle(np, 
> "rockchip,grf");
> -	if (IS_ERR(dsi->grf_regmap)) {
> -		DRM_DEV_ERROR(dev, "Unable to get rockchip,grf\n");
> -		return PTR_ERR(dsi->grf_regmap);
> -	}
> +	if (IS_ERR(dsi->grf_regmap))
> +		return dev_err_probe(dev, PTR_ERR(dsi->grf_regmap), "Unable to get 
> rockchip,grf\n");
> 
>  	dsi->dev = dev;
>  	dsi->pdata.base = dsi->base;
> @@ -1451,24 +1429,18 @@ static int dw_mipi_dsi_rockchip_probe(struct
> platform_device *pdev)
>  	mutex_init(&dsi->usage_mutex);
> 
>  	dsi->dphy = devm_phy_create(dev, NULL, &dw_mipi_dsi_dphy_ops);
> -	if (IS_ERR(dsi->dphy)) {
> -		DRM_DEV_ERROR(&pdev->dev, "failed to create PHY\n");
> -		return PTR_ERR(dsi->dphy);
> -	}
> +	if (IS_ERR(dsi->dphy))
> +		return dev_err_probe(dev, PTR_ERR(dsi->dphy), "Failed to create 
> PHY\n");
> 
>  	phy_set_drvdata(dsi->dphy, dsi);
>  	phy_provider = devm_of_phy_provider_register(dev, 
> of_phy_simple_xlate);
>  	if (IS_ERR(phy_provider))
> -		return PTR_ERR(phy_provider);
> +		return dev_err_probe(dev, PTR_ERR(phy_provider),
> +				     "Failed to register phy-provider\n");
> 
>  	dsi->dmd = dw_mipi_dsi_probe(pdev, &dsi->pdata);
> -	if (IS_ERR(dsi->dmd)) {
> -		ret = PTR_ERR(dsi->dmd);
> -		if (ret != -EPROBE_DEFER)
> -			DRM_DEV_ERROR(dev,
> -				      "Failed to probe dw_mipi_dsi: %d\n", ret);
> -		return ret;
> -	}
> +	if (IS_ERR(dsi->dmd))
> +		return dev_err_probe(dev, PTR_ERR(dsi->dmd), "Failed to probe 
> dw_mipi_dsi\n");
> 
>  	return 0;
>  }

Regardless of the above-suggested split into a patch series
ending up accepted or not, the introduced changes are looking
good to me, so please feel free to include my

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
