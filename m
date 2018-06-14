From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v2] net: ethernet: stmmac: dwmac-rk: Add GMAC support for PX30
Date: Thu, 14 Jun 2018 09:54:17 +0200
Message-ID: <1961033.25ax7s0Z5i@diego>
References: <1528956927-32440-1-git-send-email-david.wu@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1528956927-32440-1-git-send-email-david.wu@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: David Wu <david.wu@rock-chips.com>
Cc: davem@davemloft.net, robh+dt@kernel.org, mark.rutland@arm.com, huangtao@rock-chips.com, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi David,

Am Donnerstag, 14. Juni 2018, 08:15:27 CEST schrieb David Wu:
> Add constants and callback functions for the dwmac on PX30 Soc.
> The base structure is the same, but registers and the bits in
> them are moved slightly, and add the clk_mac_speed for selecting
> mac speed.
> 
> Signed-off-by: David Wu <david.wu@rock-chips.com>

[...]

> @@ -1042,6 +1101,10 @@ static int rk_gmac_clk_init(struct
> plat_stmmacenet_data *plat) }
>  	}
> 
> +	bsp_priv->clk_mac_speed = devm_clk_get(dev, "clk_mac_speed");
> +	if (IS_ERR(bsp_priv->clk_mac_speed))
> +		dev_err(dev, "cannot get clock %s\n", "clk_mac_speed");
> +

I don't see that new clock documented in the dt-binding.
Also, which clock from the clock-controller does this connect to?


Thanks
Heiko
