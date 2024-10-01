Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E694FCEB2EE
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Oct 2024 04:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wylVzzAW1UHEgODoWmcuJDOEinwhbfyFgjpvwtMAmVY=; b=B+cCgBFlVtTNRW
	U2NcbACLsI+786Q7BubLAwveP4/pxdBn5N5jUWQRE60rKKvY2L6wrifRNfRnpBK41RVWV0iR1ojKP
	gHn74QzzVPnx0rUCeYvvzYiccslLvnIq66bgFTBn7XDYvnuPwEt5O629XfPHAzCWE+N3E21F7Fo92
	QpW5dahS6xu5GfdM+burfuDzxONAHTC7PVYc5pqi5R44aMG8z1/WqIV1TOFDfEqndxNdBZkF4xoWr
	6OJIoP2GR+QETDcjqiEPfwwHci6896OKfcoCSZ7j0YJIpCcZNxrJalw4hQuyP0N8plUFWq/p9MhwE
	G+/2msbMHkAy/NsXUDrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svUYC-00000001ZQJ-2olq;
	Tue, 01 Oct 2024 04:31:52 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svUSM-00000001YPN-0wVf;
	Tue, 01 Oct 2024 04:25:51 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 0867823CB2;
	Tue,  1 Oct 2024 06:25:49 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EQi-h7-SyM0d; Tue,  1 Oct 2024 06:25:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1727756748; bh=g3/xsaggoBD8STCM4ioqMxyKkwu2ClnVteNZa156RfA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=KTHaUHi1CaAPViTnRp4BcBT/sKGPTXc54XXajNENC0cMFzf3fe7XB/TMz/nIZoKxZ
	 9bO5sZ2xuKZ1kWtbp4uh3dc2gRCYDnphjrfbS2pSvXeCdbMHfabSCq7QTNuKjMpstA
	 SmC9SJc0iUh8JppZXanppafF9RaIyIIjucv1O0qoKMBXIrJWQGuQAxWNJI4TDvjWDt
	 AmPgfbu4ki53n0Vyl8EEK9yHx1nuJtifBZCM5TnnVIUYxzlnOVMmDVcmtHmenP1Uyv
	 zzZ6SY2jaZl1H1q171JJRHoexOR34HzXWjATQhMuWnFRhNAav6t1Pf7JE0m08zFCZw
	 glskzc2BSudwQ==
From: Yao Zi <ziyao@disroot.org>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Celeste Liu <CoelacanthusHex@gmail.com>,
	Yao Zi <ziyao@disroot.org>
Subject: [PATCH 4/8] clk: rockchip: Add PLL flag ROCKCHIP_PLL_FIXED_MODE
Date: Tue,  1 Oct 2024 04:23:58 +0000
Message-ID: <20241001042401.31903-6-ziyao@disroot.org>
In-Reply-To: <20241001042401.31903-2-ziyao@disroot.org>
References: <20241001042401.31903-2-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_212550_420335_34F28BF9 
X-CRM114-Status: GOOD (  13.28  )
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

RK3528 comes with a new PLL type, flagged by ROCKCHIP_PLL_FIXED_MODE,
which should operate in normal mode only. Add corresponding definition
and handle it in code.

Signed-off-by: Yao Zi <ziyao@disroot.org>
---
 drivers/clk/rockchip/clk-pll.c | 10 ++++++----
 drivers/clk/rockchip/clk.h     |  2 ++
 2 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
index 606ce5458f54..46be1c67301a 100644
--- a/drivers/clk/rockchip/clk-pll.c
+++ b/drivers/clk/rockchip/clk-pll.c
@@ -204,10 +204,12 @@ static int rockchip_rk3036_pll_set_params(struct rockchip_clk_pll *pll,
 	rockchip_rk3036_pll_get_params(pll, &cur);
 	cur.rate = 0;
 
-	cur_parent = pll_mux_ops->get_parent(&pll_mux->hw);
-	if (cur_parent == PLL_MODE_NORM) {
-		pll_mux_ops->set_parent(&pll_mux->hw, PLL_MODE_SLOW);
-		rate_change_remuxed = 1;
+	if (!(pll->flags & ROCKCHIP_PLL_FIXED_MODE)) {
+		cur_parent = pll_mux_ops->get_parent(&pll_mux->hw);
+		if (cur_parent == PLL_MODE_NORM) {
+			pll_mux_ops->set_parent(&pll_mux->hw, PLL_MODE_SLOW);
+			rate_change_remuxed = 1;
+		}
 	}
 
 	/* update pll values */
diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
index fd3b476dedda..1efc5c3a1e77 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -391,6 +391,7 @@ struct rockchip_pll_rate_table {
  * Flags:
  * ROCKCHIP_PLL_SYNC_RATE - check rate parameters to match against the
  *	rate_table parameters and ajust them if necessary.
+ * ROCKCHIP_PLL_FIXED_MODE - the pll operates in normal mode only
  */
 struct rockchip_pll_clock {
 	unsigned int		id;
@@ -408,6 +409,7 @@ struct rockchip_pll_clock {
 };
 
 #define ROCKCHIP_PLL_SYNC_RATE		BIT(0)
+#define ROCKCHIP_PLL_FIXED_MODE		BIT(1)
 
 #define PLL(_type, _id, _name, _pnames, _flags, _con, _mode, _mshift,	\
 		_lshift, _pflags, _rtable)				\
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
