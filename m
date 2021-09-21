Return-Path: <SRS0=QbJo=OL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D24C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Sep 2021 14:23:57 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D4DA960F9E
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Sep 2021 14:23:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D4DA960F9E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0umuPX84XSI6C7OkynzvGTWTcMgBMHGd4cnifm76JIE=; b=geSh89JcPF2gze
	gLZc4hq2ZcYkGJvwDCPi3skSDfWXH2W2AHXFcsbg6D3EMYso45bgSfR98H6HEFvYw9UcBmi4qJ1k3
	Pr13gsgEix6fF+yDhA0ta5Xzve24oxBPSRlM70rn4GE3yHju8+y8aNa13yUOHUw1qK4F2W7aJg3fL
	q4Dkk0TBFTuLCzXQ9M8aZjFsO6gYMZmc4q7iv8WI1yOUJ8PMau2PeKWo6xg/BoKapZeAlbFalHeRq
	lZVgaUKZWbY91yS+/h1bR/nb10FqT+pHVJPar4NZTx6WNfqBVtz4hSRdHA3iJTkkqLFBs+VEdaVds
	kX1Cp/7jLJhQITsGTi9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSggY-004lWk-8I; Tue, 21 Sep 2021 14:23:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSggV-004lWN-Bn
 for linux-rockchip@lists.infradead.org; Tue, 21 Sep 2021 14:23:48 +0000
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <heiko@sntech.de>)
 id 1mSggS-00031n-0d; Tue, 21 Sep 2021 16:23:44 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>
Cc: ivan@ivan.computer, punitagrawal@gmail.com,
 Michael Riesch <michael.riesch@wolfvision.net>
Subject: Re: [RFC PATCH 1/3] net: stmmac: dwmac-rk: use stmmac helper
 functions for pm ops and remove
Date: Tue, 21 Sep 2021 16:23:38 +0200
Message-ID: <12854436.uLZWGnKmhe@phil>
In-Reply-To: <20210915170255.30561-2-michael.riesch@wolfvision.net>
References: <20210915170255.30561-1-michael.riesch@wolfvision.net>
 <20210915170255.30561-2-michael.riesch@wolfvision.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210921_072347_465288_1118F7B4 
X-CRM114-Status: GOOD (  26.53  )
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

Hi,

Am Mittwoch, 15. September 2021, 19:02:53 CEST schrieb Michael Riesch:
> Make the stmmac core responsible for suspend, resume and remove by
> providing callbacks and using helper functions.
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>

this would likely loose wake-on-lan functionality?

Right now the homebrew suspend/resume functions handle the
device_may_wakeup()-case as well, where the ->init and ->exit functions
seem to get called from stmmac_pltfr_suspend / stmmac_pltfr_resume
unconditionally instead.

While I've never tried wake-on-lan myself, this really looks like this patch
would loose the functionality.


Heiko

> ---
>  .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 69 +++++--------------
>  1 file changed, 16 insertions(+), 53 deletions(-)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> index ed817011a94a..0db8be543ee1 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> @@ -40,7 +40,6 @@ struct rk_priv_data {
>  	phy_interface_t phy_iface;
>  	int id;
>  	struct regulator *regulator;
> -	bool suspended;
>  	const struct rk_gmac_ops *ops;
>  
>  	bool clk_enabled;
> @@ -1482,10 +1481,11 @@ static int rk_gmac_check_ops(struct rk_priv_data *bsp_priv)
>  	return 0;
>  }
>  
> -static int rk_gmac_powerup(struct rk_priv_data *bsp_priv)
> +static int rk_gmac_init(struct platform_device *pdev, void *priv)
>  {
>  	int ret;
> -	struct device *dev = &bsp_priv->pdev->dev;
> +	struct device *dev = &pdev->dev;
> +	struct rk_priv_data *bsp_priv = priv;
>  
>  	ret = rk_gmac_check_ops(bsp_priv);
>  	if (ret)
> @@ -1534,13 +1534,15 @@ static int rk_gmac_powerup(struct rk_priv_data *bsp_priv)
>  	return 0;
>  }
>  
> -static void rk_gmac_powerdown(struct rk_priv_data *gmac)
> +static void rk_gmac_exit(struct platform_device *pdev, void *priv)
>  {
> -	if (gmac->integrated_phy)
> -		rk_gmac_integrated_phy_powerdown(gmac);
> +	struct rk_priv_data *bsp_priv = priv;
>  
> -	phy_power_on(gmac, false);
> -	gmac_clk_enable(gmac, false);
> +	if (bsp_priv->integrated_phy)
> +		rk_gmac_integrated_phy_powerdown(bsp_priv);
> +
> +	phy_power_on(bsp_priv, false);
> +	gmac_clk_enable(bsp_priv, false);
>  }
>  
>  static void rk_fix_speed(void *priv, unsigned int speed)
> @@ -1591,6 +1593,8 @@ static int rk_gmac_probe(struct platform_device *pdev)
>  	 */
>  	if (!plat_dat->has_gmac4)
>  		plat_dat->has_gmac = true;
> +	plat_dat->init = rk_gmac_init;
> +	plat_dat->exit = rk_gmac_exit;
>  	plat_dat->fix_mac_speed = rk_fix_speed;
>  
>  	plat_dat->bsp_priv = rk_gmac_setup(pdev, plat_dat, data);
> @@ -1603,7 +1607,7 @@ static int rk_gmac_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto err_remove_config_dt;
>  
> -	ret = rk_gmac_powerup(plat_dat->bsp_priv);
> +	ret = rk_gmac_init(pdev, plat_dat->bsp_priv);
>  	if (ret)
>  		goto err_remove_config_dt;
>  
> @@ -1614,54 +1618,13 @@ static int rk_gmac_probe(struct platform_device *pdev)
>  	return 0;
>  
>  err_gmac_powerdown:
> -	rk_gmac_powerdown(plat_dat->bsp_priv);
> +	rk_gmac_exit(pdev, plat_dat->bsp_priv);
>  err_remove_config_dt:
>  	stmmac_remove_config_dt(pdev, plat_dat);
>  
>  	return ret;
>  }
>  
> -static int rk_gmac_remove(struct platform_device *pdev)
> -{
> -	struct rk_priv_data *bsp_priv = get_stmmac_bsp_priv(&pdev->dev);
> -	int ret = stmmac_dvr_remove(&pdev->dev);
> -
> -	rk_gmac_powerdown(bsp_priv);
> -
> -	return ret;
> -}
> -
> -#ifdef CONFIG_PM_SLEEP
> -static int rk_gmac_suspend(struct device *dev)
> -{
> -	struct rk_priv_data *bsp_priv = get_stmmac_bsp_priv(dev);
> -	int ret = stmmac_suspend(dev);
> -
> -	/* Keep the PHY up if we use Wake-on-Lan. */
> -	if (!device_may_wakeup(dev)) {
> -		rk_gmac_powerdown(bsp_priv);
> -		bsp_priv->suspended = true;
> -	}
> -
> -	return ret;
> -}
> -
> -static int rk_gmac_resume(struct device *dev)
> -{
> -	struct rk_priv_data *bsp_priv = get_stmmac_bsp_priv(dev);
> -
> -	/* The PHY was up for Wake-on-Lan. */
> -	if (bsp_priv->suspended) {
> -		rk_gmac_powerup(bsp_priv);
> -		bsp_priv->suspended = false;
> -	}
> -
> -	return stmmac_resume(dev);
> -}
> -#endif /* CONFIG_PM_SLEEP */
> -
> -static SIMPLE_DEV_PM_OPS(rk_gmac_pm_ops, rk_gmac_suspend, rk_gmac_resume);
> -
>  static const struct of_device_id rk_gmac_dwmac_match[] = {
>  	{ .compatible = "rockchip,px30-gmac",	.data = &px30_ops   },
>  	{ .compatible = "rockchip,rk3128-gmac", .data = &rk3128_ops },
> @@ -1680,10 +1643,10 @@ MODULE_DEVICE_TABLE(of, rk_gmac_dwmac_match);
>  
>  static struct platform_driver rk_gmac_dwmac_driver = {
>  	.probe  = rk_gmac_probe,
> -	.remove = rk_gmac_remove,
> +	.remove = stmmac_pltfr_remove,
>  	.driver = {
>  		.name           = "rk_gmac-dwmac",
> -		.pm		= &rk_gmac_pm_ops,
> +		.pm		= &stmmac_pltfr_pm_ops,
>  		.of_match_table = rk_gmac_dwmac_match,
>  	},
>  };
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
