Return-Path: <SRS0=ealT=HM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62AC6C433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Feb 2021 13:11:28 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DD7E764DD8
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Feb 2021 13:11:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DD7E764DD8
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ffwll.ch
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jf3daleDPs6YK4c7kLzGY2xjM9v2mpSkil3sCqV2Myg=; b=p4y7xpCIXgIn8JVUhHfGwfHky
	wU/HEorzssqcXYO50tvVBPQ6p6n3hsmhJotQuQdEhRZv7oaVSlJtHLKEUbKLZhNBgcRKntbW1MuqG
	LwI08SCKtVlbNJEA12LX2tcG7xONnCzHkUoam3j2DjhjlRfMu5mcj75BG6L1acT20jfkbYMOEknlt
	skx42jVix4rBcd6jbFrMKkH1X0xi5nC+k8W/bqH7ZerLRmUNmmt3O6brbGBaT75giWG6Z6VUmJeOT
	UxkNA3VMMCWPSr4nZ7e8EC539wSsJFKWI4ylEM8iM6zRatdRILUu9O3xagtQ03yXHjSJGGw/v+of3
	BqSFrwNBw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l9pH7-00074n-Q8; Wed, 10 Feb 2021 13:11:21 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9pH4-00073h-HA
 for linux-rockchip@lists.infradead.org; Wed, 10 Feb 2021 13:11:19 +0000
Received: by mail-wr1-x42b.google.com with SMTP id v14so2463061wro.7
 for <linux-rockchip@lists.infradead.org>; Wed, 10 Feb 2021 05:11:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=s03sQ832SgXdiNDUmP03CTP+mq4NdcSn/+dYlfQmwcc=;
 b=PxY1ItijCBx9yZt9GDoetR+Op0lQC/DWXgC1sXU8fsSETfJLCku2M5hbsJux72ypT5
 68s4xbs4GCHobFHT7aJxRgV07aKZpAXtydg1v/Qes/K+Ik5pM7mCeU3qwizOHDmmyIYp
 9SV2Ipl+/MBK+WwF1Bx5MDU8zdm3twTWHnTQY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=s03sQ832SgXdiNDUmP03CTP+mq4NdcSn/+dYlfQmwcc=;
 b=VoPfatc+RezK8asDtLcDmJITn5q9JEO23UCsRyFK0ITi15dfi3E0ZfGRUx0+vA6SDn
 CsSp2U7829yY8hI/8EUgwzuaRx0BA2WALazja1XzlS/KYD8hsnVngPAc9WVmGRQzHA+H
 pK7mVfBFNX3todlNl8aE3bLdDbYuhCH0SdhiiDEfhnXaaznRR3D2JyGzPFgUtYdPRFUs
 eMSWOJLoCjl9blS2dNuvSqDTjWY0/drpzFes1OAWEaEJ/SlZIiN9OBkuIKHfFxKa7bxY
 eQm4FuPO6AI9LpIOx3S5x3BS1m09FVDszypA/DuZcS3HatAQJEza/M7wwEsSZ/f/WlHF
 gM5w==
X-Gm-Message-State: AOAM530Dshbo6WTsRdAOH0wxxjgRKFeBmsw6Bxj3WmMiJU9XwMIciDFW
 V9PAZwxPeDPv7jLoaWOAqHINWA==
X-Google-Smtp-Source: ABdhPJxvQIoEeHx1VzpIFLhKqb997h456wb6uD0Jberkt3N+Tp+np8Vt694+JDyf4Mgk3yBG1UKPVQ==
X-Received: by 2002:adf:dd92:: with SMTP id x18mr3686880wrl.4.1612962677521;
 Wed, 10 Feb 2021 05:11:17 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id a84sm2430371wme.12.2021.02.10.05.11.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 05:11:16 -0800 (PST)
Date: Wed, 10 Feb 2021 14:11:14 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Julia Lawall <Julia.Lawall@inria.fr>
Subject: Re: [PATCH] drm: use getter/setter functions
Message-ID: <YCPbctaFCApnwOmT@phenom.ffwll.local>
Mail-Followup-To: Julia Lawall <Julia.Lawall@inria.fr>,
 David Airlie <airlied@linux.ie>, kernel-janitors@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Jonas Karlman <jonas@kwiboo.se>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Andrzej Hajda <a.hajda@samsung.com>,
 linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Joel Stanley <joel@jms.id.au>,
 Andrew Jeffery <andrew@aj.id.au>, linux-aspeed@lists.ozlabs.org
References: <20210209211304.1261740-1-Julia.Lawall@inria.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210209211304.1261740-1-Julia.Lawall@inria.fr>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210210_081118_662801_F6039CBB 
X-CRM114-Status: GOOD (  18.84  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Jernej Skrabec <jernej.skrabec@siol.net>,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 linux-aspeed@lists.ozlabs.org, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>, Andrew Jeffery <andrew@aj.id.au>,
 Jonas Karlman <jonas@kwiboo.se>, kernel-janitors@vger.kernel.org,
 Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Andrzej Hajda <a.hajda@samsung.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-rockchip@lists.infradead.org,
 Sam Ravnborg <sam@ravnborg.org>, linux-arm-kernel@lists.infradead.org,
 Joel Stanley <joel@jms.id.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Feb 09, 2021 at 10:13:04PM +0100, Julia Lawall wrote:
> Use getter and setter functions, for platform_device structures and a
> mipi_dsi_device structure.
> 
> Signed-off-by: Julia Lawall <Julia.Lawall@inria.fr>

Applied to drm-misc-next, thanks for the patch.
-Daniel
> 
> ---
>  drivers/gpu/drm/aspeed/aspeed_gfx_drv.c             |    2 +-
>  drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c |    2 +-
>  drivers/gpu/drm/panel/panel-lvds.c                  |    2 +-
>  drivers/gpu/drm/panel/panel-seiko-43wvf1g.c         |    4 ++--
>  drivers/gpu/drm/panel/panel-simple.c                |    2 +-
>  drivers/gpu/drm/rockchip/rockchip_lvds.c            |    2 +-
>  6 files changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> index 4e2dad314c79..9858079f9e14 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -4800,7 +4800,7 @@ static int panel_simple_dsi_probe(struct mipi_dsi_device *dsi)
>  
>  	err = mipi_dsi_attach(dsi);
>  	if (err) {
> -		struct panel_simple *panel = dev_get_drvdata(&dsi->dev);
> +		struct panel_simple *panel = mipi_dsi_get_drvdata(dsi);
>  
>  		drm_panel_remove(&panel->base);
>  	}
> diff --git a/drivers/gpu/drm/panel/panel-seiko-43wvf1g.c b/drivers/gpu/drm/panel/panel-seiko-43wvf1g.c
> index 0ee508576231..3939b25e6666 100644
> --- a/drivers/gpu/drm/panel/panel-seiko-43wvf1g.c
> +++ b/drivers/gpu/drm/panel/panel-seiko-43wvf1g.c
> @@ -267,7 +267,7 @@ static int seiko_panel_probe(struct device *dev,
>  
>  static int seiko_panel_remove(struct platform_device *pdev)
>  {
> -	struct seiko_panel *panel = dev_get_drvdata(&pdev->dev);
> +	struct seiko_panel *panel = platform_get_drvdata(pdev);
>  
>  	drm_panel_remove(&panel->base);
>  	drm_panel_disable(&panel->base);
> @@ -277,7 +277,7 @@ static int seiko_panel_remove(struct platform_device *pdev)
>  
>  static void seiko_panel_shutdown(struct platform_device *pdev)
>  {
> -	struct seiko_panel *panel = dev_get_drvdata(&pdev->dev);
> +	struct seiko_panel *panel = platform_get_drvdata(pdev);
>  
>  	drm_panel_disable(&panel->base);
>  }
> diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.c b/drivers/gpu/drm/rockchip/rockchip_lvds.c
> index 654bc52d9ff3..bd5ba10822c2 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_lvds.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_lvds.c
> @@ -725,7 +725,7 @@ static int rockchip_lvds_probe(struct platform_device *pdev)
>  
>  static int rockchip_lvds_remove(struct platform_device *pdev)
>  {
> -	struct rockchip_lvds *lvds = dev_get_drvdata(&pdev->dev);
> +	struct rockchip_lvds *lvds = platform_get_drvdata(pdev);
>  
>  	component_del(&pdev->dev, &rockchip_lvds_component_ops);
>  	clk_unprepare(lvds->pclk);
> diff --git a/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c b/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c
> index 457ec04950f7..c7707338bfdb 100644
> --- a/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c
> +++ b/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c
> @@ -284,7 +284,7 @@ static int aspeed_gfx_probe(struct platform_device *pdev)
>  	if (ret)
>  		return ret;
>  
> -	dev_set_drvdata(&pdev->dev, priv);
> +	platform_set_drvdata(pdev, priv);
>  
>  	ret = sysfs_create_group(&pdev->dev.kobj, &aspeed_sysfs_attr_group);
>  	if (ret)
> diff --git a/drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c b/drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c
> index d0c65610ebb5..989a05bc8197 100644
> --- a/drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c
> +++ b/drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c
> @@ -2457,7 +2457,7 @@ static int cdns_mhdp_probe(struct platform_device *pdev)
>  
>  static int cdns_mhdp_remove(struct platform_device *pdev)
>  {
> -	struct cdns_mhdp_device *mhdp = dev_get_drvdata(&pdev->dev);
> +	struct cdns_mhdp_device *mhdp = platform_get_drvdata(pdev);
>  	unsigned long timeout = msecs_to_jiffies(100);
>  	bool stop_fw = false;
>  	int ret;
> diff --git a/drivers/gpu/drm/panel/panel-lvds.c b/drivers/gpu/drm/panel/panel-lvds.c
> index 66c7d765b8f7..59a8d99e777d 100644
> --- a/drivers/gpu/drm/panel/panel-lvds.c
> +++ b/drivers/gpu/drm/panel/panel-lvds.c
> @@ -244,7 +244,7 @@ static int panel_lvds_probe(struct platform_device *pdev)
>  
>  static int panel_lvds_remove(struct platform_device *pdev)
>  {
> -	struct panel_lvds *lvds = dev_get_drvdata(&pdev->dev);
> +	struct panel_lvds *lvds = platform_get_drvdata(pdev);
>  
>  	drm_panel_remove(&lvds->panel);
>  
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
