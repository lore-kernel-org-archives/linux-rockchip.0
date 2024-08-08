Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFC06C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Aug 2024 09:38:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bJwD4pP8tV72pE1fmURuX7+Iam8RB9AXjDZW9et0ZUU=; b=PLlF0GWltyS48v
	TlWCrF1GCz28SyfYkibflGzjOmpHgOE0Uqkg/fgCUjGCiBeaCCIISit1sGmB0xQgLz8hkZ3LlxGP+
	Bd7kV0wWqfUSn66mM4UdoJ/WMZoQ78b7uoJZIToiNVb5nMxHoENZkRnBf7UIhb00BxTBmCSFrT+N+
	Jnc1GCAK0FQ0JqXz2XrKMzyjn2hPbEQtHmObv+F2KDNH8PbDbg6WCP9jQtQSqFGSe12/mHncIklWn
	4SYlyQ8ZgYD4ajWGpdZqoeq5UCUih20xji0THV/GADC+E+RrVNzQswW4r7C1Csp+oM7+mqMwDjYTc
	4T6Z9IOgEyJ1omABDPiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbzbW-00000007kHi-30jr;
	Thu, 08 Aug 2024 09:38:42 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbzbQ-00000007kEN-2KLk
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Aug 2024 09:38:40 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4789cSE3030905;
	Thu, 8 Aug 2024 18:38:30 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 02/10] arm64: dts: rockchip: standardize the definition of LEDs for Radxa ROCK Pi E
Date: Thu,  8 Aug 2024 18:38:00 +0900
Message-ID: <20240808093808.1740-3-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240808093808.1740-1-naoki@radxa.com>
References: <20240808093808.1740-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_023836_829002_30C01426 
X-CRM114-Status: UNSURE (   8.39  )
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

- sort properties
- add default-state and function

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dtsi | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dtsi b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dtsi
index bb01143dc91a..4e77701f2e01 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dtsi
@@ -49,11 +49,13 @@ gmac_clkin: external-gmac-clock {
 
 	leds {
 		compatible = "gpio-leds";
-		pinctrl-0 = <&led_pin>;
 		pinctrl-names = "default";
+		pinctrl-0 = <&led_pin>;
 
 		led-0 {
 			color = <LED_COLOR_ID_BLUE>;
+			default-state = "on";
+			function = LED_FUNCTION_HEARTBEAT;
 			gpios = <&gpio3 RK_PA5 GPIO_ACTIVE_LOW>;
 			linux,default-trigger = "heartbeat";
 		};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
