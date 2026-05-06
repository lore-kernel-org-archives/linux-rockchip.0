Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C853CD3436
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 May 2026 09:28:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oHMrTrtlQfa0RuiVL6wirjSjyczQST5WcjMps+C63t4=; b=B1xg7BbGOkRI+3
	kgy5A7gQbRpnzw1JSUMT4yWrheAz0vtJk0iWa/aKqtUYF+FyJsR2WSzvrLneTktjKml9ZwhwfFcqY
	BFvQMLyOhfQpGSisP3rs0ShsSBl5nwNHOhVMZtsb5Y9dKoq9zip4VnOtRUQ7hz1or8NREpKICE3/+
	XBn7yNCjkK+D+8tbACO2BHHMG90Rl3Gl3SKJmuQydbu8o4/DsosS2Xv4AzzbdEPsqrmrnfuY5C4au
	jd6ZDIw0K67/E8hGu2hqiPacoQ0Hka3gyGf9U8xTz3fsjXhYhKmoh2LFi3d3pjSJQT5MpslSrFm6T
	kYDZCqd/ICdTVaVpezzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKYY8-00000000Lda-2WGY;
	Wed, 06 May 2026 09:28:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKYY7-00000000Ld5-1ssK;
	Wed, 06 May 2026 09:28:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-Type:In-Reply-To:References;
	bh=X0MPE/1rH+0sB42Q/psgglOlc5L3G+AYU8FUjULp5uY=; b=Erjhv7t1vS3Fr3oJQIYW4iOBDp
	ucf6z6Bib2o11f1IJW/+f7lrKDGALvtJA1aKMXaX1DU4EcYrF7TQm0oO0+l3wiM1VmjefDLfyjOvu
	zgblW3NAh/SI7Xeud9ZKRzQYT3DnZXjS5gug+3+zPys9yDCZTkILGbhdkxNp3jCsm4WxvwmrXdBX9
	mZ+QOfIq96y/BE1PRdRVfYT7i1EbtWJUBarMcWkiCvUjMt7xEfz98MvzwGGyQQZa7XqgUWfk5YSGl
	K8oHVl2jHjEI+7mwqwCkn4pZIWXXqi/L7Wdy1WiK7HCMVu8S6BMtafOS7D+eraDJ6Saq+2diP0f5u
	Hgk6YaoA==;
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH] arm64: dts: rockchip: Add watchdog node for RK3528
Date: Wed,  6 May 2026 11:28:04 +0200
Message-ID: <20260506092804.3320931-1-heiko@sntech.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260506_022811_492096_8F8F3078 
X-CRM114-Status: GOOD (  10.21  )
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

From: Jonas Karlman <jonas@kwiboo.se>

Add the node describing the watchdog on the RK3528 SoC.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3528.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3528.dtsi b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
index 806b8109f67d..77d314716b43 100644
--- a/arch/arm64/boot/dts/rockchip/rk3528.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
@@ -983,6 +983,14 @@ pwm7: pwm@ffa98030 {
 			status = "disabled";
 		};
 
+		wdt: watchdog@ffac0000 {
+			compatible = "rockchip,rk3528-wdt", "snps,dw-wdt";
+			reg = <0x0 0xffac0000 0x0 0x100>;
+			clocks = <&cru TCLK_WDT_NS>, <&cru PCLK_WDT_NS>;
+			clock-names = "tclk", "pclk";
+			interrupts = <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
 		saradc: adc@ffae0000 {
 			compatible = "rockchip,rk3528-saradc";
 			reg = <0x0 0xffae0000 0x0 0x10000>;
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
