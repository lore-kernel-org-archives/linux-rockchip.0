Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0F1BC7115A
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jun 2025 15:50:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2i36HLSZ53KNiXCvn0HcvDcb7Zh6x8zkAE0dKjRJ3I8=; b=ljwlc5PLmz9LS/
	Hz3vPRcruWFylcNMCnLYSvrqHqBi0PE+w6Y2D+T5l0Qi588p6F2Htk5TyxYbudTdKXa7molubPn9D
	+kGjy5ZSjKiMgqc2Yz5kuCUv1geoRDUT3I9s9+148/0jLVJYvICxR9d2xuoi17zmC0iM4+pp3E4mx
	+WYb8k1k34S/KmGC8ayP5DZ6Li73C+ysxKoI5McKwA0OHiJeqDDTX1MfBLgTPTL4J1eznBHTvfAbs
	3IMNxB/9ULxJW2wXuZacjIg+6cp+pB3HIh9GYjwk8CxhDLUfxVE1Ls53lNqk3ZQ5OYe5nPrbi2g7P
	pxH6YvprPlwfqLDoHGqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSHWf-0000000DZhl-2xQj;
	Thu, 19 Jun 2025 15:50:05 +0000
Received: from relay15.mail.gandi.net ([217.70.178.235])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSFWN-0000000DCsg-3OPo;
	Thu, 19 Jun 2025 13:41:41 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 06EB4442A7;
	Thu, 19 Jun 2025 13:41:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1750340495;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=3Vu3ojqeO4nEZGrlEv+MrMGB/iAFdtlTHlUQ6a2DKkk=;
	b=U6UhRPCyisMszMQuQ9+irt0NQEBugn34Ray3XLy55XnpTRmLgtwWlthDhmUb+ZZxycsxRv
	+IosUqV58UdhyU2kRmvmHsv2FEng3dOVxiibyO1OlRopR0rZvzbXyF9G15oiWIB8RtRRu2
	CX2dZLcXKXT8HG0H0sBSRDIUf8wJURT6hF5Ze7E3rJPaxbb0HVkj4aM4AfZgERYvcgB5EE
	thC/YJGxoKAkURrlVEZT8n6m+YArkRrEIQy8pYmbl9XJsLCsGlDhxU7/8k8HEaQwLhxW7h
	qndtgDRT+14KqrGqGZBTFdtEEinmju109AP2KwQppoYMeCrWZJXYyGicSOVMmw==
From: Olivier Benjamin <olivier.benjamin@bootlin.com>
Date: Thu, 19 Jun 2025 15:41:24 +0200
Subject: [PATCH v3] arm64: dts: rockchip: Fix the PinePhone Pro DTS' panel
 description
MIME-Version: 1.0
Message-Id: <20250619-dtb_fixes-v3-1-9cb02ddd8ce4@bootlin.com>
X-B4-Tracking: v=1; b=H4sIAIMTVGgC/22MTQ6CMBBGr0Jm7RimAhVX3sMY09JRJlFqWtJoC
 He3uMLE5ffz3gSRg3CEQzFB4CRR/JDDblNA15vhxiguZ1ClqsuG9uhGe7nKiyO2uqnqKvekGPL
 /Gfg75PvpnHMvcfTh/VUnWtp/lkRYIteVbrVxiq05Wu/Huwzbzj9g8SS1Zts1q5DQWKeJHJFt9
 C87z/MHptoQeeAAAAA=
X-Change-ID: 20250618-dtb_fixes-97645402512e
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Olivier Benjamin <olivier.benjamin@bootlin.com>
X-Mailer: b4 0.14.2
X-GND-State: clean
X-GND-Score: -100
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddvgdehieejucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhfffugggtgffkvfevofesthejredtredtjeenucfhrhhomhepqfhlihhvihgvrhcuuegvnhhjrghmihhnuceoohhlihhvihgvrhdrsggvnhhjrghmihhnsegsohhothhlihhnrdgtohhmqeenucggtffrrghtthgvrhhnpeetkefhvdelleeuhefgvdekveffieelhfeujefgtdejueelgfeltdefffehtddvfeenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecukfhppedvrgdtudemvgefgeemvggtfeekmedvgegvtdemfhehtggvmehffeegvdemieehkeejmehfieehieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpedvrgdtudemvgefgeemvggtfeekmedvgegvtdemfhehtggvmehffeegvdemieehkeejmehfieehiedphhgvlhhopegludelvddrudeikedruddrvddtngdpmhgrihhlfhhrohhmpeholhhivhhivghrrdgsvghnjhgrmhhinhessghoohhtlhhinhdrtghomhdpnhgspghrtghpthhtohepuddtpdhrtghpthhtohepkhhriihkodgutheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepthhhohhmrghsrdhpvghtrgiiiihonhhisegsohhothhlihhnrdgtohhmpdhrtghpthhtoheph
 hgvihhkohesshhnthgvtghhrdguvgdprhgtphhtthhopehlihhnuhigqdhrohgtkhgthhhipheslhhishhtshdrihhnfhhrrgguvggrugdrohhrghdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopeholhhivhhivghrrdgsvghnjhgrmhhinhessghoohhtlhhinhdrtghomhdprhgtphhtthhopeguvghvihgtvghtrhgvvgesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopegtohhnohhrodgutheskhgvrhhnvghlrdhorhhg
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_064140_139660_C4500FD2 
X-CRM114-Status: GOOD (  14.43  )
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

Fix a few issues in the panel section of the PinePhone Pro DTS:
  - add the second part of the Himax HX8394 LCD panel controller
    compatible
  - as proposed by Diederik de Haas, reuse the mipi_out and ports
    definitions from rk3399-base.dtsi instead of redefining them
  - add a pinctrl for the LCD_RST signal for LCD1, derived from
    LCD1_RST, which is on GPIO4_D1, as documented on pages 11
    and 16 of the PinePhone Pro schematic

Signed-off-by: Olivier Benjamin <olivier.benjamin@bootlin.com>
---
Small fixes to the PinePhone Pro DTS to fit bindings and
suppress warnings at build.
---
Changes in v3:
- Amended the LCD pinctrl name to match the pin's name in the Datasheet
- Link to v2: https://lore.kernel.org/r/20250619-dtb_fixes-v2-1-abd711d11b67@bootlin.com

Changes in v2:
- Added the pinctrl definition for GPIO4_D1/LCD1_RST
- Removed redefinition of the lcd panel ports from rk3399-base.dtsi and
  added only the mipi_out definition
- Squashed multiple patches into one
- Link to v1: https://lore.kernel.org/r/20250618-dtb_fixes-v1-0-e54797ad2eba@bootlin.com
---
 .../boot/dts/rockchip/rk3399-pinephone-pro.dts     | 33 +++++++++++-----------
 1 file changed, 17 insertions(+), 16 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
index 04ba4c4565d0a205e2e46d7535c6a3190993621d..909ed14035f783fd14362f4e3a9a3fe3b50d5937 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
@@ -463,29 +463,18 @@ &io_domains {
 };
 
 &mipi_dsi {
-	status = "okay";
 	clock-master;
-
-	ports {
-		mipi_out: port@1 {
-			#address-cells = <0>;
-			#size-cells = <0>;
-			reg = <1>;
-
-			mipi_out_panel: endpoint {
-				remote-endpoint = <&mipi_in_panel>;
-			};
-		};
-	};
+	status = "okay";
 
 	panel@0 {
-		compatible = "hannstar,hsd060bhw4";
+		compatible = "hannstar,hsd060bhw4", "himax,hx8394";
 		reg = <0>;
 		backlight = <&backlight>;
-		reset-gpios = <&gpio4 RK_PD1 GPIO_ACTIVE_LOW>;
-		vcc-supply = <&vcc2v8_lcd>;
 		iovcc-supply = <&vcc1v8_lcd>;
 		pinctrl-names = "default";
+		pinctrl-0 = <&lcd1_rst_pin>;
+		reset-gpios = <&gpio4 RK_PD1 GPIO_ACTIVE_LOW>;
+		vcc-supply = <&vcc2v8_lcd>;
 
 		port {
 			mipi_in_panel: endpoint {
@@ -495,6 +484,12 @@ mipi_in_panel: endpoint {
 	};
 };
 
+&mipi_out {
+	mipi_out_panel: endpoint {
+		remote-endpoint = <&mipi_in_panel>;
+	};
+};
+
 &pmu_io_domains {
 	pmu1830-supply = <&vcc_1v8>;
 	status = "okay";
@@ -507,6 +502,12 @@ pwrbtn_pin: pwrbtn-pin {
 		};
 	};
 
+	lcd {
+		lcd1_rst_pin: lcd1-rst-pin {
+			rockchip,pins = <4 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	leds {
 		red_led_pin: red-led-pin {
 			rockchip,pins = <4 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
-- 
Olivier Benjamin <olivier.benjamin@bootlin.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
