Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5ED30C76196
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Mar 2023 16:31:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rqLU7vZwMzcXmzko5MbNs+iZxkLHwID3pQp3JsbY0gE=; b=dTFvXSuPmbw8Vm
	r/H4OM+ApObW5tR0/oYjgVLpPxaIPYAzBNwh/fq7F4P6GcqT6Gf+0tF8rbQ0tbHNumNJeJvSPS1R9
	DsZ22dhdgdkZtkMII93VIxIrtWm9tAVwEF0VJ5DSkogqkr9Ry5x0YhaT6LTYPpqavUHVHA/UHDlRb
	5TONSukY2OAuEjGtOoQyijBL24ltraldLEkCJp2RIwqEnL9U3fbm/xnlIcB/1vlMY2p+LCOljRqcD
	ECChlm+0lUJmooQTziLvIpvBuAadmaI+5ybCWKgE0QtwEp6R4XZLPRTsHf2HFxfay4YGvgvrVSqAM
	tcYMsZ41P1QPbnTM49SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piHex-00873K-2r;
	Fri, 31 Mar 2023 16:31:27 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piHeg-0086uG-1o;
	Fri, 31 Mar 2023 16:31:14 +0000
Received: from jupiter.universe (dyndsl-091-248-213-136.ewe-ip-backbone.de [91.248.213.136])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 01B9D6603196;
	Fri, 31 Mar 2023 17:31:08 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680280268;
	bh=pkfuM6Rnn3TuDfL3bWotBSugc5TTFUmOiPf9WrErtIw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=WBq67bhLzN+1dsiIX0z0RJG7HGys4MES0f3q799B/XkptgeXtxTPyj9Cf9yulH6bw
	 pknM7kgar9nktAwTZb0l7aCFMrOZVdA4FZVr9Da/NALJt7qWIQHcOnyGjN72MyKySN
	 HDNSIur0BjwKquZJ0hGWXu/e7BrRPYJdyWjAOIpiqPua5Ro/cAyBUqIwdeWGFeuF/X
	 l7Cgld9fqoW0+CKwe+Vr6rrTSFi70oQnPaIA7BhFbdGm7Sainwapd2Vm7RdGE2ZWzA
	 A096EHqWTcXks8JS4/LSpFUVS9MNwfNBsAXfsYsEDyVcKddYeHKqoKqe/xPpiP6WGW
	 ceKbkb0bD3B3g==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 599A94807E2; Fri, 31 Mar 2023 18:31:06 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Peter Geis <pgwipeout@gmail.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCHv1 1/2] clk: rockchip: rk3588: make gate linked clocks ignore unused
Date: Fri, 31 Mar 2023 18:30:57 +0200
Message-Id: <20230331163058.5688-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230331163058.5688-1-sebastian.reichel@collabora.com>
References: <20230331163058.5688-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_093110_903810_E9AC2487 
X-CRM114-Status: GOOD (  23.95  )
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

RK3588 has a couple of hardware blocks called Native Interface Unit
(NIU) that gate the clocks to devices behind them. Effectively this
means that some clocks require two parent clocks being enabled.
Downstream implemented this by using a separate clock driver
("clk-link") for them, which enables the second clock using PM
framework.

In the upstream kernel we are currently missing support for the second
parent. The information about it is in the GATE_LINK() macro as
linkname, but that is not used. Thus the second parent clock is not
properly enabled. So far this did not really matter, since these clocks
are mostly required for the more advanced IP blocks, that are not yet
supported upstream. As this is about to change we need a fix. There
are three options available:

1. Properly implement support for having two parent clocks in the
   clock framework.
2. Mark the affected clocks CLK_IGNORE_UNUSED, so that they are not
   disabled. This wastes some power, but keeps the hack contained
   within the clock driver. Going from this to the first solution
   is easy once that has been implemented.
3. Enabling the extra clock in the consumer driver. This leaks some
   implementation details into DT.

This patch implements the second option as an intermediate solution
until the first one is available. I used an alias for CLK_IS_CRITICAL,
so that it's easy to see which clocks are not really critical once
the clock framework supports a better way to implement this.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/clk/rockchip/clk-rk3588.c | 42 +++++++++++++++++++------------
 1 file changed, 26 insertions(+), 16 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3588.c b/drivers/clk/rockchip/clk-rk3588.c
index b7ce3fbd6fa6..6994165e0395 100644
--- a/drivers/clk/rockchip/clk-rk3588.c
+++ b/drivers/clk/rockchip/clk-rk3588.c
@@ -13,15 +13,25 @@
 #include "clk.h"
 
 /*
- * GATE with additional linked clock. Downstream enables the linked clock
- * (via runtime PM) whenever the gate is enabled. The downstream implementation
- * does this via separate clock nodes for each of the linked gate clocks,
- * which leaks parts of the clock tree into DT. It is unclear why this is
- * actually needed and things work without it for simple use cases. Thus
- * the linked clock is ignored for now.
+ * Recent Rockchip SoCs have a new hardware block called Native Interface
+ * Unit (NIU), which gates clocks to devices behind them. These effectively
+ * need two parent clocks.
+ *
+ * Downstream enables the linked clock via runtime PM whenever the gate is
+ * enabled. This implementation uses separate clock nodes for each of the
+ * linked gate clocks, which leaks parts of the clock tree into DT.
+ *
+ * The GATE_LINK macro instead takes the second parent via 'linkname', but
+ * ignores the information. Once the clock framework is ready to handle it, the
+ * information should be passed on here. But since these clocks are required to
+ * access multiple relevant IP blocks, such as PCIe or USB, we mark all linked
+ * clocks critical until a better solution is available. This will waste some
+ * power, but avoids leaking implementation details into DT or hanging the
+ * system.
  */
 #define GATE_LINK(_id, cname, pname, linkname, f, o, b, gf) \
 	GATE(_id, cname, pname, f, o, b, gf)
+#define RK3588_LINKED_CLK		CLK_IS_CRITICAL
 
 
 #define RK3588_GRF_SOC_STATUS0		0x600
@@ -1446,7 +1456,7 @@ static struct rockchip_clk_branch rk3588_clk_branches[] __initdata = {
 	COMPOSITE_NODIV(HCLK_NVM_ROOT,  "hclk_nvm_root", mux_200m_100m_50m_24m_p, 0,
 			RK3588_CLKSEL_CON(77), 0, 2, MFLAGS,
 			RK3588_CLKGATE_CON(31), 0, GFLAGS),
-	COMPOSITE(ACLK_NVM_ROOT, "aclk_nvm_root", gpll_cpll_p, 0,
+	COMPOSITE(ACLK_NVM_ROOT, "aclk_nvm_root", gpll_cpll_p, RK3588_LINKED_CLK,
 			RK3588_CLKSEL_CON(77), 7, 1, MFLAGS, 2, 5, DFLAGS,
 			RK3588_CLKGATE_CON(31), 1, GFLAGS),
 	GATE(ACLK_EMMC, "aclk_emmc", "aclk_nvm_root", 0,
@@ -1675,13 +1685,13 @@ static struct rockchip_clk_branch rk3588_clk_branches[] __initdata = {
 			RK3588_CLKGATE_CON(42), 9, GFLAGS),
 
 	/* vdpu */
-	COMPOSITE(ACLK_VDPU_ROOT, "aclk_vdpu_root", gpll_cpll_aupll_p, 0,
+	COMPOSITE(ACLK_VDPU_ROOT, "aclk_vdpu_root", gpll_cpll_aupll_p, RK3588_LINKED_CLK,
 			RK3588_CLKSEL_CON(98), 5, 2, MFLAGS, 0, 5, DFLAGS,
 			RK3588_CLKGATE_CON(44), 0, GFLAGS),
 	COMPOSITE_NODIV(ACLK_VDPU_LOW_ROOT, "aclk_vdpu_low_root", mux_400m_200m_100m_24m_p, 0,
 			RK3588_CLKSEL_CON(98), 7, 2, MFLAGS,
 			RK3588_CLKGATE_CON(44), 1, GFLAGS),
-	COMPOSITE_NODIV(HCLK_VDPU_ROOT, "hclk_vdpu_root", mux_200m_100m_50m_24m_p, 0,
+	COMPOSITE_NODIV(HCLK_VDPU_ROOT, "hclk_vdpu_root", mux_200m_100m_50m_24m_p, RK3588_LINKED_CLK,
 			RK3588_CLKSEL_CON(98), 9, 2, MFLAGS,
 			RK3588_CLKGATE_CON(44), 2, GFLAGS),
 	COMPOSITE(ACLK_JPEG_DECODER_ROOT, "aclk_jpeg_decoder_root", gpll_cpll_aupll_spll_p, 0,
@@ -1732,9 +1742,9 @@ static struct rockchip_clk_branch rk3588_clk_branches[] __initdata = {
 	COMPOSITE(ACLK_RKVENC0_ROOT, "aclk_rkvenc0_root", gpll_cpll_npll_p, 0,
 			RK3588_CLKSEL_CON(102), 7, 2, MFLAGS, 2, 5, DFLAGS,
 			RK3588_CLKGATE_CON(47), 1, GFLAGS),
-	GATE(HCLK_RKVENC0, "hclk_rkvenc0", "hclk_rkvenc0_root", 0,
+	GATE(HCLK_RKVENC0, "hclk_rkvenc0", "hclk_rkvenc0_root", RK3588_LINKED_CLK,
 			RK3588_CLKGATE_CON(47), 4, GFLAGS),
-	GATE(ACLK_RKVENC0, "aclk_rkvenc0", "aclk_rkvenc0_root", 0,
+	GATE(ACLK_RKVENC0, "aclk_rkvenc0", "aclk_rkvenc0_root", RK3588_LINKED_CLK,
 			RK3588_CLKGATE_CON(47), 5, GFLAGS),
 	COMPOSITE(CLK_RKVENC0_CORE, "clk_rkvenc0_core", gpll_cpll_aupll_npll_p, 0,
 			RK3588_CLKSEL_CON(102), 14, 2, MFLAGS, 9, 5, DFLAGS,
@@ -1744,10 +1754,10 @@ static struct rockchip_clk_branch rk3588_clk_branches[] __initdata = {
 			RK3588_CLKGATE_CON(48), 6, GFLAGS),
 
 	/* vi */
-	COMPOSITE(ACLK_VI_ROOT, "aclk_vi_root", gpll_cpll_npll_aupll_spll_p, 0,
+	COMPOSITE(ACLK_VI_ROOT, "aclk_vi_root", gpll_cpll_npll_aupll_spll_p, RK3588_LINKED_CLK,
 			RK3588_CLKSEL_CON(106), 5, 3, MFLAGS, 0, 5, DFLAGS,
 			RK3588_CLKGATE_CON(49), 0, GFLAGS),
-	COMPOSITE_NODIV(HCLK_VI_ROOT, "hclk_vi_root", mux_200m_100m_50m_24m_p, 0,
+	COMPOSITE_NODIV(HCLK_VI_ROOT, "hclk_vi_root", mux_200m_100m_50m_24m_p, RK3588_LINKED_CLK,
 			RK3588_CLKSEL_CON(106), 8, 2, MFLAGS,
 			RK3588_CLKGATE_CON(49), 1, GFLAGS),
 	COMPOSITE_NODIV(PCLK_VI_ROOT, "pclk_vi_root", mux_100m_50m_24m_p, 0,
@@ -1919,10 +1929,10 @@ static struct rockchip_clk_branch rk3588_clk_branches[] __initdata = {
 	COMPOSITE(ACLK_VOP_ROOT, "aclk_vop_root", gpll_cpll_dmyaupll_npll_spll_p, 0,
 			RK3588_CLKSEL_CON(110), 5, 3, MFLAGS, 0, 5, DFLAGS,
 			RK3588_CLKGATE_CON(52), 0, GFLAGS),
-	COMPOSITE_NODIV(ACLK_VOP_LOW_ROOT, "aclk_vop_low_root", mux_400m_200m_100m_24m_p, 0,
+	COMPOSITE_NODIV(ACLK_VOP_LOW_ROOT, "aclk_vop_low_root", mux_400m_200m_100m_24m_p, RK3588_LINKED_CLK,
 			RK3588_CLKSEL_CON(110), 8, 2, MFLAGS,
 			RK3588_CLKGATE_CON(52), 1, GFLAGS),
-	COMPOSITE_NODIV(HCLK_VOP_ROOT, "hclk_vop_root", mux_200m_100m_50m_24m_p, 0,
+	COMPOSITE_NODIV(HCLK_VOP_ROOT, "hclk_vop_root", mux_200m_100m_50m_24m_p, RK3588_LINKED_CLK,
 			RK3588_CLKSEL_CON(110), 10, 2, MFLAGS,
 			RK3588_CLKGATE_CON(52), 2, GFLAGS),
 	COMPOSITE_NODIV(PCLK_VOP_ROOT, "pclk_vop_root", mux_100m_50m_24m_p, 0,
@@ -2425,7 +2435,7 @@ static struct rockchip_clk_branch rk3588_clk_branches[] __initdata = {
 
 	GATE_LINK(ACLK_ISP1_PRE, "aclk_isp1_pre", "aclk_isp1_root", "aclk_vi_root", 0, RK3588_CLKGATE_CON(26), 6, GFLAGS),
 	GATE_LINK(HCLK_ISP1_PRE, "hclk_isp1_pre", "hclk_isp1_root", "hclk_vi_root", 0, RK3588_CLKGATE_CON(26), 8, GFLAGS),
-	GATE_LINK(HCLK_NVM, "hclk_nvm", "hclk_nvm_root", "aclk_nvm_root", 0, RK3588_CLKGATE_CON(31), 2, GFLAGS),
+	GATE_LINK(HCLK_NVM, "hclk_nvm", "hclk_nvm_root", "aclk_nvm_root", RK3588_LINKED_CLK, RK3588_CLKGATE_CON(31), 2, GFLAGS),
 	GATE_LINK(ACLK_USB, "aclk_usb", "aclk_usb_root", "aclk_vo1usb_top_root", 0, RK3588_CLKGATE_CON(42), 2, GFLAGS),
 	GATE_LINK(HCLK_USB, "hclk_usb", "hclk_usb_root", "hclk_vo1usb_top_root", 0, RK3588_CLKGATE_CON(42), 3, GFLAGS),
 	GATE_LINK(ACLK_JPEG_DECODER_PRE, "aclk_jpeg_decoder_pre", "aclk_jpeg_decoder_root", "aclk_vdpu_root", 0, RK3588_CLKGATE_CON(44), 7, GFLAGS),
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
