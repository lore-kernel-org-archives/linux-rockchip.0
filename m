Return-Path: <SRS0=unwu=CX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CD2EC31E40
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Sep 2020 02:22:49 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 58C2F21897
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Sep 2020 02:22:49 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="aLCp/33Q"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 58C2F21897
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nB64Rdsvx3fAJoiHX3ZcK7v50Sc4yWJiN4AMMppkPRA=; b=aLCp/33QiDpFqE9Mwu1uRmhw2P
	Ws1hRevokH52jhiG++MZFp6pZWFVXmAbmWLIXh9KAP4Zk8jKRROWboFWF3ArvkswAe2jE0e+eXyR/
	21wHzHkabkECOg5pAErSdM4C5tUooz4+OVO6rxsJNz9hro+mMCHQkyoJyUer7+lysPPIgfju+sRf3
	odY/4s83uoMr4/siLGgHs+oiP9tOTZy8uz8ojiPwjNuVonjAQ8qLuPaQuRGykryGuyhd8C14HOTv7
	jXLRlQavPL11i+w+5afBSJAHm8yXTAL9CA3N8ZsT6ibNk91SqBZJQzaUgE/tD3nRjjeo+gsIihGlB
	+XYh4f1A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kHe8g-0000Wc-W8; Mon, 14 Sep 2020 02:22:43 +0000
Received: from lucky1.263xmail.com ([211.157.147.135])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHe8c-0000To-HR
 for linux-rockchip@lists.infradead.org; Mon, 14 Sep 2020 02:22:40 +0000
Received: from localhost (unknown [192.168.167.172])
 by lucky1.263xmail.com (Postfix) with ESMTP id 95BA8A4C7C;
 Mon, 14 Sep 2020 10:22:29 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P4753T140065155360512S1600050147471714_; 
 Mon, 14 Sep 2020 10:22:29 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <e5bb2e416f13b2f601d855ca1a02619b>
X-RL-SENDER: zhangqing@rock-chips.com
X-SENDER: zhangqing@rock-chips.com
X-LOGIN-NAME: zhangqing@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
From: Elaine Zhang <zhangqing@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v4 1/6] clk: rockchip: Use clk_hw_register_composite instead
 of clk_register_composite calls
Date: Mon, 14 Sep 2020 10:22:20 +0800
Message-Id: <20200914022225.23613-2-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200914022225.23613-1-zhangqing@rock-chips.com>
References: <20200914022225.23613-1-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200913_222239_019822_97BE09BE 
X-CRM114-Status: GOOD (  15.28  )
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
Cc: huangtao@rock-chips.com, xf@rock-chips.com, sboyd@kernel.org,
 mturquette@baylibre.com, Elaine Zhang <zhangqing@rock-chips.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org,
 xxx@rock-chips.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

clk_hw_register_composite it's already exported.
Preparation for compilation of rK common clock drivers into modules.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Reported-by: kernel test robot <lkp@intel.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/clk/rockchip/clk-half-divider.c | 18 ++++----
 drivers/clk/rockchip/clk.c              | 61 ++++++++++++-------------
 2 files changed, 40 insertions(+), 39 deletions(-)

diff --git a/drivers/clk/rockchip/clk-half-divider.c b/drivers/clk/rockchip/clk-half-divider.c
index b333fc28c94b..e97fd3dfbae7 100644
--- a/drivers/clk/rockchip/clk-half-divider.c
+++ b/drivers/clk/rockchip/clk-half-divider.c
@@ -166,7 +166,7 @@ struct clk *rockchip_clk_register_halfdiv(const char *name,
 					  unsigned long flags,
 					  spinlock_t *lock)
 {
-	struct clk *clk;
+	struct clk_hw *hw;
 	struct clk_mux *mux = NULL;
 	struct clk_gate *gate = NULL;
 	struct clk_divider *div = NULL;
@@ -212,16 +212,18 @@ struct clk *rockchip_clk_register_halfdiv(const char *name,
 		div_ops = &clk_half_divider_ops;
 	}
 
-	clk = clk_register_composite(NULL, name, parent_names, num_parents,
-				     mux ? &mux->hw : NULL, mux_ops,
-				     div ? &div->hw : NULL, div_ops,
-				     gate ? &gate->hw : NULL, gate_ops,
-				     flags);
+	hw = clk_hw_register_composite(NULL, name, parent_names, num_parents,
+				       mux ? &mux->hw : NULL, mux_ops,
+				       div ? &div->hw : NULL, div_ops,
+				       gate ? &gate->hw : NULL, gate_ops,
+				       flags);
+	if (IS_ERR(hw))
+		goto err_div;
 
-	return clk;
+	return hw->clk;
 err_div:
 	kfree(gate);
 err_gate:
 	kfree(mux);
-	return ERR_PTR(-ENOMEM);
+	return ERR_CAST(hw);
 }
diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index 546e810c3560..46409972983e 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -43,7 +43,7 @@ static struct clk *rockchip_clk_register_branch(const char *name,
 		u8 gate_shift, u8 gate_flags, unsigned long flags,
 		spinlock_t *lock)
 {
-	struct clk *clk;
+	struct clk_hw *hw;
 	struct clk_mux *mux = NULL;
 	struct clk_gate *gate = NULL;
 	struct clk_divider *div = NULL;
@@ -100,20 +100,18 @@ static struct clk *rockchip_clk_register_branch(const char *name,
 						: &clk_divider_ops;
 	}
 
-	clk = clk_register_composite(NULL, name, parent_names, num_parents,
-				     mux ? &mux->hw : NULL, mux_ops,
-				     div ? &div->hw : NULL, div_ops,
-				     gate ? &gate->hw : NULL, gate_ops,
-				     flags);
-
-	if (IS_ERR(clk)) {
-		ret = PTR_ERR(clk);
-		goto err_composite;
+	hw = clk_hw_register_composite(NULL, name, parent_names, num_parents,
+				       mux ? &mux->hw : NULL, mux_ops,
+				       div ? &div->hw : NULL, div_ops,
+				       gate ? &gate->hw : NULL, gate_ops,
+				       flags);
+	if (IS_ERR(hw)) {
+		kfree(div);
+		kfree(gate);
+		return ERR_CAST(hw);
 	}
 
-	return clk;
-err_composite:
-	kfree(div);
+	return hw->clk;
 err_div:
 	kfree(gate);
 err_gate:
@@ -214,8 +212,8 @@ static struct clk *rockchip_clk_register_frac_branch(
 		unsigned long flags, struct rockchip_clk_branch *child,
 		spinlock_t *lock)
 {
+	struct clk_hw *hw;
 	struct rockchip_clk_frac *frac;
-	struct clk *clk;
 	struct clk_gate *gate = NULL;
 	struct clk_fractional_divider *div = NULL;
 	const struct clk_ops *div_ops = NULL, *gate_ops = NULL;
@@ -255,14 +253,14 @@ static struct clk *rockchip_clk_register_frac_branch(
 	div->approximation = rockchip_fractional_approximation;
 	div_ops = &clk_fractional_divider_ops;
 
-	clk = clk_register_composite(NULL, name, parent_names, num_parents,
-				     NULL, NULL,
-				     &div->hw, div_ops,
-				     gate ? &gate->hw : NULL, gate_ops,
-				     flags | CLK_SET_RATE_UNGATE);
-	if (IS_ERR(clk)) {
+	hw = clk_hw_register_composite(NULL, name, parent_names, num_parents,
+				       NULL, NULL,
+				       &div->hw, div_ops,
+				       gate ? &gate->hw : NULL, gate_ops,
+				       flags | CLK_SET_RATE_UNGATE);
+	if (IS_ERR(hw)) {
 		kfree(frac);
-		return clk;
+		return ERR_CAST(hw);
 	}
 
 	if (child) {
@@ -292,7 +290,7 @@ static struct clk *rockchip_clk_register_frac_branch(
 		mux_clk = clk_register(NULL, &frac_mux->hw);
 		if (IS_ERR(mux_clk)) {
 			kfree(frac);
-			return clk;
+			return mux_clk;
 		}
 
 		rockchip_clk_add_lookup(ctx, mux_clk, child->id);
@@ -301,7 +299,7 @@ static struct clk *rockchip_clk_register_frac_branch(
 		if (frac->mux_frac_idx >= 0) {
 			pr_debug("%s: found fractional parent in mux at pos %d\n",
 				 __func__, frac->mux_frac_idx);
-			ret = clk_notifier_register(clk, &frac->clk_nb);
+			ret = clk_notifier_register(hw->clk, &frac->clk_nb);
 			if (ret)
 				pr_err("%s: failed to register clock notifier for %s\n",
 						__func__, name);
@@ -311,7 +309,7 @@ static struct clk *rockchip_clk_register_frac_branch(
 		}
 	}
 
-	return clk;
+	return hw->clk;
 }
 
 static struct clk *rockchip_clk_register_factor_branch(const char *name,
@@ -320,7 +318,7 @@ static struct clk *rockchip_clk_register_factor_branch(const char *name,
 		int gate_offset, u8 gate_shift, u8 gate_flags,
 		unsigned long flags, spinlock_t *lock)
 {
-	struct clk *clk;
+	struct clk_hw *hw;
 	struct clk_gate *gate = NULL;
 	struct clk_fixed_factor *fix = NULL;
 
@@ -349,16 +347,17 @@ static struct clk *rockchip_clk_register_factor_branch(const char *name,
 	fix->mult = mult;
 	fix->div = div;
 
-	clk = clk_register_composite(NULL, name, parent_names, num_parents,
-				     NULL, NULL,
-				     &fix->hw, &clk_fixed_factor_ops,
-				     &gate->hw, &clk_gate_ops, flags);
-	if (IS_ERR(clk)) {
+	hw = clk_hw_register_composite(NULL, name, parent_names, num_parents,
+				       NULL, NULL,
+				       &fix->hw, &clk_fixed_factor_ops,
+				       &gate->hw, &clk_gate_ops, flags);
+	if (IS_ERR(hw)) {
 		kfree(fix);
 		kfree(gate);
+		return ERR_CAST(hw);
 	}
 
-	return clk;
+	return hw->clk;
 }
 
 struct rockchip_clk_provider * __init rockchip_clk_init(struct device_node *np,
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
