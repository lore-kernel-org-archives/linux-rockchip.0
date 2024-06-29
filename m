Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B58A3C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Jun 2024 05:11:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+ru7gK2F8oaBbiv8K/bY041cTUR0bkZ4q6BkRu2GlcU=; b=zMVs6e/9BGnlaX
	wqEoS6GKWAGqmlxFEPzuYllJbODIZ5TPjwZzGFK9UG1BkkLvfNx+ZPLR0XMvRGIoKm2EAZdSjUDS5
	LoMkolXSPyoXEg933gFw/jWyD7ZJNHK+bv88KG4skahDc9lm676AO8QBAlha2Fhqte29T7ImzEtvT
	YoUN2BPtlE1YsNBVEUj9aJij2xNbLT2xd/f4Qc7cViHj2jtgfI8J6oA+LENuKliCNleiU8iEm8DGR
	Dj6mSIALkQujGFFdK5BrlIvNwY9uy88zrN6UAZfyezzg0pXVESPgQ2iTUhZvLn2OW0viUUvvWuos8
	KgLKUxC+MdY0DUdFNIiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNQNF-0000000Fv9L-3cEN;
	Sat, 29 Jun 2024 05:11:45 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNQN3-0000000Fv7I-3AkS;
	Sat, 29 Jun 2024 05:11:35 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1719637891;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=WHRekKF7eXGmvHSc7nEn4oAgdoP45m8Dm3JiZHGZGlQ=;
	b=LgVPg2P8Cimn62bziz6ZB8CW9s1+VTQQJXA42TzQIFFRS4V4ITGeYdu9X/ieiA2QiCMQFH
	lLQis3OSGFOVmXZEbQ7SperH7aNsutnxc8MEBIfCvg/OrOgKPN1nsF8rLTDo1AuB/OxXSJ
	URIWXe8XmcuaOUWySy6g+yFHkTCE1Z1cmahP3/0QldcvIMtkYMiC+TjsE84U65f4JPUBfb
	YQuKTpu8/EAOrFKeNrXsY4jwOZflwDyv56+rwKEwYIR1eGIYO6Q2tusJOo9NLZyVGO1Kx/
	NI9p7YmA52lpt91NwkzaoRlE349sPGkyimTQER3eroiRvCwQxLrN2TnCwfVPmA==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	Diederik de Haas <didi.debian@cknow.org>,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH] arm64: dts: rockchip: Add optional GPU OPP voltage ranges to RK356x SoC dtsi
Date: Sat, 29 Jun 2024 07:11:24 +0200
Message-Id: <446399362bd2dbeeaecd8351f68811165429749a.1719637113.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240628_221134_124409_FEEE5A97 
X-CRM114-Status: GOOD (  13.02  )
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

Add optional support for voltage ranges to the GPU OPPs defined in the SoC
dtsi for RK356x.  These voltage ranges are useful for RK356x-based boards that
are designed to use the same power supply for the GPU and NPU portions of the
SoC, which is described further in the following documents from Rockchip:

  - Rockchip RK3566 Hardware Design Guide, version 1.1.0, page 37
  - Rockchip RK3568 Hardware Design Guide, version 1.2, page 78

The values for the exact GPU OPP voltages and the lower limits for the GPU
OPP voltage ranges differ from the values found in the vendor kernel source
(cf. downstream commit f8b9431ee38e ("arm64: dts: rockchip: rk3568: support
adjust opp-table by otp")). [1][2]  However, our values have served us well
so far, so let's keep them for now, until we actually start supporting the
CPU and GPU binning, together with the related voltage adjustments.

No functional changes are introduced, which was validated by decompiling and
comparing all affected dtb files before and after these changes.

[1] https://github.com/rockchip-linux/kernel/commit/f8b9431ee38ed561650be7092ab93f564598daa9
[2] https://raw.githubusercontent.com/rockchip-linux/kernel/f8b9431ee38ed561650be7092ab93f564598daa9/arch/arm64/boot/dts/rockchip/rk3568.dtsi

Suggested-by: Diederik de Haas <didi.debian@cknow.org>
Helped-by: Jonas Karlman <jonas@kwiboo.se>
Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 38 ++++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index d8543b5557ee..febda473dc38 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -1,5 +1,11 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 /*
+ * The defined GPU OPPs optionally support voltage ranges, which are useful
+ * for RK356x-based boards that are designed to use the same power supply for
+ * the GPU and NPU portions of the SoC.  To use GPU OPPs with voltage ranges
+ * on such boards, define the RK356X_GPU_NPU_SHARED_REGULATOR macro in the
+ * descendant board dts(i) file, before including this file.
+ *
  * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
  */
 
@@ -193,6 +199,7 @@ scmi_clk: protocol@14 {
 	gpu_opp_table: opp-table-1 {
 		compatible = "operating-points-v2";
 
+#ifndef RK356X_GPU_NPU_SHARED_REGULATOR
 		opp-200000000 {
 			opp-hz = /bits/ 64 <200000000>;
 			opp-microvolt = <825000>;
@@ -222,6 +229,37 @@ opp-800000000 {
 			opp-hz = /bits/ 64 <800000000>;
 			opp-microvolt = <1000000>;
 		};
+#else
+		opp-200000000 {
+			opp-hz = /bits/ 64 <200000000>;
+			opp-microvolt = <825000 825000 1000000>;
+		};
+
+		opp-300000000 {
+			opp-hz = /bits/ 64 <300000000>;
+			opp-microvolt = <825000 825000 1000000>;
+		};
+
+		opp-400000000 {
+			opp-hz = /bits/ 64 <400000000>;
+			opp-microvolt = <825000 825000 1000000>;
+		};
+
+		opp-600000000 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <825000 825000 1000000>;
+		};
+
+		opp-700000000 {
+			opp-hz = /bits/ 64 <700000000>;
+			opp-microvolt = <900000 900000 1000000>;
+		};
+
+		opp-800000000 {
+			opp-hz = /bits/ 64 <800000000>;
+			opp-microvolt = <1000000 1000000 1000000>;
+		};
+#endif /* RK356X_GPU_NPU_SHARED_REGULATOR */
 	};
 
 	hdmi_sound: hdmi-sound {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
