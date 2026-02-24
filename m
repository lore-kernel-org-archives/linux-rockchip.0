Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CAF5F357C5
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Feb 2026 17:06:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iMg7noct6gD1S/uxlTEItFX4JDK6YgtfNigKlO22d3I=; b=JtrdnDeijSh/cL
	DebhdNbrCmelPKlm1Zpyl/wP1FL2mJQBeblnCM0Yij1wVGyBmRgmWnAkZsXtfHZlE4eRjzoy1Dv1G
	UTARp4S5xQ7mbw/kN4OPDFU27ECf8vdLoI+LBqA+MW6JwGYotKh9aX5OZMe5/qhXr6ilS4Yu8K2tV
	CO32xfJDLKffU3P1uYYK52Nv9UO7/75h0ZELJMXkGrGpYIyPVDlEAaJsHqy/ovP5fIE/RaRBZboWx
	6sSSh8yko1owj2rnk+pnICvjskwnkJK4hfJXv62ajYv+EoBezKpPW+gzXGUYcLwAqJD+IJFbmU7Rf
	kDiEwqtbAWpHAhbLzCZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuvrI-00000002Rek-1XST;
	Tue, 24 Feb 2026 17:06:04 +0000
Received: from out-176.mta1.migadu.com ([2001:41d0:203:375::b0])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuvrG-00000002Rds-0FbU
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Feb 2026 17:06:03 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1771952753;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ioP1qSExwiStIhsPUWCvZVeGtY9ld3ywuq6BtEqmxw0=;
	b=jXmls00HBdKEZ+Fi1Uq7rydjBUkhrg3zkIhggJ9VifP2kNFuEDi9xIrxO/0u9Vn3Zr+sKh
	aqT7m7CgcLhqTrh+cjTxvvpxs5uX87STnWNUCi4jcJC0v6s1zYXYRaaG2frAFHwHCHX/qH
	TM/JUWBjCq5H8pM0WVJ3piE2RBn2Cnbjqaz76t6wLpkqxw5XqJOmP69OO/B1WHcPS5fFhe
	6OkskUOWnBOitcNzLn+jFvNbC5brEIlx9VteO9ia3gHfq/I9DeiYhT1nLSJ0HcAvsh7+OH
	IIaQQsQqoguvTXuCLpR6jyeqIzm2UatvC9dmnz1dz4Q00U4rZFWZcw991vF4zQ==
From: Diederik de Haas <diederik@cknow-tech.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Samuel Holland <samuel@sholland.org>,
	Maximilian Weigand <mweigand@mweigand.net>,
	Andreas Kemnade <andreas@kemnade.info>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	hrdl <git@hrdl.eu>,
	phantomas <phantomas@phantomas.xyz>,
	Diederik de Haas <diederik@cknow-tech.com>
Subject: [PATCH] arm64: dts: rockchip: Add battery and charger on rk3566-pinenote
Date: Tue, 24 Feb 2026 18:04:51 +0100
Message-ID: <20260224170531.516392-1-diederik@cknow-tech.com>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_090602_663536_2FA339DC 
X-CRM114-Status: UNSURE (   7.29  )
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

From: Samuel Holland <samuel@sholland.org>

The PineNote has a single cell 4000mAh battery which can be charged via
the rk817 PMIC.

Signed-off-by: Samuel Holland <samuel@sholland.org>
Co-developed-by: Maximilian Weigand <mweigand@mweigand.net>
Signed-off-by: Maximilian Weigand <mweigand@mweigand.net>
Signed-off-by: Diederik de Haas <diederik@cknow-tech.com>
---
 .../boot/dts/rockchip/rk3566-pinenote.dtsi    | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
index 791719acb9dd..551d551a113b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
@@ -40,6 +40,25 @@ spk_amp: audio-amplifier {
 		sound-name-prefix = "Speaker Amp";
 	};
 
+	battery: battery {
+		compatible = "simple-battery";
+		charge-full-design-microamp-hours = <4000000>;
+		charge-term-current-microamp = <300000>;
+		constant-charge-current-max-microamp = <2000000>;
+		constant-charge-voltage-max-microvolt = <4200000>;
+		factory-internal-resistance-micro-ohms = <96000>;
+		voltage-max-design-microvolt = <4200000>;
+		voltage-min-design-microvolt = <3500000>;
+
+		ocv-capacity-celsius = <20>;
+		ocv-capacity-table-0 = <4168000 100>, <4109000 95>, <4066000 90>, <4023000 85>,
+					<3985000 80>, <3954000 75>, <3924000 70>, <3897000 65>,
+					<3866000 60>, <3826000 55>, <3804000 50>, <3789000 45>,
+					<3777000 40>, <3770000 35>, <3763000 30>, <3750000 25>,
+					<3732000 20>, <3710000 15>, <3680000 10>, <3670000  5>,
+					<3500000  0>;
+	};
+
 	dmic_codec: dmic-codec {
 		compatible = "dmic-codec";
 		num-channels = <6>;
@@ -260,6 +279,13 @@ rk817: pmic@20 {
 		vcc8-supply = <&vcc_sys>;
 		vcc9-supply = <&dcdc_boost>;
 
+		charger {
+			monitored-battery = <&battery>;
+			rockchip,resistor-sense-micro-ohms = <10000>;
+			rockchip,sleep-enter-current-microamp = <150000>;
+			rockchip,sleep-filter-current-microamp = <100000>;
+		};
+
 		regulators {
 			vdd_logic: DCDC_REG1 {
 				regulator-name = "vdd_logic";
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
