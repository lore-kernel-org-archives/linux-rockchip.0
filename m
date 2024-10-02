Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 434ECCF31AF
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Oct 2024 10:24:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WU/Zw2OeClg4wxhTvFEG5omAJ/rzmq6Yt4SAo/blSLA=; b=VLVxDcxX/t6A3f
	LgjBxQek4wmowNXozZO1Wfg/0qDDJw87tnV74iZtYrfEvuATwteagzI2Dtxt9rPAXQkG9ILeY5+YQ
	F+1/vbkB87eqz3dlfSV1s5xVKdkQqBMS22c6TgvPovrynvpM8k8wSmB6wFoQs0vOVXCSEc94M1ZjD
	6R0A8b2q3tTTyint2spxJ/Tl1Y9y2cwzwh8cyIja4w/ov/CpyLZXZxbrOu/DJZat7AV16ZOF0P7ky
	8IvhIbomwNlXLYskRPyvDsD6s2IFb7eyx6SoFFGYhNHgpqJSx+K4eELtf3TnuroxHav7alNhHRGet
	/cV1ER34epIkDFU07nkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svwX6-00000005TqV-3LyY;
	Wed, 02 Oct 2024 10:24:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svwUE-00000005TKD-3ySl;
	Wed, 02 Oct 2024 10:21:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Qx7UuxsjZ+GGwfajZkd5assNTnVL++J+/iRL6jQhBoA=; b=s9kqMYvgu35sXrUEjWRBFYUVrJ
	k4txb72cuxPxEfIMJaYeNsu9BCbx1t/K7+bzz3RCgEGwDLGwzq6gP+8uMjHyUcHiiK491azAMlswC
	DSUH9LSx8R87umgStFwXQWipKNXxEEbaLFv5XdHh9c5pEYNQUoIunYYb84zFYXSaUrsCW9whZxya0
	5KEv0683rOiwioU3AjMspVQICjdRa36bx9vY4cqhQgbbUXyYyK+BlrsCofjEOpNyrprQl/8OLzM3V
	cXIouIzJF7kT9DgA5TAWVPE98w/KOgcQbCQwzoPxckPI4Z3WE7yf6fpVycyyhvFAQ0eMoGVQFd8Qe
	GPE10JgQ==;
Received: from i53875aa1.versanet.de ([83.135.90.161] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svwU6-00050f-PV; Wed, 02 Oct 2024 12:21:30 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Yao Zi <ziyao@disroot.org>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Celeste Liu <CoelacanthusHex@gmail.com>,
 Yao Zi <ziyao@disroot.org>
Subject: Re: [PATCH 6/8] clk: rockchip: Add clock controller driver for RK3528 SoC
Date: Wed, 02 Oct 2024 12:21:29 +0200
Message-ID: <115216996.nniJfEyVGO@diego>
In-Reply-To: <20241001042401.31903-8-ziyao@disroot.org>
References: <20241001042401.31903-2-ziyao@disroot.org>
 <20241001042401.31903-8-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_032139_042196_97B23860 
X-CRM114-Status: GOOD (  20.34  )
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

Am Dienstag, 1. Oktober 2024, 06:24:00 CEST schrieb Yao Zi:
> Add clock tree definition for RK3528. Similar to previous Rockchip
> SoCs, clock controller shares MMIO region with reset controller and
> they are probed together.
> 
> Signed-off-by: Yao Zi <ziyao@disroot.org>
> ---

[...]

> +	GATE(ACLK_DDR_UPCTL, "aclk_ddr_upctl", "clk_ddrc_src", CLK_IS_CRITICAL,
> +	     RK3528_CLKGATE_CON(45), 11, GFLAGS),
> +	GATE(CLK_DDR_UPCTL, "clk_ddr_upctl", "clk_ddrc_src", CLK_IS_CRITICAL,
> +	     RK3528_CLKGATE_CON(45), 12, GFLAGS),
> +	GATE(CLK_DDRMON, "clk_ddrmon", "clk_ddrc_src", CLK_IS_CRITICAL,
> +	     RK3528_CLKGATE_CON(45), 13, GFLAGS),
> +	GATE(ACLK_DDR_SCRAMBLE, "aclk_ddr_scramble", "clk_ddrc_src",
> +	     CLK_IS_CRITICAL, RK3528_CLKGATE_CON(45), 14, GFLAGS),
> +	GATE(ACLK_SPLIT, "aclk_split", "clk_ddrc_src", CLK_IS_CRITICAL,
> +	     RK3528_CLKGATE_CON(45), 15, GFLAGS),
> +
> +	/* gpu */
> +	COMPOSITE_NODIV(ACLK_GPU_ROOT, "aclk_gpu_root",
> +			mux_500m_300m_100m_24m_p, CLK_IS_CRITICAL,
> +			RK3528_CLKSEL_CON(76), 0, 2, MFLAGS,
> +			RK3528_CLKGATE_CON(34), 0, GFLAGS),

Please keep the styling intact for all branch definitions.
(this one taken as an example, but applies to all)

I.e. if you look at the rk3588/rk3576/and everything else, you'll see
subsequent lines getting indented by 3 tabs all the time. For a large
set of definitions this makes it way easier to parse for the eye, than
having ever shifting offsets, when things get aligned to opening
parentheses.

Similarly, please also keep elements in their position, i.e. for the
aclk_gpu_root above, this would mean moving parents and CLK_IS_CRITICAL
up to the parent line.

(lines according to coding style are allowed up to 100 chars, and Rockchip
clock drivers sometimes exceed even that, because it makes handling the
clock drivers a lot easier)

> +};
> +
> +static int __init clk_rk3528_probe(struct platform_device *pdev)
> +{
> +	struct rockchip_clk_provider *ctx;
> +	struct device *dev = &pdev->dev;
> +	struct device_node *np = dev->of_node;
> +	unsigned long nr_branches = ARRAY_SIZE(rk3528_clk_branches);
> +	unsigned long nr_clks;
> +	void __iomem *reg_base;
> +
> +	nr_clks = rockchip_clk_find_max_clk_id(rk3528_clk_branches,
> +					       nr_branches) + 1;
> +
> +	pr_warn("%s: nr_clks = %lu\n", __func__, nr_clks);
> +
> +	reg_base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(reg_base))
> +		return dev_err_probe(dev, PTR_ERR(reg_base),
> +				     "could not map cru region");
> +
> +	ctx = rockchip_clk_init(np, reg_base, nr_clks);
> +	if (IS_ERR(ctx))
> +		return dev_err_probe(dev, PTR_ERR(ctx),
> +				     "rockchip clk init failed");
> +
> +	rockchip_clk_register_plls(ctx, rk3528_pll_clks,
> +				   ARRAY_SIZE(rk3528_pll_clks),
> +				   RK3528_GRF_SOC_STATUS0);
> +	rockchip_clk_register_armclk(ctx, ARMCLK, "armclk",
> +				     mux_armclk, ARRAY_SIZE(mux_armclk),
> +				     &rk3528_cpuclk_data, rk3528_cpuclk_rates,
> +				     ARRAY_SIZE(rk3528_cpuclk_rates));
> +	rockchip_clk_register_branches(ctx, rk3528_clk_branches, nr_branches);
> +
> +	rockchip_register_softrst(np, 47, reg_base + RK3528_SOFTRST_CON(0),
> +				  ROCKCHIP_SOFTRST_HIWORD_MASK);

here you'll like also want to check how rk3576 + rk3588 handle how the reset-ids
are not matched to the register offsets anymore.
(see rst-rk3588.c for example)


Thanks a lot
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
