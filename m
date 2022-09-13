Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF5FDC54EE9
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Sep 2022 10:13:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xXLrVZyhNdO97l6Y29YvFh0ZD45WbKId9GLxUrzDki0=; b=jqs1nXEAwI/1Zf
	Ja6TepQM6npiETISqt015IwNcuVifLLGmRH2ryisjEFdjdrZ8w530qEnAsGD+215g+u7CHiIZ2YvZ
	uK1MtjCClX1RSvCYFuA8HqZLPSX6qgxrmwYIMeeHwyTCAZD1BFMiV8+O5/kh6FJX4q6X4LrIa9+5C
	PclWCFeIT2Ls0UUXjD8Xl8l4Jf1MrfECbC/sVGUBeb6hxiswbDxpa9ntlXr1TRJjZKH6SURd6G2gE
	MZy9XToJ/NP6/7LEHDWCg0Pab+Q9j6Zct5RRrgYr/B/9DmXoJ+JPs6K5Y1as+xfbwKegh03lvXJBi
	TL8CR6hF4W0Kv7cYbywQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY2uy-006JUb-Oh; Tue, 13 Sep 2022 10:13:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY2ug-006J3C-4c; Tue, 13 Sep 2022 10:13:08 +0000
Received: from [185.122.133.20] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oY2ue-00042A-QF; Tue, 13 Sep 2022 12:13:04 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Kever Yang <kever.yang@rock-chips.com>, Jagan Teki <jagan@edgeble.ai>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Jagan Teki <jagan@edgeble.ai>, linux-clk@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Finley Xiao <finley.xiao@rock-chips.com>
Subject: Re: [PATCH v4 05/13] clk: rockchip: Add clock controller support for RV1126 SoC.
Date: Tue, 13 Sep 2022 12:13:03 +0200
Message-ID: <2196383.iZASKD2KPV@phil>
In-Reply-To: <20220907160207.3845791-6-jagan@edgeble.ai>
References: <20220907160207.3845791-1-jagan@edgeble.ai> <20220907160207.3845791-6-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_031307_246132_BC6E6888 
X-CRM114-Status: GOOD (  16.81  )
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

Hi Jagan,

Am Mittwoch, 7. September 2022, 18:01:59 CEST schrieb Jagan Teki:
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

both of these want to be platform-drivers nowadays.

Take a look at rk3399 and rk3568 for reference.

Thanks
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





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
