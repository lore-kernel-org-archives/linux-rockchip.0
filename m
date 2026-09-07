Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 898E5C79FA0
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Sep 2026 15:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t8VzbFw8AB6cTp9k80pTO5ZGmUKIpOX4ONYpcobJMiA=; b=OchVjvO32t4kZo
	ob9uEgS+O/BBGbEDa/ozo+xvC8/NP3glJC6WUvFR5TuAEmOJ72t752/7298a+dRF8A1SAQGlTRRgX
	uwHl0rOlhJACGYjrO5hYg6p/7l8eovat4CxUnSlnHIQsDdkwfATiW2QqSRnb5wwB5mXs94eQi6qTc
	4xGsj1rPfifulYBS4eHEWKVpleou1dLmgyAws8ZWpTTS/j6l+3DXd4iyWW6qLI6KexjoYBHCvwQ7z
	KnpBtQXvFD48SeUOjI6ll+TXPAkjcdSrPqSQl8V6tqOO0FOj5zHId79GFZ92mpw96LV6elYfniJ1B
	qzbs+6FehlHUq/tYY8Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3bRp-00000007CwU-40OT;
	Mon, 07 Sep 2026 15:39:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3bRn-00000007Cv3-4A8t
	for linux-rockchip@bombadil.infradead.org;
	Mon, 07 Sep 2026 15:39:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=2srrqsfvZcRiNitfhUr7DhaIgxeXboMwTknQApvQL7A=; b=VSSPYA9fY+Kgzdoeuey+NxQkRz
	Wk/DbZ8E0afk/9FKccd3jV+Q1dvP8l2F3g+YZLeteYeGEANAYXTbPuB5gfy+aH9B+aLno1YHq/g00
	1cYsUJFG8n0/MwHepsw7vUg+mND5Qs8iYn/QKabu/ZPfOVOqQP6pO/tk8Vx+nLS5CoSAGt7XB2t7X
	EAL3ZU4DGU2J4wbln+s3tmd8vcg8TKpF1cSZDyrmxiq1t4p8vkiFm1ls12OkoZSs+uorVnqiLeNV5
	YTnO33w5oBmQKbAjfGNucvs3Y+fxkLOtaWNOiGdje0rNtJmsXMf7q7w625c184lTHF/pTI8QqXNXM
	XkXChN8w==;
Received: from mail-pj2-x07.google.com ([2607:f8b0:4864:39::7])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x3bRj-0000000GNyG-30ky
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Sep 2026 15:39:49 +0000
Received: by mail-pj2-x07.google.com with SMTP id 98e67ed59e1d1-398e10200a6so1899842a91.1
        for <linux-rockchip@lists.infradead.org>; Mon, 07 Sep 2026 08:39:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788795585; x=1789400385; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=2srrqsfvZcRiNitfhUr7DhaIgxeXboMwTknQApvQL7A=;
        b=rRPb7/EITLHYaVHFXg4odwCBoLVfKivZzaz2vkO33AfQ0MhxCW0lJz8Ehr8tnMudcR
         Fhwegnvyl4CdF+D8y9C3SAOz9+FEU9cU0TImmFs4FKAeog8OEHLDa6yK8pf6FXPwVNLQ
         AzedB3erAdjnWNG8TR+nwtZw9diTqxFgbMjFmjfpLRFf6FiNZC81oHgHhZpstANJ/AYg
         uC45VlPcPpawJ2Q/njUr7KUpKTwgXD+J4erapyr6J/dSeTz4xCuOcEFo2mDPxpcb2Om8
         hKnanG+0ik+JgbJE6P3yTCDT62pSN+LjW0QhyEuiMqUkogILjJmNLm1cPA5prbIY9wXY
         vpeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788795585; x=1789400385;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=2srrqsfvZcRiNitfhUr7DhaIgxeXboMwTknQApvQL7A=;
        b=HA68rAW+COWvk9rOS0sjsaRXeRojq3IXAj4L4CzXQ8AiQQMiBejn6xY13bvq4/1PIY
         7IvDzanUwhPOf+QebPQgil56JDc3zATalD971bMwyiZBc3KDecaqfJ7/SM5kDjcSkEOQ
         KiwFJKmOUy+1m+CJh0mLE7DiWm6ZpQNDt1RFVz+UFOrzFcBFXWsJUA4wGnXqc5PBlg/D
         D71WlUY28DmYCOPR2HJ21PomJY1qfo/fPRVQjvr0SDmqSlgqEtx8XGRqZ9cONAbFppUT
         Z3kMfti+BPLMbLLCe/DDm/iuNwrIwCvv46jhsHgfnOWyd6pCKoNvXTRGKilHSjC8wxPO
         kMMg==
X-Forwarded-Encrypted: i=1; AKwUvBxsslYWTHIlZt4d2CIc2cfNFivA6p9pd8jskT0b8VeLB3VlZtevxY8gQzGxD7p5NhkG+5NgJKIh0ASG/y9W2w==@lists.infradead.org
X-Gm-Message-State: AFuF++l9x8MVxUk/Q0DH5YyGSKZ0yVyAoPl0eLIzST7JUXZ4J1rKZuKx
	gHtbrq7tQduusbW4OgcyoVxclKWIchkxi2Q5uHoT5SYzby6bNsyEu8IG
X-Gm-Gg: AYBFou2niGIaD70zUNIrACp4tuOlA4LedcM3330uDxrHhjaVpIpRQQrukha9OFdkEc9
	zFBeeRSUQ9Guc/n0XC5z630BSkyQayHd/0LN4MIt/487iBGBVH/OUtaVvkVxzDxDFhwSs57gvgd
	iQRmXsqbFmRnkx9bMrLRak9jzcjrpkzzKI2WBpZwePalF4zzT/jWMZO48pMHNfxNdfBYz62dSgW
	gJGKLVbJRanOPDbsPqAR54tYfP40RZy916B06TYAgonnvOdFxwxElzD2ILm5EGJMZyTF58snxNJ
	zWMEjCG/fuXn7yDMQdQjK1aeiCh5bLUBCwcd2awOjQ4A7T/3oHrk4JXDaDGtQ3dWrIQWWw9D/jK
	x8dYz7vC7pdaFgJzjIzYy58Xpl2bYXxHi+JIHEdywRFqVkbqLO9nfTWHJeD9WX+popYOYuytoqe
	DddAwhX6AlBJIwIIImBtcoF2whlrwwxeA0sStEc4+oqSPfTRdDs417xYN+4YKq
X-Received: by 2002:a17:90b:3c42:b0:38e:fea2:df53 with SMTP id 98e67ed59e1d1-39b260d2977mr35605265a91.4.1788795584940;
        Mon, 07 Sep 2026 08:39:44 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39b260fdf9asm21690121a91.9.2026.09.07.08.39.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 08:39:44 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Coia Prant <coiaprant@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	David Heidelberg <david@ixit.cz>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH net-next v4 09/10] arm64: dts: rockchip: rk3568-photonicat: enable SGMII LAN port
Date: Mon,  7 Sep 2026 23:37:12 +0800
Message-ID: <20260907153713.2572547-11-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260907153713.2572547-2-coiaprant@gmail.com>
References: <20260907153713.2572547-2-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_163948_018651_09ABB142 
X-CRM114-Status: GOOD (  12.86  )
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

The Ariaboard Photonicat has a Motorcomm YT8521SC Gigabit Ethernet PHY
connected to GMAC0 via XPCS SGMII.  Enable the necessary nodes to make
this port functional.

Enable combphy2 with rockchip,sgmii-mac-sel = <0> to route the SGMII
interface to GMAC0.  Enable the xpcs node and its port 0 sub-node,
referencing combphy2 as the SerDes PHY.

Add the mdio0 node with the YT8521SC PHY at address 3, including its
reset GPIO and LED configuration.  Also add LED configuration for the
existing RGMII PHY on mdio1 for consistency.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../boot/dts/rockchip/rk3568-photonicat.dts   | 74 ++++++++++++++++++-
 1 file changed, 72 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts b/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
index 58c1052ba8ef3..25caa44198843 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
@@ -3,6 +3,7 @@
 /dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/soc/rockchip,vop2.h>
 #include "rk3568.dtsi"
@@ -242,6 +243,7 @@ &combphy1 {
 
 &combphy2 {
 	status = "okay";
+	rockchip,sgmii-mac-sel = <0>;
 };
 
 &cpu0 {
@@ -260,9 +262,18 @@ &cpu3 {
 	cpu-supply = <&vdd_cpu>;
 };
 
-/* Motorcomm YT8521SC LAN port (require SGMII) */
+/* Motorcomm YT8521SC LAN port */
 &gmac0 {
-	status = "disabled";
+	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>;
+	assigned-clock-parents = <&xpcs_gmac0_clk>;
+	pcs-handle = <&xpcs_mii0>;
+	managed = "in-band-status";
+	phy-handle = <&sgmii_phy>;
+	phy-mode = "sgmii";
+	phy-supply = <&vcc_3v3>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac0_miim>;
+	status = "okay";
 };
 
 /* Motorcomm YT8521SC WAN port */
@@ -341,6 +352,36 @@ &i2s0_8ch {
 	status = "okay";
 };
 
+&mdio0 {
+	sgmii_phy: ethernet-phy@3 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0x3>;
+		max-speed = <1000>;
+		reset-assert-us = <20000>;
+		reset-deassert-us = <100000>;
+		reset-gpios = <&gpio3 RK_PC6 GPIO_ACTIVE_LOW>;
+
+		leds {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			led@1 {
+				reg = <1>;
+				color = <LED_COLOR_ID_AMBER>;
+				function = LED_FUNCTION_LAN;
+				default-state = "keep";
+			};
+
+			led@2 {
+				reg = <2>;
+				color = <LED_COLOR_ID_GREEN>;
+				function = LED_FUNCTION_LAN;
+				default-state = "keep";
+			};
+		};
+	};
+};
+
 &mdio1 {
 	rgmii_phy: ethernet-phy@3 {
 		compatible = "ethernet-phy-ieee802.3-c22";
@@ -350,6 +391,25 @@ rgmii_phy: ethernet-phy@3 {
 		reset-gpios = <&gpio4 RK_PC0 GPIO_ACTIVE_LOW>;
 		rx-internal-delay-ps = <1500>;
 		tx-internal-delay-ps = <1500>;
+
+		leds {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			led@1 {
+				reg = <1>;
+				color = <LED_COLOR_ID_AMBER>;
+				function = LED_FUNCTION_WAN;
+				default-state = "keep";
+			};
+
+			led@2 {
+				reg = <2>;
+				color = <LED_COLOR_ID_GREEN>;
+				function = LED_FUNCTION_WAN;
+				default-state = "keep";
+			};
+		};
 	};
 };
 
@@ -586,3 +646,13 @@ &xin32k {
 	pinctrl-names = "default";
 	pinctrl-0 = <&clk32k_out1>;
 };
+
+&xpcs {
+	status = "okay";
+	phys = <&combphy2 PHY_TYPE_SGMII>;
+	phy-names = "serdes";
+};
+
+&xpcs_mii0 {
+	status = "okay";
+};
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
