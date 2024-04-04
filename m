Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 021A7CD1292
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Apr 2024 07:27:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5RrFUbatOF0KBgtuOpqqg7eraHMmgwyV9jZYzkvBlv4=; b=ZMy/rz0M1UteEe
	n26pK/DwFbw3LQQ3nY/QZMyUJ26EwTiIZofQwKPmoMr40NDlXT+M5i7FKdUgBohVOIJdqecrDiXgP
	7B2470ZHoXTgrGwvYrsV8bZD9oMrimxs2WECibV8ywN/2O/qc8faiEz/5oMn5QVquCG/3DoU0AaGy
	bE3tXmxXrQnxzFMWv1QnTymIATqJYVYBD4b+C9Y9lsxnAcrDbCF6RVz5+0LHWRCI6Acx3DH3GVoqG
	MgucykUFWDaoJV2u6p27V+fdagNh1nWl+dV1TWIEzzTi2Jn4tZUmVWbeQb/pWRJtaxGtTJvK5P7EE
	e3V02mYqoD+8vRmkR/aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsHVL-00000001dMR-1e81;
	Thu, 04 Apr 2024 07:27:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsHVH-00000001dLL-1cs6
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Apr 2024 07:27:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsHVD-0007Ay-0e; Thu, 04 Apr 2024 09:27:15 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsHVC-00AKEN-64; Thu, 04 Apr 2024 09:27:14 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsHVC-006fR5-0N;
	Thu, 04 Apr 2024 09:27:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 04 Apr 2024 09:27:01 +0200
Subject: [PATCH] clk: rockchip: clk-rk3568.c: Add missing USB480M_PHY mux
MIME-Version: 1.0
Message-Id: <20240404-clk-rockchip-rk3568-add-usb480m-phy-mux-v1-1-e8542afd58b9@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAERWDmYC/x2NQQrDIBAAvxL23AVrVaRfKT1Y3dbFJpGVlJSQv
 0fCnOYys0EjYWpwHzYQ+nHjeepyvQwQc5g+hJy6g1baqA7Gb0GZY4mZK0q5WecxpIRLexmvRqz
 5j+OyoveajLLOBu2g16rQm9fz9Hju+wG9HLJCeQAAAA==
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, David Jander <david@protonic.nl>, 
 Sascha Hauer <s.hauer@pengutronix.de>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1712215634; l=2280;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=rtE2qg+04cTA5Bhd4gb5RQUUY6w1wp5cEhhzcnQL8IY=;
 b=I9n2Y/qgl9se6h34LiW/ICBhI7XhdmDOndO7nAZT+hXyCeKvwLEH0hjCd4mpDcbz5pr0RXqQM
 Lltl2kiDp72BEXGBDM0LUBISOiLP47QGn1GMy2/7DBl0qVvyLwXYJLn
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: s.hauer@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_002719_469869_D1461FBC 
X-CRM114-Status: GOOD (  11.66  )
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

From: David Jander <david@protonic.nl>

The USB480M clock can source from a MUX that selects the clock to come
from either of the USB-phy internal 480MHz PLLs. These clocks are
provided by the USB phy driver.

Signed-off-by: David Jander <david@protonic.nl>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/rockchip/clk-rk3568.c      | 4 ++++
 include/dt-bindings/clock/rk3568-cru.h | 1 +
 2 files changed, 5 insertions(+)

diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
index 8cb21d10beca2..2d44bcaef046b 100644
--- a/drivers/clk/rockchip/clk-rk3568.c
+++ b/drivers/clk/rockchip/clk-rk3568.c
@@ -215,6 +215,7 @@ static const struct rockchip_cpuclk_reg_data rk3568_cpuclk_data = {
 
 PNAME(mux_pll_p)			= { "xin24m" };
 PNAME(mux_usb480m_p)			= { "xin24m", "usb480m_phy", "clk_rtc_32k" };
+PNAME(mux_usb480m_phy_p)		= { "clk_usbphy0_480m", "clk_usbphy1_480m"};
 PNAME(mux_armclk_p)			= { "apll", "gpll" };
 PNAME(clk_i2s0_8ch_tx_p)		= { "clk_i2s0_8ch_tx_src", "clk_i2s0_8ch_tx_frac", "i2s0_mclkin", "xin_osc0_half" };
 PNAME(clk_i2s0_8ch_rx_p)		= { "clk_i2s0_8ch_rx_src", "clk_i2s0_8ch_rx_frac", "i2s0_mclkin", "xin_osc0_half" };
@@ -485,6 +486,9 @@ static struct rockchip_clk_branch rk3568_clk_branches[] __initdata = {
 	MUX(USB480M, "usb480m", mux_usb480m_p, CLK_SET_RATE_PARENT,
 			RK3568_MODE_CON0, 14, 2, MFLAGS),
 
+	MUX(USB480M_PHY, "usb480m_phy", mux_usb480m_phy_p, CLK_SET_RATE_PARENT,
+			RK3568_MISC_CON2, 15, 1, MFLAGS),
+
 	/* PD_CORE */
 	COMPOSITE(0, "sclk_core_src", apll_gpll_npll_p, CLK_IGNORE_UNUSED,
 			RK3568_CLKSEL_CON(2), 8, 2, MFLAGS, 0, 4, DFLAGS | CLK_DIVIDER_READ_ONLY,
diff --git a/include/dt-bindings/clock/rk3568-cru.h b/include/dt-bindings/clock/rk3568-cru.h
index d29890865150d..5263085c5b238 100644
--- a/include/dt-bindings/clock/rk3568-cru.h
+++ b/include/dt-bindings/clock/rk3568-cru.h
@@ -78,6 +78,7 @@
 #define CPLL_333M		9
 #define ARMCLK			10
 #define USB480M			11
+#define USB480M_PHY		12
 #define ACLK_CORE_NIU2BUS	18
 #define CLK_CORE_PVTM		19
 #define CLK_CORE_PVTM_CORE	20

---
base-commit: 39cd87c4eb2b893354f3b850f916353f2658ae6f
change-id: 20240404-clk-rockchip-rk3568-add-usb480m-phy-mux-882e40565a26

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
