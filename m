Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF50EC982FA
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2026 20:05:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fDG/5k2Czt7Cptrn4YK20mW3TWheLdRQuZqHh6Yoo+k=; b=2fnSGsPE09xkdr
	D8ugmX991Sf/mYfDc6/asXauOAMJJ8jW6Mz8inRVGqHcVoz86ramtuGGGHZ8fx55MtPGWj9LAEPl9
	bdhGfqkSkVnCQxnLTJ7IAmf0h2b1Srouw9zC0Kg0h73vYSdgXLqlJ2v9KomR7sEB/wE4e25CG1BzZ
	HWk+Y5n95Yn7HMSzUVEXYuZZWqbvnLc1AoWTsDVb5EpMqQ/CuAO8Rlz2MflCjnnFAhiCOPSh4mrY3
	Tq5oy4IRWmorpBWum1qMIsbf1MU60s1ZoBkobFKt3FP29kIlgYgnnVYlJ9UM0VELwJ2hLgrZgIibQ
	jzzE+pzZsetV/h+rgt7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x96jo-00000006Us3-1RPd;
	Tue, 22 Sep 2026 20:05:12 +0000
Received: from mail-pj2-x00.google.com ([2607:f8b0:4864:39::])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x96jg-00000006Ujl-3WB6
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Sep 2026 20:05:06 +0000
Received: by mail-pj2-x00.google.com with SMTP id d9443c01a7336-2dd9bce707bso819165ad.1
        for <linux-rockchip@lists.infradead.org>; Tue, 22 Sep 2026 13:05:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790107504; x=1790712304; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=IeBd/f+KYPaUD3mTxXbAK7RiokjVClr9ke91eN5DQPw=;
        b=gDWGiHLYAQV377K4yhXUvyA5R8oKvVk00TTtAXz3I102GXPEL5mQ+j3PoF81G5F+zM
         ciYuQV7wgCN8M/ybO4gP6mGhQKLtE8sb03BNutuTxLzDYjZ89IYjm17t5D5S0rfd5Msl
         tO3D6g/9OJIYjwAJZoyAq4Vd341fPGwqEklVOQRhFKwYJq38fBpKEBcwBNTuG/dQmCD7
         8UFWa3qIZZF646qQ6/zOVCZrPAEqg+9ALlXX60+NFrc5YGdr/d1p//0HJgPTpVup71gV
         lMpZ8NcL2eSu+tgTIo4aJX2fMd3ryI/pjfniZWRVHkEIFLLiAksktCmLWr0c5pZ2KHoB
         TlxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790107504; x=1790712304;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=IeBd/f+KYPaUD3mTxXbAK7RiokjVClr9ke91eN5DQPw=;
        b=NSdaQRGA9WYSlxw7i/sssprs7vnu7c1CRW14TYTMP0uWmFZTh2gtcRoRXuqbhS7Q3e
         YBhDpEMvbed7G5O4XRju995pED/Tb9P/sqf4wXo0s1TmeRVV2T46WfmBQcAuw9/muEJU
         NG+Xfp7l5LrhU41rM1J9x3LtSTWNwsFoEsGhF+jvw23GGimd55P/od6XPrMZoV4qj/kC
         lfSMqvRiHq+qcfef8lxmwbuOYsyMpfOI4XVVb0AkopsrK7e74TF/PnHCfPOwz/jyaZfq
         gTorCXOb0Odz0fLGE/XL+3tS0WDJWEnTQEwI9LdTLLQeI0TuiqwChW6YwoKrQmUGJtyg
         Z80A==
X-Forwarded-Encrypted: i=1; AKwUvBxeMCiMy6s0sl+BHdeFO/FI4YzjLvE9PzXnseyJZdBr0Lfgynpds9I4AFRehMih0lSZn9cxf3Pd2n++LYfEQw==@lists.infradead.org
X-Gm-Message-State: AFuF++nHr/LalG3XHeRBC2RvqeyQWpenAsdc1Oe23/ang61UB3hA0kQr
	f+WpXkXgzbgLMsbzwEGSHGJduESLN28nRDJJdBS4NvmN8IBGVCpnu+Mr
X-Gm-Gg: AYBFou0jfshceOeiJBNT7VmL9ID6btI8rsi2VfhjVXNdz3nayi2uAAFNqjBiahRsBGv
	5mFrg0LGHsPs95P6YmcLguayHNZVrEyglxKmBxNJZMVrCqm0zcXhpU3f/DTWBgyQ0aQusDxwLuC
	LcKNFmsnjE7HPVnMVHq1pW7RJnLIAJET/whv57chHC0NxNovRjMKmtsVxPuWCEwgJtnXsREFny2
	3aPHcaTWOVXJNvXF7LVySVQU0NXjsChtaWTLiOGMfkDyoN/oUqI6pMlwegtNO4nb5M93k7FsOvL
	gSMDFp9Ut4tQizUyd0ZYvrxNo0gHppbtUGHY5H9y9swoq+G2mpPxyCD6ZplLRys3+CXHCvnEVyY
	WH6m+c1/ePx8lYq6jUA9Ie9AvpYS8s/6YobQ61e4gIgSU9IrPTTRYfraytbQhGCvPacFthj+mH2
	rzXzqyZA+SzJ4jrovyyeVRpAoKVV5NQ4yPrQmHGw2yyNn6Q5OPG1wtQP83XGgvKawI5hDj
X-Received: by 2002:a17:903:228e:b0:2dd:ad73:c984 with SMTP id d9443c01a7336-2df69d5ac91mr4126585ad.28.1790107504081;
        Tue, 22 Sep 2026 13:05:04 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2df6a5eea15sm654515ad.64.2026.09.22.13.04.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2026 13:05:03 -0700 (PDT)
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
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH net-next v10 10/11] arm64: dts: rockchip: rk3568-photonicat: enable SGMII LAN port
Date: Wed, 23 Sep 2026 04:03:34 +0800
Message-ID: <20260922200336.2201212-11-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260922200336.2201212-1-coiaprant@gmail.com>
References: <20260922200336.2201212-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_130504_909605_28E7C0CA 
X-CRM114-Status: GOOD (  12.91  )
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
