Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DF5ED735EB
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Nov 2024 00:41:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=REHhF+PXHah+gQLZai9+gdx4HSBArrhVO8MGkxqLL+M=; b=GLjNNZv2CdhVPt
	tAuHsqUTaKxRKdAUUKHjR/WOrE+1Pm0F5Q8AXkBb3tA5RNM7JXEefXdBFsfK9vVv/pz6azzZ5k24e
	/PyDEjIvPPUkuneU/qSWNHQFEDQEdMV1eVUieblPk0+1CrYFnRbGEK4JTMWNhG5Bg85oo5w4moprL
	75WQhXMcwiXNUFx/pX7qKNMUxfpuH4IldSTN0SU6bYstQlIeEnwN3BZbUIchIGKJZzweKQq4l44o5
	W4p+XbNZJLBa22DEtu/XDYMmyXA8HxzgfI1ftRLruXpWzzrQ1MmXbKhmwi7nh4cmkoSqdXxhgndye
	5nNqN3ZdgHbDfP1PxHkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tHBYB-00000001B9P-3AkB;
	Sat, 30 Nov 2024 00:41:31 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tHBY5-00000001B64-2c07
	for linux-rockchip@lists.infradead.org;
	Sat, 30 Nov 2024 00:41:29 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AU0f3BH024368;
	Sat, 30 Nov 2024 09:41:05 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Subject: [PATCH 3/6] arm64: dts: rockchip: fix pmic regulators for Radxa ROCK 5B
Date: Sat, 30 Nov 2024 00:40:54 +0000
Message-ID: <20241130004057.7432-4-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241130004057.7432-1-naoki@radxa.com>
References: <20241130004057.7432-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_164125_868620_116B991A 
X-CRM114-Status: UNSURE (   7.76  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, inindev@gmail.com, devicetree@vger.kernel.org, sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org, alchark@gmail.com, FUKAUMI Naoki <naoki@radxa.com>, krzk+dt@kernel.org, dsimic@manjaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

fix regulator names to match with schematic. fix properties to match
with vendor kernel.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 80 +++++++++----------
 1 file changed, 40 insertions(+), 40 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 3cd8c63151db..95f2f4dbf12d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -461,7 +461,7 @@ &pwm1 {
 };
 
 &saradc {
-	vref-supply = <&avcc_1v8_s0>;
+	vref-supply = <&vcca_1v8_s0>;
 	status = "okay";
 };
 
@@ -588,12 +588,12 @@ rk806_dvs3_null: dvs3-null-pins {
 		};
 
 		regulators {
-			vdd_gpu_s0: vdd_gpu_mem_s0: dcdc-reg1 {
+			vdd_gpu_s0: dcdc-reg1 {
+				regulator-name = "vdd_gpu_s0";
 				regulator-boot-on;
 				regulator-min-microvolt = <550000>;
 				regulator-max-microvolt = <950000>;
 				regulator-ramp-delay = <12500>;
-				regulator-name = "vdd_gpu_s0";
 				regulator-enable-ramp-delay = <400>;
 
 				regulator-state-mem {
@@ -601,13 +601,13 @@ regulator-state-mem {
 				};
 			};
 
-			vdd_cpu_lit_s0: vdd_cpu_lit_mem_s0: dcdc-reg2 {
+			vdd_cpu_lit_s0: dcdc-reg2 {
+				regulator-name = "vdd_cpu_lit_s0";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <550000>;
 				regulator-max-microvolt = <950000>;
 				regulator-ramp-delay = <12500>;
-				regulator-name = "vdd_cpu_lit_s0";
 
 				regulator-state-mem {
 					regulator-off-in-suspend;
@@ -615,26 +615,26 @@ regulator-state-mem {
 			};
 
 			vdd_log_s0: dcdc-reg3 {
+				regulator-name = "vdd_log_s0";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <675000>;
 				regulator-max-microvolt = <750000>;
 				regulator-ramp-delay = <12500>;
-				regulator-name = "vdd_log_s0";
 
 				regulator-state-mem {
-					regulator-off-in-suspend;
+					regulator-on-in-suspend;
 					regulator-suspend-microvolt = <750000>;
 				};
 			};
 
-			vdd_vdenc_s0: vdd_vdenc_mem_s0: dcdc-reg4 {
+			vdd_vdenc_s0: dcdc-reg4 {
+				regulator-name = "vdd_vdenc_s0";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <550000>;
 				regulator-max-microvolt = <950000>;
 				regulator-ramp-delay = <12500>;
-				regulator-name = "vdd_vdenc_s0";
 
 				regulator-state-mem {
 					regulator-off-in-suspend;
@@ -642,12 +642,12 @@ regulator-state-mem {
 			};
 
 			vdd_ddr_s0: dcdc-reg5 {
+				regulator-name = "vdd_ddr_s0";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <675000>;
 				regulator-max-microvolt = <900000>;
 				regulator-ramp-delay = <12500>;
-				regulator-name = "vdd_ddr_s0";
 
 				regulator-state-mem {
 					regulator-off-in-suspend;
@@ -656,9 +656,9 @@ regulator-state-mem {
 			};
 
 			vdd2_ddr_s3: dcdc-reg6 {
+				regulator-name = "vdd2_ddr_s3";
 				regulator-always-on;
 				regulator-boot-on;
-				regulator-name = "vdd2_ddr_s3";
 
 				regulator-state-mem {
 					regulator-on-in-suspend;
@@ -666,12 +666,11 @@ regulator-state-mem {
 			};
 
 			vcc_2v0_pldo_s3: dcdc-reg7 {
+				regulator-name = "vcc_2v0_pldo_s3";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <2000000>;
 				regulator-max-microvolt = <2000000>;
-				regulator-ramp-delay = <12500>;
-				regulator-name = "vdd_2v0_pldo_s3";
 
 				regulator-state-mem {
 					regulator-on-in-suspend;
@@ -680,11 +679,11 @@ regulator-state-mem {
 			};
 
 			vcc_3v3_s3: dcdc-reg8 {
+				regulator-name = "vcc_3v3_s3";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <3300000>;
 				regulator-max-microvolt = <3300000>;
-				regulator-name = "vcc_3v3_s3";
 
 				regulator-state-mem {
 					regulator-on-in-suspend;
@@ -693,9 +692,9 @@ regulator-state-mem {
 			};
 
 			vddq_ddr_s0: dcdc-reg9 {
+				regulator-name = "vddq_ddr_s0";
 				regulator-always-on;
 				regulator-boot-on;
-				regulator-name = "vddq_ddr_s0";
 
 				regulator-state-mem {
 					regulator-off-in-suspend;
@@ -703,11 +702,11 @@ regulator-state-mem {
 			};
 
 			vcc_1v8_s3: dcdc-reg10 {
+				regulator-name = "vcc_1v8_s3";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
-				regulator-name = "vcc_1v8_s3";
 
 				regulator-state-mem {
 					regulator-on-in-suspend;
@@ -715,63 +714,63 @@ regulator-state-mem {
 				};
 			};
 
-			avcc_1v8_s0: pldo-reg1 {
+			vcca_1v8_s0: pldo-reg1 {
+				regulator-name = "vcca_1v8_s0";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
-				regulator-name = "avcc_1v8_s0";
 
 				regulator-state-mem {
-					regulator-off-in-suspend;
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
 				};
 			};
 
 			vcc_1v8_s0: pldo-reg2 {
+				regulator-name = "vcc_1v8_s0";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
-				regulator-name = "vcc_1v8_s0";
 
 				regulator-state-mem {
-					regulator-off-in-suspend;
+					regulator-on-in-suspend;
 					regulator-suspend-microvolt = <1800000>;
 				};
 			};
 
-			avdd_1v2_s0: pldo-reg3 {
+			vdda_1v2_s0: pldo-reg3 {
+				regulator-name = "vdda_1v2_s0";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1200000>;
 				regulator-max-microvolt = <1200000>;
-				regulator-name = "avdd_1v2_s0";
 
 				regulator-state-mem {
 					regulator-off-in-suspend;
 				};
 			};
 
-			vcc_3v3_s0: pldo-reg4 {
+			vcca_3v3_s0: pldo-reg4 {
+				regulator-name = "vcca_3v3_s0";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <3300000>;
 				regulator-max-microvolt = <3300000>;
-				regulator-ramp-delay = <12500>;
-				regulator-name = "vcc_3v3_s0";
 
 				regulator-state-mem {
-					regulator-off-in-suspend;
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
 				};
 			};
 
 			vccio_sd_s0: pldo-reg5 {
+				regulator-name = "vccio_sd_s0";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <3300000>;
-				regulator-ramp-delay = <12500>;
-				regulator-name = "vccio_sd_s0";
 
 				regulator-state-mem {
 					regulator-off-in-suspend;
@@ -779,11 +778,11 @@ regulator-state-mem {
 			};
 
 			pldo6_s3: pldo-reg6 {
+				regulator-name = "pldo6_s3";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
-				regulator-name = "pldo6_s3";
 
 				regulator-state-mem {
 					regulator-on-in-suspend;
@@ -792,11 +791,11 @@ regulator-state-mem {
 			};
 
 			vdd_0v75_s3: nldo-reg1 {
+				regulator-name = "vdd_0v75_s3";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <750000>;
 				regulator-max-microvolt = <750000>;
-				regulator-name = "vdd_0v75_s3";
 
 				regulator-state-mem {
 					regulator-on-in-suspend;
@@ -804,37 +803,38 @@ regulator-state-mem {
 				};
 			};
 
-			vdd_ddr_pll_s0: nldo-reg2 {
+			vdda_ddr_pll_s0: nldo-reg2 {
+				regulator-name = "vdda_ddr_pll_s0";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <850000>;
 				regulator-max-microvolt = <850000>;
-				regulator-name = "vdd_ddr_pll_s0";
 
 				regulator-state-mem {
-					regulator-off-in-suspend;
+					regulator-on-in-suspend;
 					regulator-suspend-microvolt = <850000>;
 				};
 			};
 
-			avdd_0v75_s0: nldo-reg3 {
+			vdda_0v75_s0: nldo-reg3 {
+				regulator-name = "vdda_0v75_s0";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <750000>;
 				regulator-max-microvolt = <750000>;
-				regulator-name = "avdd_0v75_s0";
 
 				regulator-state-mem {
-					regulator-off-in-suspend;
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <750000>;
 				};
 			};
 
-			vdd_0v85_s0: nldo-reg4 {
+			vdda_0v85_s0: nldo-reg4 {
+				regulator-name = "vdda_0v85_s0";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <850000>;
 				regulator-max-microvolt = <850000>;
-				regulator-name = "vdd_0v85_s0";
 
 				regulator-state-mem {
 					regulator-off-in-suspend;
@@ -842,11 +842,11 @@ regulator-state-mem {
 			};
 
 			vdd_0v75_s0: nldo-reg5 {
+				regulator-name = "vdd_0v75_s0";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <750000>;
 				regulator-max-microvolt = <750000>;
-				regulator-name = "vdd_0v75_s0";
 
 				regulator-state-mem {
 					regulator-off-in-suspend;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
