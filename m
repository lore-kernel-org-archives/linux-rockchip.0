Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2AB6DC52D7C
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Aug 2024 13:18:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iYXzWDYHWNUvPfjFD5wSX9OTC8Ns/C863QRlcSVjRkE=; b=cEs0j/eaVvNLUU
	0WfA6u4LkLSUlPhRcJBfGBKrRt0hWAh/ncpllDPOBv81Bj2x36oW4xmqncEbAbKZLohgl0vPUUslW
	OVSZdXpZlV+6l/Mvjb/8tCxVwrYuyfNRnJzbmCBUF1pwYMioFtaPHzGrdzz/kRUPMdx2klQmKoXba
	h6WJi8u67uTUL9TYYDY6cWAqhAHfKFhaKD076TRf9IyN2dcS2thTKUd4j9UtFIUZ0uZjd0bsfidm0
	hGofamseksO645SNx1DHy5UxZu2nTpdYOcAoKTHJ326tVlqze2YcLpvF2tRzc1WWKOHjSXeueYkaZ
	iaDoVGaM542fh8iMufqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scPVL-0000000BJ1N-26sz;
	Fri, 09 Aug 2024 13:18:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scPUO-0000000BIou-0ArA;
	Fri, 09 Aug 2024 13:17:05 +0000
Received: from i53875b02.versanet.de ([83.135.91.2] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1scPU5-00076L-DZ; Fri, 09 Aug 2024 15:16:45 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-kernel@vger.kernel.org,
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 David Wu <david.wu@rock-chips.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 kernel@collabora.com, Detlev Casanova <detlev.casanova@collabora.com>
Subject: Re: [PATCH v2 2/2] ethernet: stmmac: dwmac-rk: Add GMAC support for RK3576
Date: Fri, 09 Aug 2024 15:16:44 +0200
Message-ID: <3724132.9z1YWOviru@diego>
In-Reply-To: <20240808170113.82775-3-detlev.casanova@collabora.com>
References: <20240808170113.82775-1-detlev.casanova@collabora.com>
 <20240808170113.82775-3-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240809_061704_109444_A16E480A 
X-CRM114-Status: GOOD (  25.84  )
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

Hi Detlev,

Am Donnerstag, 8. August 2024, 19:00:18 CEST schrieb Detlev Casanova:
> From: David Wu <david.wu@rock-chips.com>
> 
> Add constants and callback functions for the dwmac on RK3576 soc.
> 
> Signed-off-by: David Wu <david.wu@rock-chips.com>
> [rebase, extracted bindings]
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> ---
>  .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 156 ++++++++++++++++++
>  1 file changed, 156 insertions(+)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> index 7ae04d8d291c8..e1fa8fc9f4012 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> @@ -1116,6 +1116,161 @@ static const struct rk_gmac_ops rk3568_ops = {
>  	},
>  };
>  
> +/* VCCIO0_1_3_IOC */
> +#define RK3576_VCCIO0_1_3_IOC_CON2		0X6408
> +#define RK3576_VCCIO0_1_3_IOC_CON3		0X640c
> +#define RK3576_VCCIO0_1_3_IOC_CON4		0X6410
> +#define RK3576_VCCIO0_1_3_IOC_CON5		0X6414
> +
> +#define RK3576_GMAC_RXCLK_DLY_ENABLE		GRF_BIT(15)
> +#define RK3576_GMAC_RXCLK_DLY_DISABLE		GRF_CLR_BIT(15)
> +#define RK3576_GMAC_TXCLK_DLY_ENABLE		GRF_BIT(7)
> +#define RK3576_GMAC_TXCLK_DLY_DISABLE		GRF_CLR_BIT(7)
> +
> +#define RK3576_GMAC_CLK_RX_DL_CFG(val)		HIWORD_UPDATE(val, 0x7F, 8)
> +#define RK3576_GMAC_CLK_TX_DL_CFG(val)		HIWORD_UPDATE(val, 0x7F, 0)
> +
> +/* SDGMAC_GRF */
> +#define RK3576_GRF_GMAC_CON0			0X0020
> +#define RK3576_GRF_GMAC_CON1			0X0024
> +
> +#define RK3576_GMAC_RMII_MODE			GRF_BIT(3)
> +#define RK3576_GMAC_RGMII_MODE			GRF_CLR_BIT(3)
> +
> +#define RK3576_GMAC_CLK_SELET_IO		GRF_BIT(7)
> +#define RK3576_GMAC_CLK_SELET_CRU		GRF_CLR_BIT(7)

nit: typos _CLK_SELECT_ ... missing the C in select

> +
> +#define RK3576_GMAC_CLK_RMII_DIV2		GRF_BIT(5)
> +#define RK3576_GMAC_CLK_RMII_DIV20		GRF_CLR_BIT(5)

I think those are backwards
The TRM says bit[5]=0: 25MHz (DIV2) and bit[5]=1: 2.5MHz (DIV20)

I guess nobody also on Rockchip's side tested a RMII phy on those controllrs


> +
> +#define RK3576_GMAC_CLK_RGMII_DIV1		\
> +			(GRF_CLR_BIT(6) | GRF_CLR_BIT(5))
> +#define RK3576_GMAC_CLK_RGMII_DIV5		\
> +			(GRF_BIT(6) | GRF_BIT(5))
> +#define RK3576_GMAC_CLK_RGMII_DIV50		\
> +			(GRF_BIT(6) | GRF_CLR_BIT(5))
> +

in contrast, these are correct and match the TRM


> +#define RK3576_GMAC_CLK_RMII_GATE		GRF_BIT(4)
> +#define RK3576_GMAC_CLK_RMII_NOGATE		GRF_CLR_BIT(4)
> +
> +static void rk3576_set_to_rgmii(struct rk_priv_data *bsp_priv,
> +				int tx_delay, int rx_delay)
> +{
> +	struct device *dev = &bsp_priv->pdev->dev;
> +	unsigned int offset_con;
> +
> +	if (IS_ERR(bsp_priv->grf) || IS_ERR(bsp_priv->php_grf)) {
> +		dev_err(dev, "Missing rockchip,grf or rockchip,php_grf property\n");
> +		return;
> +	}
> +
> +	offset_con = bsp_priv->id == 1 ? RK3576_GRF_GMAC_CON1 :
> +					 RK3576_GRF_GMAC_CON0;
> +
> +	regmap_write(bsp_priv->grf, offset_con, RK3576_GMAC_RGMII_MODE);
> +
> +	offset_con = bsp_priv->id == 1 ? RK3576_VCCIO0_1_3_IOC_CON4 :
> +					 RK3576_VCCIO0_1_3_IOC_CON2;
> +
> +	/* m0 && m1 delay enabled */
> +	regmap_write(bsp_priv->php_grf, offset_con,
> +		     DELAY_ENABLE(RK3576, tx_delay, rx_delay));
> +	regmap_write(bsp_priv->php_grf, offset_con + 0x4,
> +		     DELAY_ENABLE(RK3576, tx_delay, rx_delay));
> +
> +	/* m0 && m1 delay value */
> +	regmap_write(bsp_priv->php_grf, offset_con,
> +		     RK3576_GMAC_CLK_TX_DL_CFG(tx_delay) |
> +		     RK3576_GMAC_CLK_RX_DL_CFG(rx_delay));
> +	regmap_write(bsp_priv->php_grf, offset_con + 0x4,
> +		     RK3576_GMAC_CLK_TX_DL_CFG(tx_delay) |
> +		     RK3576_GMAC_CLK_RX_DL_CFG(rx_delay));
> +}
> +
> +static void rk3576_set_to_rmii(struct rk_priv_data *bsp_priv)
> +{
> +	struct device *dev = &bsp_priv->pdev->dev;
> +	unsigned int offset_con;
> +
> +	if (IS_ERR(bsp_priv->php_grf)) {
> +		dev_err(dev, "%s: Missing rockchip,php_grf property\n", __func__);
> +		return;
> +	}
> +
> +	offset_con = bsp_priv->id == 1 ? RK3576_GRF_GMAC_CON1 :
> +					 RK3576_GRF_GMAC_CON0;
> +
> +	regmap_write(bsp_priv->grf, offset_con, RK3576_GMAC_RMII_MODE);
> +}
> +
> +static void rk3576_set_gmac_speed(struct rk_priv_data *bsp_priv, int speed)
> +{
> +	struct device *dev = &bsp_priv->pdev->dev;
> +	unsigned int val = 0, offset_con;
> +
> +	switch (speed) {
> +	case 10:
> +		if (bsp_priv->phy_iface == PHY_INTERFACE_MODE_RMII)
> +			val = RK3576_GMAC_CLK_RMII_DIV20;
> +		else
> +			val = RK3576_GMAC_CLK_RGMII_DIV50;

		val = bsp_priv->phy_iface == PHY_INTERFACE_MODE_RMII ?
				RK3576_GMAC_CLK_RMII_DIV20 :
				RK3576_GMAC_CLK_RGMII_DIV50;
perhaps?

> +		break;
> +	case 100:
> +		if (bsp_priv->phy_iface == PHY_INTERFACE_MODE_RMII)
> +			val = RK3576_GMAC_CLK_RMII_DIV2;
> +		else
> +			val = RK3576_GMAC_CLK_RGMII_DIV5;

same as above?

> +		break;
> +	case 1000:
> +		if (bsp_priv->phy_iface != PHY_INTERFACE_MODE_RMII)
> +			val = RK3576_GMAC_CLK_RGMII_DIV1;
> +		else
> +			goto err;

		if (bsp_priv->phy_iface == PHY_INTERFACE_MODE_RMII)
			goto err;

		val = RK3576_GMAC_CLK_RGMII_DIV1;


> +		break;
> +	default:
> +		goto err;
> +	}
> +
> +	offset_con = bsp_priv->id == 1 ? RK3576_GRF_GMAC_CON1 :
> +					 RK3576_GRF_GMAC_CON0;
> +
> +	regmap_write(bsp_priv->grf, offset_con, val);
> +
> +	return;
> +err:
> +	dev_err(dev, "unknown speed value for GMAC speed=%d", speed);
> +}
> +
> +static void rk3576_set_clock_selection(struct rk_priv_data *bsp_priv, bool input,
> +				       bool enable)
> +{
> +	unsigned int val = input ? RK3576_GMAC_CLK_SELET_IO :
> +				   RK3576_GMAC_CLK_SELET_CRU;
> +	unsigned int offset_con;
> +
> +	val |= enable ? RK3576_GMAC_CLK_RMII_NOGATE :
> +			RK3576_GMAC_CLK_RMII_GATE;
> +
> +	offset_con = bsp_priv->id == 1 ? RK3576_GRF_GMAC_CON1 :
> +					 RK3576_GRF_GMAC_CON0;

nit: alignment of both looks like it could be nicer

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
