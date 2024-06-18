Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D48C3C27C4F
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Jun 2024 07:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m9zCzoxTVvA507O7tFpVg/RcT1W3njF6mENCFnp9+MA=; b=pa6id2dVyIgWnj
	7Ll5Tu8ZXQ7zHIceIbYJBZ36UQBs+UW1HH/nJn23dQDgVJpoHHNQVdTGXc7EsHobK0LMuAuBET6j7
	6eT1//buwuiiGWTuPuhEx3vS37om0CAtyoCFm1JmUHSxUO6F3Lw576mwRY0s2gPlPc0g8AKLS3SIS
	8SC6yBHMD0jSDIw1deFZ4awPwi9x/YRYpjK6eWndykCABYoW7ijV0EEmXSa8rO+NjdBMX7gRDGwoT
	wpdDJSnQgy4A0PwgwYObkGQP6TBFGFBbwnILjxuHkOko15foyC655hZvgxI+9QE+oXPjrIEAbgh7m
	Ha3V35FG95+ZfZZdAcZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJTgY-0000000E1XQ-2gVp;
	Tue, 18 Jun 2024 07:55:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJTgV-0000000E1Vw-16HM;
	Tue, 18 Jun 2024 07:55:20 +0000
Received: from i5e8616c2.versanet.de ([94.134.22.194] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sJTgP-0006QI-C0; Tue, 18 Jun 2024 09:55:13 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Algea Cao <algea.cao@rock-chips.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 4/4] phy: phy-rockchip-samsung-hdptx: Add clock provider support
Date: Tue, 18 Jun 2024 09:55:12 +0200
Message-ID: <2910644.FA0FI3ke8A@diego>
In-Reply-To: <20240618-rk3588-hdmiphy-clkprov-v1-4-80e4aa12177e@collabora.com>
References: <20240618-rk3588-hdmiphy-clkprov-v1-0-80e4aa12177e@collabora.com>
 <20240618-rk3588-hdmiphy-clkprov-v1-4-80e4aa12177e@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240618_005519_485985_651CA1C3 
X-CRM114-Status: GOOD (  18.78  )
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

Am Montag, 17. Juni 2024, 23:48:12 CEST schrieb Cristian Ciocaltea:
> The HDMI PHY PLL can be used as an alternative dclk source to RK3588 SoC
> CRU. It provides more accurate clock rates required by VOP2 to improve
> existing support for display modes handling, which is known to be
> problematic when dealing with non-integer refresh rates, among others.
> 
> It is worth noting this only works for HDMI 2.0 or below, e.g. cannot be
> used to support HDMI 2.1 4K@120Hz mode.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 189 +++++++++++++++++++---
>  1 file changed, 167 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> index 72de287282eb..ad3fd4084377 100644
> --- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> +++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c

>  static int rk_hdptx_phy_power_on(struct phy *phy)
>  {
>  	struct rk_hdptx_phy *hdptx = phy_get_drvdata(phy);
>  	int bus_width = phy_get_bus_width(hdptx->phy);
> +	int ret;
> +
>  	/*
>  	 * FIXME: Temporary workaround to pass pixel_clk_rate
>  	 * from the HDMI bridge driver until phy_configure_opts_hdmi
> @@ -871,20 +925,18 @@ static int rk_hdptx_phy_power_on(struct phy *phy)
>  	dev_dbg(hdptx->dev, "%s bus_width=%x rate=%u\n",
>  		__func__, bus_width, rate);
>  
> -	return rk_hdptx_ropll_tmds_mode_config(hdptx, rate);
> +	ret = rk_hdptx_phy_consumer_get(hdptx, rate);
> +	if (!ret)
> +		ret = rk_hdptx_ropll_tmds_mode_config(hdptx, rate);

I think this will need a put if _mode_config fails?

> +
> +	return ret;
>  }


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
