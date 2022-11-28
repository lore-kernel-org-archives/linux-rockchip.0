Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E6DEC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Nov 2022 18:21:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pR6/oXuEZBkwtqDP3mRw1Zveovg6C1R9jOKMaz3fh/o=; b=m2mX1WHKNX8YcQ
	LpcVRBbEut0zJ1tRgz28nudnS7Kn/oXA9Lxup7qhHcFk88DZnktqBQhpDCNogMSxtRnygJRZdYX4Z
	Ht6hHA4qbeO+vwXJMJ2IGoTWk0PjuIlDr47meGcc1BGFV02fEtV/nsNdT3Pf+6EPJMP4TJKLinHxM
	F/5OaZTGCpVrwWtwafMs139K7pUue9SJukxEpglAqQMXduQTxsjyiTraY7i3zaxlauRaypQVMzJ4j
	44Pu3vLj/U+3mnhwL2GD46wYomTNCczy2ZdwOet+X4p3OjvsvnG7PLhuvBDxd/Wq1YsPksHMHy6wX
	nEx50ORPm3XwGCg/vV0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozikf-003WCe-O5; Mon, 28 Nov 2022 18:21:09 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozi9s-003BLU-MB; Mon, 28 Nov 2022 17:43:12 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 3612FB80E56;
	Mon, 28 Nov 2022 17:43:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD5B3C433D6;
	Mon, 28 Nov 2022 17:43:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669657386;
	bh=MvGJJVjZ91EWjQWadWODUI40kPEyxz6YNn7HirD9pQs=;
	h=From:To:Cc:Subject:Date:From;
	b=pbaq3OcnfGaOPoTWTT2lX/2OLPL1FTNtQxywpkOjJuLMDuUrYrbmECqM5eQCaVW1o
	 Gd8Vxr7Ln7oXOquctpsmHw70CtY9IKPc9rpxdQwQNuUNLtp6V3vTXC+GZ1Td+y71wg
	 rU7e1QJm3vSgxJXv3miy+zQrerrmgvQloQtbNASarAfFaRZAICGo81tejgK3QuA4Tq
	 MK2gWRStEifZEy54VPFXbny+QPIC1XAGFXp9jwdUMusKdv+d+np5f0DPamkABDX7au
	 18U6ugrRknAFvrkkeyXYv99Fx3MFOZXx1wzqqjxO2VbMIPNHBoYmOVU0yP0wWcvfMf
	 fwGGqjFoIcVHA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 1/9] arm: dts: rockchip: fix node name for hym8563 rtc
Date: Mon, 28 Nov 2022 12:42:54 -0500
Message-Id: <20221128174303.1443008-1-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221128_094309_097065_B9FF24A1 
X-CRM114-Status: GOOD (  11.59  )
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

From: Sebastian Reichel <sebastian.reichel@collabora.com>

[ Upstream commit 17b57beafccb4569accbfc8c11390744cf59c021 ]

Fix the node name for hym8563 in all arm rockchip devicetrees.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Link: https://lore.kernel.org/r/20221024165549.74574-4-sebastian.reichel@collabora.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/rk3036-evb.dts          | 2 +-
 arch/arm/boot/dts/rk3288-evb-act8846.dts  | 2 +-
 arch/arm/boot/dts/rk3288-firefly.dtsi     | 2 +-
 arch/arm/boot/dts/rk3288-miqi.dts         | 2 +-
 arch/arm/boot/dts/rk3288-rock2-square.dts | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/rk3036-evb.dts b/arch/arm/boot/dts/rk3036-evb.dts
index c0953410121b..41309de6c91d 100644
--- a/arch/arm/boot/dts/rk3036-evb.dts
+++ b/arch/arm/boot/dts/rk3036-evb.dts
@@ -69,7 +69,7 @@ phy0: ethernet-phy@0 {
 &i2c1 {
 	status = "okay";
 
-	hym8563: hym8563@51 {
+	hym8563: rtc@51 {
 		compatible = "haoyu,hym8563";
 		reg = <0x51>;
 		#clock-cells = <0>;
diff --git a/arch/arm/boot/dts/rk3288-evb-act8846.dts b/arch/arm/boot/dts/rk3288-evb-act8846.dts
index b9418d170502..e5231ecb8279 100644
--- a/arch/arm/boot/dts/rk3288-evb-act8846.dts
+++ b/arch/arm/boot/dts/rk3288-evb-act8846.dts
@@ -91,7 +91,7 @@ vdd_gpu: syr828@41 {
 		vin-supply = <&vcc_sys>;
 	};
 
-	hym8563@51 {
+	rtc@51 {
 		compatible = "haoyu,hym8563";
 		reg = <0x51>;
 
diff --git a/arch/arm/boot/dts/rk3288-firefly.dtsi b/arch/arm/boot/dts/rk3288-firefly.dtsi
index b9e6f3a97240..5b14e9105070 100644
--- a/arch/arm/boot/dts/rk3288-firefly.dtsi
+++ b/arch/arm/boot/dts/rk3288-firefly.dtsi
@@ -270,7 +270,7 @@ vdd_gpu: syr828@41 {
 		vin-supply = <&vcc_sys>;
 	};
 
-	hym8563: hym8563@51 {
+	hym8563: rtc@51 {
 		compatible = "haoyu,hym8563";
 		reg = <0x51>;
 		#clock-cells = <0>;
diff --git a/arch/arm/boot/dts/rk3288-miqi.dts b/arch/arm/boot/dts/rk3288-miqi.dts
index 4d923aa6ed11..2fd39bbf0b01 100644
--- a/arch/arm/boot/dts/rk3288-miqi.dts
+++ b/arch/arm/boot/dts/rk3288-miqi.dts
@@ -183,7 +183,7 @@ vdd_gpu: syr828@41 {
 		vin-supply = <&vcc_sys>;
 	};
 
-	hym8563: hym8563@51 {
+	hym8563: rtc@51 {
 		compatible = "haoyu,hym8563";
 		reg = <0x51>;
 		#clock-cells = <0>;
diff --git a/arch/arm/boot/dts/rk3288-rock2-square.dts b/arch/arm/boot/dts/rk3288-rock2-square.dts
index 0e084b8a86ac..6011b117ab68 100644
--- a/arch/arm/boot/dts/rk3288-rock2-square.dts
+++ b/arch/arm/boot/dts/rk3288-rock2-square.dts
@@ -177,7 +177,7 @@ &hdmi {
 };
 
 &i2c0 {
-	hym8563: hym8563@51 {
+	hym8563: rtc@51 {
 		compatible = "haoyu,hym8563";
 		reg = <0x51>;
 		#clock-cells = <0>;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
