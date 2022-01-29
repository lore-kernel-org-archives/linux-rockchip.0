Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 637DAC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Jan 2022 17:48:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=973HBR9JAcLYV3Empz3Rtp/0Sk4sfPjPkFLqHpLYvN0=; b=VYWJse3TB6ePbp
	sqICnsS3+y/x3AMnmvG+qtIaDPHwnjkqyhsgjKY2SBXDj7H5CFdSJVt+JjMr/CWlGUyKidInBauPB
	KrEf+cHR8GIAIlZQlU041YmJdPlLaJ3vxJi4dIoq/OBIECkdtN8gzjACqCRAjTv/QqE24Y3WOnchm
	Ps6aDCf93fU5Z6dnodcteX4RM8y1UTHwx2Cl3e0f7NJ0LGX1OJI/U0Wxixgr3TrnISMtCZSZ2jM62
	p18oXU9r3W/0RG25Ekq/1M7q5XRn9BzxlIknN9ZiWkmBXhYxlQeIA0W1lFLpYznBpPN9yN5ABJ9zy
	j8l2WP+eyIHbZBuLjDPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDrpu-005A60-Ct; Sat, 29 Jan 2022 17:48:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDrpi-005A4T-QX; Sat, 29 Jan 2022 17:48:20 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nDrpf-0005ax-H8; Sat, 29 Jan 2022 18:48:15 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: dri-devel@lists.freedesktop.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH 24/27] clk: rk3568: drop CLK_SET_RATE_PARENT from dclk_vop*
Date: Sat, 29 Jan 2022 18:48:13 +0100
Message-ID: <5329207.qDA9hNt6id@diego>
In-Reply-To: <20220126145549.617165-25-s.hauer@pengutronix.de>
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
 <20220126145549.617165-25-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220129_094818_896990_E36ABFB1 
X-CRM114-Status: GOOD (  23.70  )
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

Am Mittwoch, 26. Januar 2022, 15:55:46 CET schrieb Sascha Hauer:
> The pixel clocks dclk_vop[012] can be clocked from hpll, vpll, gpll or
> cpll. gpll and cpll also drive many other clocks, so changing the
> dclk_vop[012] clocks could change these other clocks as well. Drop
> CLK_SET_RATE_PARENT to fix that. With this change the VOP2 driver can
> only adjust the pixel clocks with the divider between the PLL and the
> dclk_vop[012] which means the user may have to adjust the PLL clock to a
> suitable rate using the assigned-clock-rate device tree property.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/clk/rockchip/clk-rk3568.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
> index 9d889fc46811..7687c62d1fa8 100644
> --- a/drivers/clk/rockchip/clk-rk3568.c
> +++ b/drivers/clk/rockchip/clk-rk3568.c
> @@ -1044,13 +1044,13 @@ static struct rockchip_clk_branch rk3568_clk_branches[] __initdata = {
>  			RK3568_CLKGATE_CON(20), 8, GFLAGS),
>  	GATE(HCLK_VOP, "hclk_vop", "hclk_vo", 0,
>  			RK3568_CLKGATE_CON(20), 9, GFLAGS),
> -	COMPOSITE(DCLK_VOP0, "dclk_vop0", hpll_vpll_gpll_cpll_p, CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT,
> +	COMPOSITE(DCLK_VOP0, "dclk_vop0", hpll_vpll_gpll_cpll_p, CLK_SET_RATE_NO_REPARENT,

hmm, I'm wondering about the use of having CLK_SET_RATE_NO_REPARENT here
(and even adding it below).

Using SET_RATE_PARENT in the following patch for the hdmi-pll, should give
us at least a suitable rate for the hdmi output, so the vop using that
should already find a nice rate to use.

The normal system-PLLs don't normally don't change their rate at runtime,
so I think we should liberate the dclks to select a PLL that best matches
their target rate - so drop the CLK_SET_RATE_NO_REPARENT as well.

That way the DCLKs can change to another PLL source if that provides
a rate nearer to their target.

Heiko

>  			RK3568_CLKSEL_CON(39), 10, 2, MFLAGS, 0, 8, DFLAGS,
>  			RK3568_CLKGATE_CON(20), 10, GFLAGS),
> -	COMPOSITE(DCLK_VOP1, "dclk_vop1", hpll_vpll_gpll_cpll_p, CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT,
> +	COMPOSITE(DCLK_VOP1, "dclk_vop1", hpll_vpll_gpll_cpll_p, CLK_SET_RATE_NO_REPARENT,
>  			RK3568_CLKSEL_CON(40), 10, 2, MFLAGS, 0, 8, DFLAGS,
>  			RK3568_CLKGATE_CON(20), 11, GFLAGS),
> -	COMPOSITE(DCLK_VOP2, "dclk_vop2", hpll_vpll_gpll_cpll_p, 0,
> +	COMPOSITE(DCLK_VOP2, "dclk_vop2", hpll_vpll_gpll_cpll_p, CLK_SET_RATE_NO_REPARENT,
>  			RK3568_CLKSEL_CON(41), 10, 2, MFLAGS, 0, 8, DFLAGS,
>  			RK3568_CLKGATE_CON(20), 12, GFLAGS),
>  	GATE(CLK_VOP_PWM, "clk_vop_pwm", "xin24m", 0,
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
