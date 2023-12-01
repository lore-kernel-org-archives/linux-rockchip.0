Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E137C4167B
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Dec 2023 13:49:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R3dcM+7WtcrplItmuRuhF1Nmq1UdauJRUEdJeLsNS9Q=; b=vrLpx2Nv/FIS5M
	pRklvsJyPnDLIB7x4bxQ0HRRMa15PHtAMh/yJnZHBgh9uY9B9J6EWeIvGc4/1KoFFN3UNYixmm4Gt
	LrfcZ6BaP0EEzX82trTM0PN97xiSPm/gDvD+h1qiTQjRe8t+aagtuFKu7OO90mgAQUB0IGAanM+C5
	KhgaPDpLXOaElBjwMOuqSYfpSAXoo/QJuQCgb61JUSVgqdbJZNqksDhltqd6v7q4GC1wvo+BLBzHa
	NCZPwJl91CFk1zwfwueD4D3B9AzlDDaMTDU6+lZ+vpKtw60sYoktKPvRQy9ogg0a6PYD2lAd0vsJB
	UHr1+OlKU6bmjLGk7prw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r93tS-00DrKL-1k;
	Fri, 01 Dec 2023 13:49:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r93tQ-00DrJ5-0v;
	Fri, 01 Dec 2023 13:49:21 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r93tL-00007w-PX; Fri, 01 Dec 2023 14:49:15 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	jagan@edgeble.ai,
	s.hauer@pengutronix.de,
	heiko@sntech.de,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH] arm64: dts: rockchip: drop interrupt-names property from rk3588s dfi
Date: Fri,  1 Dec 2023 14:48:59 +0100
Message-Id: <20231201134859.322491-1-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231201_054920_320248_2F0DE648 
X-CRM114-Status: GOOD (  10.27  )
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

The dfi binding does not specify interrupt names, with the interrupts
just specifying channels 0-x. So drop the unspecified property.

Fixes: 5a6976b1040a ("arm64: dts: rockchip: Add DFI to rk3588s")
Reported-by: Jagan Teki <jagan@edgeble.ai>
Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 7064c0e9179f..8aa0499f9b03 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -1362,7 +1362,6 @@ dfi: dfi@fe060000 {
 			     <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH 0>,
 			     <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH 0>,
 			     <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH 0>;
-		interrupt-names = "ch0", "ch1", "ch2", "ch3";
 		rockchip,pmu = <&pmu1grf>;
 	};
 
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
