From: Elaine Zhang <zhangqing@rock-chips.com>
Subject: [PATCH v4 3/5] clk: rockchip: add a clock-type for muxes based in the pmugrf
Date: Wed,  4 Dec 2019 16:18:57 +0800
Message-ID: <20191204081859.19454-4-zhangqing@rock-chips.com>
References: <20191204081859.19454-1-zhangqing@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191204081859.19454-1-zhangqing@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: mturquette@baylibre.com, sboyd@kernel.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, xxx@rock-chips.com, xf@rock-chips.com, huangtao@rock-chips.com, Elaine Zhang <zhangqing@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Rockchip socs often have some tiny number of muxes not controlled from
the core clock controller but through bits set in the pmugrf.
Use MUXPMUGRF() to cover this special clock-type.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 drivers/clk/rockchip/clk.c |  9 +++++++++
 drivers/clk/rockchip/clk.h | 17 +++++++++++++++++
 2 files changed, 26 insertions(+)

diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index 8f77c3f9fab7..4f238f2851ac 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -407,6 +407,8 @@ struct rockchip_clk_provider * __init rockchip_clk_init(struct device_node *np,
 
 	ctx->grf = syscon_regmap_lookup_by_phandle(ctx->cru_node,
 						   "rockchip,grf");
+	ctx->pmugrf = syscon_regmap_lookup_by_phandle(ctx->cru_node,
+						   "rockchip,pmugrf");
 
 	return ctx;
 
@@ -482,6 +484,13 @@ void __init rockchip_clk_register_branches(
 				list->mux_shift, list->mux_width,
 				list->mux_flags);
 			break;
+		case branch_muxpmugrf:
+			clk = rockchip_clk_register_muxgrf(list->name,
+				list->parent_names, list->num_parents,
+				flags, ctx->pmugrf, list->muxdiv_offset,
+				list->mux_shift, list->mux_width,
+				list->mux_flags);
+			break;
 		case branch_divider:
 			if (list->div_table)
 				clk = clk_register_divider_table(NULL,
diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
index 0d401ce09a54..ae059b7744f9 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -238,6 +238,7 @@ struct rockchip_clk_provider {
 	struct clk_onecell_data clk_data;
 	struct device_node *cru_node;
 	struct regmap *grf;
+	struct regmap *pmugrf;
 	spinlock_t lock;
 };
 
@@ -390,6 +391,7 @@ enum rockchip_clk_branch_type {
 	branch_composite,
 	branch_mux,
 	branch_muxgrf,
+	branch_muxpmugrf,
 	branch_divider,
 	branch_fraction_divider,
 	branch_gate,
@@ -662,6 +664,21 @@ struct rockchip_clk_branch {
 		.gate_offset	= -1,				\
 	}
 
+#define MUXPMUGRF(_id, cname, pnames, f, o, s, w, mf)		\
+	{							\
+		.id		= _id,				\
+		.branch_type	= branch_muxpmugrf,		\
+		.name		= cname,			\
+		.parent_names	= pnames,			\
+		.num_parents	= ARRAY_SIZE(pnames),		\
+		.flags		= f,				\
+		.muxdiv_offset	= o,				\
+		.mux_shift	= s,				\
+		.mux_width	= w,				\
+		.mux_flags	= mf,				\
+		.gate_offset	= -1,				\
+	}
+
 #define DIV(_id, cname, pname, f, o, s, w, df)			\
 	{							\
 		.id		= _id,				\
-- 
2.17.1
