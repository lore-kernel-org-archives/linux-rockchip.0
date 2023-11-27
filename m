Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF8FCC4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Nov 2023 18:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2mjkS7lzaTRrWUW8P2vvXdOIie2GAADtsNsLm8EPJ/M=; b=J5ylmdwrOajmCw
	LT7N9CvOtGvRtP4CSWqYh4SaRoBQ7tkFHP8pJd/c2WgbPVmnUWFixrbuWwL8XZNX5+9tL6Y6cWQqA
	PU3pk6pPM6VHuWAR0Cb1fgf6Oy/WQX0ZUPW/sfILXnu4MwGBWPGo5qfQyQZwZRPxXWS/xFoFzaEqQ
	vePpRNhHXFySv16xPYX/TrvdIgLEMJO0penf18d9fdiNpoTvh3A44DxSN/qathF9Gpe2v3+jwUqxp
	B/lzJFVloXIVk6N9ht2PzLIwjCNUmI/SgjKc/NfI/QjkUIvX7a0XyDjZtFg+jIK+R7GHrMoz+jAMs
	XZcv0tTfGe1P3dDgdZOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7g8G-003CXM-1a;
	Mon, 27 Nov 2023 18:14:57 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7g8A-003CVN-1L;
	Mon, 27 Nov 2023 18:14:51 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-a02cc476581so613921566b.2;
        Mon, 27 Nov 2023 10:14:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701108888; x=1701713688; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tCB3azVd9wPLophpHh17n/6NPQGGZXQWFa2v4yG4E2Q=;
        b=I12P8ZbvI/1nPBH4Ih4Hr+4m2EEdgCRUbh+6ubEOCpcjZX2Uy83oN1FzKpKkPt7HKa
         4rnegzKknGMV1Fsss+kvbmB6dCABY6FUzDK/eLLrlbze/ds+bWhmcccOHXPRqb3ih7Lb
         BPuQPVaW4utqQwyGCfFqKQD0kL7GbYGDWo9KBTnXMF/oxNB9WvLRa3hqvp9ylyCG+RoP
         hXF/y2t4f21XduK2FrjxNN21EOOeyOzdYfNJdnt7uaTueI1bmjNo2DhS3eN5BFMKI4s8
         Rd8kQw28rM9E8irug+2heSjPaLXdG9uR6AXnGGJ8quZuS+6zDKkB9lKG7dNxIjZzC0ux
         rVHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701108888; x=1701713688;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tCB3azVd9wPLophpHh17n/6NPQGGZXQWFa2v4yG4E2Q=;
        b=FwMtfMO2frfSUMiH5V4BRhml0hFuGuj6jdXP2op4NM5KSH6R9Hc2x0Y+BnTt7VU4Lg
         3UrEUKvqeMNxmroQ/KXGXvOQT87EO3i5AMWDGbQCs6IT32Hi9PkoFwd42d9wmqvIS0vx
         ybZ/hTa12pt59LqEVfvfXtcE20HKUPj3+7JUrVso+KoKC00n52SnXBtfrjIf/Jgmvt/E
         y5Ee3q++UDU3iVcYFRa/tuDwSfz3HgLZX4Dng2IVtu0NFXM8mPFmRaUJNg6SOaWlxeHx
         2XKuw3dnltsTryf90ERLPalKbpE8jeFMnV+BuXa/yd1OSJb5T+p/PhhT31aq362a58X6
         oHRA==
X-Gm-Message-State: AOJu0YwgRI6WiGxry825XHXsRkkTDQshBqe+83YKKpU2iK1cjkNnrNHC
	vsjOBEeQbVk9eGxFwBaMkA==
X-Google-Smtp-Source: AGHT+IHBXiX6tNzfpxBBCBOOHOUOoddXdk5QUEny7Bc9fC6yJq3Zw1nLKkMGv1tRNoFhrUeRG3JYlA==
X-Received: by 2002:a17:906:5954:b0:a01:3df:ab1a with SMTP id g20-20020a170906595400b00a0103dfab1amr9747913ejr.75.1701108888378;
        Mon, 27 Nov 2023 10:14:48 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:370c:d8f:2dce:7367])
        by smtp.gmail.com with ESMTPSA id dv19-20020a170906b81300b009a9fbeb15f2sm5952271ejb.62.2023.11.27.10.14.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 10:14:48 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Stephen Boyd <sboyd@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v3 1/2] clk: rockchip: rk3128: Fix aclk_peri_src's parent
Date: Mon, 27 Nov 2023 19:14:16 +0100
Message-ID: <20231127181415.11735-4-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231127181415.11735-2-knaerzche@gmail.com>
References: <20231127181415.11735-2-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_101450_460208_2CF11493 
X-CRM114-Status: GOOD (  12.08  )
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

From: Finley Xiao <finley.xiao@rock-chips.com>

According to the TRM there are no specific gpll_peri, cpll_peri,
gpll_div2_peri or gpll_div3_peri gates, but a single clk_peri_src gate.
Instead mux_clk_peri_src directly connects to the plls respectively the pll
divider clocks.
Fix this by creating a single gated composite.

Also rename all occurrences of aclk_peri_src to clk_peri_src, since it
is the parent for peri aclks, pclks and hclks. That name also matches
the one used in the TRM.

Fixes: f6022e88faca ("clk: rockchip: add clock controller for rk3128")
Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
[renamed aclk_peri_src -> clk_peri_src and added commit message]
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 drivers/clk/rockchip/clk-rk3128.c | 20 +++++++-------------
 1 file changed, 7 insertions(+), 13 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3128.c b/drivers/clk/rockchip/clk-rk3128.c
index aa53797dbfc1..fcacfe758829 100644
--- a/drivers/clk/rockchip/clk-rk3128.c
+++ b/drivers/clk/rockchip/clk-rk3128.c
@@ -138,7 +138,7 @@ PNAME(mux_pll_src_5plls_p)	= { "cpll", "gpll", "gpll_div2", "gpll_div3", "usb480
 PNAME(mux_pll_src_4plls_p)	= { "cpll", "gpll", "gpll_div2", "usb480m" };
 PNAME(mux_pll_src_3plls_p)	= { "cpll", "gpll", "gpll_div2" };
 
-PNAME(mux_aclk_peri_src_p)	= { "gpll_peri", "cpll_peri", "gpll_div2_peri", "gpll_div3_peri" };
+PNAME(mux_clk_peri_src_p)	= { "gpll", "cpll", "gpll_div2", "gpll_div3" };
 PNAME(mux_mmc_src_p)		= { "cpll", "gpll", "gpll_div2", "xin24m" };
 PNAME(mux_clk_cif_out_src_p)		= { "clk_cif_src", "xin24m" };
 PNAME(mux_sclk_vop_src_p)	= { "cpll", "gpll", "gpll_div2", "gpll_div3" };
@@ -275,23 +275,17 @@ static struct rockchip_clk_branch common_clk_branches[] __initdata = {
 			RK2928_CLKGATE_CON(0), 11, GFLAGS),
 
 	/* PD_PERI */
-	GATE(0, "gpll_peri", "gpll", CLK_IGNORE_UNUSED,
+	COMPOSITE(0, "clk_peri_src", mux_clk_peri_src_p, 0,
+			RK2928_CLKSEL_CON(10), 14, 2, MFLAGS, 0, 5, DFLAGS,
 			RK2928_CLKGATE_CON(2), 0, GFLAGS),
-	GATE(0, "cpll_peri", "cpll", CLK_IGNORE_UNUSED,
-			RK2928_CLKGATE_CON(2), 0, GFLAGS),
-	GATE(0, "gpll_div2_peri", "gpll_div2", CLK_IGNORE_UNUSED,
-			RK2928_CLKGATE_CON(2), 0, GFLAGS),
-	GATE(0, "gpll_div3_peri", "gpll_div3", CLK_IGNORE_UNUSED,
-			RK2928_CLKGATE_CON(2), 0, GFLAGS),
-	COMPOSITE_NOGATE(0, "aclk_peri_src", mux_aclk_peri_src_p, 0,
-			RK2928_CLKSEL_CON(10), 14, 2, MFLAGS, 0, 5, DFLAGS),
-	COMPOSITE_NOMUX(PCLK_PERI, "pclk_peri", "aclk_peri_src", 0,
+
+	COMPOSITE_NOMUX(PCLK_PERI, "pclk_peri", "clk_peri_src", 0,
 			RK2928_CLKSEL_CON(10), 12, 2, DFLAGS | CLK_DIVIDER_POWER_OF_TWO,
 			RK2928_CLKGATE_CON(2), 3, GFLAGS),
-	COMPOSITE_NOMUX(HCLK_PERI, "hclk_peri", "aclk_peri_src", 0,
+	COMPOSITE_NOMUX(HCLK_PERI, "hclk_peri", "clk_peri_src", 0,
 			RK2928_CLKSEL_CON(10), 8, 2, DFLAGS | CLK_DIVIDER_POWER_OF_TWO,
 			RK2928_CLKGATE_CON(2), 2, GFLAGS),
-	GATE(ACLK_PERI, "aclk_peri", "aclk_peri_src", 0,
+	GATE(ACLK_PERI, "aclk_peri", "clk_peri_src", 0,
 			RK2928_CLKGATE_CON(2), 1, GFLAGS),
 
 	GATE(SCLK_TIMER0, "sclk_timer0", "xin24m", 0,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
