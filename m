Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F322CE8E9A
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Oct 2024 18:18:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BXoy85PkW9a2f/0jUHHu3Bbo3XE+W0duHHOxlq4t72c=; b=zaHlM9/2nHme6E
	5tYuAVqbauSK3BfJ69G774UJ6rtYMjFcykUNGjAUdYhvGSpDYoZLDhMgpudZuTn6SukLtg3ahRRlH
	Dhx7XYPCi0wnXCHMSXY/EcHQbbP+DOjECUG1jPTR8rS77eOkrZDakcbUPaY52kUp+hV8fiG8Z/0gL
	FxeU6mlPoamgkXEVk9KB8oujTu1k8cQiEytsYJ21if3sRqlcahWyUK0AoFgUSsmi6UoXe1cuiq9g0
	lsuV3WBF/6aWgZXjbrijB4MLhiCwBoJm0ehAUkKfs9fQYg/msuXBF5p+klxJfk2QoLelGhEn+Tt8e
	tC2jEJ6lxqMAyuSolT/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t42Px-00000001RZR-0fQ6;
	Thu, 24 Oct 2024 18:18:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t42Nr-00000001RLv-3Wy9
	for linux-rockchip@bombadil.infradead.org;
	Thu, 24 Oct 2024 18:16:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=72NOqXeGZAXdg8PPewhMDPvXQqGlj0DDWiohsGcw27k=; b=aAfi324pSdzcy5fsg9wuDQIMFv
	0ebCV9NOvi/dKp9oAd/ghgFKlHjjC7eNpo9OMblcgEDmQDci8PHLHSN8It4rj6LhOdj7P/aTXEkvm
	2sAKmlLDf61RpQaEU0uqWbvoV1FefnjEcC4CeOIpMoYsk4RYIKL4mTRLxRf4kUnGQIr0ybngBi3qP
	UuXTmQ4p9R0qQkic2oWAGvpdDyCavpgUXO99rPI1njpHVgHdsFxT2uZfLJpIrTEE4uOlDRQw7J20r
	2k/q5/b5JVk43je2s4pNiHwE+wAxcK7q0UYkxA2BDI83fAixBZ9utS4WuYbm36uNm92RRRd2F7xtA
	Ar8dUwtg==;
Received: from bali.collaboradmins.com ([148.251.105.195])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t42No-00000008jLa-2RSi
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Oct 2024 18:16:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1729793783;
	bh=YPY1q8Pd1ivEfQSXE7cKl/01TFyEdU0GmKHIBC8lVbc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=lbXkyGBl1jPp+FpALSjo664Ysh7xA7LZRfVkYu1iQik7FV+5pBvx+Qd3rhkMaOjhv
	 cPFVwTv6UpF2v+QBD7poC+xQocJq4t/OQsjnPAvgTkDinDRU8ym/4DRYrg7CKG6r/C
	 +oNp6z7Pc9R9PGUhb1OP+J8WfXq5B6yOdWyzjhXmN+uEoD1biaPP4mIbbWPqFxfC4T
	 PdPHFpziSn/4Yl+RFxKtwWEQZUYtyXHQZUknsJiWvSTV8wqOXu4DpL9+JlKFiBylq2
	 ailqlzIIiT1WTgQ1AjFLE6G5ksXF4kkVpAtUcNNrBjK75+I71RC5A6RkbWNxYSYGLI
	 ByW7qLzByGtbg==
Received: from jupiter.universe (dyndsl-091-248-214-110.ewe-ip-backbone.de [91.248.214.110])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id F244817E36C7;
	Thu, 24 Oct 2024 20:16:22 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id A67C64800F4; Thu, 24 Oct 2024 20:16:22 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-clk@vger.kernel.org
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	huangtao@rock-chips.com,
	andy.yan@rock-chips.com,
	Michal Tomek <mtdev79b@gmail.com>,
	Ilya K <me@0upti.me>,
	Chad LeClair <leclair@gmail.com>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v11 2/5] clk: rockchip: rk3588: register GATE_LINK later
Date: Thu, 24 Oct 2024 20:15:29 +0200
Message-ID: <20241024181621.210509-3-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241024181621.210509-1-sebastian.reichel@collabora.com>
References: <20241024181621.210509-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241024_191628_725821_349758DA 
X-CRM114-Status: GOOD (  19.70  )
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

The proper GATE_LINK implementation will use runtime PM to handle the
linked gate clocks, which requires device context. Currently all clocks
are registered early via CLK_OF_DECLARE, which is before the kernel
knows about devices.

Moving the full clocks registration to the probe routine does not work,
since the clocks needed for timers must be registered early.

To work around this issue, most of the clock tree is registered early,
but GATE_LINK clocks are handled in the probe routine. Since the resets
are not needed early either, they have also been moved to the probe
routine.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/clk/rockchip/clk-rk3588.c | 66 +++++++++++++++++++++++++++----
 1 file changed, 58 insertions(+), 8 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3588.c b/drivers/clk/rockchip/clk-rk3588.c
index 0ffaf639f807..618bda0be5a4 100644
--- a/drivers/clk/rockchip/clk-rk3588.c
+++ b/drivers/clk/rockchip/clk-rk3588.c
@@ -266,6 +266,8 @@ static struct rockchip_pll_rate_table rk3588_pll_rates[] = {
 	},							\
 }
 
+static struct rockchip_clk_provider *early_ctx;
+
 static struct rockchip_cpuclk_rate_table rk3588_cpub0clk_rates[] __initdata = {
 	RK3588_CPUB01CLK_RATE(2496000000, 1),
 	RK3588_CPUB01CLK_RATE(2400000000, 1),
@@ -694,7 +696,7 @@ static struct rockchip_pll_clock rk3588_pll_clks[] __initdata = {
 		     RK3588_MODE_CON0, 10, 15, 0, rk3588_pll_rates),
 };
 
-static struct rockchip_clk_branch rk3588_clk_branches[] __initdata = {
+static struct rockchip_clk_branch rk3588_early_clk_branches[] __initdata = {
 	/*
 	 * CRU Clock-Architecture
 	 */
@@ -2428,7 +2430,9 @@ static struct rockchip_clk_branch rk3588_clk_branches[] __initdata = {
 			RK3588_CLKGATE_CON(68), 5, GFLAGS),
 	GATE(ACLK_AV1, "aclk_av1", "aclk_av1_pre", 0,
 			RK3588_CLKGATE_CON(68), 2, GFLAGS),
+};
 
+static struct rockchip_clk_branch rk3588_clk_branches[] = {
 	GATE_LINK(ACLK_ISP1_PRE, "aclk_isp1_pre", "aclk_isp1_root", ACLK_VI_ROOT, 0, RK3588_CLKGATE_CON(26), 6, GFLAGS),
 	GATE_LINK(HCLK_ISP1_PRE, "hclk_isp1_pre", "hclk_isp1_root", HCLK_VI_ROOT, 0, RK3588_CLKGATE_CON(26), 8, GFLAGS),
 	GATE_LINK(HCLK_NVM, "hclk_nvm", "hclk_nvm_root", ACLK_NVM_ROOT, RK3588_LINKED_CLK, RK3588_CLKGATE_CON(31), 2, GFLAGS),
@@ -2453,26 +2457,31 @@ static struct rockchip_clk_branch rk3588_clk_branches[] __initdata = {
 	GATE_LINK(PCLK_VO1GRF, "pclk_vo1grf", "pclk_vo1_root", HCLK_VO1, CLK_IGNORE_UNUSED, RK3588_CLKGATE_CON(59), 12, GFLAGS),
 };
 
-static void __init rk3588_clk_init(struct device_node *np)
+static void __init rk3588_clk_early_init(struct device_node *np)
 {
 	struct rockchip_clk_provider *ctx;
-	unsigned long clk_nr_clks;
+	unsigned long clk_nr_clks, max_clk_id1, max_clk_id2;
 	void __iomem *reg_base;
 
-	clk_nr_clks = rockchip_clk_find_max_clk_id(rk3588_clk_branches,
-					ARRAY_SIZE(rk3588_clk_branches)) + 1;
+	max_clk_id1 = rockchip_clk_find_max_clk_id(rk3588_clk_branches,
+					ARRAY_SIZE(rk3588_clk_branches));
+	max_clk_id2 = rockchip_clk_find_max_clk_id(rk3588_early_clk_branches,
+					ARRAY_SIZE(rk3588_early_clk_branches));
+	clk_nr_clks = max(max_clk_id1, max_clk_id2) + 1;
+
 	reg_base = of_iomap(np, 0);
 	if (!reg_base) {
 		pr_err("%s: could not map cru region\n", __func__);
 		return;
 	}
 
-	ctx = rockchip_clk_init(np, reg_base, clk_nr_clks);
+	ctx = rockchip_clk_init_early(np, reg_base, clk_nr_clks);
 	if (IS_ERR(ctx)) {
 		pr_err("%s: rockchip clk init failed\n", __func__);
 		iounmap(reg_base);
 		return;
 	}
+	early_ctx = ctx;
 
 	rockchip_clk_register_plls(ctx, rk3588_pll_clks,
 				   ARRAY_SIZE(rk3588_pll_clks),
@@ -2491,14 +2500,55 @@ static void __init rk3588_clk_init(struct device_node *np)
 			&rk3588_cpub1clk_data, rk3588_cpub1clk_rates,
 			ARRAY_SIZE(rk3588_cpub1clk_rates));
 
+	rockchip_clk_register_branches(ctx, rk3588_early_clk_branches,
+				       ARRAY_SIZE(rk3588_early_clk_branches));
+
+	rockchip_clk_of_add_provider(np, ctx);
+}
+CLK_OF_DECLARE_DRIVER(rk3588_cru, "rockchip,rk3588-cru", rk3588_clk_early_init);
+
+static int clk_rk3588_probe(struct platform_device *pdev)
+{
+	struct rockchip_clk_provider *ctx = early_ctx;
+	struct device *dev = &pdev->dev;
+	struct device_node *np = dev->of_node;
+
 	rockchip_clk_register_branches(ctx, rk3588_clk_branches,
 				       ARRAY_SIZE(rk3588_clk_branches));
 
-	rk3588_rst_init(np, reg_base);
+	rockchip_clk_finalize(ctx);
 
+	rk3588_rst_init(np, ctx->reg_base);
 	rockchip_register_restart_notifier(ctx, RK3588_GLB_SRST_FST, NULL);
 
+	/*
+	 * Re-add clock provider, so that the newly added clocks are also
+	 * re-parented and get their defaults configured.
+	 */
+	of_clk_del_provider(np);
 	rockchip_clk_of_add_provider(np, ctx);
+
+	return 0;
 }
 
-CLK_OF_DECLARE(rk3588_cru, "rockchip,rk3588-cru", rk3588_clk_init);
+static const struct of_device_id clk_rk3588_match_table[] = {
+	{
+		.compatible = "rockchip,rk3588-cru",
+	},
+	{ }
+};
+
+static struct platform_driver clk_rk3588_driver = {
+	.probe		= clk_rk3588_probe,
+	.driver		= {
+		.name	= "clk-rk3588",
+		.of_match_table = clk_rk3588_match_table,
+		.suppress_bind_attrs = true,
+	},
+};
+
+static int __init rockchip_clk_rk3588_drv_register(void)
+{
+	return platform_driver_register(&clk_rk3588_driver);
+}
+core_initcall(rockchip_clk_rk3588_drv_register);
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
