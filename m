Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D6E9C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Dec 2023 10:34:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kgh+MrNBjS53pi4fnZVmUitIUsXZ355Cn6bR/dDoII8=; b=huCDRIKtAnIgoX
	phw1iDJUXSDTnFil1LfYcJhlPTwq9YQRaUAZODWqyT5Ke6UGb1t5LTWOyr/QIX7ojPCUKQajAgllp
	Rvr9W0dEhq0BTEPJyjTqhQN/vvA/6kqgZR6RoZfbs3tbbjRUqPL1uLmVVZZIyhjXTy1Nl+0M1lsIQ
	X3I9+vMXvdsEkq6J1tj1y4mAXcep39z2Q3bUuN+DHuAO5Y5vBVX2AXHoPMzbURNumobN6Ark1MhNn
	k6FQHTgU03EW/JqdjIv8cIpWYdXYL1nfMeF4WzpIlRxjOsMeFzC0De7uRKZWHEZHrTe4jSAqeGXIY
	CHOcOajF5LDMnyL6IL+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFttr-00GwQm-1K;
	Wed, 20 Dec 2023 10:34:03 +0000
Received: from m15.mail.163.com ([45.254.50.219])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFttn-00GwOl-1s;
	Wed, 20 Dec 2023 10:34:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=Z0swl
	vC0MCYVh5hNtI+/mhkIaiC3hDyw+jzAaT3KLfQ=; b=Up1r4dwnZs6SMYokmOeYl
	09xtjYed3sk323KRWTra8EeSrcaIWnrlRxGGCFV68Rs2zYbs5hDUGT94KzxhzQqb
	iUZAGtroLzJfMICytuqeNAVG9fNYWrL8DZxhIO03Ov1H6DbDoRdpn4XeZ4k6oSfo
	oicbnc8ilbi1ZRpf7+K8lw=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g0-0 (Coremail) with SMTP id _____wCXnyMCw4JlbFzLGA--.15074S2;
	Wed, 20 Dec 2023 18:33:41 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: jbx6244@gmail.com,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	david.wu@rock-chips.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH] Revert "ARM: dts: rockchip: restyle emac nodes"
Date: Wed, 20 Dec 2023 18:33:34 +0800
Message-Id: <20231220103334.2665543-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: _____wCXnyMCw4JlbFzLGA--.15074S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxuw48Gr1fCFWkWrW3urW5GFg_yoW3GFWfpw
	nxArZ7Xrs7Wr4Fg398J34DJrs8Aw4qkwsY9rs7Cr4rJF1I93s7tr17Krn3ua42qrW5A3yI
	9r4fCr92ywsrXw7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jrxhdUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEAdMXmVOBEAhLQAAsm
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231220_023400_040105_BD077CE0 
X-CRM114-Status: GOOD (  10.52  )
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

From: Andy Yan <andy.yan@rock-chips.com>

When try to run rk3036 kylin board with mainline,
I found the emac ethernet probe failed:

[    2.324583] loop: module loaded
[    2.328435] SPI driver spidev has no spi_device_id for rockchip,spidev
[    2.338688] tun: Universal TUN/TAP device driver, 1.6
[    2.345397] rockchip_emac 10200000.ethernet: no regulator found
[    2.351892] rockchip_emac 10200000.ethernet: ARC EMAC detected with id: 0x7fd02
[    2.359331] rockchip_emac 10200000.ethernet: IRQ is 43
[    2.364719] rockchip_emac 10200000.ethernet: MAC address is now e6:58:d6:ec:d9:7c
[    2.396993] mdio_bus Synopsys MII Bus: mdio has invalid PHY address
[    2.403306] mdio_bus Synopsys MII Bus: scan phy mdio at address 0
[    2.508656] rockchip_emac 10200000.ethernet: of_phy_connect() failed
[    2.516334] rockchip_emac 10200000.ethernet: failed to probe arc emac (-19)

This reverts commit 1dabb74971b3 ("ARM: dts: rockchip: restyle emac nodes")
make emac on rk3036 kylin board probe right again:
[    1.920385] CAN device driver interface
[    1.925499] rockchip_emac 10200000.ethernet: no regulator found
[    1.932535] rockchip_emac 10200000.ethernet: ARC EMAC detected with id: 0x7fd02
[    1.940735] rockchip_emac 10200000.ethernet: IRQ is 42
[    1.946743] rockchip_emac 10200000.ethernet: MAC address is now 96:7d:4f:0a:69:b3
[    2.581340] rockchip_emac 10200000.ethernet: connected to Generic PHY phy with id 0xffffc816
[    2.592560] e1000e: Intel(R) PRO/1000 Network Driver
[    2.598136] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.

Fixes: 1dabb74971b3 ("ARM: dts: rockchip: restyle emac nodes")
Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

 arch/arm/boot/dts/rockchip/rk3036-evb.dts     | 16 ++++++----------
 arch/arm/boot/dts/rockchip/rk3036-kylin.dts   | 16 ++++++----------
 arch/arm/boot/dts/rockchip/rk3036.dtsi        |  2 ++
 .../boot/dts/rockchip/rk3066a-marsboard.dts   | 17 +++++++----------
 .../boot/dts/rockchip/rk3066a-rayeager.dts    | 15 +++++----------
 .../boot/dts/rockchip/rk3188-radxarock.dts    | 19 ++++++++-----------
 arch/arm/boot/dts/rockchip/rk3xxx.dtsi        |  2 ++
 7 files changed, 36 insertions(+), 51 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3036-evb.dts b/arch/arm/boot/dts/rockchip/rk3036-evb.dts
index becdc0b664bf..94216f870b57 100644
--- a/arch/arm/boot/dts/rockchip/rk3036-evb.dts
+++ b/arch/arm/boot/dts/rockchip/rk3036-evb.dts
@@ -15,20 +15,16 @@ memory@60000000 {
 };
 
 &emac {
-	phy = <&phy0>;
-	phy-reset-duration = <10>; /* millisecond */
-	phy-reset-gpios = <&gpio2 RK_PC6 GPIO_ACTIVE_LOW>; /* PHY_RST */
 	pinctrl-names = "default";
 	pinctrl-0 = <&emac_xfer>, <&emac_mdio>;
-	status = "okay";
+	phy = <&phy0>;
+	phy-reset-gpios = <&gpio2 RK_PC6 GPIO_ACTIVE_LOW>; /* PHY_RST */
+	phy-reset-duration = <10>; /* millisecond */
 
-	mdio {
-		#address-cells = <1>;
-		#size-cells = <0>;
+	status = "okay";
 
-		phy0: ethernet-phy@0 {
-			reg = <0>;
-		};
+	phy0: ethernet-phy@0 {
+		reg = <0>;
 	};
 };
 
diff --git a/arch/arm/boot/dts/rockchip/rk3036-kylin.dts b/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
index 67e1e04139e7..e817eba8c622 100644
--- a/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
+++ b/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
@@ -80,20 +80,16 @@ &acodec {
 };
 
 &emac {
-	phy = <&phy0>;
-	phy-reset-duration = <10>; /* millisecond */
-	phy-reset-gpios = <&gpio2 RK_PC6 GPIO_ACTIVE_LOW>; /* PHY_RST */
 	pinctrl-names = "default";
 	pinctrl-0 = <&emac_xfer>, <&emac_mdio>;
-	status = "okay";
+	phy = <&phy0>;
+	phy-reset-gpios = <&gpio2 RK_PC6 GPIO_ACTIVE_LOW>; /* PHY_RST */
+	phy-reset-duration = <10>; /* millisecond */
 
-	mdio {
-		#address-cells = <1>;
-		#size-cells = <0>;
+	status = "okay";
 
-		phy0: ethernet-phy@0 {
-			reg = <0>;
-		};
+	phy0: ethernet-phy@0 {
+		reg = <0>;
 	};
 };
 
diff --git a/arch/arm/boot/dts/rockchip/rk3036.dtsi b/arch/arm/boot/dts/rockchip/rk3036.dtsi
index 78686fc72ce6..e240b89b0b35 100644
--- a/arch/arm/boot/dts/rockchip/rk3036.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3036.dtsi
@@ -228,6 +228,8 @@ emac: ethernet@10200000 {
 		compatible = "rockchip,rk3036-emac";
 		reg = <0x10200000 0x4000>;
 		interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
+		#address-cells = <1>;
+		#size-cells = <0>;
 		rockchip,grf = <&grf>;
 		clocks = <&cru HCLK_MAC>, <&cru SCLK_MACREF>, <&cru SCLK_MAC>;
 		clock-names = "hclk", "macref", "macclk";
diff --git a/arch/arm/boot/dts/rockchip/rk3066a-marsboard.dts b/arch/arm/boot/dts/rockchip/rk3066a-marsboard.dts
index f6e8d49a02ef..e3d6f0e81330 100644
--- a/arch/arm/boot/dts/rockchip/rk3066a-marsboard.dts
+++ b/arch/arm/boot/dts/rockchip/rk3066a-marsboard.dts
@@ -150,21 +150,18 @@ vcc28_cif: regulator@12 {
 #include "../tps65910.dtsi"
 
 &emac {
+	status = "okay";
+
 	phy = <&phy0>;
 	phy-supply = <&vcc_rmii>;
+
 	pinctrl-names = "default";
 	pinctrl-0 = <&emac_xfer>, <&emac_mdio>, <&phy_int>;
-	status = "okay";
-
-	mdio {
-		#address-cells = <1>;
-		#size-cells = <0>;
 
-		phy0: ethernet-phy@0 {
-			reg = <0>;
-			interrupt-parent = <&gpio1>;
-			interrupts = <RK_PD2 IRQ_TYPE_LEVEL_LOW>;
-		};
+	phy0: ethernet-phy@0 {
+		reg = <0>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <RK_PD2 IRQ_TYPE_LEVEL_LOW>;
 	};
 };
 
diff --git a/arch/arm/boot/dts/rockchip/rk3066a-rayeager.dts b/arch/arm/boot/dts/rockchip/rk3066a-rayeager.dts
index 29d8e5bf88f5..096616324c2d 100644
--- a/arch/arm/boot/dts/rockchip/rk3066a-rayeager.dts
+++ b/arch/arm/boot/dts/rockchip/rk3066a-rayeager.dts
@@ -142,20 +142,15 @@ &cpu1 {
 };
 
 &emac {
-	phy = <&phy0>;
-	phy-supply = <&vcc_rmii>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&emac_xfer>, <&emac_mdio>, <&rmii_rst>;
+	phy = <&phy0>;
+	phy-supply = <&vcc_rmii>;
 	status = "okay";
 
-	mdio {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		phy0: ethernet-phy@0 {
-			reg = <0>;
-			reset-gpios = <&gpio1 RK_PD6 GPIO_ACTIVE_LOW>;
-		};
+	phy0: ethernet-phy@0 {
+		reg = <0>;
+		reset-gpios = <&gpio1 RK_PD6 GPIO_ACTIVE_LOW>;
 	};
 };
 
diff --git a/arch/arm/boot/dts/rockchip/rk3188-radxarock.dts b/arch/arm/boot/dts/rockchip/rk3188-radxarock.dts
index 118deacd38c4..239d2ec37fdc 100644
--- a/arch/arm/boot/dts/rockchip/rk3188-radxarock.dts
+++ b/arch/arm/boot/dts/rockchip/rk3188-radxarock.dts
@@ -126,21 +126,18 @@ vsys: vsys-regulator {
 };
 
 &emac {
-	phy = <&phy0>;
-	phy-supply = <&vcc_rmii>;
+	status = "okay";
+
 	pinctrl-names = "default";
 	pinctrl-0 = <&emac_xfer>, <&emac_mdio>, <&phy_int>;
-	status = "okay";
 
-	mdio {
-		#address-cells = <1>;
-		#size-cells = <0>;
+	phy = <&phy0>;
+	phy-supply = <&vcc_rmii>;
 
-		phy0: ethernet-phy@0 {
-			reg = <0>;
-			interrupt-parent = <&gpio3>;
-			interrupts = <RK_PD2 IRQ_TYPE_LEVEL_LOW>;
-		};
+	phy0: ethernet-phy@0 {
+		reg = <0>;
+		interrupt-parent = <&gpio3>;
+		interrupts = <RK_PD2 IRQ_TYPE_LEVEL_LOW>;
 	};
 };
 
diff --git a/arch/arm/boot/dts/rockchip/rk3xxx.dtsi b/arch/arm/boot/dts/rockchip/rk3xxx.dtsi
index cb4e42ede56a..17e89d30de78 100644
--- a/arch/arm/boot/dts/rockchip/rk3xxx.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3xxx.dtsi
@@ -193,6 +193,8 @@ emac: ethernet@10204000 {
 		compatible = "snps,arc-emac";
 		reg = <0x10204000 0x3c>;
 		interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
+		#address-cells = <1>;
+		#size-cells = <0>;
 
 		rockchip,grf = <&grf>;
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
