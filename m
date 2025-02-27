Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1F26C1B0FF
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Feb 2025 13:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0NPYc/rwz7ocRW/danH1j/hKHn197jyfL+UmwL7XzOc=; b=vY+6euW7VfuKQS
	BV1xGthPQyfVfzMvLu89zzZYpyCUNcZNCMi+6yrFSTCwYTXXlzGupEzhKE7hf2WtpMgdCjs3Uc4mF
	auOMkLS0Mg4ShuLuWUE6l5Zwuwp19V3wjdA56skBnzycyvRtu5XBjW0i9QyDbbjvi+PWGThCBVhWv
	K2a+APi9nuAgS3tAp9C2vi/k2Tgmt94EQbWO+AZoad1e5UegvQVo0pXhnpZC752CncfgPB/ypvLmL
	aNCExdGQbDX80ZqXqmgFEu+DRo3QFTEkfu01cR2Xwtx8Tt6Jc0SeDt6CNkQHR8Ech3D91L72b/cjA
	fD+pAP9yU1tKB7GV0Hcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tneQD-00000007d0r-0OLu;
	Thu, 27 Feb 2025 13:59:29 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tneKw-00000007bpY-3GfK;
	Thu, 27 Feb 2025 13:54:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=+7p+whL+y2ixszcQ8G1Y9xt2LHqMnZq6hXYHzWoyza0=; b=ZEwSO2rCiGPMOuBHO8x1SYughN
	fgqx5F8nB+leOGzlDnAeTvXiV5RenBG4RfJroRdp+uK1TO3ZTSPLA79yHFN4qIn3wk+X8V37Tz7Au
	Nz68ETmYRp+jludadMpYqCvj0FvHQ+eNtTGDIwaBQqpQYUWRSFPKFIA6F8t08MlPB/WU=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1tneKs-000bj1-01; Thu, 27 Feb 2025 14:53:58 +0100
Date: Thu, 27 Feb 2025 14:53:57 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org,
	David Wu <david.wu@rock-chips.com>,
	linux-arm-kernel@lists.infradead.org,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	netdev@vger.kernel.org,
	Detlev Casanova <detlev.casanova@collabora.com>,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-kernel@vger.kernel.org,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	Paolo Abeni <pabeni@redhat.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@baylibre.com>,
	"Jan Petrous (OSS)" <jan.petrous@oss.nxp.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Eric Dumazet <edumazet@google.com>
Subject: Re: [PATCH v2 3/3] ethernet: stmmac: dwmac-rk: Make the phy clock
 could be used for external phy
Message-ID: <c523a7a8-34db-4902-bfc2-b8207ce4f4a0@lunn.ch>
References: <20250227110652.2342729-1-kever.yang@rock-chips.com>
 <20250227110652.2342729-3-kever.yang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250227110652.2342729-3-kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_055402_818103_836E297C 
X-CRM114-Status: GOOD (  18.21  )
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

On Thu, Feb 27, 2025 at 07:06:52PM +0800, Kever Yang wrote:
> From: David Wu <david.wu@rock-chips.com>
> 
> Use the phy_clk to prepare_enable and unprepare_disable related phy clock.
> 
> Signed-off-by: David Wu <david.wu@rock-chips.com>
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> ---
> 
> Changes in v2: None
> 
>  drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> index ccf4ecdffad3..cc90c74ec70c 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> @@ -1867,12 +1867,14 @@ static int rk_gmac_clk_init(struct plat_stmmacenet_data *plat)
>  		clk_set_rate(bsp_priv->clk_mac, 50000000);
>  	}
>  
> -	if (plat->phy_node && bsp_priv->integrated_phy) {
> +	if (plat->phy_node) {
>  		bsp_priv->clk_phy = of_clk_get(plat->phy_node, 0);
>  		ret = PTR_ERR_OR_ZERO(bsp_priv->clk_phy);
>  		if (ret)
>  			return dev_err_probe(dev, ret, "Cannot get PHY clock\n");
> -		clk_set_rate(bsp_priv->clk_phy, 50000000);
> +		/* If it is not integrated_phy, clk_phy is optional */
> +		if (bsp_priv->integrated_phy)
> +			clk_set_rate(bsp_priv->clk_phy, 50000000);

That does not look backwards compatible. Older DT blobs which don't
have an integrated PHY won't have a clock in the node, so of_clk_get()
will return an error, and this function then exits with an error code.


    Andrew

---
pw-bot: cr

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
