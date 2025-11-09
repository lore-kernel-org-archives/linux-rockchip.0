Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BA42CD3420
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Nov 2025 14:19:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=txVIuRm58UL7PBl8CKZhbanG3ixMg5cz02PruGKLeos=; b=kJRbqnbYQWIHg7
	iS6BwCIjZNwGlQTodVLwOFo1+lXB7TL5M7gPHoe1U+ogbs8n1Y29QZs9CBTlZE5YhnrjZ44ZhdaVZ
	uGNTESqzOJA8gSlOfUeCG1UzKM0e/GnuBRPMuDvLnqgyMZ5GewzlzMqM0ZN3ZF5OTlCUaRiBLOk8H
	KDqTCXQjX6M91dyEOB9xyY8NHq34DWYPfYeBSeKLOGkrn/aDspvN1uWUBWUjRS4fNj7J3TEMME4/F
	jJaVLYg2NT5fU7OTCKocHE8rXMaYegz9u2CbBTy11vJ+dZyVUWbotE8VFZIgve4J2s9GHK74YfPmT
	Sdfzlhg6qbj8He5kRwww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vI6GT-0000000441r-0lfD;
	Sun, 09 Nov 2025 14:19:33 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vI6GL-000000043rH-1epw
	for linux-rockchip@lists.infradead.org;
	Sun, 09 Nov 2025 14:19:30 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5A9EJ5dp015030;
	Sun, 9 Nov 2025 23:19:07 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, alchark@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v7 05/14] arm64: dts: rockchip: Fix pmic properties for Radxa ROCK 5C
Date: Sun,  9 Nov 2025 14:18:50 +0000
Message-ID: <20251109141859.206835-6-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251109141859.206835-1-naoki@radxa.com>
References: <20251109141859.206835-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251109_061925_647252_4F87807A 
X-CRM114-Status: UNSURE (   8.23  )
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

Fix copy-pasto in the initial commit. Labels/names match schematic[1],
and values match schematic and downstream kernel[2][3].

[1] https://dl.radxa.com/rock5/5c/docs/hw/v1100/radxa_rock_5c_schematic_v1100.pdf
[2] https://github.com/radxa/kernel/blob/linux-6.1-stan-rkr5.1/arch/arm64/boot/dts/rockchip/rk3588-rk806-single.dtsi
[3] https://github.com/radxa/kernel/blob/linux-6.1-stan-rkr5.1/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts

Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v7:
- More fixes
- Reword commit message
Changes in v6:
- Reword commit message
Changes in v5:
- Reword commit message
Changes in v4:
- None
Changes in v3:
- None
Changes in v2:
- Split from "arm64: dts: rockchip: fix pmic properties for Radxa ROCK 5C"
---
 .../boot/dts/rockchip/rk3588s-rock-5c.dts     | 20 +++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 1257aaac8f350..eb0d5a0a41509 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -619,7 +619,7 @@ vdd_logic_s0: dcdc-reg3 {
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <675000>;
-				regulator-max-microvolt = <750000>;
+				regulator-max-microvolt = <800000>;
 				regulator-ramp-delay = <12500>;
 
 				regulator-state-mem {
@@ -666,12 +666,11 @@ regulator-state-mem {
 			};
 
 			vcc_2v0_pldo_s3: dcdc-reg7 {
-				regulator-name = "vdd_2v0_pldo_s3";
+				regulator-name = "vcc_2v0_pldo_s3";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <2000000>;
 				regulator-max-microvolt = <2000000>;
-				regulator-ramp-delay = <12500>;
 
 				regulator-state-mem {
 					regulator-on-in-suspend;
@@ -702,8 +701,8 @@ regulator-state-mem {
 				};
 			};
 
-			vcc1v8_pmu_ddr_s3: dcdc-reg10 {
-				regulator-name = "vcc1v8_pmu_ddr_s3";
+			vcc_1v8_s3: dcdc-reg10 {
+				regulator-name = "vcc_1v8_s3";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1800000>;
@@ -778,8 +777,8 @@ regulator-state-mem {
 				};
 			};
 
-			pldo6_s3: pldo-reg6 {
-				regulator-name = "pldo6_s3";
+			pldo-reg6 {
+				regulator-name = "pldo_reg6";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1800000>;
@@ -821,11 +820,12 @@ vdda_0v75_s0: nldo-reg3 {
 				regulator-name = "vdda_0v75_s0";
 				regulator-always-on;
 				regulator-boot-on;
-				regulator-min-microvolt = <750000>;
-				regulator-max-microvolt = <750000>;
+				regulator-min-microvolt = <837500>;
+				regulator-max-microvolt = <837500>;
 
 				regulator-state-mem {
-					regulator-off-in-suspend;
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <750000>;
 				};
 			};
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
