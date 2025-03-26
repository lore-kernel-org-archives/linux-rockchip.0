Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DB7DC36008
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Mar 2025 11:38:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zvLlZFk4ElvWib2/m+UPI+qx+wlyDNdFhvFICnG4+Sk=; b=WtJgxw4unMndQ1
	9PyfYVytY8qot0N3+raEDNcMzsL5FXVq0h52SQ6SdWdFyn0XLe4nYymbef5yGUOCNaJXjQ06rqcIn
	A6uaKl1sGb/F6hlPwk6LgQMvx795JeISDs7kGjudnDtZtIKk9p4xVFmMArryIcLRBpwCN9xMBGMU+
	GJF0g0LLz8yfMYH/KgvswX+X4dSrvC3hD4Cn8ByopKpLa9YCprbNCvRwcODw3eR3YQEkAJ/L6q8pS
	wXYRWjF1H+wWd8gzAWzqs8k+d0OlxH0E6jl6vdIb79gbzTJCUvpzwHO32/Y78fWPDBFFQWFk4mLNw
	1zgV3HGXfml7Qcleke6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txP5K-00000008NZL-2ztC;
	Wed, 26 Mar 2025 11:38:14 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txP3a-00000008NNz-2Cgz;
	Wed, 26 Mar 2025 11:36:28 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 71A1525D79;
	Wed, 26 Mar 2025 12:36:15 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L35YDY5GWVHS; Wed, 26 Mar 2025 12:36:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1742988974; bh=i+1SA1AXJQX4Q9Crpe7MCE2kgK7BHEod+Flw4MdzIdE=;
	h=From:To:Cc:Subject:Date;
	b=JEusnVnxCcLq5kc8e3+v66/68lTz7j7OUh6mkbl8CT8T6tvtQr6jw62C5VsbJJMMd
	 I/9VWOZurlvmrOOz89NfCPM0m9w0/wjtP82BQEmIhmj2QanHt5Dsmrrrhkepagpot7
	 /n65OZMjdQTl5zs1iigHL9VbA4kN4ArY4Dg5BcuQyKOoXaBMS6qMf57MA10GnpjY4S
	 e5PnPIwdRNE7UMT0lAmKQ0JoQYpIvVvdJalwgHFF54CrfM4y8XERNLfkQuDCJoqyfP
	 WYYfXvHrDFOR+K5pXM27DwyDTTKlzypWZs52SPIDMHYnaadwHO6yWlIs0Q0Ee6e6Ot
	 qZw7plq3SOHhQ==
From: Yao Zi <ziyao@disroot.org>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Yao Zi <ziyao@disroot.org>
Subject: [PATCH] clk: rockchip: Drop empty init callback for rk3588 PLL type
Date: Wed, 26 Mar 2025 11:35:56 +0000
Message-ID: <20250326113556.21039-1-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250326_043626_968440_FF8B08D9 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
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

Unlike PLLs in previous geneation of SoCs, PLLs in RK3588 type don't
require any platform-specific initialization. Drop callback
rockchip_rk3588_pll_init() that does nothing in fact to clean the
driver up.

Signed-off-by: Yao Zi <ziyao@disroot.org>
---
 drivers/clk/rockchip/clk-pll.c | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
index fe76756e592e..a2a57d47bbf8 100644
--- a/drivers/clk/rockchip/clk-pll.c
+++ b/drivers/clk/rockchip/clk-pll.c
@@ -1025,16 +1025,6 @@ static int rockchip_rk3588_pll_is_enabled(struct clk_hw *hw)
 	return !(pllcon & RK3588_PLLCON1_PWRDOWN);
 }
 
-static int rockchip_rk3588_pll_init(struct clk_hw *hw)
-{
-	struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
-
-	if (!(pll->flags & ROCKCHIP_PLL_SYNC_RATE))
-		return 0;
-
-	return 0;
-}
-
 static const struct clk_ops rockchip_rk3588_pll_clk_norate_ops = {
 	.recalc_rate = rockchip_rk3588_pll_recalc_rate,
 	.enable = rockchip_rk3588_pll_enable,
@@ -1049,7 +1039,6 @@ static const struct clk_ops rockchip_rk3588_pll_clk_ops = {
 	.enable = rockchip_rk3588_pll_enable,
 	.disable = rockchip_rk3588_pll_disable,
 	.is_enabled = rockchip_rk3588_pll_is_enabled,
-	.init = rockchip_rk3588_pll_init,
 };
 
 /*
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
