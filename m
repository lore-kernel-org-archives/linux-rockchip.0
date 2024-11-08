Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55BAED64063
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Nov 2024 16:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WfhUFjclNETEzMVZp1KeU0RtpQa7zk69ECEjimQ6hcg=; b=mKsScbJ503lCwx1mG6/RVD57kH
	CGhhTipDGP7v2DlN0kIQZ1U2dJnOJzs3xtvJ0EmX7lAxhrouBlW47wpMNevWl4fegxAOkdnygDQ8u
	GgbntFdCWPVRyhyy4mfqVPUw6zAWbAlKBlzkTkiGWYBbkFx42Tj4B4z/PP/ezqIIxbusNiUT5WI1L
	9D30203u6YaNEY3F9ICJXNLJmNAST2Zmuf00lRWBdhKVR8MavH25ewapgKJdPii3vitja2pG5qzQW
	fOiZ/rmhtO7YnJ+nj4Rgci3ybIm3DWc/LT8LLBTu1HbCDipCbvG1fq1bd2aTWsws/f8yJgAqVq+o+
	94GYKaaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9Rtm-0000000BDGJ-1umk;
	Fri, 08 Nov 2024 16:31:50 +0000
Received: from out-173.mta0.migadu.com ([91.218.175.173])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9Qnq-0000000B0Yp-2Tsp
	for linux-rockchip@lists.infradead.org;
	Fri, 08 Nov 2024 15:21:40 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1731079294;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=pbapVfiISm/C5v4STghpJz/FC3c1tBmcfEax3HYjIC8=;
	b=t+x/QbDSVdb7on8vS3OSrapcTgojup2aIR6Cy24hufGcWfv9y+GVzYVVrnV8q9YQg/jGwz
	RoYJft2EYWVmF+VMIF15NSgGLI6J1TjJC5XxKgDHpk3htlWU8AHGpa3IeZLIYPOH+QYcR6
	xFRuQyuJdc0B82KgSFh5b1OrNSkRivnqEiq8gs2QzZdRBkl6H1HCfCtwQELZ1FJBjVKUCn
	lQEQWVmgWTz7eQKGvFJvqoI3VxghiGAPONykjBDc1nIOTPSH4PzuR54+x3h86l48yc0+xY
	FW/f+Yg1BJp2nCVkNUdD2aYqMcw2K2Wxn+6p58iB1KZTBTSjsPzX+7eruVlDyg==
Date: Fri, 08 Nov 2024 16:21:24 +0100
Message-Id: <D5GWE4WJZMM8.1MPHPPQR2QW46@cknow.org>
Cc: <dsimic@manjaro.org>, <andy.yan@rock-chips.com>,
 <maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
 <tzimmermann@suse.de>, <linux-kernel@vger.kernel.org>, "Heiko Stuebner"
 <heiko.stuebner@cherry.de>
Subject: Re: [PATCH] drm/rockchip: dsi: convert to dev_err_probe in probe
 function
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Heiko Stuebner" <heiko@sntech.de>,
 <linux-rockchip@lists.infradead.org>, <dri-devel@lists.freedesktop.org>
References: <20241108144425.1009916-1-heiko@sntech.de>
In-Reply-To: <20241108144425.1009916-1-heiko@sntech.de>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241108_072139_014260_9E3F42BD 
X-CRM114-Status: GOOD (  18.20  )
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
Content-Type: multipart/mixed; boundary="===============9165268495248381827=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============9165268495248381827==
Content-Type: multipart/signed;
 boundary=4dd0f36deef0a2c52894bfee2e5787b1a3b4ab4cc0e383fc236d6d0b6477;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--4dd0f36deef0a2c52894bfee2e5787b1a3b4ab4cc0e383fc236d6d0b6477
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Fri Nov 8, 2024 at 3:44 PM CET, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
>
> DRM_DEV_ERROR is deprecated and using dev_err_probe saves quite a number
> of lines too, so convert the error prints for the dsi-driver.
>
> Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>

Should this have a Fixes tag?
Because in the PineTab2 case it reported an error, which was actually
just a deferred probe.

> ---
>  .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 80 ++++++-------------
>  1 file changed, 26 insertions(+), 54 deletions(-)
>
> diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gp=
u/drm/rockchip/dw-mipi-dsi-rockchip.c
> index 58a44af0e9ad..3224ab749352 100644
> --- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> ...
> @@ -1378,67 +1376,47 @@ static int dw_mipi_dsi_rockchip_probe(struct plat=
form_device *pdev)
>  		i++;
>  	}
> =20
> -	if (!dsi->cdata) {
> -		DRM_DEV_ERROR(dev, "no dsi-config for %s node\n", np->name);
> -		return -EINVAL;
> -	}
> +	if (!dsi->cdata)
> +		return dev_err_probe(dev, -EINVAL, "No dsi-config for %s node\n", np->=
name);
> =20
>  	/* try to get a possible external dphy */
>  	dsi->phy =3D devm_phy_optional_get(dev, "dphy");
> -	if (IS_ERR(dsi->phy)) {
> -		ret =3D PTR_ERR(dsi->phy);
> -		DRM_DEV_ERROR(dev, "failed to get mipi dphy: %d\n", ret);
> -		return ret;
> -	}
> +	if (IS_ERR(dsi->phy))
> +		return dev_err_probe(dev, PTR_ERR(dsi->phy), "Failed to get mipi dphy\=
n");

I think from this line.

Cheers,
  Diederik

> =20
>  	dsi->pclk =3D devm_clk_get(dev, "pclk");
> -	if (IS_ERR(dsi->pclk)) {
> -		ret =3D PTR_ERR(dsi->pclk);
> -		DRM_DEV_ERROR(dev, "Unable to get pclk: %d\n", ret);
> -		return ret;
> -	}
> +	if (IS_ERR(dsi->pclk))
> +		return dev_err_probe(dev, PTR_ERR(dsi->pclk), "Unable to get pclk\n");
> =20
>  	dsi->pllref_clk =3D devm_clk_get(dev, "ref");
>  	if (IS_ERR(dsi->pllref_clk)) {
> -		if (dsi->phy) {
> +		if (dsi->phy)
>  			/*
>  			 * if external phy is present, pll will be
>  			 * generated there.
>  			 */
>  			dsi->pllref_clk =3D NULL;
> -		} else {
> -			ret =3D PTR_ERR(dsi->pllref_clk);
> -			DRM_DEV_ERROR(dev,
> -				      "Unable to get pll reference clock: %d\n",
> -				      ret);
> -			return ret;
> -		}
> +		else
> +			return dev_err_probe(dev, PTR_ERR(dsi->pllref_clk),
> +					     "Unable to get pll reference clock\n");
>  	}
> =20
>  	if (dsi->cdata->flags & DW_MIPI_NEEDS_PHY_CFG_CLK) {
>  		dsi->phy_cfg_clk =3D devm_clk_get(dev, "phy_cfg");
> -		if (IS_ERR(dsi->phy_cfg_clk)) {
> -			ret =3D PTR_ERR(dsi->phy_cfg_clk);
> -			DRM_DEV_ERROR(dev,
> -				      "Unable to get phy_cfg_clk: %d\n", ret);
> -			return ret;
> -		}
> +		if (IS_ERR(dsi->phy_cfg_clk))
> +			return dev_err_probe(dev, PTR_ERR(dsi->phy_cfg_clk),
> +					     "Unable to get phy_cfg_clk\n");
>  	}
> =20
>  	if (dsi->cdata->flags & DW_MIPI_NEEDS_GRF_CLK) {
>  		dsi->grf_clk =3D devm_clk_get(dev, "grf");
> -		if (IS_ERR(dsi->grf_clk)) {
> -			ret =3D PTR_ERR(dsi->grf_clk);
> -			DRM_DEV_ERROR(dev, "Unable to get grf_clk: %d\n", ret);
> -			return ret;
> -		}
> +		if (IS_ERR(dsi->grf_clk))
> +			return dev_err_probe(dev, PTR_ERR(dsi->grf_clk), "Unable to get grf_c=
lk\n");
>  	}
> =20
>  	dsi->grf_regmap =3D syscon_regmap_lookup_by_phandle(np, "rockchip,grf")=
;
> -	if (IS_ERR(dsi->grf_regmap)) {
> -		DRM_DEV_ERROR(dev, "Unable to get rockchip,grf\n");
> -		return PTR_ERR(dsi->grf_regmap);
> -	}
> +	if (IS_ERR(dsi->grf_regmap))
> +		return dev_err_probe(dev, PTR_ERR(dsi->grf_regmap), "Unable to get roc=
kchip,grf\n");
> =20
>  	dsi->dev =3D dev;
>  	dsi->pdata.base =3D dsi->base;
> ...


--4dd0f36deef0a2c52894bfee2e5787b1a3b4ab4cc0e383fc236d6d0b6477
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZy4sdgAKCRDXblvOeH7b
bs6QAP9s5Ew76jJkNqCXwe5IlvoY4Fy0rg7N0YgsTnhrcB1TIAEAzoK75L8/hZIu
nxxBEI37Ah9YK1707qq4PYkorbQbFgo=
=fOhD
-----END PGP SIGNATURE-----

--4dd0f36deef0a2c52894bfee2e5787b1a3b4ab4cc0e383fc236d6d0b6477--


--===============9165268495248381827==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============9165268495248381827==--

