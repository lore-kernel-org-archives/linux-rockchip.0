Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C088C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Sep 2022 15:44:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s4F9A0rpCjWBbuCrD9rYjgFPGbfzMcFSbNEQFIEYTt8=; b=OX+ldNaDckiTRi
	iOqDrtX4M4AXGeGnlIhLvO7pvKVtRpCMgduSeKD4G5i7D4JVsmKUr5EyxPwWhGeaOs38Pc7hJqbVB
	tjXk36GOJRdy12QdjgK9yfQt8InEIRH0AGKsaK1VqBeblYVybPkbCwGDhCzJFp3J2ufw/VtuyQ0Qi
	c9FXAseqs+AlCvm2fUdsKR1wi+dtr5FvyFxN/hZqqNPcRthSI6DiQOfzOBnTUH+iFvuQrJkB4NrUB
	yluly3whE4jOV3VhgQyedxlfNWkzbdm1I7IJb5u6FiumF7LPtecK/Q1girnJDvKEikpvVeFMhxbJI
	gbV8rRNCIk0aBKSOhUrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeIB3-00AKH5-2a; Fri, 30 Sep 2022 15:43:49 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeI6a-00AHcx-FM; Fri, 30 Sep 2022 15:39:15 +0000
Received: from jupiter.universe (dyndsl-091-096-057-200.ewe-ip-backbone.de [91.96.57.200])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 487A966022F5;
	Fri, 30 Sep 2022 16:39:04 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1664552344;
	bh=TeTqZRe946LnzMhhkMsk3vs7AoSkghH96CaHVKDKCpM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=AUsVwByxZ3ah/mys9gjyZrZR3vUTzlMNqSzc26Q+3yrAvVTE+n+wjZnFvN4E2xyxy
	 nfyX4vliP6gl922/ZqrFi+fMRbhwjFbGV1H15HQ58uhOYlnFVWHBMXp6eG5LacKJ7m
	 Syeiwv4B+79s07mEk4pyxPPhXnXGHTc4rCfeYQQRqisGOl6/U0pPInO3qKminhWWp4
	 +b/lPMrkEyw7OG+vZZ92dBOZKxTCWgeGWOotWt/7e+qLqaOCSKkgDHHkh6SkvVzb7Z
	 DXBkf3QK/PMfXQGrbgFWemZKSMaw80BWMWI8ycTMMgVp38rbJkIh2Qwmy4obFlDxcO
	 pu1UpTT0WJaUA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 0F22348015E; Fri, 30 Sep 2022 17:38:59 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	linux-clk@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCHv2 7/9] clk: rockchip: simplify rockchip_clk_add_lookup
Date: Fri, 30 Sep 2022 17:38:55 +0200
Message-Id: <20220930153857.299396-8-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220930153857.299396-1-sebastian.reichel@collabora.com>
References: <20220930153857.299396-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_083912_701139_9EA5F996 
X-CRM114-Status: GOOD (  15.90  )
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

rockchip_clk_add_lookup is only called from within the file,
so it can be made static. The additional checks are removed
with the following reasoning:

1. The data structure is initialized by rockchip_clk_init(),
   which is called by all rockchip platforms before the clocks
   are registered. Not doing so would result in an incomplete
   clock tree at the moment, which is a fatal error. In other
   parts of the kernel these kind of checks are usually
   omitted, so this was done here. The alternative is adding
   a pr_err to inform the kernel programmer adding a new platform
   about his incorrect code. Apart from that we are also not
   checking if the clock id is within the array boundings.

2. While not used so far by any rockchip platform, 0 is a valid
   clock identifier. To align rockchip closer to other ARM
   platforms we will start using it with rk3588.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/clk/rockchip/clk.c | 14 ++++++--------
 drivers/clk/rockchip/clk.h |  2 --
 2 files changed, 6 insertions(+), 10 deletions(-)

diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index bb8a844309bf..cb3ab749ddc7 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -196,6 +196,12 @@ static void rockchip_fractional_approximation(struct clk_hw *hw,
 	clk_fractional_divider_general_approximation(hw, rate, parent_rate, m, n);
 }
 
+static void rockchip_clk_add_lookup(struct rockchip_clk_provider *ctx,
+				    struct clk *clk, unsigned int id)
+{
+	ctx->clk_data.clks[id] = clk;
+}
+
 static struct clk *rockchip_clk_register_frac_branch(
 		struct rockchip_clk_provider *ctx, const char *name,
 		const char *const *parent_names, u8 num_parents,
@@ -397,14 +403,6 @@ void rockchip_clk_of_add_provider(struct device_node *np,
 }
 EXPORT_SYMBOL_GPL(rockchip_clk_of_add_provider);
 
-void rockchip_clk_add_lookup(struct rockchip_clk_provider *ctx,
-			     struct clk *clk, unsigned int id)
-{
-	if (ctx->clk_data.clks && id)
-		ctx->clk_data.clks[id] = clk;
-}
-EXPORT_SYMBOL_GPL(rockchip_clk_add_lookup);
-
 void rockchip_clk_register_plls(struct rockchip_clk_provider *ctx,
 				struct rockchip_pll_clock *list,
 				unsigned int nr_pll, int grf_lock_offset)
diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
index 2bd1863a7418..4a84491faf39 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -892,8 +892,6 @@ struct rockchip_clk_provider *rockchip_clk_init(struct device_node *np,
 			void __iomem *base, unsigned long nr_clks);
 void rockchip_clk_of_add_provider(struct device_node *np,
 				struct rockchip_clk_provider *ctx);
-void rockchip_clk_add_lookup(struct rockchip_clk_provider *ctx,
-			     struct clk *clk, unsigned int id);
 void rockchip_clk_register_branches(struct rockchip_clk_provider *ctx,
 				    struct rockchip_clk_branch *list,
 				    unsigned int nr_clk);
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
