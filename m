Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 063C2EEE271
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Sep 2024 23:59:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AgTqIRYnjiyDvUPOdSE5rJnYMdkc1kkG70ZFtFkNaDA=; b=degNAYBB31oiSH
	4MH4hiQlvL7qTilCJyhVZPgCnfYasno2K5QWQr1xbsJhnxYHb5gX3qJ0ndU8CfoO+eBzIYhhKyoAO
	Y0S/RQVJdlDfG3QMJmSPHuJpXFTNFjVx+2+52WIPD/UIkIrrfigqAPLclevl6+46D5x0FyyZrMkEK
	EiPnTBKlfAzHlyZwvazWaOCPvLQ4mzJY+MVIAUt/dTgrpFv1pibAwtlKLphzAScNKdI4WwSQmlbyK
	Qu5e5Yo4lhj1weV05uwAoNEMVYeJJYj+HCkLWCz2U+JJbJaJ9ur/38DVvOXVjeBNZAgDu9irzU/Um
	AuO4QiR+Rqtx0xKWtn5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sotj2-0000000EYMc-3bp9;
	Thu, 12 Sep 2024 23:59:48 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sotiy-0000000EYKg-3tro
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Sep 2024 23:59:46 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 48CNxU3i016612;
	Fri, 13 Sep 2024 08:59:31 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: amadeus@jmu.edu.cn, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH] arm64: dts: rockchip: fix PCIe regulators for Radxa ROCK 3A
Date: Fri, 13 Sep 2024 08:59:23 +0900
Message-ID: <20240912235923.1013-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240912_165945_199607_3BE1FD2D 
X-CRM114-Status: GOOD (  10.03  )
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

on Radxa ROCK 3A, GPIO0_D4 is used to enable both pi6c PCIe clock
generator and "vcc3v3_pcie" regulator (PCIe3 M.2 M key connector).

since pi6c needs to be enabled before using PCIe3, GPIO0_D4 need to be
controlled by "vcc3v3_pi6c_03" regulator. so make "vcc3v3_pi6c_03"
vin-supply for "vcc3v3_pcie".

then, currently "vcc3v3_pcie" regulator is used for PCIe2 M.2 E key
connector, but by schematic[1], it's wrong. "vcc3v3_wf" regulator is
right one, add it and fix related vin-supply.

in addition to above fixes, some cosmetic changes for pinctrl node
names. no functional change is intended.

[1] https://dl.radxa.com/rock3/docs/hw/3a/radxa_rock_3a_v1310_schematic.pdf

tested with Radxa Wireless Module A8 on PCIe2 and Dual 2.5G Router HAT
on PCIe3.

$ lspci
0000:00:00.0 PCI bridge: Rockchip Electronics Co., Ltd RK3568 Remote Signal Processor (rev 01)
0000:01:00.0 Network controller: Realtek Semiconductor Co., Ltd. RTL8852BE PCIe 802.11ax Wireless Network Controller
0002:00:00.0 PCI bridge: Rockchip Electronics Co., Ltd RK3568 Remote Signal Processor (rev 01)
0002:01:00.0 PCI bridge: ASMedia Technology Inc. ASM2806 4-Port PCIe x2 Gen3 Packet Switch (rev 01)
0002:02:00.0 PCI bridge: ASMedia Technology Inc. ASM2806 4-Port PCIe x2 Gen3 Packet Switch (rev 01)
0002:02:02.0 PCI bridge: ASMedia Technology Inc. ASM2806 4-Port PCIe x2 Gen3 Packet Switch (rev 01)
0002:02:06.0 PCI bridge: ASMedia Technology Inc. ASM2806 4-Port PCIe x2 Gen3 Packet Switch (rev 01)
0002:02:0e.0 PCI bridge: ASMedia Technology Inc. ASM2806 4-Port PCIe x2 Gen3 Packet Switch (rev 01)
0002:03:00.0 Non-Volatile memory controller: ADATA Technology Co., Ltd. LEGEND 700, XPG GAMMIX S20 NVMe SSD (DRAM-less) (rev 03)
0002:05:00.0 Ethernet controller: Realtek Semiconductor Co., Ltd. RTL8125 2.5GbE Controller (rev 05)
0002:06:00.0 Ethernet controller: Realtek Semiconductor Co., Ltd. RTL8125 2.5GbE Controller (rev 05)
$ lspci -t
-[0000:00]---00.0-[01-ff]----00.0
-[0002:00]---00.0-[01-ff]----00.0-[02-06]--+-00.0-[03]----00.0
                                           +-02.0-[04]--
                                           +-06.0-[05]----00.0
                                           \-0e.0-[06]----00.0

Fixes: 0522cd811220 ("arm64: dts: rockchip: Add PCIe v3 nodes to rock-3a")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 .../boot/dts/rockchip/rk3568-rock-3a.dts      | 52 ++++++++++++++-----
 1 file changed, 38 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index 59f1403b4fa56..885196c58b915 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -109,6 +109,10 @@ pcie30_avdd1v8: pcie30-avdd1v8-regulator {
 	/* pi6c pcie clock generator */
 	vcc3v3_pi6c_03: vcc3v3-pi6c-03-regulator {
 		compatible = "regulator-fixed";
+		enable-active-high;
+		gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pcie_pwren_h>;
 		regulator-name = "vcc3v3_pi6c_03";
 		regulator-always-on;
 		regulator-boot-on;
@@ -119,14 +123,10 @@ vcc3v3_pi6c_03: vcc3v3-pi6c-03-regulator {
 
 	vcc3v3_pcie: vcc3v3-pcie-regulator {
 		compatible = "regulator-fixed";
-		enable-active-high;
-		gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pcie_enable_h>;
 		regulator-name = "vcc3v3_pcie";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
-		vin-supply = <&vcc5v0_sys>;
+		vin-supply = <&vcc3v3_pi6c_03>;
 	};
 
 	vcc3v3_sys: vcc3v3-sys-regulator {
@@ -136,7 +136,17 @@ vcc3v3_sys: vcc3v3-sys-regulator {
 		regulator-boot-on;
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
-		vin-supply = <&vcc12v_dcin>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc3v3_wf: vcc3v3-wf-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_wf";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc3v3_sys>;
 	};
 
 	vcc5v0_sys: vcc5v0-sys-regulator {
@@ -592,9 +602,9 @@ rgmii_phy1: ethernet-phy@0 {
 
 &pcie2x1 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie_reset_h>;
+	pinctrl-0 = <&pcie2x1m1_pins>;
 	reset-gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_HIGH>;
-	vpcie3v3-supply = <&vcc3v3_pcie>;
+	vpcie3v3-supply = <&vcc3v3_wf>;
 	status = "okay";
 };
 
@@ -605,7 +615,7 @@ &pcie30phy {
 
 &pcie3x2 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie30x2m1_pins>;
+	pinctrl-0 = <&pcie3x2m1_pins>;
 	reset-gpios = <&gpio2 RK_PD6 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_pcie>;
 	status = "okay";
@@ -643,12 +653,26 @@ led_user_en: led_user_en {
 	};
 
 	pcie {
-		pcie_enable_h: pcie-enable-h {
-			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
+		pcie2x1m1_pins: pcie2x1m1-pins {
+			rockchip,pins =
+				/* pcie20_clkreqnm1 */
+				<2 RK_PD0 4 &pcfg_pull_none>,
+				/* pcie20_perstnm1 */
+				<3 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>,
+				/* pcie20_wakenm1 */
+				<2 RK_PD1 4 &pcfg_pull_none>;
 		};
-
-		pcie_reset_h: pcie-reset-h {
-			rockchip,pins = <3 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
+		pcie3x2m1_pins: pcie3x2m1-pins {
+			rockchip,pins =
+				/* pcie30x2_clkreqnm1 */
+				<2 RK_PD4 4 &pcfg_pull_none>,
+				/* pcie30x2_perstnm1 */
+				<2 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>,
+				/* pcie30x2_wakenm1 */
+				<2 RK_PD5 4 &pcfg_pull_none>;
+		};
+		pcie_pwren_h: pcie-pwren-h {
+			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
