Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB982C52D7D
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Aug 2024 09:38:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ODeJmequrGPGzjR1zuEX1vgw6G7laiVI0oiuELGe0DM=; b=4shuRdVeduKN3X
	+4hpFpwSdrbp5No3QylRT33tgCpCofztZ7OlhBToCk9uhHA3sZTvrpYFXm9rjblDD0jLcJaRkxJ0M
	GkuNEl0VkRL/cfgNGgX7gyxnlzTgv9n0eEpezOuNlMiKkjv2r53xp7V2C/YLD6cuxtfapa1HKXrj1
	0arXwwBIFehnHQUBg/RRVOq3GxPopAcRZHPEnBscomVcejUeSdi/4kGnvUnHBcWl/hrrBXLd8PXJf
	IsI25N25nS+PyV+yqvblMBxHAv7aYAgIydYYfGTmtdOC7VGpfVz3SsI7ix0xDvJSkXFrmBZTJvlMA
	OIH0owlLWeyh1GEYcLOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbzbb-00000007kLS-3pZg;
	Thu, 08 Aug 2024 09:38:47 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbzbQ-00000007kEO-3FIn
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Aug 2024 09:38:42 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4789cSE9030905;
	Thu, 8 Aug 2024 18:38:30 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 08/10] arm64: dts: rockchip: standardize the definition of LEDs for Radxa ROCK 3A
Date: Thu,  8 Aug 2024 18:38:06 +0900
Message-ID: <20240808093808.1740-9-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240808093808.1740-1-naoki@radxa.com>
References: <20240808093808.1740-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_023837_048579_564D5607 
X-CRM114-Status: UNSURE (   7.70  )
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

- move pinctrl properties
- sort properties
- add default-state

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index 59f1403b4fa5..4fd6096f16ea 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -42,14 +42,15 @@ gmac1_clkin: external-gmac1-clock {
 
 	leds {
 		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&led_user_en>;
 
 		led_user: led-0 {
-			gpios = <&gpio0 RK_PB7 GPIO_ACTIVE_HIGH>;
-			function = LED_FUNCTION_HEARTBEAT;
 			color = <LED_COLOR_ID_BLUE>;
+			default-state = "on";
+			function = LED_FUNCTION_HEARTBEAT;
+			gpios = <&gpio0 RK_PB7 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "heartbeat";
-			pinctrl-names = "default";
-			pinctrl-0 = <&led_user_en>;
 		};
 	};
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
