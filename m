Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC089C982DF
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Sep 2026 12:53:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fDG/5k2Czt7Cptrn4YK20mW3TWheLdRQuZqHh6Yoo+k=; b=Dpk5U/A5atLjY/
	+Me18JufrvoKxmHTe/FyPjEdLVjU30+B/KNbl3HXR9ccMgddaiwLxzzO8mv4NxEVW1URQ/w0+riSO
	8cZzfOKgzvcbys2nhTk+MrjQ++o3DR9wXEnvrtVPg3dlMFYmJGGiEq0a8vECtaqiKYNBP6iKbhp90
	zOcrr3LYScOJySseWYjLBRIStd9RPwiiQj9qKqOXOti9JTO18P5L+hK1Osq+bIdd185RUci8gwhGl
	86SAcq2QaZ6L2OAeJj95N7gm7+ntHqqA2rwRMqx48e/CQCOlnPnKBTqZf3vtEKhZ1FJQODG68sqcC
	+cSV40YL2xPTuiut252w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7uZ4-0000000GHz4-2yeT;
	Sat, 19 Sep 2026 12:53:10 +0000
Received: from mail-pz2-x09.google.com ([2607:f8b0:4864:3b::9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7uYz-0000000GHtU-2JZw
	for linux-rockchip@lists.infradead.org;
	Sat, 19 Sep 2026 12:53:08 +0000
Received: by mail-pz2-x09.google.com with SMTP id 41be03b00d2f7-cc1ddb3ba3eso836648a12.1
        for <linux-rockchip@lists.infradead.org>; Sat, 19 Sep 2026 05:53:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789822385; x=1790427185; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=IeBd/f+KYPaUD3mTxXbAK7RiokjVClr9ke91eN5DQPw=;
        b=kFxL/fEmJu+sh8UZKggVJH5hpsD8le59sTUyY+vP6D+J1SCyoRrwUp1pIiLVkKP8KA
         +FY+7y/aNnf4kdotLUh6LZBcLeiZW0yTfO62TMhS2/hvorYYrIVVImAHZNH7y6DQwl5f
         He/90oZgYlMrX0of4pdnCk2U2WM8JZXT4zlMy7cvKngL1AOQYSfHTMu7PiGba3ePOlwy
         4ryO6PxUq3jPboA4WfL2OBUhPEdZ4X8TJZsUbbf2UtML9jPvGU2fsWOL2mbgrvqxTifa
         h2T9gUcuRRABJOhLIdzC5GDfz7xWENV8A5v4HtGTuahUv9tb6RwNpLTvXahDGqmyOylW
         OhHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789822385; x=1790427185;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=IeBd/f+KYPaUD3mTxXbAK7RiokjVClr9ke91eN5DQPw=;
        b=GmiCVn0Mj7q8iHD3rUgxN1lD4hnxyhykdwdi+W/aJDCAebMZQCbwII+mJsM131mK25
         91ICMI8c1NM7E8UBHxqa1ck92Gu5z+k/cOdITizAOg9XzoJYBW8UsJW0yFELtLdtPnUt
         91H4/9b976v2cLwk3haXUuPK/GNaTPCoPP6mTov0Yv4jFuglZxKsPB7H3whtBout+joi
         wAlXH1g1zt+mWh5P6tCAhmi86nUpbJ3lmpARW4uyouT+OM3QMiJKz8xRDPfmv83bUCiR
         E+aMNNW9Cwe1IVQlgCav6s0e2Wpct5+Vyz8jd0SiA939Mn0gSfPHI27c+TV/ksD/10Fl
         XIYA==
X-Forwarded-Encrypted: i=1; AKwUvByhuhl2cx2NH+NFK7WuAzoqafTiIlUokqxkLPerki2ZsZ+P6UAIL6+TbZTPHTGrmf3Fjgqs7pNJER2GMZFiAQ==@lists.infradead.org
X-Gm-Message-State: AFuF++kS+f1oN9H3yqUpFQ+IWkeXKiAz//A6jeFCJl2FFtP0QYOrod6X
	qXzIL6XqqjXtP6s/Y6jdEIwO0NgA1z1zlWe3Q/LA+lerIaJ+PZYErCHx
X-Gm-Gg: AYBFou0W2w2pq2PWHOEFSGfnMD3IcTgkTsTB3s1q7l3gIV5Tck9bpRPa3M0oQxxyc1/
	aFaPoEsXEPyXdO5q4lO2KbzlRB+eqSPK2hpMRX+uAQ2nhUQZBB+zbwLIQR/v/sW8u3mvJhmnWhM
	ZITI39YrDEOldaHK9betZtSIS2hupR0Oez/4r5HtdpjuHHf3eOL4hnScnpX9JWpmqGnFQIYv0ef
	yT+WdKjIfRlSQbyqIJiWrWdkqQq2W/gN/JRfncBXj1xKuG4UwXzk0iFQr6mEYd4n10mYcCf+XC5
	nhauKFcCJHaqdSwfcd7o+qzGdNKzo54NOYfLyEGvFBf+T7l3qGAr3oNpF7WpAjnpg50C1/CG3cn
	8vZtEEMZiA6QTZjWIWcC3tw/hSyFIg7I2dNUeeKmObn488FwlIX2hhbhMhV4W2jdNmo6ggJ3LQ6
	ybUuDFqsYdwXfP3eHUbMf+0TS/ymaIOeJVN+PQR1QlLBTlFteg+Ov71Qxz1S5+ksTqTCjjPOk=
X-Received: by 2002:aa7:88d0:0:b0:878:3538:8f80 with SMTP id d2e1a72fcca58-87835389b2bmr1364047b3a.46.1789822384851;
        Sat, 19 Sep 2026 05:53:04 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-877aa0026b2sm991805b3a.44.2026.09.19.05.52.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Sep 2026 05:53:03 -0700 (PDT)
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
Subject: [PATCH net-next v8 10/11] arm64: dts: rockchip: rk3568-photonicat: enable SGMII LAN port
Date: Sat, 19 Sep 2026 20:51:17 +0800
Message-ID: <20260919125119.2107089-11-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260919125119.2107089-1-coiaprant@gmail.com>
References: <20260919125119.2107089-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260919_055305_683393_8D01F1AA 
X-CRM114-Status: GOOD (  13.06  )
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

Add rockchip,sgmii-mac-sel = <0> to the already enabled combphy2,
to route the SGMII interface to GMAC0.  RK3568 has three Combo PHYs
that can carry SGMII; which one is wired to the XPCS is a board-level
choice, and Photonicat uses combphy2.

Enable the xpcs node and its port 0 sub-node, referencing combphy2
as the SerDes PHY.

Add the mdio0 node with the YT8521SC PHY at address 3, including its
reset GPIO and LED configuration.  Also add LED configuration for the
existing RGMII PHY on mdio1 for consistency.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../boot/dts/rockchip/rk3568-photonicat.dts   | 74 ++++++++++++++++++-
 1 file changed, 72 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts b/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
index 58c1052ba8ef3..fdaa4a2a4328b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
@@ -3,6 +3,7 @@
 /dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/soc/rockchip,vop2.h>
 #include "rk3568.dtsi"
@@ -241,6 +242,7 @@ &combphy1 {
 };
 
 &combphy2 {
+	rockchip,sgmii-mac-sel = <0>;
 	status = "okay";
 };
 
@@ -260,9 +262,18 @@ &cpu3 {
 	cpu-supply = <&vdd_cpu>;
 };
 
-/* Motorcomm YT8521SC LAN port (require SGMII) */
+/* Motorcomm YT8521SC LAN port */
 &gmac0 {
-	status = "disabled";
+	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>;
+	assigned-clock-parents = <&clk_gmac0_xpcs_mii>;
+	managed = "in-band-status";
+	pcs-handle = <&xpcs_mii0>;
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
+	phys = <&combphy2 PHY_TYPE_SGMII>;
+	phy-names = "serdes";
+	status = "okay";
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
