Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7A65C52D7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 07:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PwmnvscAPZWymplCdf/IMKE4alO1CnhRbMioZEbsQBI=; b=AE7jzRsJjHS6DN1fkJ2wbDI5HN
	w+zeFn5gwOfPvpXmOjZfLD0Y8SxeGP35JpaEJcxIv88ysElC0/g7PuOsgRadmeisd4qrE+4x+hZWU
	Y3L7VT4C4RfqSXPfOQ5jzXgWt/FHLDXeUBZfRZDjxra1lE9ofM60tIx7MZjtLrYhxupmEeZN7bbmB
	CLSOT1x4/sxqO5xEaEhzbU6duxPQipxY1fOaQ7upoo+SLib0yJhmK9lw30eaRy5vEveKt45sTciP8
	k1w9+/Faob29l5gJrEU8ZJSlneWDtS0zCeQPjb4zTV3VPqkZMaIf2C+M648dbzvsrn3isuyRkPl3Y
	g2qlyVWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shOIv-0000000FYVC-1kmy;
	Fri, 23 Aug 2024 07:01:49 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shOI7-0000000FYHn-2qk1;
	Fri, 23 Aug 2024 07:01:01 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1724396457;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FPZmmM60tSAujVzmtKbajvXbMMgpiHTPo/2dvKyDtNI=;
	b=NDs+9ZSxY/ek6dPLsXqeuOJwsBeoXV7+MBLiCrJILOstP+qpC9oJCnYApU8E9VQTBKQTiA
	SzzLCqknuhMjQaZOfkGQ7OymI3u66L7WTuHgNAKkBtGF+6DOujeCaz/il9mGWaVfxFs7rd
	4+mKHEVDbJeWypUJeELQzBCMCLgB5a9OZ77fBuVt9A+5smmmVU0+qDKMe2ABjTFasXzpEN
	oYUBKaEn2f49AYOvIVXEYRU64f6GeFPpE09zT/vsfq0SYbiv/xgb4maPHljXE+f32M6HBI
	4xJQo+08F2rxCgrrVe71jq8S9XMc4AHxKFaRKQ6GyN0BODyvntXF9iFChi42FA==
Date: Fri, 23 Aug 2024 09:00:57 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Jaehoon
 Chung <jh80.chung@samsung.com>, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v4 4/4] mmc: dw_mmc-rockchip: Add support for rk3576 SoCs
In-Reply-To: <20240822212418.982927-5-detlev.casanova@collabora.com>
References: <20240822212418.982927-1-detlev.casanova@collabora.com>
 <20240822212418.982927-5-detlev.casanova@collabora.com>
Message-ID: <26fe259f390a8015c3f08c6dc027711c@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_000100_348688_05B34321 
X-CRM114-Status: GOOD (  20.23  )
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

Hello Detlev,

Please see a comment below.

On 2024-08-22 23:15, Detlev Casanova wrote:
> On rk3576 the tunable clocks are inside the controller itself, removing
> the need for the "ciu-drive" and "ciu-sample" clocks.
> 
> That makes it a new type of controller that has its own dt_parse 
> function.
> 
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> ---
>  drivers/mmc/host/dw_mmc-rockchip.c | 48 ++++++++++++++++++++++++++----
>  1 file changed, 43 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/mmc/host/dw_mmc-rockchip.c
> b/drivers/mmc/host/dw_mmc-rockchip.c
> index 1458cb5fd5c7..7c8ccf5e71bc 100644
> --- a/drivers/mmc/host/dw_mmc-rockchip.c
> +++ b/drivers/mmc/host/dw_mmc-rockchip.c
> @@ -410,7 +410,7 @@ static int dw_mci_rk3288_execute_tuning(struct
> dw_mci_slot *slot, u32 opcode)
>  	return ret;
>  }
> 
> -static int dw_mci_rk3288_parse_dt(struct dw_mci *host)
> +static int dw_mci_common_parse_dt(struct dw_mci *host)
>  {
>  	struct device_node *np = host->dev->of_node;
>  	struct dw_mci_rockchip_priv_data *priv;
> @@ -420,13 +420,29 @@ static int dw_mci_rk3288_parse_dt(struct dw_mci 
> *host)
>  		return -ENOMEM;
> 
>  	if (of_property_read_u32(np, "rockchip,desired-num-phases",
> -					&priv->num_phases))
> +				 &priv->num_phases))
>  		priv->num_phases = 360;
> 
>  	if (of_property_read_u32(np, "rockchip,default-sample-phase",
> -					&priv->default_sample_phase))
> +				 &priv->default_sample_phase))
>  		priv->default_sample_phase = 0;
> 
> +	host->priv = priv;
> +
> +	return 0;
> +}
> +
> +static int dw_mci_rk3288_parse_dt(struct dw_mci *host)
> +{
> +	struct dw_mci_rockchip_priv_data *priv;
> +	int err;
> +
> +	err = dw_mci_common_parse_dt(host);
> +	if (err)
> +		return err;
> +
> +	priv = host->priv;
> +
>  	priv->drv_clk = devm_clk_get(host->dev, "ciu-drive");
>  	if (IS_ERR(priv->drv_clk))
>  		dev_dbg(host->dev, "ciu-drive not available\n");
> @@ -435,13 +451,25 @@ static int dw_mci_rk3288_parse_dt(struct dw_mci 
> *host)
>  	if (IS_ERR(priv->sample_clk))
>  		dev_dbg(host->dev, "ciu-sample not available\n");
> 
> -	host->priv = priv;
> -
>  	priv->internal_phase = false;
> 
>  	return 0;
>  }
> 
> +static int dw_mci_rk3576_parse_dt(struct dw_mci *host)
> +{
> +	struct dw_mci_rockchip_priv_data *priv;
> +	int err = dw_mci_common_parse_dt(host);
> +	if (err)
> +		return err;
> +
> +	priv = host->priv;
> +
> +	priv->internal_phase = true;

Defining priv, assigning it and using it seems rather redundant,
when all that's needed is simple "host->priv->internal_phase = true"
assignment instead.

> +
> +	return 0;
> +}
> +
>  static int dw_mci_rockchip_init(struct dw_mci *host)
>  {
>  	int ret, i;
> @@ -483,11 +511,21 @@ static const struct dw_mci_drv_data 
> rk3288_drv_data = {
>  	.init			= dw_mci_rockchip_init,
>  };
> 
> +static const struct dw_mci_drv_data rk3576_drv_data = {
> +	.common_caps		= MMC_CAP_CMD23,
> +	.set_ios		= dw_mci_rk3288_set_ios,
> +	.execute_tuning		= dw_mci_rk3288_execute_tuning,
> +	.parse_dt		= dw_mci_rk3576_parse_dt,
> +	.init			= dw_mci_rockchip_init,
> +};
> +
>  static const struct of_device_id dw_mci_rockchip_match[] = {
>  	{ .compatible = "rockchip,rk2928-dw-mshc",
>  		.data = &rk2928_drv_data },
>  	{ .compatible = "rockchip,rk3288-dw-mshc",
>  		.data = &rk3288_drv_data },
> +	{ .compatible = "rockchip,rk3576-dw-mshc",
> +		.data = &rk3576_drv_data },
>  	{},
>  };
>  MODULE_DEVICE_TABLE(of, dw_mci_rockchip_match);

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
