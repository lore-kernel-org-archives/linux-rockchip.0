Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A59DCD37AF
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 May 2026 11:08:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KJTPrp6TlF2InhD2wmO1FTySP0dqL2DCMyYxZzYbm4I=; b=V5pz2p+iVUy3DD
	KI620WcA07kOEJckzEj0flcJ4Fp2eBlcqLhCZnK17E4V1o837sLoIjhD/p16MjaqD1p1oicV1u46u
	a7f6nC3XPuV32fsppf9YZjXNSBKUnQJuYOcDxVXlmY4OYirlq0tJCdgwJc3K/t92A+XoUsIKqkqCq
	xClkrouKxfGP7sruWHoNo3cXuLF8zFgBbvBVY05xPZY4lpAilXR9VehluoM1R4Sexigu6xKNRa438
	YPbx74DAYWI5ZrUjMP5RjDg5rQ3SNBUPcvbVHXGfZsqaIZbryirKa+/pzGZ2AoLIxJNp+NUxC6i8i
	d5++zv6w/SV8XkYuObzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM21Z-0000000AcMi-0uK7;
	Sun, 10 May 2026 11:08:41 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM21X-0000000AcMO-3YHX;
	Sun, 10 May 2026 11:08:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 1F8C06001A;
	Sun, 10 May 2026 11:08:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B264C2BD04;
	Sun, 10 May 2026 11:08:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778411318;
	bh=BodKKip1a0sHri6khxOyx6QjEAWs9RaclU4zoqa01m4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Q91HnOAGdZ0neVjYBVBkwTff4LCvzsu88Q7FQrxMK++bk/xryhmwe9PAuhe3nm1h6
	 ebZ6d2mqWS/xARL7LIxJgFWIXd1m/xK44m8bIEBbVEy4/pR5WP+Yx7qwJrb5aO5KXC
	 aT/azWod/xrNeGmTLIWNt0c/ikjJR4ecF1Y20hjARq4O0GyBMQ3tnkR0n7bK+UcgwG
	 UUC4hxdl4gnFDjA+Q4Vhejb7XQnoHwEYHFlefNPR08GXCu8rI2C3KbZ+vq9DyOKqXX
	 Q4BBHZ/ie/EMv6BPc2H5uwefetKRyUV7UTKs+jqEWLO164OT1dnRgL55PR0FkPfdkH
	 t7ycZE82RVzaQ==
Date: Sun, 10 May 2026 16:38:34 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: rockchip: naneng-combphy: Fix TX detect RX
 termination errata
Message-ID: <agBnMqwKsU6BzRC6@vaman>
References: <1774423383-36599-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1774423383-36599-1-git-send-email-shawn.lin@rock-chips.com>
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

On 25-03-26, 15:23, Shawn Lin wrote:
> Some PHY revisions may fail to detect the peer RX's termination
> resistor (RTERM) under certain critical temperature conditions.
> This causes TX detection failures on PCIe links.
> 
> Add a workaround to force the RTERM detection ready signal for
> affected PHY revisions. This ensures reliable TX-to-RX termination
> detection across all operating temperature ranges.
> 
> The fix applies to RK3562, RK3568, RK3576 and RK3588 SoCs which share
> the same PHY IP with this hardware errata.

Missing Fixes tag?

> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
> 
>  drivers/phy/rockchip/phy-rockchip-naneng-combphy.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> index b60d6bf..76d4994 100644
> --- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> +++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> @@ -106,6 +106,9 @@
>  #define RK3568_PHYREG18				0x44
>  #define RK3568_PHYREG18_PLL_LOOP		0x32
>  
> +#define RK3568_PHYREG26				0x64
> +#define RK3568_PHYREG26_FORCE_RTERM_DET_RDY	BIT(5)
> +
>  #define RK3568_PHYREG30				0x74
>  #define RK3568_PHYREG30_GATE_TX_PCK_SEL         BIT(7)
>  #define RK3568_PHYREG30_GATE_TX_PCK_DLY_PLL_OFF BIT(7)
> @@ -193,6 +196,7 @@ struct rockchip_combphy_cfg {
>  	unsigned int num_phys;
>  	unsigned int phy_ids[3];
>  	const struct rockchip_combphy_grfcfg *grfcfg;
> +	bool force_rxterm_det_rdy;
>  	int (*combphy_cfg)(struct rockchip_combphy_priv *priv);
>  };
>  
> @@ -264,6 +268,17 @@ static int rockchip_combphy_init(struct phy *phy)
>  
>  	switch (priv->type) {
>  	case PHY_TYPE_PCIE:
> +		/*
> +		 * Hardware Errata: TX fails to detect peer RX termination.

Is there an errata number or links which people can refer to?

> +		 * Some PHY revisions may fail to detect remote RX's RTERM
> +		 * (receiver termination resistor) under certain critical
> +		 * temperature conditions. Set force rterm detect ready to
> +		 * fix it.
> +		 */
> +		if (priv->cfg->force_rxterm_det_rdy)
> +			rockchip_combphy_updatel(priv, RK3568_PHYREG26_FORCE_RTERM_DET_RDY,
> +					RK3568_PHYREG26_FORCE_RTERM_DET_RDY, RK3568_PHYREG26);
> +		fallthrough;
>  	case PHY_TYPE_USB3:
>  	case PHY_TYPE_SATA:
>  	case PHY_TYPE_SGMII:
> @@ -745,6 +760,7 @@ static const struct rockchip_combphy_cfg rk3562_combphy_cfgs = {
>  	},
>  	.grfcfg		= &rk3562_combphy_grfcfgs,
>  	.combphy_cfg	= rk3562_combphy_cfg,
> +	.force_rxterm_det_rdy  = true,
>  };
>  
>  static int rk3568_combphy_cfg(struct rockchip_combphy_priv *priv)
> @@ -962,6 +978,7 @@ static const struct rockchip_combphy_cfg rk3568_combphy_cfgs = {
>  	},
>  	.grfcfg		= &rk3568_combphy_grfcfgs,
>  	.combphy_cfg	= rk3568_combphy_cfg,
> +	.force_rxterm_det_rdy  = true,
>  };
>  
>  static int rk3576_combphy_cfg(struct rockchip_combphy_priv *priv)
> @@ -1231,6 +1248,7 @@ static const struct rockchip_combphy_cfg rk3576_combphy_cfgs = {
>  	},
>  	.grfcfg		= &rk3576_combphy_grfcfgs,
>  	.combphy_cfg	= rk3576_combphy_cfg,
> +	.force_rxterm_det_rdy  = true,
>  };
>  
>  static int rk3588_combphy_cfg(struct rockchip_combphy_priv *priv)
> @@ -1418,6 +1436,7 @@ static const struct rockchip_combphy_cfg rk3588_combphy_cfgs = {
>  	},
>  	.grfcfg		= &rk3588_combphy_grfcfgs,
>  	.combphy_cfg	= rk3588_combphy_cfg,
> +	.force_rxterm_det_rdy  = true,
>  };
>  
>  static const struct of_device_id rockchip_combphy_of_match[] = {
> -- 
> 2.7.4
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
