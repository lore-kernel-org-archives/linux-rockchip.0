Return-Path: <SRS0=TPHQ=NV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,
	UNWANTED_LANGUAGE_BODY,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9C84C432BE
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Aug 2021 20:45:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5792360FC0
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Aug 2021 20:45:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5792360FC0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jbYSjaY3arq++LfSP3Z4ZUCTz4oaibpN7ZqCw/Ik1Mg=; b=uMibz/4/s2RaLg
	QfUwWcDUluJaVBIePcfu4utc171DVRQfFTOcPrD+dQKPYpi9Pd8fjpbrdxJoXwLc7orDOxFYdTYSQ
	THD0OqMTdrUO1y9gqYHJRZQi4QqPhFQfTFYkt0zWzf3hC1o1efOXBpeV9IEYo1FIRnGl7CZPNPLOf
	9qe8e0AnnD+LZpvjcXD4XUzAZZYNpY9WCK78wbb2qdj09Nx7NJ8PJExE9No3H9UQdajXe6m94kgk2
	63cbH/PA2+HjHfqYBzSr5hK6b6hxW1HlhAWfJcSojRAAHPcB27EQ23J7p85zs0SW6woFS8I6cmR7p
	lweDiMcCZjOnO3oCMTMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mKo9l-000XTY-6e; Mon, 30 Aug 2021 20:45:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mKo9X-000XQV-Cs; Mon, 30 Aug 2021 20:45:13 +0000
Received: from ip5f5a6e92.dynamic.kabel-deutschland.de ([95.90.110.146]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mKo9Q-0001Q1-8y; Mon, 30 Aug 2021 22:45:04 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-phy@lists.infradead.org, Mikhail Rudenko <mike.rudenko@gmail.com>
Cc: linux-media@vger.kernel.org, Mikhail Rudenko <mike.rudenko@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/5] phy: phy-rockchip-dphy-rx0: refactor for tx1rx1
 addition
Date: Mon, 30 Aug 2021 22:45:03 +0200
Message-ID: <6474995.6kXVAnRFRJ@diego>
In-Reply-To: <20210830180758.251390-2-mike.rudenko@gmail.com>
References: <20210830180758.251390-1-mike.rudenko@gmail.com>
 <20210830180758.251390-2-mike.rudenko@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210830_134511_499108_30C45FAA 
X-CRM114-Status: GOOD (  21.73  )
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

Hi Mikhail,

Am Montag, 30. August 2021, 20:07:50 CEST schrieb Mikhail Rudenko:
> In order to accommodate for rk3399 tx1rx1 addition, make
> enable/disable function calls indirect via function pointers in
> rk_dphy_drv_data. Also rename rk_dphy_write and rk_dphy_enable to
> avoid naming clashes.

You're a bit too late to the party :-( .

The tx1rx1 dphy is living _inside_ the 2nd DSI controller and is
configured through it. 

So having the same peripheral in the dts with different compatibles
does break the devicetree-describes-hardware-not-Linux-implementation-details
paradigm.

Therefore my approach was to handle the switch between tx and rx modes
inside the dsi driver. This got merged for 5.15 as well, see [0] [1].

So sadly this series is somewhat obsolete, but you should find the
building blocks for camera support in linux-next already.


Regards
Heiko




[0] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=71f68fe7f12182ed968cfbbd1ef018721e4dee30
[1] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=68e0277204c733dff19073686e2ac48239b06fbc


> 
> Signed-off-by: Mikhail Rudenko <mike.rudenko@gmail.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-dphy-rx0.c | 38 +++++++++++++-------
>  1 file changed, 25 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-dphy-rx0.c b/drivers/phy/rockchip/phy-rockchip-dphy-rx0.c
> index 4df9476ef2a9..72145cdfb036 100644
> --- a/drivers/phy/rockchip/phy-rockchip-dphy-rx0.c
> +++ b/drivers/phy/rockchip/phy-rockchip-dphy-rx0.c
> @@ -138,12 +138,17 @@ static const struct dphy_reg rk3399_grf_dphy_regs[] = {
>  	[GRF_DPHY_RX0_TESTDOUT] = PHY_REG(RK3399_GRF_SOC_STATUS1, 8, 0),
>  };
>  
> +struct rk_dphy;
> +
>  struct rk_dphy_drv_data {
>  	const char * const *clks;
>  	unsigned int num_clks;
>  	const struct hsfreq_range *hsfreq_ranges;
>  	unsigned int num_hsfreq_ranges;
>  	const struct dphy_reg *regs;
> +
> +	void (*enable)(struct rk_dphy *priv);
> +	void (*disable)(struct rk_dphy *priv);
>  };
>  
>  struct rk_dphy {
> @@ -170,7 +175,7 @@ static inline void rk_dphy_write_grf(struct rk_dphy *priv,
>  	regmap_write(priv->grf, reg->offset, val);
>  }
>  
> -static void rk_dphy_write(struct rk_dphy *priv, u8 test_code, u8 test_data)
> +static void rk_dphy_write_mipi_rx(struct rk_dphy *priv, u8 test_code, u8 test_data)
>  {
>  	rk_dphy_write_grf(priv, GRF_DPHY_RX0_TESTDIN, test_code);
>  	rk_dphy_write_grf(priv, GRF_DPHY_RX0_TESTEN, 1);
> @@ -186,7 +191,7 @@ static void rk_dphy_write(struct rk_dphy *priv, u8 test_code, u8 test_data)
>  	rk_dphy_write_grf(priv, GRF_DPHY_RX0_TESTCLK, 1);
>  }
>  
> -static void rk_dphy_enable(struct rk_dphy *priv)
> +static void rk_dphy_enable_rx(struct rk_dphy *priv)
>  {
>  	rk_dphy_write_grf(priv, GRF_DPHY_RX0_FORCERXMODE, 0);
>  	rk_dphy_write_grf(priv, GRF_DPHY_RX0_FORCETXSTOPMODE, 0);
> @@ -206,22 +211,27 @@ static void rk_dphy_enable(struct rk_dphy *priv)
>  	usleep_range(100, 150);
>  
>  	/* set clock lane */
> -	/* HS hsfreq_range & lane 0  settle bypass */
> -	rk_dphy_write(priv, CLOCK_LANE_HS_RX_CONTROL, 0);
> +	/* HS hsfreq_range & lane 0	 settle bypass */
> +	rk_dphy_write_mipi_rx(priv, CLOCK_LANE_HS_RX_CONTROL, 0);
>  	/* HS RX Control of lane0 */
> -	rk_dphy_write(priv, LANE0_HS_RX_CONTROL, priv->hsfreq << 1);
> +	rk_dphy_write_mipi_rx(priv, LANE0_HS_RX_CONTROL, priv->hsfreq << 1);
>  	/* HS RX Control of lane1 */
> -	rk_dphy_write(priv, LANE1_HS_RX_CONTROL, priv->hsfreq << 1);
> +	rk_dphy_write_mipi_rx(priv, LANE1_HS_RX_CONTROL, priv->hsfreq << 1);
>  	/* HS RX Control of lane2 */
> -	rk_dphy_write(priv, LANE2_HS_RX_CONTROL, priv->hsfreq << 1);
> +	rk_dphy_write_mipi_rx(priv, LANE2_HS_RX_CONTROL, priv->hsfreq << 1);
>  	/* HS RX Control of lane3 */
> -	rk_dphy_write(priv, LANE3_HS_RX_CONTROL, priv->hsfreq << 1);
> +	rk_dphy_write_mipi_rx(priv, LANE3_HS_RX_CONTROL, priv->hsfreq << 1);
>  	/* HS RX Data Lanes Settle State Time Control */
> -	rk_dphy_write(priv, LANES_THS_SETTLE_CONTROL,
> -		      THS_SETTLE_COUNTER_THRESHOLD);
> +	rk_dphy_write_mipi_rx(priv, LANES_THS_SETTLE_CONTROL,
> +			  THS_SETTLE_COUNTER_THRESHOLD);
>  
>  	/* Normal operation */
> -	rk_dphy_write(priv, 0x0, 0);
> +	rk_dphy_write_mipi_rx(priv, 0x0, 0);
> +}
> +
> +static void rk_dphy_disable_rx(struct rk_dphy *priv)
> +{
> +	rk_dphy_write_grf(priv, GRF_DPHY_RX0_ENABLE, 0);
>  }
>  
>  static int rk_dphy_configure(struct phy *phy, union phy_configure_opts *opts)
> @@ -266,7 +276,7 @@ static int rk_dphy_power_on(struct phy *phy)
>  	if (ret)
>  		return ret;
>  
> -	rk_dphy_enable(priv);
> +	priv->drv_data->enable(priv);
>  
>  	return 0;
>  }
> @@ -275,7 +285,7 @@ static int rk_dphy_power_off(struct phy *phy)
>  {
>  	struct rk_dphy *priv = phy_get_drvdata(phy);
>  
> -	rk_dphy_write_grf(priv, GRF_DPHY_RX0_ENABLE, 0);
> +	priv->drv_data->disable(priv);
>  	clk_bulk_disable(priv->drv_data->num_clks, priv->clks);
>  	return 0;
>  }
> @@ -310,6 +320,8 @@ static const struct rk_dphy_drv_data rk3399_mipidphy_drv_data = {
>  	.hsfreq_ranges = rk3399_mipidphy_hsfreq_ranges,
>  	.num_hsfreq_ranges = ARRAY_SIZE(rk3399_mipidphy_hsfreq_ranges),
>  	.regs = rk3399_grf_dphy_regs,
> +	.enable = rk_dphy_enable_rx,
> +	.disable = rk_dphy_disable_rx,
>  };
>  
>  static const struct of_device_id rk_dphy_dt_ids[] = {
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
