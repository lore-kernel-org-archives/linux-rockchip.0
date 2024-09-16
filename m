Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6CEEC3ABBC
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Sep 2024 01:41:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yoF64EqNwCHviOp9bGNG4jiMzEftaM/e833JSmpNB9Y=; b=Ozxp2hP6MA9zW6
	j0kLvo+EoWm1dkG9d3VrGbw+12yA2Tj7vfGTyO7qRuPeZI6vLlG1M3LTdDSnviy422G4C8CJjzv87
	ujFx30TfzWb7UYyZiUlfvlpPUOnSTBRoEndgWRWw3cV4XaJw+/5hVHtTJ2YNt7NHdAXN3pjM4pPG9
	sCMquU34vxy0QsxAbGgJN+rHJgr7OGt/rR6atpzmpQqhv0Y+t/3bRkD7k+Cs4Gr0CIEtXVALVlxPL
	v4X+v3fedytrcbvAFPhCG/hGnm+HjntDMzy6LvFAQZ4HW8NCbGIQq7CFXSsK3RVXRWSIM/laaOs29
	jDPagaGzfyrozH/0zqEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sq0jm-00000002uhJ-2XLv;
	Mon, 16 Sep 2024 01:41:10 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sq0jj-00000002ugp-2YTb
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Sep 2024 01:41:09 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 48G1emaZ026265;
	Mon, 16 Sep 2024 10:40:48 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: amadeus@jmu.edu.cn, kever.yang@rock-chips.com, jonas@kwiboo.se,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v3 1/2] arm64: dts: rockchip: fix PCIe2 regulators for Radxa ROCK 3A
Date: Mon, 16 Sep 2024 10:40:38 +0900
Message-ID: <20240916014039.1918-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240915_184107_877403_BCEA7297 
X-CRM114-Status: UNSURE (   8.56  )
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

currently "vcc3v3_pcie" regulator is used for PCIe2 M.2 E key
connector, but, by schematic[1], it's incorrect. "vcc3v3_wf" regulator
is correct one. add it and fix related vin-supply.

[1] https://dl.radxa.com/rock3/docs/hw/3a/radxa_rock_3a_v1310_schematic.pdf

Fixes: 0fbbfb0b00d1 ("arm64: dts: rockchip: Enable PCIe controller on rock3a")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v3:
- fix pinctrl just for reset pin as GPIO
Changes in v2:
- split patches for PCIe2 and PCIe3
- fix pinctrl node name to overwrite rk3568-pinctrl.dtsi
---
 .../boot/dts/rockchip/rk3568-rock-3a.dts      | 24 +++++++++++++------
 1 file changed, 17 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index 59f1403b4fa56..f94cbddf0f0c2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
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
+	pinctrl-0 = <&pcie20_perstn_m1>;
 	reset-gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_HIGH>;
-	vpcie3v3-supply = <&vcc3v3_pcie>;
+	vpcie3v3-supply = <&vcc3v3_wf>;
 	status = "okay";
 };
 
@@ -643,12 +653,12 @@ led_user_en: led_user_en {
 	};
 
 	pcie {
-		pcie_enable_h: pcie-enable-h {
-			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
+		pcie20_perstn_m1: pcie20-perstn-m1 {
+			rockchip,pins = <3 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		pcie_reset_h: pcie-reset-h {
-			rockchip,pins = <3 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
+		pcie_enable_h: pcie-enable-h {
+			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
