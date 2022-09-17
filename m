Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94D7DC6FA86
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Sep 2022 06:55:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mu0hfcC/c4k3C/twqL/KRJZRY/zeFNml2UNj+4RKT5o=; b=m9mqooS6CuAFLN
	wxUerOBC1SkKneDgecGUp1Z95yuYTcEIx4Xk9my1ntC6Hg11GW/TpP10XWiJQd1u/23IhHhAtOAOd
	nRh6S74HtGeQahneaU4oxSR5WwP7vFfPvj8lrGC+3ghUvSHm3x9VRH6OS9UzcNBvK9oLnty5zLng9
	1SZTJRYgOC+I4nTULKddxVoz+0ecDlzC3SqeV85c64gmO4QBRugrnftoJ73UfnM9QN62EU3XHqHy8
	XJ3bjkNArNL2CUmLgqselsBOI4As619iXnOXQ7qP6hZHk1gFgkxxLWXlteRtj3P8/9wE8NL75MnQR
	cPTvKsNVMqEvXY4qsrSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZRja-003sB0-O2; Sat, 17 Sep 2022 06:55:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZRjI-003s2T-Pf; Sat, 17 Sep 2022 06:55:10 +0000
Received: from [167.98.135.4] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oZRjF-0007GC-Ap; Sat, 17 Sep 2022 08:55:05 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Kever Yang <kever.yang@rock-chips.com>, Jagan Teki <jagan@edgeble.ai>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Jagan Teki <jagan@edgeble.ai>, linux-clk@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Finley Xiao <finley.xiao@rock-chips.com>
Subject: Re: [PATCH v5 4/6] clk: rockchip: Add clock controller support for RV1126 SoC.
Date: Sat, 17 Sep 2022 08:55:03 +0200
Message-ID: <2597191.BddDVKsqQX@phil>
In-Reply-To: <20220915163947.1922183-5-jagan@edgeble.ai>
References: <20220915163947.1922183-1-jagan@edgeble.ai> <20220915163947.1922183-5-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_235508_872533_A9E60CB7 
X-CRM114-Status: GOOD (  22.60  )
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

Am Donnerstag, 15. September 2022, 18:39:45 CEST schrieb Jagan Teki:
> Clock & Reset Unit (CRU) in RV1126 support clocks for CRU
> and CRU_PMU blocks.
> 
> This patch is trying to add minimal Clock-Architecture Diagram's
> inferred from [1] authored by Finley Xiao.
> 
> [1] https://github.com/rockchip-linux/kernel/blob/develop-4.19/drivers/clk/rockchip/clk-rv1126.c
> 
> Cc: linux-clk@vger.kernel.org
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
> Changes for v5:
> - add platform-drivers

[...]

> +static void __init rv1126_pmu_clk_init(struct device_node *np)
> +{
> +	struct rockchip_clk_provider *ctx;
> +	void __iomem *reg_base;
> +
> +	reg_base = of_iomap(np, 0);
> +	if (!reg_base) {
> +		pr_err("%s: could not map cru pmu region\n", __func__);
> +		return;
> +	}
> +
> +	ctx = rockchip_clk_init(np, reg_base, CLKPMU_NR_CLKS);
> +	if (IS_ERR(ctx)) {
> +		pr_err("%s: rockchip pmu clk init failed\n", __func__);
> +		return;
> +	}
> +
> +	rockchip_clk_register_plls(ctx, rv1126_pmu_pll_clks,
> +				   ARRAY_SIZE(rv1126_pmu_pll_clks),
> +				   RV1126_GRF_SOC_STATUS0);
> +
> +	rockchip_clk_register_branches(ctx, rv1126_clk_pmu_branches,
> +				       ARRAY_SIZE(rv1126_clk_pmu_branches));
> +
> +	rockchip_register_softrst(np, 2, reg_base + RV1126_PMU_SOFTRST_CON(0),
> +				  ROCKCHIP_SOFTRST_HIWORD_MASK);
> +
> +	rockchip_clk_of_add_provider(np, ctx);
> +}
> +
> +CLK_OF_DECLARE(rv1126_cru_pmu, "rockchip,rv1126-pmucru", rv1126_pmu_clk_init);

this one and the one below should go away I think.

Can you check if that is the case, then I can just drop the two
CLK_OF_DECLARE lines.

Heiko

> +
> +static void __init rv1126_clk_init(struct device_node *np)
> +{
> +	struct rockchip_clk_provider *ctx;
> +	void __iomem *reg_base;
> +
> +	reg_base = of_iomap(np, 0);
> +	if (!reg_base) {
> +		pr_err("%s: could not map cru region\n", __func__);
> +		return;
> +	}
> +
> +	ctx = rockchip_clk_init(np, reg_base, CLK_NR_CLKS);
> +	if (IS_ERR(ctx)) {
> +		pr_err("%s: rockchip clk init failed\n", __func__);
> +		iounmap(reg_base);
> +		return;
> +	}
> +
> +	rockchip_clk_register_plls(ctx, rv1126_pll_clks,
> +				   ARRAY_SIZE(rv1126_pll_clks),
> +				   RV1126_GRF_SOC_STATUS0);
> +
> +	rockchip_clk_register_armclk(ctx, ARMCLK, "armclk",
> +				     mux_armclk_p, ARRAY_SIZE(mux_armclk_p),
> +				     &rv1126_cpuclk_data, rv1126_cpuclk_rates,
> +				     ARRAY_SIZE(rv1126_cpuclk_rates));
> +
> +	rockchip_clk_register_branches(ctx, rv1126_clk_branches,
> +				       ARRAY_SIZE(rv1126_clk_branches));
> +
> +	rockchip_register_softrst(np, 15, reg_base + RV1126_SOFTRST_CON(0),
> +				  ROCKCHIP_SOFTRST_HIWORD_MASK);
> +
> +	rockchip_register_restart_notifier(ctx, RV1126_GLB_SRST_FST, NULL);
> +
> +	rockchip_clk_protect_critical(rv1126_cru_critical_clocks,
> +				      ARRAY_SIZE(rv1126_cru_critical_clocks));
> +
> +	rockchip_clk_of_add_provider(np, ctx);
> +}
> +
> +CLK_OF_DECLARE(rv1126_cru, "rockchip,rv1126-cru", rv1126_clk_init);
> +
> +struct clk_rv1126_inits {
> +	void (*inits)(struct device_node *np);
> +};
> +
> +static const struct clk_rv1126_inits clk_rv1126_pmucru_init = {
> +	.inits = rv1126_pmu_clk_init,
> +};
> +
> +static const struct clk_rv1126_inits clk_rv1126_cru_init = {
> +	.inits = rv1126_clk_init,
> +};
> +
> +static const struct of_device_id clk_rv1126_match_table[] = {
> +	{
> +		.compatible = "rockchip,rv1126-cru",
> +		.data = &clk_rv1126_cru_init,
> +	},  {
> +		.compatible = "rockchip,rv1126-pmucru",
> +		.data = &clk_rv1126_pmucru_init,
> +	},
> +	{ }
> +};
> +
> +static int __init clk_rv1126_probe(struct platform_device *pdev)
> +{
> +	struct device_node *np = pdev->dev.of_node;
> +	const struct clk_rv1126_inits *init_data;
> +
> +	init_data = (struct clk_rv1126_inits *)of_device_get_match_data(&pdev->dev);
> +	if (!init_data)
> +		return -EINVAL;
> +
> +	if (init_data->inits)
> +		init_data->inits(np);
> +
> +	return 0;
> +}
> +
> +static struct platform_driver clk_rv1126_driver = {
> +	.driver		= {
> +		.name	= "clk-rv1126",
> +		.of_match_table = clk_rv1126_match_table,
> +		.suppress_bind_attrs = true,
> +	},
> +};
> +builtin_platform_driver_probe(clk_rv1126_driver, clk_rv1126_probe);




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
