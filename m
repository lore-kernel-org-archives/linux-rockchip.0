Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6F98CD11C2
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Apr 2024 09:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i5t+/L6iyIoX2cQaHXqiBU1l5vy41rjyY/XjyPS1w3o=; b=QVYG/3x+GYq+Kq
	/DN4NpsY2nuto/cwMyoisX6XtbQ62adEZ+WOAFs4xq3srYDOeBCrIEfoaHDJTshs0RFs3EoZYYiyP
	WYqdED6YnkVeRlrzWxbEjjoy1Iu+zO2/ZNg/3on2+T/t4rb6BkNWt0o2qLNA0CuVEtqIfEq2isoP3
	jnN7cMuLMPcKV5KH2dPK8MgTeP+EK4IdbcdnZfefEjUdJn/CkrKMDHTNjhSHyK/JLdR67pHvgdyvV
	Pq0SdsDos1cGapSt+SnnpGmiR0miXz5gmN9PPnRTEI3nMja4nCx05ZdrOHuvxRXnkxQF3lZvn2/Ax
	smpvMuO0SL5QlSoWH6Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsgCm-00000006GD8-1QH3;
	Fri, 05 Apr 2024 09:49:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rseA0-00000005hc9-23vR
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Apr 2024 07:38:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rse9n-0005mg-MJ; Fri, 05 Apr 2024 09:38:39 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rse9m-00AWpx-TW; Fri, 05 Apr 2024 09:38:38 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rse9m-008vil-2h;
	Fri, 05 Apr 2024 09:38:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 05 Apr 2024 09:38:36 +0200
Subject: [PATCH 1/2] dt-bindings: clock: rockchip: add USB480M_PHY mux
MIME-Version: 1.0
Message-Id: <20240405-clk-rk3568-usb480m-phy-mux-v1-1-6c89de20a6ff@pengutronix.de>
References: <20240405-clk-rk3568-usb480m-phy-mux-v1-0-6c89de20a6ff@pengutronix.de>
In-Reply-To: <20240405-clk-rk3568-usb480m-phy-mux-v1-0-6c89de20a6ff@pengutronix.de>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1712302718; l=792;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=vEZlMmCNoexJ8LmDeMg+hM/HB8jrt7K5VSF3PSzQy9g=;
 b=hWJoHWEjX0205sJwn/JZR3TVmydlMr04W59qD8pDTWYfgbNLH0qWcL+hTEyNmZ8zXNNeZ1L/m
 /CArViKcKXHA0YceyGPH94ORtv5vMS5lCJw2zNFRN0sgJ+e81/2WM18
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: s.hauer@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_003852_548924_51B3F6F0 
X-CRM114-Status: GOOD (  10.59  )
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

The USB480M clock can source from a MUX that selects the clock to come
from either of the USB-phy internal 480MHz PLLs. These clocks are
provided by the USB phy driver. This adds the define for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/dt-bindings/clock/rk3568-cru.h | 1 +
 1 file changed, 1 insertion(+)

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

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
