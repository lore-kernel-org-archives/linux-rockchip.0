Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F70DCD1284
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Apr 2024 19:43:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rGXtaIH6DA5lPNoPkUwanb7K73/Qd3Ht/gBZgHTe5m0=; b=1ed4eWgCSZ7zNm
	JEZShkVw2h5Fq77z+VhGRg7SaCGJJVcv23sZfCarMNhvWc1XSwWuwKQKBXkjd9nx2+n6IA2Ox00N5
	Xnn6zgo5fc7VeJv0qtipmJXrPM9t+nIwm/z/heZmChl2nZ8RUWvgOd9lq4LF73aAahX8fzfJNsCpe
	I1E8c16k8oK0FSOg+dchvvy4IFqEMHjcHFzT4x/tTA66gThS6Vev+4T3uaWGJSybq04FnFUzPCsg+
	/p/H6V7kSXhdvDhAk3OJod2hHqoWysABI6r9r5C1FsNtnQ3ufQmGCnkuDuDS1PT5jZjHepznZeVzw
	z5BHc/6rLvfPoSv0S2rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsSza-0000000463r-3ulP;
	Thu, 04 Apr 2024 19:43:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsSzX-0000000462r-17xn;
	Thu, 04 Apr 2024 19:43:20 +0000
Received: from i53875aaf.versanet.de ([83.135.90.175] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rsSzU-0005We-Pz; Thu, 04 Apr 2024 21:43:16 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, David Jander <david@protonic.nl>,
 Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH] clk: rockchip: clk-rk3568.c: Add missing USB480M_PHY mux
Date: Thu, 04 Apr 2024 21:43:15 +0200
Message-ID: <3612648.44csPzL39Z@phil>
In-Reply-To: <20240404-clk-rockchip-rk3568-add-usb480m-phy-mux-v1-1-e8542afd58b9@pengutronix.de>
References: <20240404-clk-rockchip-rk3568-add-usb480m-phy-mux-v1-1-e8542afd58b9@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_124319_343523_6F97BA6C 
X-CRM114-Status: GOOD (  19.95  )
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

Hi Sascha,

Am Donnerstag, 4. April 2024, 09:27:01 CEST schrieb Sascha Hauer:
> From: David Jander <david@protonic.nl>
> 
> The USB480M clock can source from a MUX that selects the clock to come
> from either of the USB-phy internal 480MHz PLLs. These clocks are
> provided by the USB phy driver.
> 
> Signed-off-by: David Jander <david@protonic.nl>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/clk/rockchip/clk-rk3568.c      | 4 ++++
>  include/dt-bindings/clock/rk3568-cru.h | 1 +
>  2 files changed, 5 insertions(+)
> 
> diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
> index 8cb21d10beca2..2d44bcaef046b 100644
> --- a/drivers/clk/rockchip/clk-rk3568.c
> +++ b/drivers/clk/rockchip/clk-rk3568.c
> @@ -215,6 +215,7 @@ static const struct rockchip_cpuclk_reg_data rk3568_cpuclk_data = {
>  
>  PNAME(mux_pll_p)			= { "xin24m" };
>  PNAME(mux_usb480m_p)			= { "xin24m", "usb480m_phy", "clk_rtc_32k" };
> +PNAME(mux_usb480m_phy_p)		= { "clk_usbphy0_480m", "clk_usbphy1_480m"};
>  PNAME(mux_armclk_p)			= { "apll", "gpll" };
>  PNAME(clk_i2s0_8ch_tx_p)		= { "clk_i2s0_8ch_tx_src", "clk_i2s0_8ch_tx_frac", "i2s0_mclkin", "xin_osc0_half" };
>  PNAME(clk_i2s0_8ch_rx_p)		= { "clk_i2s0_8ch_rx_src", "clk_i2s0_8ch_rx_frac", "i2s0_mclkin", "xin_osc0_half" };
> @@ -485,6 +486,9 @@ static struct rockchip_clk_branch rk3568_clk_branches[] __initdata = {
>  	MUX(USB480M, "usb480m", mux_usb480m_p, CLK_SET_RATE_PARENT,
>  			RK3568_MODE_CON0, 14, 2, MFLAGS),
>  
> +	MUX(USB480M_PHY, "usb480m_phy", mux_usb480m_phy_p, CLK_SET_RATE_PARENT,
> +			RK3568_MISC_CON2, 15, 1, MFLAGS),
> +
>  	/* PD_CORE */
>  	COMPOSITE(0, "sclk_core_src", apll_gpll_npll_p, CLK_IGNORE_UNUSED,
>  			RK3568_CLKSEL_CON(2), 8, 2, MFLAGS, 0, 4, DFLAGS | CLK_DIVIDER_READ_ONLY,
> diff --git a/include/dt-bindings/clock/rk3568-cru.h b/include/dt-bindings/clock/rk3568-cru.h
> index d29890865150d..5263085c5b238 100644
> --- a/include/dt-bindings/clock/rk3568-cru.h
> +++ b/include/dt-bindings/clock/rk3568-cru.h
> @@ -78,6 +78,7 @@
>  #define CPLL_333M		9
>  #define ARMCLK			10
>  #define USB480M			11
> +#define USB480M_PHY		12
>  #define ACLK_CORE_NIU2BUS	18
>  #define CLK_CORE_PVTM		19
>  #define CLK_CORE_PVTM_CORE	20
> 

Please separate the code change and clock-id addition into separate
patches. That way dt-maintainers will more easily see that there are
changes to the dt-binding inside.

Other than that, the change looks fine :-)


Thanks
Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
