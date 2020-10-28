Return-Path: <SRS0=JMM0=ED=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62CDAC4363A
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2020 11:43:38 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B33D0246CA
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2020 11:43:36 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="UuN45Pwg";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="T4akp1ad"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B33D0246CA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Ck+cNuBy/yJCf29yfj5nK/S8EXcS7pVpBXe8focH6Mc=; b=UuN45Pwg7Dk4iWZAeaxbQ6j0xD
	/ZQcK/ImtuS3AL5Mnw0decgWaUGfHanOhm+Tx4p2WYZmauvVNhFvrqER1y85knIzwe0ljNgb3e96u
	x75T+Cwg9ronlIc4vCZZSu6d4Dr85Vs1JkwHjNIyNz8kmLk1ZYWygGpRGprfFj/S6a2HPK4pZkoHt
	kdzA1wqEmgg3OyOQEtQdOl8UA9FYMXiFTKRb1VP5Dw7hlylN2gV+e7Id9kMU9gRXNADeSIQOipa1S
	ljmQCDQRSHKO5QKEB6gpo652qp5L216ISoIgD+/0N8/TqCnjhoCJjUWMySUE2STYbT+xR186Dfa4j
	+cx91TAQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kXjrW-0002e2-CY; Wed, 28 Oct 2020 11:43:30 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kXjrO-0002bO-JO
 for linux-rockchip@lists.infradead.org; Wed, 28 Oct 2020 11:43:27 +0000
Received: by mail-pl1-x642.google.com with SMTP id z1so904465plo.12
 for <linux-rockchip@lists.infradead.org>; Wed, 28 Oct 2020 04:43:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=N1e+BCUO8+mC+KGj3wF6VbxXngF455cwAyIY2MXIsus=;
 b=T4akp1adQjfEMeMUkRQLY2gIoJxbAqURtyQkMnoZfCD/A2ry20rAQC0MDR1mw/5eMn
 AccPBVtonvLQBk3lGl43lz8z81JX091UHLJlF+mc/ifyPI8eTU0Z6+6jFh6Z22eHwe8r
 RH8lRbc4rbm+pRSW14ipcj+IFRNGJGI51n4ew=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=N1e+BCUO8+mC+KGj3wF6VbxXngF455cwAyIY2MXIsus=;
 b=WUjxePj5ss3L4OGEudWgroH5kT/xUAvhSQUQZ+MMuLGFa2f0E/iN+XD29l8GHJ/Jvo
 27RL0C/Q7+jmW7r1kM700N6hRsBmPyPcG+RE3ogB6zbt9BHbHIk8JmK+Rd/0HW4/HcrZ
 pwos56s4yJtbYPh8LFpbCx3+QZc/jZoXBBHFzw8WkD52XbZfEJioIk6J3eKNRsgetf8z
 nz/FKP5u0Pd01442EfHjHSeTLDiuQ8ReNHntiXui86lKnehV7EPBHco3NMd7vNgheU1t
 L38hUVs1+vVuT0yMDxCDHuJ9hJ2RFPAlixMN7PjSNEcppMBYZeOA37+M7B8BzBy0pJJ2
 xzXg==
X-Gm-Message-State: AOAM531G/T6mymCo4nBuyKBrjz7mp7jyl7bh2e0QMLeWlHcnegSlXpF6
 26DEAX6In/fQWoMlxRDjlZXvU6Ys5/F6zw==
X-Google-Smtp-Source: ABdhPJwnjQTcWIA/6CuB2hDSWT2aMZRnBt3BMZjtD+24pK9KNRbtUAqRrBQdIkPWLNxDdPMhYOmzkA==
X-Received: by 2002:a17:90a:14a4:: with SMTP id
 k33mr6299169pja.236.1603885400385; 
 Wed, 28 Oct 2020 04:43:20 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7a4:2d09:2940:d772:8d5])
 by smtp.gmail.com with ESMTPSA id
 10sm5350214pjt.50.2020.10.28.04.43.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Oct 2020 04:43:19 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v2] clk: rockchip: Limit input rate for fractional
 approximation
Date: Wed, 28 Oct 2020 17:12:59 +0530
Message-Id: <20201028114259.219698-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201028_074323_123445_62927788 
X-CRM114-Status: GOOD (  15.44  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Elaine Zhang <zhangqing@rock-chips.com>, linux-kernel@vger.kernel.org,
 Kever Yang <kever.yang@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Finley Xiao <finley.xiao@rock-chips.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Fractional approximation in some rockchip families can be generated
based on the fractional divider and the input clock frequency of
fractional divider should be less than a specified value.
.i.e:
            |--\
---[GPLL]---|   \                                      |--\
---[CPLL]---|mux|--[GATE]--[DIV]-----------------------|   \
---[NPLL]---|   /                |                     |mux|--[GATE]--
            |--/                 |--[GATE]--[FRACDIV]--|   /
                                                       |--/

The FRACDIV frequency is designed to be only 300M(Different SOC
implementations are different).But the GPLL or CPLL may be 1200M.
Must be added to limit to ensure that the design is not exceeded.

This patch is trying to support this fractional approximation on
PX30 platform with input limit rate of 600MHz.

Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- v2 version patch from previous patch
https://patchwork.kernel.org/project/linux-arm-kernel/patch/20200831161436.134186-1-jagan@amarulasolutions.com/
- support input limit rate for frac approx.

 drivers/clk/rockchip/clk-px30.c | 69 +++++++++++++++++----------------
 drivers/clk/rockchip/clk.c      | 31 ++++++++++++---
 drivers/clk/rockchip/clk.h      | 21 ++++++++++
 include/linux/clk-provider.h    |  2 +
 4 files changed, 84 insertions(+), 39 deletions(-)

diff --git a/drivers/clk/rockchip/clk-px30.c b/drivers/clk/rockchip/clk-px30.c
index 6fb9c98b7d24..34e4c02d3cb1 100644
--- a/drivers/clk/rockchip/clk-px30.c
+++ b/drivers/clk/rockchip/clk-px30.c
@@ -13,6 +13,7 @@
 #include "clk.h"
 
 #define PX30_GRF_SOC_STATUS0		0x480
+#define PX30_FRAC_CLK_LIMIT		600000000
 
 enum px30_plls {
 	apll, dpll, cpll, npll, apll_b_h, apll_b_l,
@@ -421,19 +422,19 @@ static struct rockchip_clk_branch px30_clk_branches[] __initdata = {
 	COMPOSITE(0, "dclk_vopb_src", mux_cpll_npll_p, CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT,
 			PX30_CLKSEL_CON(5), 11, 1, MFLAGS, 0, 8, DFLAGS,
 			PX30_CLKGATE_CON(2), 2, GFLAGS),
-	COMPOSITE_FRACMUX(0, "dclk_vopb_frac", "dclk_vopb_src", CLK_SET_RATE_PARENT,
+	COMPOSITE_FRACMUX_LIMIT(0, "dclk_vopb_frac", "dclk_vopb_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(6), 0,
 			PX30_CLKGATE_CON(2), 3, GFLAGS,
-			&px30_dclk_vopb_fracmux),
+			&px30_dclk_vopb_fracmux, PX30_FRAC_CLK_LIMIT),
 	GATE(DCLK_VOPB, "dclk_vopb", "dclk_vopb_mux", CLK_SET_RATE_PARENT,
 			PX30_CLKGATE_CON(2), 4, GFLAGS),
 	COMPOSITE(0, "dclk_vopl_src", mux_npll_cpll_p, 0,
 			PX30_CLKSEL_CON(8), 11, 1, MFLAGS, 0, 8, DFLAGS,
 			PX30_CLKGATE_CON(2), 6, GFLAGS),
-	COMPOSITE_FRACMUX(0, "dclk_vopl_frac", "dclk_vopl_src", CLK_SET_RATE_PARENT,
+	COMPOSITE_FRACMUX_LIMIT(0, "dclk_vopl_frac", "dclk_vopl_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(9), 0,
 			PX30_CLKGATE_CON(2), 7, GFLAGS,
-			&px30_dclk_vopl_fracmux),
+			&px30_dclk_vopl_fracmux, PX30_FRAC_CLK_LIMIT),
 	GATE(DCLK_VOPL, "dclk_vopl", "dclk_vopl_mux", CLK_SET_RATE_PARENT,
 			PX30_CLKGATE_CON(2), 8, GFLAGS),
 
@@ -588,20 +589,20 @@ static struct rockchip_clk_branch px30_clk_branches[] __initdata = {
 	COMPOSITE(0, "clk_pdm_src", mux_gpll_xin24m_npll_p, 0,
 			PX30_CLKSEL_CON(26), 8, 2, MFLAGS, 0, 7, DFLAGS,
 			PX30_CLKGATE_CON(9), 9, GFLAGS),
-	COMPOSITE_FRACMUX(0, "clk_pdm_frac", "clk_pdm_src", CLK_SET_RATE_PARENT,
+	COMPOSITE_FRACMUX_LIMIT(0, "clk_pdm_frac", "clk_pdm_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(27), 0,
 			PX30_CLKGATE_CON(9), 10, GFLAGS,
-			&px30_pdm_fracmux),
+			&px30_pdm_fracmux, PX30_FRAC_CLK_LIMIT),
 	GATE(SCLK_PDM, "clk_pdm", "clk_pdm_mux", CLK_SET_RATE_PARENT,
 			PX30_CLKGATE_CON(9), 11, GFLAGS),
 
 	COMPOSITE(0, "clk_i2s0_tx_src", mux_gpll_npll_p, 0,
 			PX30_CLKSEL_CON(28), 8, 1, MFLAGS, 0, 7, DFLAGS,
 			PX30_CLKGATE_CON(9), 12, GFLAGS),
-	COMPOSITE_FRACMUX(0, "clk_i2s0_tx_frac", "clk_i2s0_tx_src", CLK_SET_RATE_PARENT,
+	COMPOSITE_FRACMUX_LIMIT(0, "clk_i2s0_tx_frac", "clk_i2s0_tx_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(29), 0,
 			PX30_CLKGATE_CON(9), 13, GFLAGS,
-			&px30_i2s0_tx_fracmux),
+			&px30_i2s0_tx_fracmux, PX30_FRAC_CLK_LIMIT),
 	COMPOSITE_NODIV(SCLK_I2S0_TX, "clk_i2s0_tx", mux_i2s0_tx_rx_p, CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(28), 12, 1, MFLAGS,
 			PX30_CLKGATE_CON(9), 14, GFLAGS),
@@ -614,10 +615,10 @@ static struct rockchip_clk_branch px30_clk_branches[] __initdata = {
 	COMPOSITE(0, "clk_i2s0_rx_src", mux_gpll_npll_p, 0,
 			PX30_CLKSEL_CON(58), 8, 1, MFLAGS, 0, 7, DFLAGS,
 			PX30_CLKGATE_CON(17), 0, GFLAGS),
-	COMPOSITE_FRACMUX(0, "clk_i2s0_rx_frac", "clk_i2s0_rx_src", CLK_SET_RATE_PARENT,
+	COMPOSITE_FRACMUX_LIMIT(0, "clk_i2s0_rx_frac", "clk_i2s0_rx_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(59), 0,
 			PX30_CLKGATE_CON(17), 1, GFLAGS,
-			&px30_i2s0_rx_fracmux),
+			&px30_i2s0_rx_fracmux, PX30_FRAC_CLK_LIMIT),
 	COMPOSITE_NODIV(SCLK_I2S0_RX, "clk_i2s0_rx", mux_i2s0_rx_tx_p, CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(58), 12, 1, MFLAGS,
 			PX30_CLKGATE_CON(17), 2, GFLAGS),
@@ -630,10 +631,10 @@ static struct rockchip_clk_branch px30_clk_branches[] __initdata = {
 	COMPOSITE(0, "clk_i2s1_src", mux_gpll_npll_p, 0,
 			PX30_CLKSEL_CON(30), 8, 1, MFLAGS, 0, 7, DFLAGS,
 			PX30_CLKGATE_CON(10), 0, GFLAGS),
-	COMPOSITE_FRACMUX(0, "clk_i2s1_frac", "clk_i2s1_src", CLK_SET_RATE_PARENT,
+	COMPOSITE_FRACMUX_LIMIT(0, "clk_i2s1_frac", "clk_i2s1_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(31), 0,
 			PX30_CLKGATE_CON(10), 1, GFLAGS,
-			&px30_i2s1_fracmux),
+			&px30_i2s1_fracmux, PX30_FRAC_CLK_LIMIT),
 	GATE(SCLK_I2S1, "clk_i2s1", "clk_i2s1_mux", CLK_SET_RATE_PARENT,
 			PX30_CLKGATE_CON(10), 2, GFLAGS),
 	COMPOSITE_NODIV(0, "clk_i2s1_out_pre", mux_i2s1_out_p, 0,
@@ -645,10 +646,10 @@ static struct rockchip_clk_branch px30_clk_branches[] __initdata = {
 	COMPOSITE(0, "clk_i2s2_src", mux_gpll_npll_p, 0,
 			PX30_CLKSEL_CON(32), 8, 1, MFLAGS, 0, 7, DFLAGS,
 			PX30_CLKGATE_CON(10), 4, GFLAGS),
-	COMPOSITE_FRACMUX(0, "clk_i2s2_frac", "clk_i2s2_src", CLK_SET_RATE_PARENT,
+	COMPOSITE_FRACMUX_LIMIT(0, "clk_i2s2_frac", "clk_i2s2_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(33), 0,
 			PX30_CLKGATE_CON(10), 5, GFLAGS,
-			&px30_i2s2_fracmux),
+			&px30_i2s2_fracmux, PX30_FRAC_CLK_LIMIT),
 	GATE(SCLK_I2S2, "clk_i2s2", "clk_i2s2_mux", CLK_SET_RATE_PARENT,
 			PX30_CLKGATE_CON(10), 6, GFLAGS),
 	COMPOSITE_NODIV(0, "clk_i2s2_out_pre", mux_i2s2_out_p, 0,
@@ -660,65 +661,65 @@ static struct rockchip_clk_branch px30_clk_branches[] __initdata = {
 	COMPOSITE(SCLK_UART1_SRC, "clk_uart1_src", mux_uart_src_p, CLK_SET_RATE_NO_REPARENT,
 			PX30_CLKSEL_CON(34), 14, 2, MFLAGS, 0, 5, DFLAGS,
 			PX30_CLKGATE_CON(10), 12, GFLAGS),
-	COMPOSITE_NOMUX_HALFDIV(0, "clk_uart1_np5", "clk_uart1_src", 0,
+	COMPOSITE_NOMUX_HALFDIV(0, "clk_uart1_np5", "clk_uart1_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(35), 0, 5, DFLAGS,
 			PX30_CLKGATE_CON(10), 13, GFLAGS),
-	COMPOSITE_FRACMUX(0, "clk_uart1_frac", "clk_uart1_src", CLK_SET_RATE_PARENT,
+	COMPOSITE_FRACMUX_LIMIT(0, "clk_uart1_frac", "clk_uart1_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(36), 0,
 			PX30_CLKGATE_CON(10), 14, GFLAGS,
-			&px30_uart1_fracmux),
+			&px30_uart1_fracmux, PX30_FRAC_CLK_LIMIT),
 	GATE(SCLK_UART1, "clk_uart1", "clk_uart1_mux", CLK_SET_RATE_PARENT,
 			PX30_CLKGATE_CON(10), 15, GFLAGS),
 
 	COMPOSITE(SCLK_UART2_SRC, "clk_uart2_src", mux_uart_src_p, 0,
 			PX30_CLKSEL_CON(37), 14, 2, MFLAGS, 0, 5, DFLAGS,
 			PX30_CLKGATE_CON(11), 0, GFLAGS),
-	COMPOSITE_NOMUX_HALFDIV(0, "clk_uart2_np5", "clk_uart2_src", 0,
+	COMPOSITE_NOMUX_HALFDIV(0, "clk_uart2_np5", "clk_uart2_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(38), 0, 5, DFLAGS,
 			PX30_CLKGATE_CON(11), 1, GFLAGS),
-	COMPOSITE_FRACMUX(0, "clk_uart2_frac", "clk_uart2_src", CLK_SET_RATE_PARENT,
+	COMPOSITE_FRACMUX_LIMIT(0, "clk_uart2_frac", "clk_uart2_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(39), 0,
 			PX30_CLKGATE_CON(11), 2, GFLAGS,
-			&px30_uart2_fracmux),
+			&px30_uart2_fracmux, PX30_FRAC_CLK_LIMIT),
 	GATE(SCLK_UART2, "clk_uart2", "clk_uart2_mux", CLK_SET_RATE_PARENT,
 			PX30_CLKGATE_CON(11), 3, GFLAGS),
 
 	COMPOSITE(0, "clk_uart3_src", mux_uart_src_p, 0,
 			PX30_CLKSEL_CON(40), 14, 2, MFLAGS, 0, 5, DFLAGS,
 			PX30_CLKGATE_CON(11), 4, GFLAGS),
-	COMPOSITE_NOMUX_HALFDIV(0, "clk_uart3_np5", "clk_uart3_src", 0,
+	COMPOSITE_NOMUX_HALFDIV(0, "clk_uart3_np5", "clk_uart3_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(41), 0, 5, DFLAGS,
 			PX30_CLKGATE_CON(11), 5, GFLAGS),
-	COMPOSITE_FRACMUX(0, "clk_uart3_frac", "clk_uart3_src", CLK_SET_RATE_PARENT,
+	COMPOSITE_FRACMUX_LIMIT(0, "clk_uart3_frac", "clk_uart3_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(42), 0,
 			PX30_CLKGATE_CON(11), 6, GFLAGS,
-			&px30_uart3_fracmux),
+			&px30_uart3_fracmux, PX30_FRAC_CLK_LIMIT),
 	GATE(SCLK_UART3, "clk_uart3", "clk_uart3_mux", CLK_SET_RATE_PARENT,
 			PX30_CLKGATE_CON(11), 7, GFLAGS),
 
 	COMPOSITE(0, "clk_uart4_src", mux_uart_src_p, 0,
 			PX30_CLKSEL_CON(43), 14, 2, MFLAGS, 0, 5, DFLAGS,
 			PX30_CLKGATE_CON(11), 8, GFLAGS),
-	COMPOSITE_NOMUX_HALFDIV(0, "clk_uart4_np5", "clk_uart4_src", 0,
+	COMPOSITE_NOMUX_HALFDIV(0, "clk_uart4_np5", "clk_uart4_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(44), 0, 5, DFLAGS,
 			PX30_CLKGATE_CON(11), 9, GFLAGS),
-	COMPOSITE_FRACMUX(0, "clk_uart4_frac", "clk_uart4_src", CLK_SET_RATE_PARENT,
+	COMPOSITE_FRACMUX_LIMIT(0, "clk_uart4_frac", "clk_uart4_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(45), 0,
 			PX30_CLKGATE_CON(11), 10, GFLAGS,
-			&px30_uart4_fracmux),
+			&px30_uart4_fracmux, PX30_FRAC_CLK_LIMIT),
 	GATE(SCLK_UART4, "clk_uart4", "clk_uart4_mux", CLK_SET_RATE_PARENT,
 			PX30_CLKGATE_CON(11), 11, GFLAGS),
 
 	COMPOSITE(0, "clk_uart5_src", mux_uart_src_p, 0,
 			PX30_CLKSEL_CON(46), 14, 2, MFLAGS, 0, 5, DFLAGS,
 			PX30_CLKGATE_CON(11), 12, GFLAGS),
-	COMPOSITE_NOMUX_HALFDIV(0, "clk_uart5_np5", "clk_uart5_src", 0,
+	COMPOSITE_NOMUX_HALFDIV(0, "clk_uart5_np5", "clk_uart5_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(47), 0, 5, DFLAGS,
 			PX30_CLKGATE_CON(11), 13, GFLAGS),
-	COMPOSITE_FRACMUX(0, "clk_uart5_frac", "clk_uart5_src", CLK_SET_RATE_PARENT,
+	COMPOSITE_FRACMUX_LIMIT(0, "clk_uart5_frac", "clk_uart5_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(48), 0,
 			PX30_CLKGATE_CON(11), 14, GFLAGS,
-			&px30_uart5_fracmux),
+			&px30_uart5_fracmux, PX30_FRAC_CLK_LIMIT),
 	GATE(SCLK_UART5, "clk_uart5", "clk_uart5_mux", CLK_SET_RATE_PARENT,
 			PX30_CLKGATE_CON(11), 15, GFLAGS),
 
@@ -915,10 +916,10 @@ static struct rockchip_clk_branch px30_clk_pmu_branches[] __initdata = {
 	 * Clock-Architecture Diagram 2
 	 */
 
-	COMPOSITE_FRACMUX(0, "clk_rtc32k_frac", "xin24m", CLK_IGNORE_UNUSED,
+	COMPOSITE_FRACMUX_LIMIT(0, "clk_rtc32k_frac", "xin24m", CLK_IGNORE_UNUSED,
 			PX30_PMU_CLKSEL_CON(1), 0,
 			PX30_PMU_CLKGATE_CON(0), 13, GFLAGS,
-			&px30_rtc32k_pmu_fracmux),
+			&px30_rtc32k_pmu_fracmux, 0),
 
 	COMPOSITE_NOMUX(XIN24M_DIV, "xin24m_div", "xin24m", CLK_IGNORE_UNUSED,
 			PX30_PMU_CLKSEL_CON(0), 8, 5, DFLAGS,
@@ -934,13 +935,13 @@ static struct rockchip_clk_branch px30_clk_pmu_branches[] __initdata = {
 	COMPOSITE(0, "clk_uart0_pmu_src", mux_uart_src_p, 0,
 			PX30_PMU_CLKSEL_CON(3), 14, 2, MFLAGS, 0, 5, DFLAGS,
 			PX30_PMU_CLKGATE_CON(1), 0, GFLAGS),
-	COMPOSITE_NOMUX_HALFDIV(0, "clk_uart0_np5", "clk_uart0_pmu_src", 0,
+	COMPOSITE_NOMUX_HALFDIV(0, "clk_uart0_np5", "clk_uart0_pmu_src", CLK_SET_RATE_PARENT,
 			PX30_PMU_CLKSEL_CON(4), 0, 5, DFLAGS,
 			PX30_PMU_CLKGATE_CON(1), 1, GFLAGS),
-	COMPOSITE_FRACMUX(0, "clk_uart0_frac", "clk_uart0_pmu_src", CLK_SET_RATE_PARENT,
+	COMPOSITE_FRACMUX_LIMIT(0, "clk_uart0_frac", "clk_uart0_pmu_src", CLK_SET_RATE_PARENT,
 			PX30_PMU_CLKSEL_CON(5), 0,
 			PX30_PMU_CLKGATE_CON(1), 2, GFLAGS,
-			&px30_uart0_pmu_fracmux),
+			&px30_uart0_pmu_fracmux, PX30_FRAC_CLK_LIMIT),
 	GATE(SCLK_UART0_PMU, "clk_uart0_pmu", "clk_uart0_pmu_mux", CLK_SET_RATE_PARENT,
 			PX30_PMU_CLKGATE_CON(1), 3, GFLAGS),
 
diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index b443169dd408..9055725af6c5 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -182,12 +182,32 @@ static void rockchip_fractional_approximation(struct clk_hw *hw,
 	unsigned long p_rate, p_parent_rate;
 	struct clk_hw *p_parent;
 	unsigned long scale;
+	u32 div;
 
 	p_rate = clk_hw_get_rate(clk_hw_get_parent(hw));
-	if ((rate * 20 > p_rate) && (p_rate % rate != 0)) {
+	if (((rate * 20 > p_rate) && (p_rate % rate != 0)) ||
+	    (fd->max_prate && fd->max_prate < p_rate)) {
 		p_parent = clk_hw_get_parent(clk_hw_get_parent(hw));
-		p_parent_rate = clk_hw_get_rate(p_parent);
-		*parent_rate = p_parent_rate;
+		if (!p_parent) {
+			*parent_rate = p_rate;
+		} else {
+			/* support fractional divider for one level parent clock */
+			p_parent_rate = clk_hw_get_rate(p_parent);
+			*parent_rate = p_parent_rate;
+			if (fd->max_prate && p_parent_rate > fd->max_prate) {
+				div = DIV_ROUND_UP(p_parent_rate,
+						   fd->max_prate);
+				*parent_rate = p_parent_rate / div;
+			}
+		}
+
+		if (*parent_rate < rate * 20) {
+			pr_warn("%s p_rate(%ld) is low than rate(%ld)*20, use integer or half-div\n",
+				clk_hw_get_name(hw), *parent_rate, rate);
+			*m = 0;
+			*n = 1;
+			return;
+		}
 	}
 
 	/*
@@ -210,7 +230,7 @@ static struct clk *rockchip_clk_register_frac_branch(
 		void __iomem *base, int muxdiv_offset, u8 div_flags,
 		int gate_offset, u8 gate_shift, u8 gate_flags,
 		unsigned long flags, struct rockchip_clk_branch *child,
-		spinlock_t *lock)
+		unsigned long max_prate, spinlock_t *lock)
 {
 	struct clk_hw *hw;
 	struct rockchip_clk_frac *frac;
@@ -251,6 +271,7 @@ static struct clk *rockchip_clk_register_frac_branch(
 	div->nmask = GENMASK(div->nwidth - 1, 0) << div->nshift;
 	div->lock = lock;
 	div->approximation = rockchip_fractional_approximation;
+	div->max_prate = max_prate;
 	div_ops = &clk_fractional_divider_ops;
 
 	hw = clk_hw_register_composite(NULL, name, parent_names, num_parents,
@@ -488,7 +509,7 @@ void rockchip_clk_register_branches(struct rockchip_clk_provider *ctx,
 				list->div_flags,
 				list->gate_offset, list->gate_shift,
 				list->gate_flags, flags, list->child,
-				&ctx->lock);
+				list->max_prate, &ctx->lock);
 			break;
 		case branch_half_divider:
 			clk = rockchip_clk_register_halfdiv(list->name,
diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
index 2271a84124b0..fb37e5919cf6 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -420,6 +420,7 @@ struct rockchip_clk_branch {
 	u8				gate_shift;
 	u8				gate_flags;
 	struct rockchip_clk_branch	*child;
+	unsigned long			max_prate;
 };
 
 #define COMPOSITE(_id, cname, pnames, f, mo, ms, mw, mf, ds, dw,\
@@ -594,6 +595,26 @@ struct rockchip_clk_branch {
 		.child		= ch,				\
 	}
 
+#define COMPOSITE_FRACMUX_LIMIT(_id, cname, pname, f, mo, df,	\
+				go, gs, gf, ch, prate) \
+	{							\
+		.id		= _id,				\
+		.branch_type	= branch_fraction_divider,	\
+		.name		= cname,			\
+		.parent_names	= (const char *[]){ pname },	\
+		.num_parents	= 1,				\
+		.flags		= f,				\
+		.muxdiv_offset	= mo,				\
+		.div_shift	= 16,				\
+		.div_width	= 16,				\
+		.div_flags	= df,				\
+		.gate_offset	= go,				\
+		.gate_shift	= gs,				\
+		.gate_flags	= gf,				\
+		.child		= ch,				\
+		.max_prate	= prate,			\
+	}
+
 #define COMPOSITE_FRACMUX_NOGATE(_id, cname, pname, f, mo, df, ch) \
 	{							\
 		.id		= _id,				\
diff --git a/include/linux/clk-provider.h b/include/linux/clk-provider.h
index 03a5de5f99f4..b6b28a097526 100644
--- a/include/linux/clk-provider.h
+++ b/include/linux/clk-provider.h
@@ -924,6 +924,7 @@ void clk_hw_unregister_fixed_factor(struct clk_hw *hw);
  * @mwidth:	width of the numerator bit field
  * @nshift:	shift to the denominator bit field
  * @nwidth:	width of the denominator bit field
+ * @max_parent:	the maximum frequency of fractional divider parent clock
  * @lock:	register lock
  *
  * Clock with adjustable fractional divider affecting its output frequency.
@@ -947,6 +948,7 @@ struct clk_fractional_divider {
 	u8		nwidth;
 	u32		nmask;
 	u8		flags;
+	unsigned long	max_prate;
 	void		(*approximation)(struct clk_hw *hw,
 				unsigned long rate, unsigned long *parent_rate,
 				unsigned long *m, unsigned long *n);
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
