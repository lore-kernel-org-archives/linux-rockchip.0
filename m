Return-Path: <SRS0=3L0h=CL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 09890C433E2
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2020 06:49:19 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CC0E820665
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2020 06:49:18 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="eig7GLuQ"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CC0E820665
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wSfqEx+DymloKXoYvdhPAVigfbav7v7HcYAApNEf3xQ=; b=eig7GLuQ1PZwZcFtMfpc0HDScz
	/OBBZIWV3BLvYwmU/AvO2k3VRsqluzeWkKuuZX0gCT31Bb+BsAehnC3hZb5zq56DNNSBM4ysSrz3Q
	W9NZ5f1niF8JazZZPeoa3eOcxeSDt+shajToMT70SkLU9Piw5Ngj3UHvulxO3tCqbCZVBAKa621vq
	adVOv4cnze6mytCRwkLRrgZOtw8TBNxOO92QRsibASQ5fNr5x1vFAA3xhhXc12ctrYP5fJyYlmhYt
	PiGFnpY8g1KnMHEh9k01RDeeiwlx4J9e/1ExtC+YILVBoVMxcu0PWgruIjl8kk1q86Rl7DcIDg+gT
	AUwaXVyg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kDMa2-0003Ml-IF; Wed, 02 Sep 2020 06:49:14 +0000
Received: from lucky1.263xmail.com ([211.157.147.135])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kDMZw-0003Iv-LH
 for linux-rockchip@lists.infradead.org; Wed, 02 Sep 2020 06:49:11 +0000
Received: from localhost (unknown [192.168.167.32])
 by lucky1.263xmail.com (Postfix) with ESMTP id AA8F0A28B8;
 Wed,  2 Sep 2020 14:48:56 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P11834T140500898137856S1599029334223657_; 
 Wed, 02 Sep 2020 14:48:56 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <9031bee566e3d13e8f138596523814dc>
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
Subject: [PATCH v1 1/6] clk: rockchip: Use clk_hw_register_composite instead
 of clk_register_composite calls
Date: Wed,  2 Sep 2020 14:48:42 +0800
Message-Id: <20200902064847.18881-2-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200902064847.18881-1-zhangqing@rock-chips.com>
References: <20200902064847.18881-1-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200902_024909_188039_AFC6A006 
X-CRM114-Status: GOOD (  11.61  )
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
---
 drivers/clk/rockchip/clk-half-divider.c | 12 +++++----
 drivers/clk/rockchip/clk.c              | 35 ++++++++++++++-----------
 2 files changed, 27 insertions(+), 20 deletions(-)

diff --git a/drivers/clk/rockchip/clk-half-divider.c b/drivers/clk/rockchip/clk-half-divider.c
index b333fc28c94b..35db0651ea1d 100644
--- a/drivers/clk/rockchip/clk-half-divider.c
+++ b/drivers/clk/rockchip/clk-half-divider.c
@@ -166,6 +166,7 @@ struct clk *rockchip_clk_register_halfdiv(const char *name,
 					  unsigned long flags,
 					  spinlock_t *lock)
 {
+	struct clk_hw *hw;
 	struct clk *clk;
 	struct clk_mux *mux = NULL;
 	struct clk_gate *gate = NULL;
@@ -212,12 +213,13 @@ struct clk *rockchip_clk_register_halfdiv(const char *name,
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
 
+	clk = hw->clk;
 	return clk;
 err_div:
 	kfree(gate);
diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index 546e810c3560..2cfebfb61814 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -43,6 +43,7 @@ static struct clk *rockchip_clk_register_branch(const char *name,
 		u8 gate_shift, u8 gate_flags, unsigned long flags,
 		spinlock_t *lock)
 {
+	struct clk_hw *hw;
 	struct clk *clk;
 	struct clk_mux *mux = NULL;
 	struct clk_gate *gate = NULL;
@@ -100,12 +101,12 @@ static struct clk *rockchip_clk_register_branch(const char *name,
 						: &clk_divider_ops;
 	}
 
-	clk = clk_register_composite(NULL, name, parent_names, num_parents,
-				     mux ? &mux->hw : NULL, mux_ops,
-				     div ? &div->hw : NULL, div_ops,
-				     gate ? &gate->hw : NULL, gate_ops,
-				     flags);
-
+	hw = clk_hw_register_composite(NULL, name, parent_names, num_parents,
+				       mux ? &mux->hw : NULL, mux_ops,
+				       div ? &div->hw : NULL, div_ops,
+				       gate ? &gate->hw : NULL, gate_ops,
+				       flags);
+	clk = hw->clk;
 	if (IS_ERR(clk)) {
 		ret = PTR_ERR(clk);
 		goto err_composite;
@@ -214,6 +215,7 @@ static struct clk *rockchip_clk_register_frac_branch(
 		unsigned long flags, struct rockchip_clk_branch *child,
 		spinlock_t *lock)
 {
+	struct clk_hw *hw;
 	struct rockchip_clk_frac *frac;
 	struct clk *clk;
 	struct clk_gate *gate = NULL;
@@ -255,11 +257,12 @@ static struct clk *rockchip_clk_register_frac_branch(
 	div->approximation = rockchip_fractional_approximation;
 	div_ops = &clk_fractional_divider_ops;
 
-	clk = clk_register_composite(NULL, name, parent_names, num_parents,
-				     NULL, NULL,
-				     &div->hw, div_ops,
-				     gate ? &gate->hw : NULL, gate_ops,
-				     flags | CLK_SET_RATE_UNGATE);
+	hw = clk_hw_register_composite(NULL, name, parent_names, num_parents,
+				       NULL, NULL,
+				       &div->hw, div_ops,
+				       gate ? &gate->hw : NULL, gate_ops,
+				       flags | CLK_SET_RATE_UNGATE);
+	clk = hw->clk;
 	if (IS_ERR(clk)) {
 		kfree(frac);
 		return clk;
@@ -320,6 +323,7 @@ static struct clk *rockchip_clk_register_factor_branch(const char *name,
 		int gate_offset, u8 gate_shift, u8 gate_flags,
 		unsigned long flags, spinlock_t *lock)
 {
+	struct clk_hw *hw;
 	struct clk *clk;
 	struct clk_gate *gate = NULL;
 	struct clk_fixed_factor *fix = NULL;
@@ -349,10 +353,11 @@ static struct clk *rockchip_clk_register_factor_branch(const char *name,
 	fix->mult = mult;
 	fix->div = div;
 
-	clk = clk_register_composite(NULL, name, parent_names, num_parents,
-				     NULL, NULL,
-				     &fix->hw, &clk_fixed_factor_ops,
-				     &gate->hw, &clk_gate_ops, flags);
+	hw = clk_hw_register_composite(NULL, name, parent_names, num_parents,
+				       NULL, NULL,
+				       &fix->hw, &clk_fixed_factor_ops,
+				       &gate->hw, &clk_gate_ops, flags);
+	clk = hw->clk;
 	if (IS_ERR(clk)) {
 		kfree(fix);
 		kfree(gate);
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
