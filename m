Return-Path: <SRS0=g7df=PF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DDAFC433FE
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Oct 2021 21:55:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0AA8360FDA
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Oct 2021 21:55:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0AA8360FDA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gPhgw4c2qzPLaPFM5KNDM8xVebicLd4Np/KkvLnvrD4=; b=bHAfMRbco9wZIN
	FYVxi1WNUHFuGiBO/EfhDHExSRJl2rsccmPOWkxQZR9TtUs/ZpxfXQEldKNFCliBiZBiK5Ef2OOlQ
	TwisMCPMJQ2oFjlIhJW701hO7a8sBGXLw7QxhB16bIJmm3VXNBMdGBXOfE2vrGWocGmxE4A078k9X
	Ju14id9eHLNW2MQsR6bG20EGjxrdQtNBLiO0XmSh+xLqHmk+QUb9G2wcrBbsf+DbbOt3bq7X6VM4N
	CPvPHCOv4ffPEeodTN5EIwXRwWIHVfJOe8jmpC7qYaEHxC9UtJhk4fiaWYZ4UqjRCNHO/2M8SbaMF
	cSmfN9GWs8hNhxn3w5Pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mcE8B-00DP1C-Ry; Sun, 17 Oct 2021 21:55:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mcE88-00DP0O-KW
 for linux-rockchip@lists.infradead.org; Sun, 17 Oct 2021 21:55:46 +0000
Received: from p508fd4f7.dip0.t-ipconnect.de ([80.143.212.247]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mcE87-0004xA-He; Sun, 17 Oct 2021 23:55:43 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Brian Norris <briannorris@chromium.org>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, Sandy Huang <hjc@rock-chips.com>,
 Chen-Yu Tsai <wenst@chromium.org>, Thomas Hebb <tommyhebb@gmail.com>,
 Brian Norris <briannorris@chromium.org>, stable@vger.kernel.org
Subject: Re: [PATCH v3 2/4] drm/rockchip: dsi: Reconfigure hardware on resume()
Date: Sun, 17 Oct 2021 23:55:42 +0200
Message-ID: <13120578.oI4PYoXzsg@phil>
In-Reply-To: <20210928143413.v3.2.I4e9d93aadb00b1ffc7d506e3186a25492bf0b732@changeid>
References: <20210928213552.1001939-1-briannorris@chromium.org>
 <20210928143413.v3.2.I4e9d93aadb00b1ffc7d506e3186a25492bf0b732@changeid>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211017_145544_712975_9DC33CF4 
X-CRM114-Status: GOOD (  30.76  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Dienstag, 28. September 2021, 23:35:50 CEST schrieb Brian Norris:
> Since commit 43c2de1002d2, we perform most HW configuration in the
> bind() function. This configuration may be lost on suspend/resume, so we
> need to call it again. That may lead to errors like this after system
> suspend/resume:
> 
>   dw-mipi-dsi-rockchip ff968000.mipi: failed to write command FIFO
>   panel-kingdisplay-kd097d04 ff960000.mipi.0: failed write init cmds: -110
> 
> Tested on Acer Chromebook Tab 10 (RK3399 Gru-Scarlet).
> 
> Note that early mailing list versions of this driver borrowed Rockchip's
> downstream/BSP solution, to do HW configuration in mode_set() (which
> *is* called at the appropriate pre-enable() times),

not always though. In non-atomic settings .mode_set actually doesn't
seem to be called every time. I've experienced this when drm disables
atomic when X11 is running.

So having real suspend/resume callbacks makes quite a lot of sense :-)


Heiko

> but that was
> discarded along the way. I've avoided that still, because mode_set()
> documentation doesn't suggest this kind of purpose as far as I can tell.
> 
> Fixes: 43c2de1002d2 ("drm/rockchip: dsi: move all lane config except LCDC mux to bind()")
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
> 
> Changes in v3:
>  - New patch, to fix related PM issue discovered after patch 1
> 
>  .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 37 +++++++++++++++++++
>  1 file changed, 37 insertions(+)
> 
> diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> index 45676b23c019..21c67343cc6c 100644
> --- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> @@ -268,6 +268,8 @@ struct dw_mipi_dsi_rockchip {
>  	struct dw_mipi_dsi *dmd;
>  	const struct rockchip_dw_dsi_chip_data *cdata;
>  	struct dw_mipi_dsi_plat_data pdata;
> +
> +	bool dsi_bound;
>  };
>  
>  struct dphy_pll_parameter_map {
> @@ -964,6 +966,8 @@ static int dw_mipi_dsi_rockchip_bind(struct device *dev,
>  		goto out_pm_runtime;
>  	}
>  
> +	dsi->dsi_bound = true;
> +
>  	return 0;
>  
>  out_pm_runtime:
> @@ -983,6 +987,8 @@ static void dw_mipi_dsi_rockchip_unbind(struct device *dev,
>  	if (dsi->is_slave)
>  		return;
>  
> +	dsi->dsi_bound = false;
> +
>  	dw_mipi_dsi_unbind(dsi->dmd);
>  
>  	clk_disable_unprepare(dsi->pllref_clk);
> @@ -1277,6 +1283,36 @@ static const struct phy_ops dw_mipi_dsi_dphy_ops = {
>  	.exit		= dw_mipi_dsi_dphy_exit,
>  };
>  
> +static int __maybe_unused dw_mipi_dsi_rockchip_resume(struct device *dev)
> +{
> +	struct dw_mipi_dsi_rockchip *dsi = dev_get_drvdata(dev);
> +	int ret;
> +
> +	/*
> +	 * Re-configure DSI state, if we were previously initialized. We need
> +	 * to do this before rockchip_drm_drv tries to re-enable() any panels.
> +	 */
> +	if (dsi->dsi_bound) {
> +		ret = clk_prepare_enable(dsi->grf_clk);
> +		if (ret) {
> +			DRM_DEV_ERROR(dsi->dev, "Failed to enable grf_clk: %d\n", ret);
> +			return ret;
> +		}
> +
> +		dw_mipi_dsi_rockchip_config(dsi);
> +		if (dsi->slave)
> +			dw_mipi_dsi_rockchip_config(dsi->slave);
> +
> +		clk_disable_unprepare(dsi->grf_clk);
> +	}
> +
> +	return 0;
> +}
> +
> +static const struct dev_pm_ops dw_mipi_dsi_rockchip_pm_ops = {
> +	SET_LATE_SYSTEM_SLEEP_PM_OPS(NULL, dw_mipi_dsi_rockchip_resume)
> +};
> +
>  static int dw_mipi_dsi_rockchip_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
> @@ -1594,6 +1630,7 @@ struct platform_driver dw_mipi_dsi_rockchip_driver = {
>  	.remove		= dw_mipi_dsi_rockchip_remove,
>  	.driver		= {
>  		.of_match_table = dw_mipi_dsi_rockchip_dt_ids,
> +		.pm	= &dw_mipi_dsi_rockchip_pm_ops,
>  		.name	= "dw-mipi-dsi-rockchip",
>  	},
>  };
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
