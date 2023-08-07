Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 996DAEB64DD
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Aug 2023 07:00:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IZKHMRGVuyNW4WHRcgpc9pkMgKISjlltVg5w12Aogcc=; b=NdN+j2ftjxg9qe
	qjS5IuIlwIIWkAVEvEHTYYu3l34APlXq4vhlYQR9Cia6g32P1trcFgDiKpAkRJWgoWpORZUGDC2Fx
	OLEBkWDmag1JqjJlstxVggJkkTuGjOyt7B1ICWkNIVs+8+nb/o1M2QilN/oBACBgrLASKZrwp+yAk
	dTVVVk+klgQvoV1KKTXmbKtOwZB7oUtEsXlpl1I1k5ym0knQvv0XtAMWkL+B/1QZDovv/E6/FRPuN
	N61/FqZnMJ0Sm47xQgRrilCIIccOa9gaALq/Kuckng1oMiDwlRRrA8ARaH7hysEZYDf+a17DOvs12
	vKRq6vGKRXIqGw4qoazw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qSuEB-00GJQb-0M;
	Mon, 07 Aug 2023 07:00:31 +0000
Received: from mail-m12739.qiye.163.com ([115.236.127.39])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qSuDz-00GJI7-0s;
	Mon, 07 Aug 2023 07:00:23 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m12739.qiye.163.com (Hmail) with ESMTPA id 64B674A01EE;
	Mon,  7 Aug 2023 14:59:48 +0800 (CST)
From: Elaine Zhang <zhangqing@rock-chips.com>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	kever.yang@rock-chips.com,
	zhangqing@rock-chips.com,
	heiko@sntech.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	huangtao@rock-chips.com
Subject: [RESEND PATCH v3 2/4] clk: rockchip: add support for gate link
Date: Mon,  7 Aug 2023 14:59:40 +0800
Message-Id: <20230807065942.9937-3-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230807065942.9937-1-zhangqing@rock-chips.com>
References: <20230807065942.9937-1-zhangqing@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQh4dH1ZCQkofHUlLSh4ZQh1VEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5JVUpLS1VKQl
	kG
X-HM-Tid: 0a89cecb795cb212kuuu64b674a01ee
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NSI6LDo*Az1KLCEJSTQWCisx
	AykwChdVSlVKTUJKSEJKTkNCSUNIVTMWGhIXVQETGhUcChIVHDsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUNPTE83Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230807_000019_486311_2D2E1A26 
X-CRM114-Status: GOOD (  18.30  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Recent Rockchip SoCs have a new hardware block called Native Interface
Unit (NIU), which gates clocks to devices behind them. These effectively
need two parent clocks.
Use GATE_LINK to handle this.

Reported-by: kernel test robot <lkp@intel.com>
Closes:https://lore.kernel.org/oe-kbuild-all/202308040120.7KQxScIs-lkp@intel.com/
Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 drivers/clk/rockchip/Makefile        |   1 +
 drivers/clk/rockchip/clk-gate-link.c | 120 +++++++++++++++++++++++++++
 drivers/clk/rockchip/clk.c           |   7 ++
 drivers/clk/rockchip/clk.h           |  22 +++++
 4 files changed, 150 insertions(+)
 create mode 100644 drivers/clk/rockchip/clk-gate-link.c

diff --git a/drivers/clk/rockchip/Makefile b/drivers/clk/rockchip/Makefile
index 36894f6a7022..87cc39d54f72 100644
--- a/drivers/clk/rockchip/Makefile
+++ b/drivers/clk/rockchip/Makefile
@@ -13,6 +13,7 @@ clk-rockchip-y += clk-inverter.o
 clk-rockchip-y += clk-mmc-phase.o
 clk-rockchip-y += clk-muxgrf.o
 clk-rockchip-y += clk-ddr.o
+clk-rockchip-y += clk-gate-link.o
 clk-rockchip-$(CONFIG_RESET_CONTROLLER) += softrst.o
 
 obj-$(CONFIG_CLK_PX30)          += clk-px30.o
diff --git a/drivers/clk/rockchip/clk-gate-link.c b/drivers/clk/rockchip/clk-gate-link.c
new file mode 100644
index 000000000000..d4bbef4a067b
--- /dev/null
+++ b/drivers/clk/rockchip/clk-gate-link.c
@@ -0,0 +1,120 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2023 Fuzhou Rockchip Electronics Co., Ltd
+ */
+#include <linux/clk.h>
+#include <linux/clk-provider.h>
+#include <linux/module.h>
+#include <linux/slab.h>
+#include <linux/io.h>
+#include <linux/err.h>
+#include <linux/string.h>
+#include "clk.h"
+
+/**
+ * struct clk_gate_link - gating link clock
+ *
+ * @gate: handle clk gate
+ * @link: links clk
+ */
+struct clk_gate_link {
+	struct clk_gate gate;
+	struct clk	*link;
+};
+
+#define to_clk_gate_link(_gate) container_of(_gate, struct clk_gate_link, gate)
+
+static int clk_gate_link_enable(struct clk_hw *hw)
+{
+	struct clk_gate_link *gate = to_clk_gate_link(to_clk_gate(hw));
+
+	clk_gate_endisable(hw, 1);
+	clk_enable(gate->link);
+
+	return 0;
+}
+
+static void clk_gate_link_disable(struct clk_hw *hw)
+{
+	struct clk_gate_link *gate = to_clk_gate_link(to_clk_gate(hw));
+
+	clk_gate_endisable(hw, 0);
+	clk_disable(gate->link);
+}
+
+static int clk_gate_link_is_enabled(struct clk_hw *hw)
+{
+	return clk_gate_is_enabled(hw);
+}
+
+static int clk_gate_link_prepare(struct clk_hw *hw)
+{
+	struct clk_gate_link *gate = to_clk_gate_link(to_clk_gate(hw));
+
+	return clk_prepare(gate->link);
+}
+
+static void clk_gate_link_unprepare(struct clk_hw *hw)
+{
+	struct clk_gate_link *gate = to_clk_gate_link(to_clk_gate(hw));
+
+	clk_unprepare(gate->link);
+}
+
+const struct clk_ops clk_gate_link_ops = {
+	.prepare = clk_gate_link_prepare,
+	.unprepare = clk_gate_link_unprepare,
+	.enable = clk_gate_link_enable,
+	.disable = clk_gate_link_disable,
+	.is_enabled = clk_gate_link_is_enabled,
+};
+
+struct clk *rockchip_clk_register_gate_link(struct rockchip_clk_provider *ctx,
+					    const char *name, const char *parent_name,
+					    unsigned int link_id, u8 flags,
+					    void __iomem *gate_offset, u8 gate_shift,
+					    u8 gate_flags, spinlock_t *lock)
+{
+	struct clk_gate_link *gate_link;
+	struct clk_init_data init = {};
+	struct clk **clks;
+	struct clk *clk_link;
+
+	if (gate_flags & CLK_GATE_HIWORD_MASK) {
+		if (gate_shift > 15) {
+			pr_err("gate bit exceeds LOWORD field\n");
+			return ERR_PTR(-ENOMEM);
+		}
+	}
+
+	/* allocate the gate */
+	gate_link = kzalloc(sizeof(*gate_link), GFP_KERNEL);
+	if (!gate_link)
+		return ERR_PTR(-ENOMEM);
+
+	clks = ctx->clk_data.clks;
+	gate_link->link = clks[link_id];
+
+	init.name = name;
+	init.ops = &clk_gate_link_ops;
+	init.flags = flags;
+	init.parent_names = parent_name ? &parent_name : NULL;
+	init.num_parents = 1;
+
+	/* struct clk_gate assignments */
+	gate_link->gate.reg = gate_offset;
+	gate_link->gate.bit_idx = gate_shift;
+	gate_link->gate.flags = gate_flags;
+	gate_link->gate.lock = lock;
+	gate_link->gate.hw.init = &init;
+
+	clk_link = clk_register(NULL, &gate_link->gate.hw);
+	if (IS_ERR(clk_link)) {
+		kfree(gate_link);
+		pr_err("%s clk_register field\n", name);
+		return ERR_CAST(clk_link);
+	}
+
+	return clk_link;
+}
+EXPORT_SYMBOL_GPL(rockchip_clk_register_gate_link);
diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index 4059d9365ae6..d981ef6c5487 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -509,6 +509,13 @@ void rockchip_clk_register_branches(struct rockchip_clk_provider *ctx,
 				ctx->reg_base + list->gate_offset,
 				list->gate_shift, list->gate_flags, &ctx->lock);
 			break;
+
+		case branch_gate_link:
+			clk = rockchip_clk_register_gate_link(ctx, list->name,
+				list->parent_names[0], list->link_id, flags,
+				ctx->reg_base + list->gate_offset,
+				list->gate_shift, list->gate_flags, &ctx->lock);
+			break;
 		case branch_composite:
 			clk = rockchip_clk_register_branch(list->name,
 				list->parent_names, list->num_parents,
diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
index 758ebaf2236b..b49e3cede33a 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -517,6 +517,7 @@ enum rockchip_clk_branch_type {
 	branch_divider,
 	branch_fraction_divider,
 	branch_gate,
+	branch_gate_link,
 	branch_mmc,
 	branch_inverter,
 	branch_factor,
@@ -529,6 +530,7 @@ struct rockchip_clk_branch {
 	enum rockchip_clk_branch_type	branch_type;
 	const char			*name;
 	const char			*const *parent_names;
+	unsigned int			link_id;
 	u8				num_parents;
 	unsigned long			flags;
 	int				muxdiv_offset;
@@ -842,6 +844,20 @@ struct rockchip_clk_branch {
 		.gate_flags	= gf,				\
 	}
 
+#define GATE_LINK(_id, cname, pname, _linkid, f, o, b, gf) \
+	{							\
+		.id		= _id,				\
+		.branch_type	= branch_gate_link,		\
+		.name		= cname,			\
+		.parent_names	= (const char *[]){ pname },	\
+		.num_parents	= 1,				\
+		.link_id	= _linkid,			\
+		.flags		= f,				\
+		.gate_offset	= o,				\
+		.gate_shift	= b,				\
+		.gate_flags	= gf,				\
+	}
+
 #define MMC(_id, cname, pname, offset, shift)			\
 	{							\
 		.id		= _id,				\
@@ -1002,6 +1018,12 @@ struct clk *rockchip_clk_register_halfdiv(const char *name,
 					  unsigned long flags,
 					  spinlock_t *lock);
 
+struct clk *rockchip_clk_register_gate_link(struct rockchip_clk_provider *ctx,
+					    const char *name, const char *parent_name,
+					    unsigned int link_id, u8 flags,
+					    void __iomem *gate_offset, u8 gate_shift,
+					    u8 gate_flags, spinlock_t *lock);
+
 #ifdef CONFIG_RESET_CONTROLLER
 void rockchip_register_softrst_lut(struct device_node *np,
 				   const int *lookup_table,
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
