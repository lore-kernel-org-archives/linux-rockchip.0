Return-Path: <SRS0=ad98=HZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F38FCC433DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 09:54:29 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3810C64E02
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 09:54:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3810C64E02
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=amGuaDTwjXYXW4IuIvyRH8usP5KPMew1BPGtB6YPQO8=; b=s6k/CkYV5Vo0Wf3t5nVuhj5uIT
	FztvvfMetRjH3E3BSDdwpouYvERgeLjBOvrSOx0vRJYH0/tm+3xDzl69VY3VIv2AD8BckffdNF+wW
	0GhpxR8og8kOADR1K3yyGDGhlujVBD662lEhSA00bjViU9Ly9uU+qHWz9dEVaTmBS1Dv7LRX8Kikl
	xsJ8AALyKKXX4062gtpkQ/uNghI5JNE1OPR+OsQH41FNzavag39Qjvgfdwk/jRvZAlmr4sEZ60YdB
	Xxi6u8ZmHwDrv1HNdZdsduOUot8VOa6AtPPgXj2SDPkA0XHhG8vRYKrtoDr+Q3VcgFPNeJ+rJUKaS
	oLYYjqRw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEUOg-0005bc-9s; Tue, 23 Feb 2021 09:54:26 +0000
Received: from lucky1.263xmail.com ([211.157.147.131])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEUOP-0005Wf-Ul; Tue, 23 Feb 2021 09:54:12 +0000
Received: from localhost (unknown [192.168.167.130])
 by lucky1.263xmail.com (Postfix) with ESMTP id 2824CB8878;
 Tue, 23 Feb 2021 17:53:59 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P21323T140439055234816S1614074035264055_; 
 Tue, 23 Feb 2021 17:53:59 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <4ce57b2d39e1c22797ef4b8f76607591>
X-RL-SENDER: zhangqing@rock-chips.com
X-SENDER: zhangqing@rock-chips.com
X-LOGIN-NAME: zhangqing@rock-chips.com
X-FST-TO: sboyd@kernel.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Elaine Zhang <zhangqing@rock-chips.com>
To: sboyd@kernel.org,
	heiko@sntech.de
Subject: [PATCH v1 3/4] clk: rockchip: support more core div setting
Date: Tue, 23 Feb 2021 17:53:51 +0800
Message-Id: <20210223095352.11544-4-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210223095352.11544-1-zhangqing@rock-chips.com>
References: <20210223095352.11544-1-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210223_045410_503454_13066B8D 
X-CRM114-Status: GOOD (  13.19  )
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
Cc: huangtao@rock-chips.com, Elaine Zhang <zhangqing@rock-chips.com>,
 linux-kernel@vger.kernel.org, kever.yang@rock-chips.com,
 linux-rockchip@lists.infradead.org, tony.xie@rock-chips.com,
 finley.xiao@rock-chips.com, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, cl@rock-chips.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

A55 supports each core to work at different frequencies, and each core
has an independent divider control.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 drivers/clk/rockchip/clk-cpu.c | 25 +++++++++++++++++++++++++
 drivers/clk/rockchip/clk.h     | 17 ++++++++++++++++-
 2 files changed, 41 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-cpu.c b/drivers/clk/rockchip/clk-cpu.c
index fa9027fb1920..cac06f4f7573 100644
--- a/drivers/clk/rockchip/clk-cpu.c
+++ b/drivers/clk/rockchip/clk-cpu.c
@@ -164,6 +164,18 @@ static int rockchip_cpuclk_pre_rate_change(struct rockchip_cpuclk *cpuclk,
 				     reg_data->mux_core_mask,
 				     reg_data->mux_core_shift),
 		       cpuclk->reg_base + reg_data->core_reg);
+		if (reg_data->core1_reg)
+			writel(HIWORD_UPDATE(alt_div, reg_data->div_core1_mask,
+					     reg_data->div_core1_shift),
+			       cpuclk->reg_base + reg_data->core1_reg);
+		if (reg_data->core2_reg)
+			writel(HIWORD_UPDATE(alt_div, reg_data->div_core2_mask,
+					     reg_data->div_core2_shift),
+			       cpuclk->reg_base + reg_data->core2_reg);
+		if (reg_data->core3_reg)
+			writel(HIWORD_UPDATE(alt_div, reg_data->div_core3_mask,
+					     reg_data->div_core3_shift),
+			       cpuclk->reg_base + reg_data->core3_reg);
 	} else {
 		/* select alternate parent */
 		writel(HIWORD_UPDATE(reg_data->mux_core_alt,
@@ -209,6 +221,19 @@ static int rockchip_cpuclk_post_rate_change(struct rockchip_cpuclk *cpuclk,
 				reg_data->mux_core_shift),
 	       cpuclk->reg_base + reg_data->core_reg);
 
+	if (reg_data->core1_reg)
+		writel(HIWORD_UPDATE(0, reg_data->div_core1_mask,
+				     reg_data->div_core1_shift),
+		       cpuclk->reg_base + reg_data->core1_reg);
+	if (reg_data->core2_reg)
+		writel(HIWORD_UPDATE(0, reg_data->div_core2_mask,
+				     reg_data->div_core2_shift),
+		       cpuclk->reg_base + reg_data->core2_reg);
+	if (reg_data->core3_reg)
+		writel(HIWORD_UPDATE(0, reg_data->div_core3_mask,
+				     reg_data->div_core3_shift),
+		       cpuclk->reg_base + reg_data->core3_reg);
+
 	if (ndata->old_rate > ndata->new_rate)
 		rockchip_cpuclk_set_dividers(cpuclk, rate);
 
diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
index 2271a84124b0..b46c93fd0cb5 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -322,7 +322,7 @@ struct rockchip_cpuclk_clksel {
 	u32 val;
 };
 
-#define ROCKCHIP_CPUCLK_NUM_DIVIDERS	2
+#define ROCKCHIP_CPUCLK_NUM_DIVIDERS	5
 struct rockchip_cpuclk_rate_table {
 	unsigned long prate;
 	struct rockchip_cpuclk_clksel divs[ROCKCHIP_CPUCLK_NUM_DIVIDERS];
@@ -333,6 +333,12 @@ struct rockchip_cpuclk_rate_table {
  * @core_reg:		register offset of the core settings register
  * @div_core_shift:	core divider offset used to divide the pll value
  * @div_core_mask:	core divider mask
+ * @div_core1_shift:	core1 divider offset used to divide the pll value
+ * @div_core1_mask:	core1 divider mask
+ * @div_core2_shift:	core2 divider offset used to divide the pll value
+ * @div_core2_mask:	core2 divider mask
+ * @div_core3_shift:	core3 divider offset used to divide the pll value
+ * @div_core3_mask:	core3 divider mask
  * @mux_core_alt:	mux value to select alternate parent
  * @mux_core_main:	mux value to select main parent of core
  * @mux_core_shift:	offset of the core multiplexer
@@ -342,6 +348,15 @@ struct rockchip_cpuclk_reg_data {
 	int		core_reg;
 	u8		div_core_shift;
 	u32		div_core_mask;
+	int		core1_reg;
+	u8		div_core1_shift;
+	u32		div_core1_mask;
+	int		core2_reg;
+	u8		div_core2_shift;
+	u32		div_core2_mask;
+	int		core3_reg;
+	u8		div_core3_shift;
+	u32		div_core3_mask;
 	u8		mux_core_alt;
 	u8		mux_core_main;
 	u8		mux_core_shift;
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
