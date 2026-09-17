Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74D96C982D2
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Sep 2026 20:48:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fDG/5k2Czt7Cptrn4YK20mW3TWheLdRQuZqHh6Yoo+k=; b=tFtJDj3RFnOmOV
	xHuOvTT3ATx8MVMUo5PlTlXlKBAMJsnsFQfbR5T2fq1VnVma/IiAyUx+jci33xIr807zemsNHemVe
	MOlNaunOxtiMM89KlAVunmQso7BaLFN0qO9kibhagwL20A32GEas+fJSi4TWnIwMSn5QSvvglpXLU
	VhdYV5XUEsR3DXPL+STjvc/+x4FGiQlifK/p10EgXprQALTiUsWxy+UpLjeXLeB5hiGacFaO+cPom
	C+2KXK2cix+Ax4iy2V/RMP+d1y59Q9uwBQFp8xfwhrcO2qKCJvIspVptseYMjtbAhnfDlURDkgWZp
	xhYH+htOV7quGCfbM3Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7J25-0000000CTk8-0s5L;
	Thu, 17 Sep 2026 20:48:37 +0000
Received: from mail-pj2-x05.google.com ([2607:f8b0:4864:39::5])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7J21-0000000CTfK-39vi
	for linux-rockchip@lists.infradead.org;
	Thu, 17 Sep 2026 20:48:36 +0000
Received: by mail-pj2-x05.google.com with SMTP id 98e67ed59e1d1-3965683e9e9so54650a91.1
        for <linux-rockchip@lists.infradead.org>; Thu, 17 Sep 2026 13:48:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789678113; x=1790282913; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=IeBd/f+KYPaUD3mTxXbAK7RiokjVClr9ke91eN5DQPw=;
        b=H3oHpIpHdT4ZnLkwPhXMhW6gqkqk3FtcTkDZHUlSKR3ZyZpi+mG8bNPCXcNaox7daw
         6RoydTqsDxt0MIHzs0J2qHOvoMjNENjX5V1ynBZPgzLXDXmBl75OaOz650m0GNb8sGdh
         Ew/UaDVv8ew2cF6/AVbC/D060BEO1JBeG41EWIWn0GjcMh95xhpYL9AYwcXjA7wPYTGK
         CfjqvzVaSwfDjLHC+zoWLhoYUcyVkTW2GgrI6dPyVw5tsqhQVKHKgW6V+BapFMOj3k9B
         IJkkbSEqvZXGZ2bkv6vkRsDA25PdJtXFSBaN6DnyMyRp5tf97iQB479G4izC2EEhBLKp
         4kaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789678113; x=1790282913;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=IeBd/f+KYPaUD3mTxXbAK7RiokjVClr9ke91eN5DQPw=;
        b=p2GjFqWIsGVgeQN+DQ95v7VFsDB8XqB/0S/5zXFDOcE7S/yS71ShXDsf084fix6UWc
         IXQugUkm+xFxsX7FVZOnrKPH57Rr2us/6fIaLNwr1uyof4reJaw65/8yJ6qBK9cPXMlZ
         6LmJVOtuYsSL4HRE7Q8ajJt5Sri1GcRuS6Q2u0/69RFDQ4GKgMfsvt6XTmX5l1d6OPd0
         gX+2OBAJ9Le92EBcVbwLek0jypYF4TZOA3r8m44RjZ0a9u2fRJry6Hq39exaXGjthzOU
         Z2E8cixK2HMj6Tbl8lheJxlFFQMvCccV1lBRYHCAQh2uMkMM6GDf8pAtwYiij0lUYorE
         OdZQ==
X-Forwarded-Encrypted: i=1; AKwUvBw4AMHaZPZB11xPjpjHM517lUlRG98J392jO7gaiD3R87lGW5cbCGqto63Wx58Dr8/OSI6tU3YoC2rJR5uRoQ==@lists.infradead.org
X-Gm-Message-State: AFuF++npOvgl5QZ9BVD/KZVo/wAhEHJKBuWCBlhUXNk8ZlqSWOXVFQBJ
	8yxhWg1+New11TrpEwvf+eeyaNKoL76JiGLGkRPPm9mEqmaX8jXZgICI
X-Gm-Gg: AYBFou0KmhpmiOXXQBbz5sO0MYYoitT/6tV9F7gSbQdNm+pqCNumLsPAxPH8cdQ8OEj
	Nh8o7HZOaLMJP+UAMpl9lHEWTvH3RpQuK6PaprkIH2qtyh3KGHNfBeN17AJV9CxJXTQJ/Oi6y9a
	JU3a5yMCzZCrPU7s/pKD38loLyseGIxNGajA4NfqPsWs+8x2NV+S/NRFq72ZBO6KTfqdwOdeDZJ
	EAFg+ercDN+XnO5aZLzMlbWprIZx+fr4R+JGegsLd4cbz7aQK7PY5zdOc1JaevzUW69IUjcfE69
	xcah4L9CJp0KMJ2i+1+XLuKJTtS2VyKn8dMfQ1MC/ryZJciR7LItlPk2TNqmHGqB/mjmFPF/RbP
	sRYQxZQJJ5wJQk0xA1ltxtA2tZ6hDHTaoFp9HalqGg7YJ9KOG3FyQ5CO33t6iw9ougLBJ9RTWyA
	DVyMb+8ABYiqLnhK1pyAb/PyLbm1ZcBpPNEVOa8UPbIvJT14CtNPbYQsLbT0BT9ocoPnmCwA==
X-Received: by 2002:a17:90b:548d:b0:39e:4c7e:f040 with SMTP id 98e67ed59e1d1-39e54f889a8mr664123a91.29.1789678112838;
        Thu, 17 Sep 2026 13:48:32 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39e50a4bc22sm1232196a91.17.2026.09.17.13.48.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2026 13:48:32 -0700 (PDT)
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
Subject: [PATCH net-next v7 10/11] arm64: dts: rockchip: rk3568-photonicat: enable SGMII LAN port
Date: Fri, 18 Sep 2026 04:46:21 +0800
Message-ID: <20260917204624.2427486-11-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260917204624.2427486-1-coiaprant@gmail.com>
References: <20260917204624.2427486-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_134833_828770_8B8773D2 
X-CRM114-Status: GOOD (  12.35  )
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
