Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35631C982D8
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Sep 2026 17:03:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fDG/5k2Czt7Cptrn4YK20mW3TWheLdRQuZqHh6Yoo+k=; b=bRYPoX8Nk1l79L
	1fuU+tLU/c2tpaCYOaj3KS2SWdaJUdYvkI3U3xkWLkAkcxp4l6/e+pKIJQUWEWj8rE4dee9ACwqFc
	HBeq7G5oKG1T0EOp7zC4xIFduA2k2o1aiHrxI2JGorU9MyY30evqK+HJ5JNcAkvhKaye+oH6Oi39i
	6x9xOEOsjD5Q5O1ykba/NyZFUlCpbrFBtsPW+oIEiuA4N+niOvV462zHL411Dh9JiypTJhdt5qvXL
	EA7q+spwtZHSktYKr0HE7sx26No2wLXyQlFzXbYDWoCIiefiE7v0EbRJmRNP6HIRjvKrBzO/YE19j
	+mBfqUk8oJMgG4j5fSUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Kx7-000000009ya-1lMh;
	Sun, 20 Sep 2026 17:03:45 +0000
Received: from mail-pz2-x09.google.com ([2607:f8b0:4864:3b::9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Kww-000000009iu-0ZMG
	for linux-rockchip@lists.infradead.org;
	Sun, 20 Sep 2026 17:03:37 +0000
Received: by mail-pz2-x09.google.com with SMTP id 41be03b00d2f7-cc53988d9f3so1289290a12.0
        for <linux-rockchip@lists.infradead.org>; Sun, 20 Sep 2026 10:03:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789923813; x=1790528613; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=IeBd/f+KYPaUD3mTxXbAK7RiokjVClr9ke91eN5DQPw=;
        b=pcxO3pSkj/R8Aa4weJWH9KmDBbsgzOC5RDksZ9I3T1R2DC3bmNBP8SEbBEe1smYJzs
         acJEE/M6m8jN4AQWnp/mLBPALi1XGY1q4ne5he5dEksF7rFMl31/6+iGqjdCi0CK1fUo
         yo7s5/P+nj28XQy1WVhXP27O64HWTqkXOhwsC/kGusgrw4ogfytC8EoODyuCMf4CVzUh
         zSvneETGPIIIHuzxH/DM7Ge1weAc43wTBCPlMMKSu3BQ6KoFe9CGpjsxzKrJeH+Wc/qp
         fkpacSkpJoevdB94X++/ltGHazpeYp5nbK56YP1hg0TGRr1+o/lQd9VBQM2p3NBeel+l
         b2Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789923813; x=1790528613;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=IeBd/f+KYPaUD3mTxXbAK7RiokjVClr9ke91eN5DQPw=;
        b=JoCGbRXsVC17pdTN+N/Ekq0Ff7A26zzNlNq86GewbAzIKfpsxk5iVqDORvriuMFrm0
         tvwokVs8WoWPwc4zGcL5Xri3QsKYdPj2Gzdv1K85e4OCUlpAkrWKl1LN3+nTCX1dVV6+
         3WiyQxGJfsh50THQ8MozJaHDdIHASiMTJ4nn+druD2eTvNbCrdTF2qblqOX8loGygqH5
         mRt3XyfEiN7cKwWo6Hw+KcBeUmDh0gGq63aXLf0/MY2FdnsIc4vT5Q9ZrJjRonF6pIC9
         xmVAd5vRtFWa7u2rXp+Xv9679zM/LpTmyimZFZiksrX6jAA3XLDzZ3Yh+ET1tUu7D2fk
         z2iw==
X-Forwarded-Encrypted: i=1; AKwUvBy/T5Qao1rco4CLNBlkyzR5ttq3Q0Cfd4fngKW6eniVRqe6rTCfz0EnYj65WmZxsmqLDBjf3MewSh91e3bKqw==@lists.infradead.org
X-Gm-Message-State: AFuF++lFsnaa/L8KNvZzi8ILjEFKLxlOqGb3DL3bw5zmS9d/P9pg5WNT
	C5GYiy7LLZ1Icn4B0J8MmB3HOYHxHbJhfKtsBZ8kIlumqIg/LeYlkUYW
X-Gm-Gg: AYBFou3ZwvDAaArlAj/7vSmwHCiL8uGYburnA5rMsHI9HiBY7PahQXuXe0ipFY6yBwd
	c9DX1cuma6VMeA+oyLxSlQsNX3rkmxneZ95c6WbWdTcjAmRi/Hfrn1lM+Dywv1U2zcwmGM36RsR
	CMy3Br77UqXfh2VHR7jAhmFI16iItSlgSiqjGUGS01r4vlenD/gNA8VeToMRkCdCKPDIRYFCAyc
	LDZzQ2w2vezlTSpS/ST3KdAURK41hh/E8yDOYg/pugDcw/9EqQRZpB0gMylS7HieWCkVh/p/Is8
	HDbm8M8LCuJO1+CgNQbSlVvCOVRwqs0AquchvXT5BLJWQYu6oWrbuiHgihTmaB0E1yICSOBLDT/
	QxffUwTsNo0Z2phlM9WRjyCFdSBFDbH339tqqQrSY0EZNirGP+x6yFNUmf24wYsOWnuUlwIW749
	NmTL7sWr0clI9L/+n4q1p6UPKgS37pL7AaFQsx6mlxK2LBUdSTRICznvw6jQY9nfTZ68jfhg==
X-Received: by 2002:a05:6a00:1249:b0:878:3783:8a83 with SMTP id d2e1a72fcca58-87837839389mr5176719b3a.53.1789923812897;
        Sun, 20 Sep 2026 10:03:32 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-877a9d07425sm2140646b3a.42.2026.09.20.10.03.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Sep 2026 10:03:32 -0700 (PDT)
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
Subject: [PATCH net-next v9 10/11] arm64: dts: rockchip: rk3568-photonicat: enable SGMII LAN port
Date: Mon, 21 Sep 2026 01:01:14 +0800
Message-ID: <20260920170116.3624104-11-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260920170116.3624104-1-coiaprant@gmail.com>
References: <20260920170116.3624104-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260920_100334_255291_CB347C98 
X-CRM114-Status: GOOD (  12.61  )
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
