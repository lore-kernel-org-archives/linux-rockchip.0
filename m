Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BD14E7716A
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Dec 2024 22:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jK+cDSuNl0eIWazw3jhdXslUXo416Fm866dJOdICgw0=; b=i1OdtD9xwq2atP
	XIKpNZx0p83bdUTmjNYM+GeFhnH1emdbuPLIZ/OHWGgIibDuC+6ELR8fzdfAnIJXVxc4ZZtuHRs9D
	M/Pk5abQEl9s1kyXhAO6kFKzDYKkF4X7k/S+KFubRDq45QjwzSNp1K4tQYX32G3pJgWhW0jlmYJnl
	YLz1C/UTvBgsECFQOLJR3yO5hmmqGDyDvfI1afapmFrONitPV98LNKExGGMF6pwBUpNtM9v80rRMS
	lAWVhqfmeReffRz9gxL7aiMkfeBaNYAvIRDUJ6o4aa98m4alUXBzpEszqZCHzNJffQGRUKXAgsMtd
	bvZN9jT6StqARrbLZPdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tMaxM-000000074o8-3X2M;
	Sat, 14 Dec 2024 22:49:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tMavz-000000074cc-1yft;
	Sat, 14 Dec 2024 22:48:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=w/mwqlldhdUNZw8mhvNpRd4TsYnOabctYvvTfesFo7E=; b=0XE8byCmo+jmC1INaQjAPTlrus
	pPgB1W+DtrHXZxckAdQ8tpoNGo63j6EWf5xQYwEE2TzLhZS/5d4tkvPOVm8LlywyT//jfGfw/HXaW
	T6yDc68rzv5Meia8jIcZREvC4R2K+Lrk1FMeYDMCJGZgCMEAoDmIsbjUS43Elf6h6NRzIkkBXAvoJ
	avrIKxVO7Luc6zYYSFENDqDRaG0SFx0GuIJvNBGaosdmVFCVH14K1i1RaPSVwU/JhR67ddXf+MK7s
	yw+xv1oA7FtwI62+Z+jmu9uDogCzzpyBqL+ezXeiqDvn4LC6gYGhEbItOLeCwjP6G2J090ckNAq75
	TrOJStGw==;
Received: from i53875bc4.versanet.de ([83.135.91.196] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tMavv-0000P4-Tk; Sat, 14 Dec 2024 23:48:23 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	quentin.schulz@cherry.de,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	linux-clk@vger.kernel.org,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH] clk: rockchip: rk3588: make refclko25m_ethX critical
Date: Sat, 14 Dec 2024 23:48:19 +0100
Message-ID: <20241214224820.200665-1-heiko@sntech.de>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241214_144827_529606_6788A441 
X-CRM114-Status: GOOD (  13.32  )
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

From: Heiko Stuebner <heiko.stuebner@cherry.de>

Ethernet phys normally need a 25MHz refclk input. On a lot of boards
this is done with a dedicated 25MHz crystal. But the rk3588 CRU also
provides a means for that via the refclko25m_ethX clock outputs that
can be used for that function.

The mdio bus normally probes devices on the bus at runtime, by reading
specific phy registers. This requires the phy to be running and thus
also being supplied by its reference clock.

While there exist the possibility and dt-binding to declare these
input clocks for each phy in the phy-dt-node, this is only relevant
_after_ the phy has been detected and during the drivers probe-run.

This results in a chicken-and-egg-problem. The refclks in the CRU are
running on boot of course, but phy-probing can very well happen after
clk_disable_unused has run.

In the past I tried to make clock-handling part of the mdio bus code [0]
but that wasn't very well received, due to it being specific to OF and
clocks with the consensus being that resources needed for detection
need to be enabled before.

So to make probing ethernet phys using the internal refclks possible,
make those 2 clocks critical.

[0] https://lore.kernel.org/netdev/13590315.F0gNSz5aLb@diego/T/

Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
---
 drivers/clk/rockchip/clk-rk3588.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3588.c b/drivers/clk/rockchip/clk-rk3588.c
index 0ffaf639f807..2f63985a6d07 100644
--- a/drivers/clk/rockchip/clk-rk3588.c
+++ b/drivers/clk/rockchip/clk-rk3588.c
@@ -792,10 +792,10 @@ static struct rockchip_clk_branch rk3588_clk_branches[] __initdata = {
 	COMPOSITE(MCLK_GMAC0_OUT, "mclk_gmac0_out", gpll_cpll_p, 0,
 			RK3588_CLKSEL_CON(15), 7, 1, MFLAGS, 0, 7, DFLAGS,
 			RK3588_CLKGATE_CON(5), 3, GFLAGS),
-	COMPOSITE(REFCLKO25M_ETH0_OUT, "refclko25m_eth0_out", gpll_cpll_p, 0,
+	COMPOSITE(REFCLKO25M_ETH0_OUT, "refclko25m_eth0_out", gpll_cpll_p, CLK_IS_CRITICAL,
 			RK3588_CLKSEL_CON(15), 15, 1, MFLAGS, 8, 7, DFLAGS,
 			RK3588_CLKGATE_CON(5), 4, GFLAGS),
-	COMPOSITE(REFCLKO25M_ETH1_OUT, "refclko25m_eth1_out", gpll_cpll_p, 0,
+	COMPOSITE(REFCLKO25M_ETH1_OUT, "refclko25m_eth1_out", gpll_cpll_p, CLK_IS_CRITICAL,
 			RK3588_CLKSEL_CON(16), 7, 1, MFLAGS, 0, 7, DFLAGS,
 			RK3588_CLKGATE_CON(5), 5, GFLAGS),
 	COMPOSITE(CLK_CIFOUT_OUT, "clk_cifout_out", gpll_cpll_24m_spll_p, 0,
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
