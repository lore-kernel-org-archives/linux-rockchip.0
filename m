Return-Path: <SRS0=unwu=CX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9149BC2D0E4
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Sep 2020 02:22:49 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 494352177B
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Sep 2020 02:22:49 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="TcGN+2wG"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 494352177B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8KwIwUA1PdkFmdsO/E4zTmQUpdue4dGi6IS5yth7FoA=; b=TcGN+2wGSnr9AdaJwNrNSPdFvr
	9Y0s5YSZVST8FG7jLUyO9M4oAYDj12a8AdZHuu9JdmH0islsRj9QfUsSxgVV5rpOarrGXyr3gDGxB
	S785CTLSxz1PWpROWuKz0e3Tl1iKXQ3WUiKsIylMifQQfSxocCVjcJWLjIgNHxl5vTKLPOyecSsjZ
	W9NOkjAzVBfuq1XTUR86pEBSw+ZVJrbEn77l6ssfiQKeYI5D2PwYtR63RS857hifZkQZ1J9IbgN+D
	lcVJsw0fAfu3eSZlTQCvocqP4UD51t41O0xooaNUAivARmhq/F/B+q8dlUX5KY9FPH1eRb0ELHVjy
	C2XQG6WQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kHe8j-0000XO-1v; Mon, 14 Sep 2020 02:22:45 +0000
Received: from lucky1.263xmail.com ([211.157.147.131])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHe8c-0000Tx-Gl
 for linux-rockchip@lists.infradead.org; Mon, 14 Sep 2020 02:22:41 +0000
Received: from localhost (unknown [192.168.167.172])
 by lucky1.263xmail.com (Postfix) with ESMTP id 54D36B4366;
 Mon, 14 Sep 2020 10:22:32 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P4753T140065155360512S1600050147471714_; 
 Mon, 14 Sep 2020 10:22:31 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <8078813770b0e9af415e8f67f9c91142>
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
Subject: [PATCH v4 4/6] clk: rockchip: Export some clock common APIs for
 module drivers
Date: Mon, 14 Sep 2020 10:22:23 +0800
Message-Id: <20200914022225.23613-5-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200914022225.23613-1-zhangqing@rock-chips.com>
References: <20200914022225.23613-1-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200913_222239_508170_8AF89C14 
X-CRM114-Status: GOOD (  14.83  )
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

This is used by the Rockchip clk driver, export it to allow that
driver to be compiled as a module.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
---
 drivers/clk/rockchip/clk.c | 52 ++++++++++++++++++++++----------------
 1 file changed, 30 insertions(+), 22 deletions(-)

diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index 46409972983e..b443169dd408 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -360,8 +360,9 @@ static struct clk *rockchip_clk_register_factor_branch(const char *name,
 	return hw->clk;
 }
 
-struct rockchip_clk_provider * __init rockchip_clk_init(struct device_node *np,
-			void __iomem *base, unsigned long nr_clks)
+struct rockchip_clk_provider *rockchip_clk_init(struct device_node *np,
+						void __iomem *base,
+						unsigned long nr_clks)
 {
 	struct rockchip_clk_provider *ctx;
 	struct clk **clk_table;
@@ -393,14 +394,16 @@ struct rockchip_clk_provider * __init rockchip_clk_init(struct device_node *np,
 	kfree(ctx);
 	return ERR_PTR(-ENOMEM);
 }
+EXPORT_SYMBOL_GPL(rockchip_clk_init);
 
-void __init rockchip_clk_of_add_provider(struct device_node *np,
-				struct rockchip_clk_provider *ctx)
+void rockchip_clk_of_add_provider(struct device_node *np,
+				  struct rockchip_clk_provider *ctx)
 {
 	if (of_clk_add_provider(np, of_clk_src_onecell_get,
 				&ctx->clk_data))
 		pr_err("%s: could not register clk provider\n", __func__);
 }
+EXPORT_SYMBOL_GPL(rockchip_clk_of_add_provider);
 
 void rockchip_clk_add_lookup(struct rockchip_clk_provider *ctx,
 			     struct clk *clk, unsigned int id)
@@ -408,8 +411,9 @@ void rockchip_clk_add_lookup(struct rockchip_clk_provider *ctx,
 	if (ctx->clk_data.clks && id)
 		ctx->clk_data.clks[id] = clk;
 }
+EXPORT_SYMBOL_GPL(rockchip_clk_add_lookup);
 
-void __init rockchip_clk_register_plls(struct rockchip_clk_provider *ctx,
+void rockchip_clk_register_plls(struct rockchip_clk_provider *ctx,
 				struct rockchip_pll_clock *list,
 				unsigned int nr_pll, int grf_lock_offset)
 {
@@ -432,11 +436,11 @@ void __init rockchip_clk_register_plls(struct rockchip_clk_provider *ctx,
 		rockchip_clk_add_lookup(ctx, clk, list->id);
 	}
 }
+EXPORT_SYMBOL_GPL(rockchip_clk_register_plls);
 
-void __init rockchip_clk_register_branches(
-				      struct rockchip_clk_provider *ctx,
-				      struct rockchip_clk_branch *list,
-				      unsigned int nr_clk)
+void rockchip_clk_register_branches(struct rockchip_clk_provider *ctx,
+				    struct rockchip_clk_branch *list,
+				    unsigned int nr_clk)
 {
 	struct clk *clk = NULL;
 	unsigned int idx;
@@ -565,14 +569,15 @@ void __init rockchip_clk_register_branches(
 		rockchip_clk_add_lookup(ctx, clk, list->id);
 	}
 }
-
-void __init rockchip_clk_register_armclk(struct rockchip_clk_provider *ctx,
-			unsigned int lookup_id,
-			const char *name, const char *const *parent_names,
-			u8 num_parents,
-			const struct rockchip_cpuclk_reg_data *reg_data,
-			const struct rockchip_cpuclk_rate_table *rates,
-			int nrates)
+EXPORT_SYMBOL_GPL(rockchip_clk_register_branches);
+
+void rockchip_clk_register_armclk(struct rockchip_clk_provider *ctx,
+				  unsigned int lookup_id,
+				  const char *name, const char *const *parent_names,
+				  u8 num_parents,
+				  const struct rockchip_cpuclk_reg_data *reg_data,
+				  const struct rockchip_cpuclk_rate_table *rates,
+				  int nrates)
 {
 	struct clk *clk;
 
@@ -587,9 +592,10 @@ void __init rockchip_clk_register_armclk(struct rockchip_clk_provider *ctx,
 
 	rockchip_clk_add_lookup(ctx, clk, lookup_id);
 }
+EXPORT_SYMBOL_GPL(rockchip_clk_register_armclk);
 
-void __init rockchip_clk_protect_critical(const char *const clocks[],
-					  int nclocks)
+void rockchip_clk_protect_critical(const char *const clocks[],
+				   int nclocks)
 {
 	int i;
 
@@ -601,6 +607,7 @@ void __init rockchip_clk_protect_critical(const char *const clocks[],
 			clk_prepare_enable(clk);
 	}
 }
+EXPORT_SYMBOL_GPL(rockchip_clk_protect_critical);
 
 static void __iomem *rst_base;
 static unsigned int reg_restart;
@@ -620,10 +627,10 @@ static struct notifier_block rockchip_restart_handler = {
 	.priority = 128,
 };
 
-void __init
+void
 rockchip_register_restart_notifier(struct rockchip_clk_provider *ctx,
-					       unsigned int reg,
-					       void (*cb)(void))
+				   unsigned int reg,
+				   void (*cb)(void))
 {
 	int ret;
 
@@ -635,3 +642,4 @@ rockchip_register_restart_notifier(struct rockchip_clk_provider *ctx,
 		pr_err("%s: cannot register restart handler, %d\n",
 		       __func__, ret);
 }
+EXPORT_SYMBOL_GPL(rockchip_register_restart_notifier);
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
