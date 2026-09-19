Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCE4AC982CC
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Sep 2026 20:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pEFhb3/blRylmGFRg8v9/KVHiyvfCRSMeIzfaJXgRT0=; b=klumksVPzHJKzv
	+e6K0fTUUepJuNFd5omi328EQn0wB0O532pSsNFyLjDvlzBZ1s/41ACWoZAyDyo7p9xxOXhMCSXPa
	pbbO+3N/SMa8cDTHKAZ4BE3gtignx9M1GYq6nZFHeJw7zc15+mbc14ElDrlvaOtD3YaS3sA1yzDmD
	n9ZkqIpbEonFfMgJnSVu5lKmHQdvGqlGyPijKDCjty0sg1a3TFWTlrnFPDrgYsnHGpbe6h12Fm2r4
	0wzZCArzNny/sp6vKUT7xjIScfVuv/AcigNBOOXVM9+rnM3nXL9Bu7K7nMX7z4DuacNO6vsufldys
	pDGGKoTmd8BApnFn3E0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x81vv-0000000Gcyo-1aIn;
	Sat, 19 Sep 2026 20:45:15 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x81vr-0000000Gcxf-2xZl
	for linux-rockchip@lists.infradead.org;
	Sat, 19 Sep 2026 20:45:13 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 200EF4E408D9;
	Sat, 19 Sep 2026 20:45:08 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 81DFD606CA;
	Sat, 19 Sep 2026 20:45:07 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id C5CF410328D5B;
	Sat, 19 Sep 2026 22:45:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1789850706; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=+8cETlr2q3PyJ3g9Jr0Py+3JGqk7+/bLEsejFMbYS4E=;
	b=ijUdkmj7VNvlxYbA3WVTHJY/7SdGCalNBcu7HIyXxCiRBe7vE2Z67CPyT/4UYskHTrcRaf
	OTgkg/aDFO0FsMm8ndO1Kb6TnMHAo8dDYPe0gQOIatFJ8epID1ATAkYTWI5YEXLue2stex
	2YcTJfg1qFNCiZT2q9zDQAoDaDYovtp4SInkogEKNonlIHoV59cow/FmscsUWfDgeRWe0K
	zAKZVRTweuAW5ljAmAFC4nZIKh7GhQ8FSE1lC53EwEqoCiyQ2eZEAVJ1koRFLtzpLwTeSE
	mmCV3jEAvaU//AqMoJimj4v8ZlXyGmcMJrPqth1vJ7kqImrgUCH2hH8yVGjQLA==
Message-ID: <00953149-df16-4d60-b180-2a80ba49e518@bootlin.com>
Date: Sat, 19 Sep 2026 22:44:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net] net: ethernet: stmmac: dwmac-rk: fix bulk clock leak
 when the PHY clock fails
To: Coia Prant <coiaprant@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
 netdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260919174223.2356964-1-coiaprant@gmail.com>
Content-Language: en-US
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
In-Reply-To: <20260919174223.2356964-1-coiaprant@gmail.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260919_134511_881573_97352A46 
X-CRM114-Status: GOOD (  12.28  )
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

Hi;

On 9/19/26 19:42, Coia Prant wrote:
> gmac_clk_enable() enables the bulk clocks first and then the optional
> PHY clock. If clk_prepare_enable() on the PHY clock fails, the function
> returns without rolling back the bulk clocks, and bsp_priv->clk_enabled
> stays false, so the later gmac_clk_enable(bsp_priv, false) becomes a
> no-op and the bulk clock references are leaked.
> 
> Add the missing clk_bulk_disable_unprepare() on that failure path.
> 
> Fixes: ea449f7fa0bf ("net: ethernet: stmmac: dwmac-rk: rework optional clock handling")
> Signed-off-by: Coia Prant <coiaprant@gmail.com>

Reviewed-by: Maxime Chevallier <maxime.chevallier@bootlin.com>

Thank you,

Maxime

> ---
>  drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> index 8d7042e689261..f3a98bd9d6ead 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> @@ -1163,7 +1163,10 @@ static int gmac_clk_enable(struct rk_priv_data *bsp_priv, bool enable)
>  
>  			ret = clk_prepare_enable(bsp_priv->clk_phy);
>  			if (ret)
> +				clk_bulk_disable_unprepare(bsp_priv->num_clks,
> +							   bsp_priv->clks);
>  				return ret;
> +			}
>  
>  			rk_configure_io_clksel(bsp_priv);
>  			rk_ungate_rmii_clock(bsp_priv);


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
