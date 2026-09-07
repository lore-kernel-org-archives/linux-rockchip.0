Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF6BCC79F89
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Sep 2026 11:02:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tmeJfPdgrfZyr0pnQdiPl13aw/GAaj2NRzmSpJQNafo=; b=DXTfmr8AUshjTs
	R76bgxRsLhGa6F7FLHIB9xqeXvRDX8nd+S+U3hGQ+qAQswtWgyMqyW+XNG258e01COtqJowoJFXvX
	TQLuNMsFufpiLnIhtUrJrrkrQ3332j6HWfCbQ9ALj8TWnWI2xdtXPYI149nB2C8SoLJXUuBgFKOcY
	jMNMPcNCsejTJ4I5swjDx1Sl8PYCwWOxdJytb+L7yi/hVrq//IRCzV4nq0PKappuM438duhHKnnAB
	+SIubiaeYR4rYjibljtaY5OQP1PsKoItKVWuSynLphAasF51HUMR5uxOYmyY4j2K8tM7M8SavHnXi
	OkUoLYn1o8fN6Klyn5/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3X7I-00000006bDX-45Ro;
	Mon, 07 Sep 2026 11:02:24 +0000
Received: from sender6-pp-f112.zoho.com ([165.173.180.112])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3X7G-00000006bCx-1UbP;
	Mon, 07 Sep 2026 11:02:23 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1788778937; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=cEkx9n2gZuP37kraYeyo8ckYdvOQw3Bks6OBB3ybxuaeCa9v2srFeNcZe3RspQphrarocYxCysSzUQTmaWLTO8qJyH8CHJdIAIN9mDB334Zi7RAqvL9QtWpullrdkw/FRLGnQK1iku1WExCBmy/PDM99t8s2yB+MJqlhJGjcr3Y=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1788778937; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=cC9s+xjh/N6rSZarsENmP07faEM7u9hQPQhDsNCtyb0=; 
	b=nokuVz3EzgMlIDAQQD0EyZ/sgynSKqUBe1CtThToD87q8rWS1oqPeTjTeos41lM5gE58dvkaWBn2gUQUMBYHVYncglSkyxBw0j2VOFFhT2WWTlN9LPIiYToFbq2SH7uZPfWx8CdhTubspYR5Y5hoaA4/IpQXPQ2YSQU4/Yy3tCw=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=michael.riesch@collabora.com;
	dmarc=pass header.from=<michael.riesch@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1788778937;
	s=zohomail; d=collabora.com; i=michael.riesch@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=cC9s+xjh/N6rSZarsENmP07faEM7u9hQPQhDsNCtyb0=;
	b=OfTx4OYBkz+3DmyYt2yyy3sr1yA5iGgH6LnzNJFIqlMOPD+1y9nrk0MGJ8Dvvy8E
	2ntbXswE9cxAu1B1JMFu9iBBekfkhKsqXoQ7NlixIR89DMKl4/IqqxJDKIy8ZKzDZTN
	UmUfVJW8XldqdvY1VzKB6OWAC5JWccpXdWCVPl48=
Received: by mx.zohomail.com with SMTPS id 1788778934224927.534650195504;
	Mon, 7 Sep 2026 04:02:14 -0700 (PDT)
Message-ID: <0ab0b4f4-ab5d-413b-9446-5d747c59a32a@collabora.com>
Date: Mon, 7 Sep 2026 13:02:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] phy: rockchip: phy-rockchip-inno-csidphy: add support
 for rk3576 variant
To: Amin Gattout <amin.gattout@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20260820-rk3576-dphy-v1-0-70e25e8d5e78@gmail.com>
 <20260820-rk3576-dphy-v1-3-70e25e8d5e78@gmail.com>
Content-Language: en-US
From: Michael Riesch <michael.riesch@collabora.com>
In-Reply-To: <20260820-rk3576-dphy-v1-3-70e25e8d5e78@gmail.com>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_040222_430438_66C475A4 
X-CRM114-Status: GOOD (  16.77  )
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

Hi Amin,

Thanks for your patches!

On 8/20/26 16:01, Amin Gattout wrote:
> The two RK3576 MIPI CSI-2 DPHYs can be supported using the existing
> phy-rockchip-inno-csidphy driver, the notable difference with the
> RK3588 variant being that each PHY instance only has an APB reset
> line.
> 
> Signed-off-by: Amin Gattout <amin.gattout@gmail.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-inno-csidphy.c | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-csidphy.c b/drivers/phy/rockchip/phy-rockchip-inno-csidphy.c
> index c79fb53d8ee5..24aefdcd6361 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-csidphy.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-csidphy.c
> @@ -30,6 +30,7 @@
>  #define RK3568_GRF_VI_CON0		0x0340
>  #define RK3568_GRF_VI_CON1		0x0344
>  
> +#define RK3576_CSIDPHY_GRF_CON0		0x0000

This, ...

>  #define RK3588_CSIDPHY_GRF_CON0		0x0000
>  
>  /* PHY */
> @@ -119,6 +120,12 @@ static const struct dphy_reg rk3568_grf_dphy_regs[] = {
>  	[GRF_DPHY_CSIPHY_CLKLANE_EN] = PHY_REG(RK3568_GRF_VI_CON0, 1, 8),
>  };
>  
> +static const struct dphy_reg rk3576_grf_dphy_regs[] = {
> +	[GRF_DPHY_CSIPHY_FORCERXMODE] = PHY_REG(RK3576_CSIDPHY_GRF_CON0, 4, 0),
> +	[GRF_DPHY_CSIPHY_DATALANE_EN] = PHY_REG(RK3576_CSIDPHY_GRF_CON0, 4, 4),
> +	[GRF_DPHY_CSIPHY_CLKLANE_EN] = PHY_REG(RK3576_CSIDPHY_GRF_CON0, 1, 8),
> +};
> +

and this look pretty identical to RK3588, can't we just drop these two
and ...

>  static const struct dphy_reg rk3588_grf_dphy_regs[] = {
>  	[GRF_DPHY_CSIPHY_FORCERXMODE] = PHY_REG(RK3588_CSIDPHY_GRF_CON0, 4, 0),
>  	[GRF_DPHY_CSIPHY_DATALANE_EN] = PHY_REG(RK3588_CSIDPHY_GRF_CON0, 4, 4),
> @@ -403,6 +410,17 @@ static const struct dphy_drv_data rk3568_mipidphy_drv_data = {
>  	.resets_num = ARRAY_SIZE(rk3368_reset_names),
>  };
>  
> +static const struct dphy_drv_data rk3576_mipidphy_drv_data = {
> +	.pwrctl_offset = -1,
> +	.ths_settle_offset = RK3568_CSIDPHY_CLK_WR_THS_SETTLE,
> +	.calib_offset = RK3568_CSIDPHY_CLK_CALIB_EN,
> +	.hsfreq_ranges = rk1808_mipidphy_hsfreq_ranges,
> +	.num_hsfreq_ranges = ARRAY_SIZE(rk1808_mipidphy_hsfreq_ranges),
> +	.grf_regs = rk3576_grf_dphy_regs,

... use rk3588_grf_dphy_regs here?

> +	.resets = rk3368_reset_names,

So that the reset names are the only difference to RK3588 (which seems
to be the case as per commit message)?

> +	.resets_num = ARRAY_SIZE(rk3368_reset_names),
> +};
> +
>  static const struct dphy_drv_data rk3588_mipidphy_drv_data = {
>  	.pwrctl_offset = -1,
>  	.ths_settle_offset = RK3568_CSIDPHY_CLK_WR_THS_SETTLE,
> @@ -435,6 +453,10 @@ static const struct of_device_id rockchip_inno_csidphy_match_id[] = {
>  		.compatible = "rockchip,rk3568-csi-dphy",
>  		.data = &rk3568_mipidphy_drv_data,
>  	},
> +	{
> +		.compatible = "rockchip,rk3576-csi-dphy",
> +		.data = &rk3576_mipidphy_drv_data,
> +	},
>  	{
>  		.compatible = "rockchip,rk3588-csi-dphy",
>  		.data = &rk3588_mipidphy_drv_data,
> 

Apart from that LGTM!

Best regards,
Michael


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
