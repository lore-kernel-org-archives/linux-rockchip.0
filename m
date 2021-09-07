Return-Path: <SRS0=zMH+=N5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A14BFC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Sep 2021 16:46:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6712361090
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Sep 2021 16:46:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6712361090
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aKS57j3n4m2jWNlgvg2iV7XnYBqBC8eGUSIrUcz5LFY=; b=RJkO1MkMelJ+jg
	TkK9xKd9TLnAGI9cbGB3hKMiPfW3ppR3veOg1t9nKmh5ug8JEWUCnXtXNpp7+LlKWIxdxGQuC9ZOp
	+laq3M0F/+lqqsxTV+lXiIRPUH9W0U2tsc+PVgws9A8X3XZBNoBIJrFBiYJlW7GbgConHIKPLAyGI
	mI0j6SHY51M/adL5kmfj7EWxHO47uAGskIBd7kKNyP1CphuKBfuPtfI5hSrSH8iTo8kl2Vihi/kBy
	G+elBAex/24YIaLy9jSSQuhnj0KE9+L3764P6IdVkYSbS4iX/uhWLvjjusSGH2OJmRejm0Mwyorbc
	ugB6TjMQdueRy/4jt5iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNeFH-004FYL-Ml; Tue, 07 Sep 2021 16:46:51 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNeFF-004FWN-8j
 for linux-rockchip@lists.infradead.org; Tue, 07 Sep 2021 16:46:50 +0000
Received: by mail-pl1-x636.google.com with SMTP id n4so6179182plh.9
 for <linux-rockchip@lists.infradead.org>; Tue, 07 Sep 2021 09:46:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PP2ABdQKAw7a9Vz1k0Jj0CJwbnVZivj1PUS2EvlCvgY=;
 b=hj4juZ9Y4gulEIE2+5Tmdsl6/hSiw0jMQoKY7j1HVLnpkYg71iUsOJla9YDf7Cduh6
 DstWDWhTwVDrLlaFof+hUrerVjCSRceKfROWvlsfhHcPO1UDRsT9spbCjq6n4swgS1/d
 ptsgPpu1R+lqqxAOjUw7fxNTE0UlEy2kf/ihI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PP2ABdQKAw7a9Vz1k0Jj0CJwbnVZivj1PUS2EvlCvgY=;
 b=Q52CVs4KNOG+XvOoyjPEyAWYGMvlOtRZ6sWqkZAe+BKpZwkWWkwGfIMjMPu866DttE
 FIVVRuhj2a/zGYTeoaKSh5/JS4MBIywGbq7T8fVOJWNlBX4VsCVcH7Fq8mtxtDiPuvSr
 04QSN+bhE39dlwaOsSwdhOMScwDEx4APJGrU3peDNMLMZsMXT5WzwHYuILALwxxlEjww
 59N/2iRmkHbOGjjYUak4eq0LtUWlvZqP3g0ZSz2D78wSWluHvFlYAnoNFUw+RGsdfX1o
 KruVEL9oQwbqF+Nph0mPm2wSecuUX/LKZvUONDvIlQXlxzzLeDeuURwbsndZCtzHnHWA
 lvyg==
X-Gm-Message-State: AOAM5325Yhwpk+zXjZqMMGQ+0SFLuEdzXBCCCH6ZLrYjEBNyDTymmUHw
 fnGoK8DvgbcpnI1CBOysz8O6eA==
X-Google-Smtp-Source: ABdhPJxvuFfk9GSy2PRDzf3a1XQiZDc7Rc4bkdjCm1pJK0CbBHydSsXo2x55MjkidEHQT3e+aSkaoQ==
X-Received: by 2002:a17:90a:450d:: with SMTP id
 u13mr5539107pjg.138.1631033206634; 
 Tue, 07 Sep 2021 09:46:46 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:7662:6d8e:510:db67])
 by smtp.gmail.com with UTF8SMTPSA id l11sm3118441pjg.22.2021.09.07.09.46.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 07 Sep 2021 09:46:45 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, Chen-Yu Tsai <wenst@chromium.org>,
 Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Brian Norris <briannorris@chromium.org>
Subject: [RESEND PATCH 1/2] clk: rockchip: rk3399: expose PCLK_COREDBG_{B,L}
Date: Tue,  7 Sep 2021 09:46:36 -0700
Message-Id: <20210907094628.RESEND.1.If29cd838efbcee4450a62b8d84a99b23c86e0a3f@changeid>
X-Mailer: git-send-email 2.33.0.153.gba50c8fa24-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210907_094649_356131_95A94495 
X-CRM114-Status: GOOD (  12.59  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

We have DT IDs for PCLK_COREDBG_L and PCLK_COREDBG_B, but we don't
actually expose them.

In exposing these clocks (and attaching them to the coresight debug
driver), the AMBA bus may start to disable them. Because no CPU driver
owns these clocks (e.g., cpufreq-dt doesn't enable() them -- and even if
it did, it's not early enough -- nor does arch/arm64/kernel/smp.c), the
common clock framework then feels the need to disable the parents
(including the CPU PLLs) -- which is no fun for anyone.

Thus, mark the CPU clocks as critical as well.

Signed-off-by: Brian Norris <briannorris@chromium.org>
---
Resending, because I missed the mailing lists on the first version.

 drivers/clk/rockchip/clk-rk3399.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
index 62a4f2543960..53ed5cca335b 100644
--- a/drivers/clk/rockchip/clk-rk3399.c
+++ b/drivers/clk/rockchip/clk-rk3399.c
@@ -481,7 +481,7 @@ static struct rockchip_clk_branch rk3399_clk_branches[] __initdata = {
 	COMPOSITE_NOMUX(0, "atclk_core_l", "armclkl", CLK_IGNORE_UNUSED,
 			RK3399_CLKSEL_CON(1), 0, 5, DFLAGS | CLK_DIVIDER_READ_ONLY,
 			RK3399_CLKGATE_CON(0), 5, GFLAGS),
-	COMPOSITE_NOMUX(0, "pclk_dbg_core_l", "armclkl", CLK_IGNORE_UNUSED,
+	COMPOSITE_NOMUX(PCLK_COREDBG_L, "pclk_dbg_core_l", "armclkl", CLK_IGNORE_UNUSED,
 			RK3399_CLKSEL_CON(1), 8, 5, DFLAGS | CLK_DIVIDER_READ_ONLY,
 			RK3399_CLKGATE_CON(0), 6, GFLAGS),
 
@@ -531,7 +531,7 @@ static struct rockchip_clk_branch rk3399_clk_branches[] __initdata = {
 	GATE(ACLK_GIC_ADB400_CORE_B_2_GIC, "aclk_core_adb400_core_b_2_gic", "armclkb", CLK_IGNORE_UNUSED,
 			RK3399_CLKGATE_CON(14), 4, GFLAGS),
 
-	DIV(0, "pclken_dbg_core_b", "pclk_dbg_core_b", CLK_IGNORE_UNUSED,
+	DIV(PCLK_COREDBG_B, "pclken_dbg_core_b", "pclk_dbg_core_b", CLK_IGNORE_UNUSED,
 			RK3399_CLKSEL_CON(3), 13, 2, DFLAGS | CLK_DIVIDER_READ_ONLY),
 
 	GATE(0, "pclk_dbg_cxcs_pd_core_b", "pclk_dbg_core_b", CLK_IGNORE_UNUSED,
@@ -1514,7 +1514,10 @@ static const char *const rk3399_cru_critical_clocks[] __initconst = {
 	"aclk_vio_noc",
 
 	/* ddrc */
-	"sclk_ddrc"
+	"sclk_ddrc",
+
+	"armclkl",
+	"armclkb",
 };
 
 static const char *const rk3399_pmucru_critical_clocks[] __initconst = {
@@ -1549,9 +1552,6 @@ static void __init rk3399_clk_init(struct device_node *np)
 	rockchip_clk_register_branches(ctx, rk3399_clk_branches,
 				  ARRAY_SIZE(rk3399_clk_branches));
 
-	rockchip_clk_protect_critical(rk3399_cru_critical_clocks,
-				      ARRAY_SIZE(rk3399_cru_critical_clocks));
-
 	rockchip_clk_register_armclk(ctx, ARMCLKL, "armclkl",
 			mux_armclkl_p, ARRAY_SIZE(mux_armclkl_p),
 			&rk3399_cpuclkl_data, rk3399_cpuclkl_rates,
@@ -1562,6 +1562,9 @@ static void __init rk3399_clk_init(struct device_node *np)
 			&rk3399_cpuclkb_data, rk3399_cpuclkb_rates,
 			ARRAY_SIZE(rk3399_cpuclkb_rates));
 
+	rockchip_clk_protect_critical(rk3399_cru_critical_clocks,
+				      ARRAY_SIZE(rk3399_cru_critical_clocks));
+
 	rockchip_register_softrst(np, 21, reg_base + RK3399_SOFTRST_CON(0),
 				  ROCKCHIP_SOFTRST_HIWORD_MASK);
 
-- 
2.33.0.153.gba50c8fa24-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
