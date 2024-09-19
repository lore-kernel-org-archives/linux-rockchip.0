Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63B81CE8D62
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Sep 2024 09:12:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hf16sSeqwDhs0JA+5H1WzX3RVqS8pNh8VKVKA7YkPO0=; b=wUfaTKZjsGhqUh
	Iwoonk4PbHntgIVp5QKsRY9Tm9bI0u3bVglEtY6YFAUVtORZzt74ZAjgJ1mne+ygEaqUB0Y3NSq2S
	nVTQcwcYyvEzdvePxL34H+06BvSwXfOsrILMHt2EvN+Iczg+uf1tpJpA3DUekElXqdiEqAmayWLl6
	3KQTuVbDogQlWIeu80q/zPz0YfURLLu+0mh6K04LbfiZdOhoDEltNydv7zS0BCovggPDyNNmaEJ+d
	XETGipSNQQ0SkislMh6m1VNvMtcLMUAuL+S9no5xSVjLm+0LuuwfsWtPlpL0/xL9s5kPb7omNXSYf
	tRKkbKxhka0zR2HNUAaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1srDCg-00000009sbq-12lv;
	Thu, 19 Sep 2024 09:11:58 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1srDCa-00000009sYQ-2gZy
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Sep 2024 09:11:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1726737107;
	bh=z1fpr6fp/TzEvmVPJkr51FgwKdkS776OPIBDPpVIdow=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=C3sqEKNLbU4V94mIG2aa/Med8YT/FxsWuslthNZ5turWW38G/dz4GudPZAQ9GrFNk
	 bOB3qqrOchGjcZdk6OIFC/yYU1hQnCB3+VfFBEH7RlcMvj/dwUEWwpMakHQ0UpZh41
	 9Q+xCHjmhw+2lFgfFUXsMVdSFSIb0gnzii/tXWqbaaepzfovCtAPxoJ8u/TM9QqKcf
	 IAZ7QSpyRz9FvH20cgUu7PaKMVQgjATvMmfP7WzL70lQPqv9GscYV0IQpCYti1FkIM
	 D6RoN5tbCzhkMzmAqJKpUeYkKIFFnkebPSsMcrWt8NppDzTPnaYfN0YwFt7tpO4XgP
	 LveUojnLguJnA==
Received: from jupiter.universe (dyndsl-091-248-208-160.ewe-ip-backbone.de [91.248.208.160])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id A96E417E1097;
	Thu, 19 Sep 2024 11:11:47 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 28E34480088; Thu, 19 Sep 2024 11:11:47 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	linux-clk@vger.kernel.org
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
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
Subject: [PATCH v11 5/5] clk: rockchip: rk3588: drop RK3588_LINKED_CLK
Date: Thu, 19 Sep 2024 11:09:48 +0200
Message-ID: <20240919091129.83500-6-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240919091129.83500-1-sebastian.reichel@collabora.com>
References: <20240919091129.83500-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240919_021153_059435_AC9BF2B7 
X-CRM114-Status: GOOD (  12.75  )
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

With the proper GATE_LINK support, we no longer need to keep the
linked clocks always on. Thus it's time to drop the CLK_IS_CRITICAL
flag for them.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/clk/rockchip/clk-rk3588.c | 27 ++++++++++++---------------
 1 file changed, 12 insertions(+), 15 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3588.c b/drivers/clk/rockchip/clk-rk3588.c
index 4d85ae615e15..70d0873a761f 100644
--- a/drivers/clk/rockchip/clk-rk3588.c
+++ b/drivers/clk/rockchip/clk-rk3588.c
@@ -12,9 +12,6 @@
 #include <dt-bindings/clock/rockchip,rk3588-cru.h>
 #include "clk.h"
 
-#define RK3588_LINKED_CLK		CLK_IS_CRITICAL
-
-
 #define RK3588_GRF_SOC_STATUS0		0x600
 #define RK3588_PHYREF_ALT_GATE		0xc38
 
@@ -1439,7 +1436,7 @@ static struct rockchip_clk_branch rk3588_early_clk_branches[] __initdata = {
 	COMPOSITE_NODIV(HCLK_NVM_ROOT,  "hclk_nvm_root", mux_200m_100m_50m_24m_p, 0,
 			RK3588_CLKSEL_CON(77), 0, 2, MFLAGS,
 			RK3588_CLKGATE_CON(31), 0, GFLAGS),
-	COMPOSITE(ACLK_NVM_ROOT, "aclk_nvm_root", gpll_cpll_p, RK3588_LINKED_CLK,
+	COMPOSITE(ACLK_NVM_ROOT, "aclk_nvm_root", gpll_cpll_p, 0,
 			RK3588_CLKSEL_CON(77), 7, 1, MFLAGS, 2, 5, DFLAGS,
 			RK3588_CLKGATE_CON(31), 1, GFLAGS),
 	GATE(ACLK_EMMC, "aclk_emmc", "aclk_nvm_root", 0,
@@ -1668,13 +1665,13 @@ static struct rockchip_clk_branch rk3588_early_clk_branches[] __initdata = {
 			RK3588_CLKGATE_CON(42), 9, GFLAGS),
 
 	/* vdpu */
-	COMPOSITE(ACLK_VDPU_ROOT, "aclk_vdpu_root", gpll_cpll_aupll_p, RK3588_LINKED_CLK,
+	COMPOSITE(ACLK_VDPU_ROOT, "aclk_vdpu_root", gpll_cpll_aupll_p, 0,
 			RK3588_CLKSEL_CON(98), 5, 2, MFLAGS, 0, 5, DFLAGS,
 			RK3588_CLKGATE_CON(44), 0, GFLAGS),
 	COMPOSITE_NODIV(ACLK_VDPU_LOW_ROOT, "aclk_vdpu_low_root", mux_400m_200m_100m_24m_p, 0,
 			RK3588_CLKSEL_CON(98), 7, 2, MFLAGS,
 			RK3588_CLKGATE_CON(44), 1, GFLAGS),
-	COMPOSITE_NODIV(HCLK_VDPU_ROOT, "hclk_vdpu_root", mux_200m_100m_50m_24m_p, RK3588_LINKED_CLK,
+	COMPOSITE_NODIV(HCLK_VDPU_ROOT, "hclk_vdpu_root", mux_200m_100m_50m_24m_p, 0,
 			RK3588_CLKSEL_CON(98), 9, 2, MFLAGS,
 			RK3588_CLKGATE_CON(44), 2, GFLAGS),
 	COMPOSITE(ACLK_JPEG_DECODER_ROOT, "aclk_jpeg_decoder_root", gpll_cpll_aupll_spll_p, 0,
@@ -1725,9 +1722,9 @@ static struct rockchip_clk_branch rk3588_early_clk_branches[] __initdata = {
 	COMPOSITE(ACLK_RKVENC0_ROOT, "aclk_rkvenc0_root", gpll_cpll_npll_p, 0,
 			RK3588_CLKSEL_CON(102), 7, 2, MFLAGS, 2, 5, DFLAGS,
 			RK3588_CLKGATE_CON(47), 1, GFLAGS),
-	GATE(HCLK_RKVENC0, "hclk_rkvenc0", "hclk_rkvenc0_root", RK3588_LINKED_CLK,
+	GATE(HCLK_RKVENC0, "hclk_rkvenc0", "hclk_rkvenc0_root", 0,
 			RK3588_CLKGATE_CON(47), 4, GFLAGS),
-	GATE(ACLK_RKVENC0, "aclk_rkvenc0", "aclk_rkvenc0_root", RK3588_LINKED_CLK,
+	GATE(ACLK_RKVENC0, "aclk_rkvenc0", "aclk_rkvenc0_root", 0,
 			RK3588_CLKGATE_CON(47), 5, GFLAGS),
 	COMPOSITE(CLK_RKVENC0_CORE, "clk_rkvenc0_core", gpll_cpll_aupll_npll_p, 0,
 			RK3588_CLKSEL_CON(102), 14, 2, MFLAGS, 9, 5, DFLAGS,
@@ -1737,10 +1734,10 @@ static struct rockchip_clk_branch rk3588_early_clk_branches[] __initdata = {
 			RK3588_CLKGATE_CON(48), 6, GFLAGS),
 
 	/* vi */
-	COMPOSITE(ACLK_VI_ROOT, "aclk_vi_root", gpll_cpll_npll_aupll_spll_p, RK3588_LINKED_CLK,
+	COMPOSITE(ACLK_VI_ROOT, "aclk_vi_root", gpll_cpll_npll_aupll_spll_p, 0,
 			RK3588_CLKSEL_CON(106), 5, 3, MFLAGS, 0, 5, DFLAGS,
 			RK3588_CLKGATE_CON(49), 0, GFLAGS),
-	COMPOSITE_NODIV(HCLK_VI_ROOT, "hclk_vi_root", mux_200m_100m_50m_24m_p, RK3588_LINKED_CLK,
+	COMPOSITE_NODIV(HCLK_VI_ROOT, "hclk_vi_root", mux_200m_100m_50m_24m_p, 0,
 			RK3588_CLKSEL_CON(106), 8, 2, MFLAGS,
 			RK3588_CLKGATE_CON(49), 1, GFLAGS),
 	COMPOSITE_NODIV(PCLK_VI_ROOT, "pclk_vi_root", mux_100m_50m_24m_p, 0,
@@ -1910,10 +1907,10 @@ static struct rockchip_clk_branch rk3588_early_clk_branches[] __initdata = {
 	COMPOSITE(ACLK_VOP_ROOT, "aclk_vop_root", gpll_cpll_dmyaupll_npll_spll_p, 0,
 			RK3588_CLKSEL_CON(110), 5, 3, MFLAGS, 0, 5, DFLAGS,
 			RK3588_CLKGATE_CON(52), 0, GFLAGS),
-	COMPOSITE_NODIV(ACLK_VOP_LOW_ROOT, "aclk_vop_low_root", mux_400m_200m_100m_24m_p, RK3588_LINKED_CLK,
+	COMPOSITE_NODIV(ACLK_VOP_LOW_ROOT, "aclk_vop_low_root", mux_400m_200m_100m_24m_p, 0,
 			RK3588_CLKSEL_CON(110), 8, 2, MFLAGS,
 			RK3588_CLKGATE_CON(52), 1, GFLAGS),
-	COMPOSITE_NODIV(HCLK_VOP_ROOT, "hclk_vop_root", mux_200m_100m_50m_24m_p, RK3588_LINKED_CLK,
+	COMPOSITE_NODIV(HCLK_VOP_ROOT, "hclk_vop_root", mux_200m_100m_50m_24m_p, 0,
 			RK3588_CLKSEL_CON(110), 10, 2, MFLAGS,
 			RK3588_CLKGATE_CON(52), 2, GFLAGS),
 	COMPOSITE_NODIV(PCLK_VOP_ROOT, "pclk_vop_root", mux_100m_50m_24m_p, 0,
@@ -2416,7 +2413,7 @@ static struct rockchip_clk_branch rk3588_early_clk_branches[] __initdata = {
 static struct rockchip_clk_branch rk3588_clk_branches[] = {
 	GATE_LINK(ACLK_ISP1_PRE, "aclk_isp1_pre", "aclk_isp1_root", ACLK_VI_ROOT, 0, RK3588_CLKGATE_CON(26), 6, GFLAGS),
 	GATE_LINK(HCLK_ISP1_PRE, "hclk_isp1_pre", "hclk_isp1_root", HCLK_VI_ROOT, 0, RK3588_CLKGATE_CON(26), 8, GFLAGS),
-	GATE_LINK(HCLK_NVM, "hclk_nvm", "hclk_nvm_root", ACLK_NVM_ROOT, RK3588_LINKED_CLK, RK3588_CLKGATE_CON(31), 2, GFLAGS),
+	GATE_LINK(HCLK_NVM, "hclk_nvm", "hclk_nvm_root", ACLK_NVM_ROOT, 0, RK3588_CLKGATE_CON(31), 2, GFLAGS),
 	GATE_LINK(ACLK_USB, "aclk_usb", "aclk_usb_root", ACLK_VO1USB_TOP_ROOT, 0, RK3588_CLKGATE_CON(42), 2, GFLAGS),
 	GATE_LINK(HCLK_USB, "hclk_usb", "hclk_usb_root", HCLK_VO1USB_TOP_ROOT, 0, RK3588_CLKGATE_CON(42), 3, GFLAGS),
 	GATE_LINK(ACLK_JPEG_DECODER_PRE, "aclk_jpeg_decoder_pre", "aclk_jpeg_decoder_root", ACLK_VDPU_ROOT, 0, RK3588_CLKGATE_CON(44), 7, GFLAGS),
@@ -2428,9 +2425,9 @@ static struct rockchip_clk_branch rk3588_clk_branches[] = {
 	GATE_LINK(HCLK_RKVDEC1_PRE, "hclk_rkvdec1_pre", "hclk_rkvdec1_root", HCLK_VDPU_ROOT, 0, RK3588_CLKGATE_CON(41), 4, GFLAGS),
 	GATE_LINK(ACLK_RKVDEC1_PRE, "aclk_rkvdec1_pre", "aclk_rkvdec1_root", ACLK_VDPU_ROOT, 0, RK3588_CLKGATE_CON(41), 5, GFLAGS),
 	GATE_LINK(ACLK_HDCP0_PRE, "aclk_hdcp0_pre", "aclk_vo0_root", ACLK_VOP_LOW_ROOT, 0, RK3588_CLKGATE_CON(55), 9, GFLAGS),
-	GATE_LINK(HCLK_VO0, "hclk_vo0", "hclk_vo0_root", HCLK_VOP_ROOT, RK3588_LINKED_CLK, RK3588_CLKGATE_CON(55), 5, GFLAGS),
+	GATE_LINK(HCLK_VO0, "hclk_vo0", "hclk_vo0_root", HCLK_VOP_ROOT, 0, RK3588_CLKGATE_CON(55), 5, GFLAGS),
 	GATE_LINK(ACLK_HDCP1_PRE, "aclk_hdcp1_pre", "aclk_hdcp1_root", ACLK_VO1USB_TOP_ROOT, 0, RK3588_CLKGATE_CON(59), 6, GFLAGS),
-	GATE_LINK(HCLK_VO1, "hclk_vo1", "hclk_vo1_root", HCLK_VO1USB_TOP_ROOT, RK3588_LINKED_CLK, RK3588_CLKGATE_CON(59), 9, GFLAGS),
+	GATE_LINK(HCLK_VO1, "hclk_vo1", "hclk_vo1_root", HCLK_VO1USB_TOP_ROOT, 0, RK3588_CLKGATE_CON(59), 9, GFLAGS),
 	GATE_LINK(ACLK_AV1_PRE, "aclk_av1_pre", "aclk_av1_root", ACLK_VDPU_ROOT, 0, RK3588_CLKGATE_CON(68), 1, GFLAGS),
 	GATE_LINK(PCLK_AV1_PRE, "pclk_av1_pre", "pclk_av1_root", HCLK_VDPU_ROOT, 0, RK3588_CLKGATE_CON(68), 4, GFLAGS),
 	GATE_LINK(HCLK_SDIO_PRE, "hclk_sdio_pre", "hclk_sdio_root", HCLK_NVM, 0, RK3588_CLKGATE_CON(75), 1, GFLAGS),
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
