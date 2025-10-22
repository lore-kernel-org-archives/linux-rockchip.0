Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F4CBCCD1AB
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Oct 2025 20:44:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DvGIRpbkHZYqyVBE0UCgYtuZElJ8G7tRPrjGw+ZXpQ8=; b=odXx0VAfoE3qk4
	iZJj97ZviIcPAsVTGiQ53WF8wu53JubjROsiedMH3em+VgxQgegJCRtMI5aMUXyRcLpfyaMzsBHlu
	BnRwRzpTgyd53amI/RgLJT0XJXFXHgIy29GfV1p/lILxBza4lGwn+T+BCQCoXuFG2llDrBpm91ppr
	LwsWd/OjMXRDVtJAxgAwztL2C7JoXYlAubxi+DUpnWy72wt99wTwwxmBMSpjQDQaA+owTE4GVI6N7
	5tPZfqY5QcVd8x7ea7h8QkqnDhApR75zWX9E5clrL8OK8Dxhb/6lSOweveH4QM30XJE1oumoVoq72
	27yhw1yVwe3OPEuvoc1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBfgi-00000004H4m-13dU;
	Wed, 22 Oct 2025 20:44:04 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBfgf-00000004H2r-3K1b
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Oct 2025 20:44:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1761165841;
 bh=6By88Zpn3m6uq4P5zQ8yb72SxI9R7gfGj/HM/rNU4uY=;
 b=bLMz9UP/TPYupoEetB61EjQLfGHTjAZ9TWlqjGl82lRp8vDiQwq/N2aaAz8+eHGuw0kVKMdqF
 f32/8oaRm1RW4uM+WFBXhBVi5Lv7+LTJJJRbmCzz6Iswt4Gi2AH5+MWxFaU0n9zetJgFaftWgws
 bqID9J2zkMON5jGTvO62Aoow++To2ROdODHyjwQg5gKYYsG2WIa8/dp9Shxw4aWFtn1ClTictpC
 Gl9RDioJi7oY0QkAHukgi1wESqY7VS8h6mb/ghdQcjXF5x987MSjAiml7AfDRm+z3Zz8z99z9wr
 2LG5jsZFkw1w2kk1syLcXYE3i1trs9eiyLPXriFCeXjA==
X-Forward-Email-ID: 68f94203b0b13797a645472d
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.3.0
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <fe54009a-ee39-43a0-a337-93c46cd7dabe@kwiboo.se>
Date: Wed, 22 Oct 2025 22:43:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] ethernet: stmmac: dwmac-rk: Add RK3506 GMAC support
To: Heiko Stuebner <heiko@sntech.de>
Cc: "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "robh@kernel.org" <robh@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 David Wu <david.wu@rock-chips.com>
References: <20251021224357.195015-1-heiko@sntech.de>
 <20251021224357.195015-5-heiko@sntech.de>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20251021224357.195015-5-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_134401_881208_866BD988 
X-CRM114-Status: GOOD (  20.51  )
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

Hi Heiko,

On 10/22/2025 12:43 AM, Heiko Stuebner wrote:
> From: David Wu <david.wu@rock-chips.com>
> 
> Add the needed glue blocks for the RK3506-specific setup.
> 
> The RK3506 dwmac only supports up to 100MBit with a RMII PHY,
> but no RGMII.
> 
> Signed-off-by: David Wu <david.wu@rock-chips.com>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 79 +++++++++++++++++++
>  1 file changed, 79 insertions(+)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> index 51ea0caf16c1..e1e036e7163c 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> @@ -827,6 +827,84 @@ static const struct rk_gmac_ops rk3399_ops = {
>  	.set_speed = rk3399_set_speed,
>  };
>  
> +#define RK3506_GRF_SOC_CON8		0X0020
> +#define RK3506_GRF_SOC_CON11		0X002c

Maybe 0x0020 and 0x002c (lower case x) ?

> +
> +#define RK3506_GMAC_RMII_MODE		GRF_BIT(1)
> +
> +#define RK3506_GMAC_CLK_RMII_DIV2	GRF_BIT(3)
> +#define RK3506_GMAC_CLK_RMII_DIV20	GRF_CLR_BIT(3)
> +
> +#define RK3506_GMAC_CLK_SELET_CRU	GRF_CLR_BIT(5)
> +#define RK3506_GMAC_CLK_SELET_IO	GRF_BIT(5)

s/SELET/SELECT/

> +
> +#define RK3506_GMAC_CLK_RMII_GATE	GRF_BIT(2)
> +#define RK3506_GMAC_CLK_RMII_NOGATE	GRF_CLR_BIT(2)
> +
> +static void rk3506_set_to_rmii(struct rk_priv_data *bsp_priv)
> +{
> +	struct device *dev = bsp_priv->dev;
> +	unsigned int id = bsp_priv->id, offset;
> +
> +	if (IS_ERR(bsp_priv->grf)) {
> +		dev_err(dev, "%s: Missing rockchip,grf property\n", __func__);
> +		return;
> +	}

Please drop this, it is already checked in rk_gmac_setup().

> +
> +	offset = (id == 1) ? RK3506_GRF_SOC_CON11 : RK3506_GRF_SOC_CON8;
> +	regmap_write(bsp_priv->grf, offset, RK3506_GMAC_RMII_MODE);
> +}
> +
> +static int rk3506_set_speed(struct rk_priv_data *bsp_priv,
> +			    phy_interface_t interface, int speed)
> +{
> +	struct device *dev = bsp_priv->dev;
> +	unsigned int val, offset, id = bsp_priv->id;
> +
> +	switch (speed) {
> +	case 10:
> +		val = RK3506_GMAC_CLK_RMII_DIV20;
> +		break;
> +	case 100:
> +		val = RK3506_GMAC_CLK_RMII_DIV2;
> +		break;
> +	default:
> +		dev_err(dev, "unknown speed value for RMII! speed=%d", speed);
> +		return -EINVAL;
> +	}
> +
> +	offset = (id == 1) ? RK3506_GRF_SOC_CON11 : RK3506_GRF_SOC_CON8;
> +	regmap_write(bsp_priv->grf, offset, val);
> +
> +	return 0;

This should probably be converted to use rk_reg_speed_data with
something like:

static const struct rk_reg_speed_data rk3506_reg_speed_data = {
	.rmii_10 = RK3506_GMAC_CLK_RMII_DIV20,
	.rmii_100 = RK3506_GMAC_CLK_RMII_DIV2,
};

and:

	return rk_set_reg_speed(bsp_priv, &rk3506_reg_speed_data,
				offset, interface, speed);

> +}
> +
> +static void rk3506_set_clock_selection(struct rk_priv_data *bsp_priv,
> +				       bool input, bool enable)
> +{
> +	unsigned int value, offset, id = bsp_priv->id;
> +
> +	offset = (id == 1) ? RK3506_GRF_SOC_CON11 : RK3506_GRF_SOC_CON8;
> +
> +	value = input ? RK3506_GMAC_CLK_SELET_IO :
> +			RK3506_GMAC_CLK_SELET_CRU;

s/SELET/SELECT/

Regards,
Jonas

> +	value |= enable ? RK3506_GMAC_CLK_RMII_NOGATE :
> +			  RK3506_GMAC_CLK_RMII_GATE;
> +	regmap_write(bsp_priv->grf, offset, value);
> +}
> +
> +static const struct rk_gmac_ops rk3506_ops = {
> +	.set_to_rmii = rk3506_set_to_rmii,
> +	.set_speed = rk3506_set_speed,
> +	.set_clock_selection = rk3506_set_clock_selection,
> +	.regs_valid = true,
> +	.regs = {
> +		0xff4c8000, /* gmac0 */
> +		0xff4d0000, /* gmac1 */
> +		0x0, /* sentinel */
> +	},
> +};
> +
>  #define RK3528_VO_GRF_GMAC_CON		0x0018
>  #define RK3528_VO_GRF_MACPHY_CON0	0x001c
>  #define RK3528_VO_GRF_MACPHY_CON1	0x0020
> @@ -1808,6 +1886,7 @@ static const struct of_device_id rk_gmac_dwmac_match[] = {
>  	{ .compatible = "rockchip,rk3366-gmac", .data = &rk3366_ops },
>  	{ .compatible = "rockchip,rk3368-gmac", .data = &rk3368_ops },
>  	{ .compatible = "rockchip,rk3399-gmac", .data = &rk3399_ops },
> +	{ .compatible = "rockchip,rk3506-gmac", .data = &rk3506_ops },
>  	{ .compatible = "rockchip,rk3528-gmac", .data = &rk3528_ops },
>  	{ .compatible = "rockchip,rk3568-gmac", .data = &rk3568_ops },
>  	{ .compatible = "rockchip,rk3576-gmac", .data = &rk3576_ops },


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
