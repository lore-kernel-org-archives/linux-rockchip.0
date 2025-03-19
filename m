Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7444C35FFA
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Mar 2025 22:40:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UHpknYnWcF/WrRugp5zDDzGLhRKTEIc0YAQGycsX/Ao=; b=D1rdJWbnpC8v6Q
	w3+DZ04NWP7MzBL+J82E+GsoLgXJzzAl3sGDDiVQc9S7NLDm7dQ+S2qooYN8IJqS2K77/1dsK52++
	je8HMOEQ4H1HgLeh5rxLMwjg/VpAZKbGmApiLl8qZMyYPekgx48I+225oyzSugk1YSWl1S8iASLWe
	ucuW7Gnt7anAk8UhCq/Gj5N7wMrZ6PbNi6o2heAW3XVdFhzCcqH758p7rnE3Pd7QLiNeBlM2JCSP6
	DsY0ZiLYP2Iz79zdnsGQIQPBZvWbpOE8ZIuwgOD/5MtDZxY64QIIXY7C95whGxyZdUEGvP+FR1ESN
	HFRkDjmRte/MCc9Eixdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tv252-0000000AJJO-287J;
	Wed, 19 Mar 2025 22:40:08 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tv250-0000000AJIm-08Vf;
	Wed, 19 Mar 2025 22:40:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=jTG3WnDFAfRFQDs0cUx1kwKiOP6BmpOLg7RMMJcqr7s=; b=awaNfGbpagVPUyFCmBEgPJBmul
	e9tPJGuvyQX/cvhie0Gzen6w0UIqucPHwRQq7lqNasTTazFhe+DK60szAbKolzU3XYaHFyzt0or44
	01eTmdmeu014tYZJcfTanw14k5yoqvo9Fh+IUWcXPUAuQyz34EHR/nWevIkioAIety70=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1tv24e-006Q5Z-KP; Wed, 19 Mar 2025 23:39:44 +0100
Date: Wed, 19 Mar 2025 23:39:44 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Wu <david.wu@rock-chips.com>, Yao Zi <ziyao@disroot.org>,
	netdev@vger.kernel.org, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH net-next v3 3/5] net: stmmac: dwmac-rk: Move
 integrated_phy_powerup/down functions
Message-ID: <d7b3ec5c-2d74-4409-9894-8f2cb3e055f6@lunn.ch>
References: <20250319214415.3086027-1-jonas@kwiboo.se>
 <20250319214415.3086027-4-jonas@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250319214415.3086027-4-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_154006_074564_87798B90 
X-CRM114-Status: GOOD (  12.96  )
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

On Wed, Mar 19, 2025 at 09:44:07PM +0000, Jonas Karlman wrote:
> Rockchip RK3528 (and RV1106) has a different integrated PHY compared to
> the integrated PHY on RK3228/RK3328. Current powerup/down operation is
> not compatible with the integrated PHY found in these SoCs.
> 
> Move the rk_gmac_integrated_phy_powerup/down functions to top of the
> file to prepare for them to be called directly by a GMAC variant
> specific powerup/down operation.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

> +#define RK_GRF_CON2_MACPHY_ID		HIWORD_UPDATE(0x1234, 0xffff, 0)
> +#define RK_GRF_CON3_MACPHY_ID		HIWORD_UPDATE(0x35, 0x3f, 0)
> +
> +static void rk_gmac_integrated_phy_powerup(struct rk_priv_data *priv)
> +{
> +	if (priv->ops->integrated_phy_powerup)
> +		priv->ops->integrated_phy_powerup(priv);
> +
> +	regmap_write(priv->grf, RK_GRF_MACPHY_CON0, RK_MACPHY_CFG_CLK_50M);
> +	regmap_write(priv->grf, RK_GRF_MACPHY_CON0, RK_GMAC2PHY_RMII_MODE);
> +
> +	regmap_write(priv->grf, RK_GRF_MACPHY_CON2, RK_GRF_CON2_MACPHY_ID);
> +	regmap_write(priv->grf, RK_GRF_MACPHY_CON3, RK_GRF_CON3_MACPHY_ID);

I know you are just moving code around....

Do you know what these MACPHY_ID are? I hope it is not what you get
when you read PHY registers 2 and 3?

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
