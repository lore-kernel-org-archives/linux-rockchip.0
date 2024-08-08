Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21E37C52D71
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Aug 2024 10:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LQ3U1h+njW3FYEwqbEugSebje0MuFoRm5h1XSfxlxmA=; b=E04MQkb3laX4DG
	F11W+iyItrs4ThfLoDt1hoAXvKThiORvsXSHxlNmW97Mb4IDYPwNFkgg2GRu+XBaU0Wo/HMYiIVQ4
	VArJFDp7AjGxTxdoEqcW4UfJr8PxkBzD758Ujha+ICgjJqQiEdZ/OkElmBtr6Eo3SrMulCw8weMZ9
	n9cWXjJl8rvvq/ZD7Pi5WioBY+wvlbhlKSLVeGJoZL6I+6AmAIRrJ0qLoD1/wlR3fksOd7CMirlRG
	wTmp4yezLtqzUZN9gD+WpM402JJGcuLazKwLUcN1uWGfpgirz9CNIOjxFuf8AwbmqO8Umojf+f8rd
	MA3MbgvEBcBtWVKSmSqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc0eY-00000007x9q-0wGt;
	Thu, 08 Aug 2024 10:45:54 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbzbQ-00000007kEI-0hrU
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Aug 2024 09:38:38 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4789cSE2030905;
	Thu, 8 Aug 2024 18:38:30 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 01/10] arm64: dts: rockchip: standardize the definition of LEDs for Radxa ROCK Pi S
Date: Thu,  8 Aug 2024 18:37:59 +0900
Message-ID: <20240808093808.1740-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240808093808.1740-1-naoki@radxa.com>
References: <20240808093808.1740-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_023836_447423_7F6F2BFF 
X-CRM114-Status: UNSURE (   7.86  )
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

- remove label
- cosmetic change

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
index 62d18ca769a1..504054f9723e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
@@ -27,14 +27,13 @@ chosen {
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
-		pinctrl-0 = <&green_led>, <&heartbeat_led>;
+		pinctrl-0 = <&green_led &heartbeat_led>;
 
 		green-led {
 			color = <LED_COLOR_ID_GREEN>;
 			default-state = "on";
 			function = LED_FUNCTION_POWER;
 			gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
-			label = "rockpis:green:power";
 			linux,default-trigger = "default-on";
 		};
 
@@ -43,7 +42,6 @@ blue-led {
 			default-state = "on";
 			function = LED_FUNCTION_HEARTBEAT;
 			gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_HIGH>;
-			label = "rockpis:blue:user";
 			linux,default-trigger = "heartbeat";
 		};
 	};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
