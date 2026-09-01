Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9234C624D3
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2026 15:03:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t8VzbFw8AB6cTp9k80pTO5ZGmUKIpOX4ONYpcobJMiA=; b=SePYQeUKV6I1SY
	/lSFAH9zGtsKoQaNUkeqQybsGCouvS+lNhFg6LFjguqJv4xMdItlagbXLiZRhAgUdWkyZdamcvb28
	9YGIXOIvGiup1mdQMOIQG5ot5xCL7LQzaM06ROmxGkn3TWJTHfzZX/kvVjBaOfGnzm3+Rcp78fU39
	uzATn1sqUxMkATKnaoee1fg3cijnXLEKB3oYnSf+D5FXbPdY60r1hLtd8jBW1RX3SYmB79Zj0BHr2
	xCIBT2Q1EuOjKwJVGpzeIT3JOgEVVERM5Wo6+bb9l67GDbPjlEkkySsj0e7cgczjjdZVkPLbQwjAS
	L7cjxgTsKPwx4ayXJd0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Q1N-0000000CQIx-1gZu;
	Tue, 01 Sep 2026 15:03:33 +0000
Received: from mail-pz2-x02.google.com ([2607:f8b0:4864:3b::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Q1K-0000000CQFU-08dP
	for linux-rockchip@lists.infradead.org;
	Tue, 01 Sep 2026 15:03:31 +0000
Received: by mail-pz2-x02.google.com with SMTP id 41be03b00d2f7-cc1c753b1bbso1221176a12.1
        for <linux-rockchip@lists.infradead.org>; Tue, 01 Sep 2026 08:03:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788275009; x=1788879809; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=2srrqsfvZcRiNitfhUr7DhaIgxeXboMwTknQApvQL7A=;
        b=QgUsR6VOZ4L28lfCqUT7kXk/Je2XNIZjauAycEnrYawMZXGkkxvNZp5vujpz7HRVwo
         9e11rb4WTDXAw9mVBI5o7VcM+IPknL7mOHuiHSI1R/ACBx2X/kQuHynAO7fjnaUpZe9M
         UYi2O89ZYtPI2FpqZj+C0HVGaU5MccLtVziESh+xwlp+lJdENu+5X6QoSNUhEOM7H58W
         ArXamjb5n0GLxs3+zedkVDZnYPNAtW+RQZwMyk2NDJazn6LF3Bt75Z9BLUalZcEn1jI1
         BEXKyQA6IDYvLo5wQunFMvlGYRxgRaO4seRJa4A2wtUxE5YTdYERkOmbYg7eHvkFElKe
         kH4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788275009; x=1788879809;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=2srrqsfvZcRiNitfhUr7DhaIgxeXboMwTknQApvQL7A=;
        b=QbBTEqMYY5cVthQzbdC4zt9JxdiW16KXII6rP8rF/OELlSCxegQsfLwXixnHmtfi+t
         RFHmZPlyINFpQPsD/Uqg7VVyLPwsm4aHLK+P7hQJM5g5BYvZhNeUv/WXQjCGr7Kyu2Tw
         YEp5Ao9BFFIVdr+Xn0q2YqglXT1bT7XFpI0Op/w7QQ2SiwTDugeqBusOkafV+rUPotT+
         Ep75na7v70AoBFUwvIsiqBtc0cZan2Dh+mnJ/5Mj5gfnHqX9qh9ym6OLx8aoSwMSHpPN
         lZICCRo0azK4YruZUh/NT5C1eRbKlgFg8sRDU8DedYnQEP4k+zBRF0Wx8uWfmc0yP5hM
         aKjA==
X-Forwarded-Encrypted: i=1; AHgh+RpBF7myr8mSFpF6qrtgX1yNQ81CvjHcI05uXLh5UQGF6ni6NP3CAJeMK8wapCDKY4Z7SzTRQ6egcMXFzCwRyg==@lists.infradead.org
X-Gm-Message-State: AFuF++k9o7msUB0Ki5jaOKz0nWZWwyWvu+4YKaWPlzZH/RXPa4x7qD8Q
	P0NDhKLg5g8HonLb9y3ZJj63NBM/Qz41KDCWmFySEzUyWbqAbdX6L028
X-Gm-Gg: AR+sD12e0mm0rC1jrTQYZ6krzIAnWDQ6Nq6T0jBkFmZfphRMWHNqOmTQgPlO+dU+M3k
	9o5l3a6ua6H3/+JCbsgxlRcBZvHvRmO75nNIwHbJ7RD1Rf/qEUuRFCAvrbsWwDLsi0zPs7IZSnP
	qOh0O+zSwWrw5UX+e6KPRewe0tNuWyUpIjq9lbSnjg+PueQ25YDXtZllm34cMHE+8FSQe7X/lPb
	0MRs8S+N3wahq7o2HR3186uIlYbcCSlwyCvA6sksb4nxL4mBmpk8+JL7BLAeE2yRgpk+eJM5KEj
	OYavn5bZhSHIGPW86MciFE33xZ1qolVZdWK1EDZS+fEUAlktcen3OT5VdCxqnIkBBdefJNlGG7A
	Pp0iDjxNNT9qapuq5HDqR4KO+zFXHVXcCg+KDn7Xun+n67jzQxumncIl9W1ZFdoW7fBfXQjjopy
	N4p7TS1R++u4Ugw13A2Ai82Nhu9TMwq3cm0hY9tVBl7uM0kxABW4RbAaGze7Y=
X-Received: by 2002:a05:6a00:a213:b0:848:2ab3:ddeb with SMTP id d2e1a72fcca58-85b5b324108mr11831442b3a.14.1788275008779;
        Tue, 01 Sep 2026 08:03:28 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-85dc0716846sm27914b3a.45.2026.09.01.08.03.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2026 08:03:28 -0700 (PDT)
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
Subject: [PATCH net-next v3 09/10] arm64: dts: rockchip: rk3568-photonicat: enable SGMII LAN port
Date: Tue,  1 Sep 2026 23:01:09 +0800
Message-ID: <20260901150111.141037-10-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260901150111.141037-1-coiaprant@gmail.com>
References: <20260901150111.141037-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_080330_075408_490428EC 
X-CRM114-Status: GOOD (  13.33  )
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
