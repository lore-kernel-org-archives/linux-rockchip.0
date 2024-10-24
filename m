Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 161F2CE8E9E
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Oct 2024 18:18:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eZV8E5cOSzwFJZt+3v7svgzwm/md2ULhvNYrSC1yYHQ=; b=A3WEJy8fwcTkqB
	0AcUW2GjMlRB6FcXGQwo9ouChDK3OF1WCQZrtLnD5cAIfO2shFtOE7oLopeBYaZ9DPPJiQnoUp4Ej
	xDcUJGIsAjH4WInUGzT2n57K7rCbdKzEXhZ97CVt1RCcOfKCqvxUThu9C8pfa5fIUFfb39XncGG3m
	Zb6trwLq8JGcqhhp7yHifuA0Y6CnR/ZgpLmdDCBXjn0Vsd/zxXVGHytV27nR6zgKzAsL7t5Nf65W4
	TMPBVg+fmJ5xBzvi3h4CtsUhb/SsuV2w9rYW6yO2aU19+HTSru0mEeecyRjMUK0YWZPJiqtxyVSH/
	5+ITtbAo/HkCY+P2hZag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t42Py-00000001Raj-1QvJ;
	Thu, 24 Oct 2024 18:18:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t42Nt-00000001RMF-12dZ
	for linux-rockchip@bombadil.infradead.org;
	Thu, 24 Oct 2024 18:16:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=RTc7RLG2QrmU9JZDnv+Ka6XoM2EXH7m6OefF6JRYQW0=; b=q3bfc1+ESHXxQwfEhthbCQD1fn
	433GucVo4148YFxY0NwgjMbBXz3IAxG5M/oEtdQNCkfuF1h5N4STzbEw+j/2o2RY+ibDJsVFAkPoF
	98zH5ig+x6iosx9C6OvxpuSwQprSyoJ3E+a3pYTIrk4IDavumUyPeGkiZIQCCa+Pf3Pxwk+sSR1iA
	cTO6gEC51ivKv/HkPZd51ySaVxv1qx1MY3HKpDenoyI98Usr/VZFalSrbz3O7S7cZHcqAC3PQ7S5d
	3i2+4Pu/JCxzB4rY70wFEJVeVdlIwH77GtgEpo1S9q2/glTrad60FQb1mgwarUQfc+aIAEbzS5Z2w
	nPo/6MKg==;
Received: from bali.collaboradmins.com ([148.251.105.195])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t42No-00000008jLZ-2NPE
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Oct 2024 18:16:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1729793783;
	bh=wUT0+yFnWPdFQZMIBptV8R1fqWEFrymi0DPeVC2HFGk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=pgO/aGtt5ct0TnL8eGOXOA86qKkbtBrSy2b7O2rwRitCuYlhNBuZ3GeokWiI8oe/g
	 4JsN1G7DlpwAC8/pIp4lzM/m6FWg+nNIGL0z/MS+pOQeFfd7R7jDHO1ju/t+vxsgyK
	 8u7gGMmUvQJ+IN6waIVoV8Liy8fAjXTB+r39EYptR87K2rPq4beOUKLKtuWqB7keK9
	 CRu1UNFyQvV/+uKnPXSrwYsUgv5ievqKxDIE6kyX1lLzOMpSctYVNeyZ/Hpbzjlq4l
	 zxhWenzQza46tsa6U5yCiKmjJUhHg18VPN61UL+uZ9T77H1zDB3Wn2LtzfdtmSHZqB
	 ZgJdpOB9Z1D+g==
Received: from jupiter.universe (dyndsl-091-248-214-110.ewe-ip-backbone.de [91.248.214.110])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id EFE5A17E36BF;
	Thu, 24 Oct 2024 20:16:22 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id AAB104800F8; Thu, 24 Oct 2024 20:16:22 +0200 (CEST)
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
Subject: [PATCH v11 4/5] clk: rockchip: implement linked gate clock support
Date: Thu, 24 Oct 2024 20:15:31 +0200
Message-ID: <20241024181621.210509-5-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241024181621.210509-1-sebastian.reichel@collabora.com>
References: <20241024181621.210509-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241024_191628_770759_7D5795F6 
X-CRM114-Status: GOOD (  32.35  )
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

Recent Rockchip SoCs have a new hardware block called Native Interface
Unit (NIU), which gates clocks to devices behind them. These clock
gates will only have a running output clock when all of the following
conditions are met:

1. the parent clock is enabled
2. the enable bit is set correctly
3. the linked clock is enabled

To handle them this code registers them as a normal gate type clock,
which takes care of condition 1 + 2. The linked clock is handled by
using runtime PM clocks. Handling it via runtime PM requires setting
up a struct device for each of these clocks with a driver attached
to use the correct runtime PM operations. Thus the complete handling
of these clocks has been moved into its own driver.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/clk/rockchip/Makefile     |  1 +
 drivers/clk/rockchip/clk-rk3588.c | 23 +--------
 drivers/clk/rockchip/clk.c        | 52 +++++++++++++++++++
 drivers/clk/rockchip/clk.h        | 25 +++++++++
 drivers/clk/rockchip/gate-link.c  | 85 +++++++++++++++++++++++++++++++
 5 files changed, 165 insertions(+), 21 deletions(-)
 create mode 100644 drivers/clk/rockchip/gate-link.c

diff --git a/drivers/clk/rockchip/Makefile b/drivers/clk/rockchip/Makefile
index af2ade54a7ef..3fe7616f0ebe 100644
--- a/drivers/clk/rockchip/Makefile
+++ b/drivers/clk/rockchip/Makefile
@@ -13,6 +13,7 @@ clk-rockchip-y += clk-inverter.o
 clk-rockchip-y += clk-mmc-phase.o
 clk-rockchip-y += clk-muxgrf.o
 clk-rockchip-y += clk-ddr.o
+clk-rockchip-y += gate-link.o
 clk-rockchip-$(CONFIG_RESET_CONTROLLER) += softrst.o
 
 obj-$(CONFIG_CLK_PX30)          += clk-px30.o
diff --git a/drivers/clk/rockchip/clk-rk3588.c b/drivers/clk/rockchip/clk-rk3588.c
index 618bda0be5a4..d76ab27dd1b8 100644
--- a/drivers/clk/rockchip/clk-rk3588.c
+++ b/drivers/clk/rockchip/clk-rk3588.c
@@ -12,25 +12,6 @@
 #include <dt-bindings/clock/rockchip,rk3588-cru.h>
 #include "clk.h"
 
-/*
- * Recent Rockchip SoCs have a new hardware block called Native Interface
- * Unit (NIU), which gates clocks to devices behind them. These effectively
- * need two parent clocks.
- *
- * Downstream enables the linked clock via runtime PM whenever the gate is
- * enabled. This implementation uses separate clock nodes for each of the
- * linked gate clocks, which leaks parts of the clock tree into DT.
- *
- * The GATE_LINK macro instead takes the second parent via 'linkname', but
- * ignores the information. Once the clock framework is ready to handle it, the
- * information should be passed on here. But since these clocks are required to
- * access multiple relevant IP blocks, such as PCIe or USB, we mark all linked
- * clocks critical until a better solution is available. This will waste some
- * power, but avoids leaking implementation details into DT or hanging the
- * system.
- */
-#define GATE_LINK(_id, cname, pname, linkedclk, f, o, b, gf) \
-	GATE(_id, cname, pname, f, o, b, gf)
 #define RK3588_LINKED_CLK		CLK_IS_CRITICAL
 
 
@@ -2513,8 +2494,8 @@ static int clk_rk3588_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
 
-	rockchip_clk_register_branches(ctx, rk3588_clk_branches,
-				       ARRAY_SIZE(rk3588_clk_branches));
+	rockchip_clk_register_late_branches(dev, ctx, rk3588_clk_branches,
+					    ARRAY_SIZE(rk3588_clk_branches));
 
 	rockchip_clk_finalize(ctx);
 
diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index b87ca1e8c540..f0d76d62382c 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -19,6 +19,7 @@
 #include <linux/clk-provider.h>
 #include <linux/io.h>
 #include <linux/mfd/syscon.h>
+#include <linux/platform_device.h>
 #include <linux/regmap.h>
 #include <linux/reboot.h>
 
@@ -467,6 +468,29 @@ unsigned long rockchip_clk_find_max_clk_id(struct rockchip_clk_branch *list,
 }
 EXPORT_SYMBOL_GPL(rockchip_clk_find_max_clk_id);
 
+static struct platform_device *rockchip_clk_register_gate_link(
+		struct device *parent_dev,
+		struct rockchip_clk_provider *ctx,
+		struct rockchip_clk_branch *clkbr)
+{
+	struct rockchip_gate_link_platdata gate_link_pdata = {
+		.ctx = ctx,
+		.clkbr = clkbr,
+	};
+
+	struct platform_device_info pdevinfo = {
+		.parent = parent_dev,
+		.name = "rockchip-gate-link-clk",
+		.id = clkbr->id,
+		.fwnode = dev_fwnode(parent_dev),
+		.of_node_reused = true,
+		.data = &gate_link_pdata,
+		.size_data = sizeof(gate_link_pdata),
+	};
+
+	return platform_device_register_full(&pdevinfo);
+}
+
 void rockchip_clk_register_branches(struct rockchip_clk_provider *ctx,
 				    struct rockchip_clk_branch *list,
 				    unsigned int nr_clk)
@@ -592,6 +616,9 @@ void rockchip_clk_register_branches(struct rockchip_clk_provider *ctx,
 				list->div_width, list->div_flags,
 				ctx->reg_base, &ctx->lock);
 			break;
+		case branch_linked_gate:
+			/* must be registered late, fall-through for error message */
+			break;
 		}
 
 		/* none of the cases above matched */
@@ -612,6 +639,31 @@ void rockchip_clk_register_branches(struct rockchip_clk_provider *ctx,
 }
 EXPORT_SYMBOL_GPL(rockchip_clk_register_branches);
 
+void rockchip_clk_register_late_branches(struct device *dev,
+					 struct rockchip_clk_provider *ctx,
+					 struct rockchip_clk_branch *list,
+					 unsigned int nr_clk)
+{
+	unsigned int idx;
+
+	for (idx = 0; idx < nr_clk; idx++, list++) {
+		struct platform_device *pdev = NULL;
+
+		switch (list->branch_type) {
+		case branch_linked_gate:
+			pdev = rockchip_clk_register_gate_link(dev, ctx, list);
+			break;
+		default:
+			dev_err(dev, "unknown clock type %d\n", list->branch_type);
+			break;
+		}
+
+		if (!pdev)
+			dev_err(dev, "failed to register device for clock %s\n", list->name);
+	}
+}
+EXPORT_SYMBOL_GPL(rockchip_clk_register_late_branches);
+
 void rockchip_clk_register_armclk(struct rockchip_clk_provider *ctx,
 				  unsigned int lookup_id,
 				  const char *name, const char *const *parent_names,
diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
index d9e071ca9c5d..9b37d44b9e5d 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -570,6 +570,7 @@ enum rockchip_clk_branch_type {
 	branch_divider,
 	branch_fraction_divider,
 	branch_gate,
+	branch_linked_gate,
 	branch_mmc,
 	branch_inverter,
 	branch_factor,
@@ -597,6 +598,7 @@ struct rockchip_clk_branch {
 	int				gate_offset;
 	u8				gate_shift;
 	u8				gate_flags;
+	unsigned int			linked_clk_id;
 	struct rockchip_clk_branch	*child;
 };
 
@@ -895,6 +897,20 @@ struct rockchip_clk_branch {
 		.gate_flags	= gf,				\
 	}
 
+#define GATE_LINK(_id, cname, pname, linkedclk, f, o, b, gf)	\
+	{							\
+		.id		= _id,				\
+		.branch_type	= branch_linked_gate,		\
+		.name		= cname,			\
+		.parent_names	= (const char *[]){ pname },	\
+		.linked_clk_id	= linkedclk,			\
+		.num_parents	= 1,				\
+		.flags		= f,				\
+		.gate_offset	= o,				\
+		.gate_shift	= b,				\
+		.gate_flags	= gf,				\
+	}
+
 #define MMC(_id, cname, pname, offset, shift)			\
 	{							\
 		.id		= _id,				\
@@ -1034,6 +1050,11 @@ static inline void rockchip_clk_set_lookup(struct rockchip_clk_provider *ctx,
 	ctx->clk_data.clks[id] = clk;
 }
 
+struct rockchip_gate_link_platdata {
+	struct rockchip_clk_provider *ctx;
+	struct rockchip_clk_branch *clkbr;
+};
+
 struct rockchip_clk_provider *rockchip_clk_init(struct device_node *np,
 			void __iomem *base, unsigned long nr_clks);
 struct rockchip_clk_provider *rockchip_clk_init_early(struct device_node *np,
@@ -1046,6 +1067,10 @@ unsigned long rockchip_clk_find_max_clk_id(struct rockchip_clk_branch *list,
 void rockchip_clk_register_branches(struct rockchip_clk_provider *ctx,
 				    struct rockchip_clk_branch *list,
 				    unsigned int nr_clk);
+void rockchip_clk_register_late_branches(struct device *dev,
+					 struct rockchip_clk_provider *ctx,
+					 struct rockchip_clk_branch *list,
+					 unsigned int nr_clk);
 void rockchip_clk_register_plls(struct rockchip_clk_provider *ctx,
 				struct rockchip_pll_clock *pll_list,
 				unsigned int nr_pll, int grf_lock_offset);
diff --git a/drivers/clk/rockchip/gate-link.c b/drivers/clk/rockchip/gate-link.c
new file mode 100644
index 000000000000..cd0f7a2d30ab
--- /dev/null
+++ b/drivers/clk/rockchip/gate-link.c
@@ -0,0 +1,85 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (c) 2024 Collabora Ltd.
+ * Author: Sebastian Reichel <sebastian.reichel@collabora.com>
+ */
+
+#include <linux/clk.h>
+#include <linux/platform_device.h>
+#include <linux/pm_clock.h>
+#include <linux/pm_runtime.h>
+#include <linux/property.h>
+#include "clk.h"
+
+static int rk_clk_gate_link_register(struct device *dev,
+				     struct rockchip_clk_provider *ctx,
+				     struct rockchip_clk_branch *clkbr)
+{
+	unsigned long flags = clkbr->flags | CLK_SET_RATE_PARENT;
+	struct clk *clk;
+
+	clk = clk_register_gate(dev, clkbr->name, clkbr->parent_names[0],
+				flags, ctx->reg_base + clkbr->gate_offset,
+				clkbr->gate_shift, clkbr->gate_flags,
+				&ctx->lock);
+
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	rockchip_clk_set_lookup(ctx, clk, clkbr->id);
+	return 0;
+}
+
+static int rk_clk_gate_link_probe(struct platform_device *pdev)
+{
+	struct rockchip_gate_link_platdata *pdata;
+	struct device *dev = &pdev->dev;
+	struct clk *linked_clk;
+	int ret;
+
+	pdata = dev_get_platdata(dev);
+	if (!pdata)
+		return dev_err_probe(dev, -ENODEV, "missing platform data");
+
+	ret = devm_pm_runtime_enable(dev);
+	if (ret)
+		return ret;
+
+	ret = devm_pm_clk_create(dev);
+	if (ret)
+		return ret;
+
+	linked_clk = rockchip_clk_get_lookup(pdata->ctx, pdata->clkbr->linked_clk_id);
+	ret = pm_clk_add_clk(dev, linked_clk);
+	if (ret)
+		return ret;
+
+	ret = rk_clk_gate_link_register(dev, pdata->ctx, pdata->clkbr);
+	if (ret)
+		goto err;
+
+	return 0;
+
+err:
+	pm_clk_remove_clk(dev, linked_clk);
+	return ret;
+}
+
+static const struct dev_pm_ops rk_clk_gate_link_pm_ops = {
+	SET_RUNTIME_PM_OPS(pm_clk_suspend, pm_clk_resume, NULL)
+};
+
+static struct platform_driver rk_clk_gate_link_driver = {
+	.probe		= rk_clk_gate_link_probe,
+	.driver		= {
+		.name	= "rockchip-gate-link-clk",
+		.pm = &rk_clk_gate_link_pm_ops,
+		.suppress_bind_attrs = true,
+	},
+};
+
+static int __init rk_clk_gate_link_drv_register(void)
+{
+	return platform_driver_register(&rk_clk_gate_link_driver);
+}
+core_initcall(rk_clk_gate_link_drv_register);
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
