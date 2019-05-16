From: Elaine Zhang <zhangqing@rock-chips.com>
Subject: [PATCH v2 3/6] clk: rockchip: add a COMPOSITE_DIV_OFFSET clock-type
Date: Thu, 16 May 2019 15:28:53 +0800
Message-ID: <1557991736-13580-4-git-send-email-zhangqing@rock-chips.com>
References: <1557991736-13580-1-git-send-email-zhangqing@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1557991736-13580-1-git-send-email-zhangqing@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: mturquette@baylibre.com, sboyd@kernel.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, xxx@rock-chips.com, xf@rock-chips.com, huangtao@rock-chips.com, Finley Xiao <finley.xiao@rock-chips.com>, Elaine Zhang <zhangqing@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

From: Finley Xiao <finley.xiao@rock-chips.com>

The div offset of some clocks are different from their mux offset
and the COMPOSITE clock-type require that div and mux offset are
the same, so add a new COMPOSITE_DIV_OFFSET clock-type to handle that.

Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 drivers/clk/rockchip/clk.c |  9 ++++++---
 drivers/clk/rockchip/clk.h | 23 +++++++++++++++++++++++
 2 files changed, 29 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index 0256a99f06f3..0a8a694a41ab 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -46,7 +46,7 @@ static struct clk *rockchip_clk_register_branch(const char *name,
 		const char *const *parent_names, u8 num_parents,
 		void __iomem *base,
 		int muxdiv_offset, u8 mux_shift, u8 mux_width, u8 mux_flags,
-		u8 div_shift, u8 div_width, u8 div_flags,
+		int div_offset, u8 div_shift, u8 div_width, u8 div_flags,
 		struct clk_div_table *div_table, int gate_offset,
 		u8 gate_shift, u8 gate_flags, unsigned long flags,
 		spinlock_t *lock)
@@ -95,7 +95,10 @@ static struct clk *rockchip_clk_register_branch(const char *name,
 		}
 
 		div->flags = div_flags;
-		div->reg = base + muxdiv_offset;
+		if (div_offset)
+			div->reg = base + div_offset;
+		else
+			div->reg = base + muxdiv_offset;
 		div->shift = div_shift;
 		div->width = div_width;
 		div->lock = lock;
@@ -536,7 +539,7 @@ void __init rockchip_clk_register_branches(
 				ctx->reg_base, list->muxdiv_offset,
 				list->mux_shift,
 				list->mux_width, list->mux_flags,
-				list->div_shift, list->div_width,
+				list->div_offset, list->div_shift, list->div_width,
 				list->div_flags, list->div_table,
 				list->gate_offset, list->gate_shift,
 				list->gate_flags, flags, &ctx->lock);
diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
index 3c827ec0965c..20200a707611 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -407,6 +407,7 @@ struct rockchip_clk_branch {
 	u8				mux_shift;
 	u8				mux_width;
 	u8				mux_flags;
+	int				div_offset;
 	u8				div_shift;
 	u8				div_width;
 	u8				div_flags;
@@ -439,6 +440,28 @@ struct rockchip_clk_branch {
 		.gate_flags	= gf,				\
 	}
 
+#define COMPOSITE_DIV_OFFSET(_id, cname, pnames, f, mo, ms, mw,	\
+			     mf, do, ds, dw, df, go, gs, gf)	\
+	{							\
+		.id		= _id,				\
+		.branch_type	= branch_composite,		\
+		.name		= cname,			\
+		.parent_names	= pnames,			\
+		.num_parents	= ARRAY_SIZE(pnames),		\
+		.flags		= f,				\
+		.muxdiv_offset	= mo,				\
+		.mux_shift	= ms,				\
+		.mux_width	= mw,				\
+		.mux_flags	= mf,				\
+		.div_offset	= do,				\
+		.div_shift	= ds,				\
+		.div_width	= dw,				\
+		.div_flags	= df,				\
+		.gate_offset	= go,				\
+		.gate_shift	= gs,				\
+		.gate_flags	= gf,				\
+	}
+
 #define COMPOSITE_NOMUX(_id, cname, pname, f, mo, ds, dw, df,	\
 			go, gs, gf)				\
 	{							\
-- 
1.9.1
