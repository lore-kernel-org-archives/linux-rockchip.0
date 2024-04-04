Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41DC4CD1292
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Apr 2024 19:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e1gf0YVQmuiXjPik1qhXeDWQbJSkqL6kK5FbnvJjh6M=; b=ksAxYumL/gGVvb
	VZW1+6whdGCT0TVeRTTSiXb1ibxpqdK1+1NDnTxFZHT267b/GePfiwZ2DHSeQUkMJopvJhxGKjBK1
	V4SaoUfvcaYJwbo6uYTeQa7QhEyGM/ylqGIKOkKgsWHlthX9ciiBDuV6r3QzCMvC9PvJMfw4iLNCK
	mNfMqNVhVSKXTFUlwA5MhXynkRJhRUuiZipgcENguT873qhxxGKR0IY0AnPPMAnw04hTRmVW/XxXN
	9dVz4Dqp2uwuci5L5Ebc6Q7hYAQqZZYUOxJ+yZzQdrcbMeRs4VlGCSU1qo+YUfSeY2OzTW6HmXZdl
	sMlE9FR6K51M6ltdZqEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsSnf-000000043zX-0W5t;
	Thu, 04 Apr 2024 19:31:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsSna-000000043wu-3uVQ;
	Thu, 04 Apr 2024 19:31:01 +0000
Received: from i53875aaf.versanet.de ([83.135.90.175] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rsSnV-0005R7-NJ; Thu, 04 Apr 2024 21:30:53 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Sebastian Reichel <sre@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Michal Tomek <mtdev79b@gmail.com>,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH 3/3] phy: rockchip: naneng-combphy: Fix mux on rk3588
Date: Thu, 04 Apr 2024 21:30:52 +0200
Message-ID: <2643155.ElGaqSPkdT@phil>
In-Reply-To: <20240404-rk3588-pcie-bifurcation-fixes-v1-3-9907136eeafd@kernel.org>
References: <20240404-rk3588-pcie-bifurcation-fixes-v1-0-9907136eeafd@kernel.org>
 <20240404-rk3588-pcie-bifurcation-fixes-v1-3-9907136eeafd@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_123059_073599_94741939 
X-CRM114-Status: GOOD (  30.51  )
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

Am Donnerstag, 4. April 2024, 19:11:28 CEST schrieb Sebastian Reichel:
> From: Sebastian Reichel <sebastian.reichel@collabora.com>
> 
> The pcie1l0_sel and pcie1l1_sel bits in PCIESEL_CON configure the
> mux for PCIe1L0 and PCIe1L1 to either the PIPE Combo PHYs or the
> PCIe3 PHY. Thus this configuration interfers with the data-lanes
> configuration done by the PCIe3 PHY.
> 
> RK3588 has three Combo PHYs. The first one has a dedicated PCIe
> controller and is not affected by this. For the other two Combo
> PHYs, there is one mux for each of them.
> 
> pcie1l0_sel selects if PCIe 1L0 is muxed to Combo PHY 1 when
> bit is set to 0 or to the PCIe3 PHY when bit is set to 1.
> 
> pcie1l1_sel selects if PCIe 1L1 is muxed to Combo PHY 2 when
> bit is set to 0 or to the PCIe3 PHY when bit is set to 1.
> 
> Currently the code always muxes 1L0 and 1L1 to the Combi PHYs
> once one of them is being used in PCIe mode. This is obviously
> wrong when at least one of the ports should be muxed to the
> PCIe3 PHY.
> 
> Fix this by introducing Combo PHY identification and then only
> setting up the required bit.
> 
> Fixes: a03c44277253 ("phy: rockchip: Add naneng combo phy support for RK3588")
> Reported-by: Michal Tomek <mtdev79b@gmail.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  drivers/phy/rockchip/phy-rockchip-naneng-combphy.c | 36 ++++++++++++++++++++--
>  1 file changed, 33 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> index 76b9cf417591..bf74e429ff46 100644
> --- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> +++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> @@ -125,12 +125,15 @@ struct rockchip_combphy_grfcfg {
>  };
>  
>  struct rockchip_combphy_cfg {
> +	unsigned int num_phys;
> +	unsigned int phy_ids[3];
>  	const struct rockchip_combphy_grfcfg *grfcfg;
>  	int (*combphy_cfg)(struct rockchip_combphy_priv *priv);
>  };
>  
>  struct rockchip_combphy_priv {
>  	u8 type;
> +	int id;
>  	void __iomem *mmio;
>  	int num_clks;
>  	struct clk_bulk_data *clks;
> @@ -320,7 +323,7 @@ static int rockchip_combphy_probe(struct platform_device *pdev)
>  	struct rockchip_combphy_priv *priv;
>  	const struct rockchip_combphy_cfg *phy_cfg;
>  	struct resource *res;
> -	int ret;
> +	int ret, id;
>  
>  	phy_cfg = of_device_get_match_data(dev);
>  	if (!phy_cfg) {
> @@ -338,6 +341,15 @@ static int rockchip_combphy_probe(struct platform_device *pdev)
>  		return ret;
>  	}
>  
> +	/* find the phy-id from the io address */
> +	priv->id = -ENODEV;
> +	for (id = 0; id < phy_cfg->num_phys; id++) {
> +		if (res->start == phy_cfg->phy_ids[id]) {
> +			priv->id = id;
> +			break;
> +		}
> +	}
> +
>  	priv->dev = dev;
>  	priv->type = PHY_NONE;
>  	priv->cfg = phy_cfg;
> @@ -562,6 +574,12 @@ static const struct rockchip_combphy_grfcfg rk3568_combphy_grfcfgs = {
>  };
>  
>  static const struct rockchip_combphy_cfg rk3568_combphy_cfgs = {
> +	.num_phys = 3,
> +	.phy_ids = {
> +		0xfe820000,
> +		0xfe830000,
> +		0xfe840000,
> +	},
>  	.grfcfg		= &rk3568_combphy_grfcfgs,
>  	.combphy_cfg	= rk3568_combphy_cfg,
>  };
> @@ -578,8 +596,14 @@ static int rk3588_combphy_cfg(struct rockchip_combphy_priv *priv)
>  		rockchip_combphy_param_write(priv->phy_grf, &cfg->con1_for_pcie, true);
>  		rockchip_combphy_param_write(priv->phy_grf, &cfg->con2_for_pcie, true);
>  		rockchip_combphy_param_write(priv->phy_grf, &cfg->con3_for_pcie, true);
> -		rockchip_combphy_param_write(priv->pipe_grf, &cfg->pipe_pcie1l0_sel, true);
> -		rockchip_combphy_param_write(priv->pipe_grf, &cfg->pipe_pcie1l1_sel, true);
> +		switch (priv->id) {
> +		case 1:
> +			rockchip_combphy_param_write(priv->pipe_grf, &cfg->pipe_pcie1l0_sel, true);
> +			break;
> +		case 2:
> +			rockchip_combphy_param_write(priv->pipe_grf, &cfg->pipe_pcie1l1_sel, true);
> +			break;
> +		}
>  		break;
>  	case PHY_TYPE_USB3:
>  		/* Set SSC downward spread spectrum */
> @@ -736,6 +760,12 @@ static const struct rockchip_combphy_grfcfg rk3588_combphy_grfcfgs = {
>  };
>  
>  static const struct rockchip_combphy_cfg rk3588_combphy_cfgs = {
> +	.num_phys = 3,
> +	.phy_ids = {
> +		0xfee00000,
> +		0xfee10000,
> +		0xfee20000,
> +	},
>  	.grfcfg		= &rk3588_combphy_grfcfgs,
>  	.combphy_cfg	= rk3588_combphy_cfg,
>  };
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
