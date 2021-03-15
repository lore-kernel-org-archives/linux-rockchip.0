Return-Path: <SRS0=ms/I=IN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04A48C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Mar 2021 11:25:48 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0AA8F60C3E
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Mar 2021 11:25:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0AA8F60C3E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2fKRSApCZIQue/q0j6ixkpsitkzc3fc0ePSX+2afHkI=; b=dtHEA/F4cDNu2LAnxjzZYCckHY
	4XudW7nkjKaVqcV2IWdPJqnSXONrmWlRM8+ltJbMcMpdTi81iPOfulymkjdq9I45g/NZaHIzBFS/U
	EJDdjiAa7bPulgyGjMkW/abQDDSwzQQtMhEp/s4lSiq7CkbsiJ0ZJyK89YEx5ehmMTyGH4ivtW7qb
	ZnxSHckLFXUhuizRrnIAdCmTZEcTGVaQReYLDYYzm4p+n5nUhCTf22mK2tbiAdx5300wlK6Cs8n9m
	uLB8U3kXjiV/IBYVBSyB8Gp4V59qaUgOEaquXkLxodzwWx3yc9oz4sp82OkZ33vjxGi3L6mkk42lT
	ggwuWRJQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLlLp-00Fev9-HB; Mon, 15 Mar 2021 11:25:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLlLe-00Fesr-Ab
 for linux-rockchip@lists.infradead.org; Mon, 15 Mar 2021 11:25:29 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lLlLT-0007LD-Md; Mon, 15 Mar 2021 12:25:11 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: linux-clk@vger.kernel.org, zhangqing@rock-chips.com,
 mturquette@baylibre.com, sboyd@kernel.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH 1/2] clk: rockchip: drop parenthesis from ARM || COMPILE_TEST
 depends
Date: Mon, 15 Mar 2021 12:25:01 +0100
Message-Id: <20210315112502.343699-1-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_112527_616669_5D900EEC 
X-CRM114-Status: GOOD (  11.89  )
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

As suggested by Stephen in the series adding the rk3568 clock controller
the depends works just as well without the parenthesis around the depends.

So to make everything look the same, drop them from existing entries too.

Suggested-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/clk/rockchip/Kconfig | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/clk/rockchip/Kconfig b/drivers/clk/rockchip/Kconfig
index effd05032e85..067aacec96db 100644
--- a/drivers/clk/rockchip/Kconfig
+++ b/drivers/clk/rockchip/Kconfig
@@ -11,77 +11,77 @@ config COMMON_CLK_ROCKCHIP
 if COMMON_CLK_ROCKCHIP
 config CLK_PX30
 	bool "Rockchip PX30 clock controller support"
-	depends on (ARM64 || COMPILE_TEST)
+	depends on ARM64 || COMPILE_TEST
 	default y
 	help
 	  Build the driver for PX30 Clock Driver.
 
 config CLK_RV110X
 	bool "Rockchip RV110x clock controller support"
-	depends on (ARM || COMPILE_TEST)
+	depends on ARM || COMPILE_TEST
 	default y
 	help
 	  Build the driver for RV110x Clock Driver.
 
 config CLK_RK3036
 	bool "Rockchip RK3036 clock controller support"
-	depends on (ARM || COMPILE_TEST)
+	depends on ARM || COMPILE_TEST
 	default y
 	help
 	  Build the driver for RK3036 Clock Driver.
 
 config CLK_RK312X
 	bool "Rockchip RK312x clock controller support"
-	depends on (ARM || COMPILE_TEST)
+	depends on ARM || COMPILE_TEST
 	default y
 	help
 	  Build the driver for RK312x Clock Driver.
 
 config CLK_RK3188
 	bool "Rockchip RK3188 clock controller support"
-	depends on (ARM || COMPILE_TEST)
+	depends on ARM || COMPILE_TEST
 	default y
 	help
 	  Build the driver for RK3188 Clock Driver.
 
 config CLK_RK322X
 	bool "Rockchip RK322x clock controller support"
-	depends on (ARM || COMPILE_TEST)
+	depends on ARM || COMPILE_TEST
 	default y
 	help
 	  Build the driver for RK322x Clock Driver.
 
 config CLK_RK3288
 	bool "Rockchip RK3288 clock controller support"
-	depends on (ARM || COMPILE_TEST)
+	depends on ARM || COMPILE_TEST
 	default y
 	help
 	  Build the driver for RK3288 Clock Driver.
 
 config CLK_RK3308
 	bool "Rockchip RK3308 clock controller support"
-	depends on (ARM64 || COMPILE_TEST)
+	depends on ARM64 || COMPILE_TEST
 	default y
 	help
 	  Build the driver for RK3308 Clock Driver.
 
 config CLK_RK3328
 	bool "Rockchip RK3328 clock controller support"
-	depends on (ARM64 || COMPILE_TEST)
+	depends on ARM64 || COMPILE_TEST
 	default y
 	help
 	  Build the driver for RK3328 Clock Driver.
 
 config CLK_RK3368
 	bool "Rockchip RK3368 clock controller support"
-	depends on (ARM64 || COMPILE_TEST)
+	depends on ARM64 || COMPILE_TEST
 	default y
 	help
 	  Build the driver for RK3368 Clock Driver.
 
 config CLK_RK3399
 	tristate "Rockchip RK3399 clock controller support"
-	depends on (ARM64 || COMPILE_TEST)
+	depends on ARM64 || COMPILE_TEST
 	default y
 	help
 	  Build the driver for RK3399 Clock Driver.
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
