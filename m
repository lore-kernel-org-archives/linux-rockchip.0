Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46785CD5BAA
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Sep 2024 11:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bbsfbefFFbvrxYPnb1G0OuPcObm9b8Z8wJ8Nqhnybag=; b=xOpTs+LZ3NXiC8
	UnnK+nrq9lku3DDPAsseU99rB19rk4LacLFRHyMBLqA/F+rEOqo9D/apL/BuX3zyV1yy057HFH5rY
	fZQPM9FetZkyG8jv+/whVSUPMSpr5DGCzd0IKGynJOAAJnYLganLOvHTPFqOo1fdkhOV9orSBMCrT
	l49XVNrgMl8sM+TQ8FRqJpxc0fFB5G0GI8k63hsWi1jMVB2khcqEvV6Shq2U8NOJ1AnqWkXgiXZQj
	sBsC3hXfBlYYTT/Nrmdj6BOCfV54rBC9N2fQqxjye8GPc9Q3WZfzINtfeNjatlbdNICzInUWJmqHs
	IGzWyLuYKRkH2e4rXh2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smAmD-000000088gR-3iZ1;
	Thu, 05 Sep 2024 11:35:49 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smAj2-000000087rX-0epV;
	Thu, 05 Sep 2024 11:32:33 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1725535949;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=MITZUtkw5bagB0eVerd/j8Yzb+fVQlvaPcZds1xrZjs=;
	b=kw16o/JKlg5aGkXHHhhG/ITTlNiWvRjaihOKX5D3/SmPXrmaTcP0xsYTJ93b8yTd5iDKWV
	GN+sqCUIuV8VZOPPQxFamoBWhiVocioLwOiAygfY5NFtEpJwwz7VEfynjeGBFOA2U5Bwna
	VP3Ppa9xhu/2IsEL2Oy1st0XivEfx5TAIW0dqn1l4x0mYQ/wl67mLESlZ9pJm2P5ezyWQJ
	FaTb0YAG6m3LSx1/kZ328AJ/cr/bf3KQ68K6QLxmMIYkIrNg9S9d6gDJpyl5khC4jY0dDC
	9HZBwTiimAv54ojebZqvJlK0PxmzDHKBhuLRHkkWaVNdqlwcbtS4JwLey+7FMQ==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH] arm64: dts: rockchip: Add a few aliases to the PineTab2 dtsi
Date: Thu,  5 Sep 2024 13:32:19 +0200
Message-Id: <987e68d1c5e9a0cc56d730aec87246aa5ab8ea14.1725535770.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240905_043232_675773_C14F5AD4 
X-CRM114-Status: GOOD (  13.29  )
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

Sprinkle a few commonly used aliases onto the PineTab2 dtsi file, to improve
its readability a bit, to make it easier to refer to the actual nodes later,
if needed, and to add a bit more detail to some of the labels.

No functional changes are introduced, which was validated by decompiling and
comparing all affected board dtb files before and after these changes.  When
compared with the decompiled original dtb files, some of the phandles in the
updated dtb files have different values, and the updated dtb files contain
some additional phandles and additional symbols that come from the introduced
aliases, but they still effectively remain the same as the originals.

Suggested-by: Diederik de Haas <didi.debian@cknow.org>
Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---

Notes:
    This patch wasn't tested on a PineTab2 before it was submitted to the
    mailing list, because I don't have that device, but Diederik has already
    agreed to test this patch on his PineTab2 and provide feedback.

 arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
index db40281eafbe..04d98715ae6e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
@@ -41,7 +41,7 @@ button-vol-down {
 		};
 	};
 
-	backlight: backlight {
+	backlight: backlight-dsi {
 		compatible = "pwm-backlight";
 		pwms = <&pwm4 0 25000 0>;
 		brightness-levels = <20 220>;
@@ -551,20 +551,20 @@ regulator-state-mem {
 			};
 		};
 
-		charger {
+		rk817_charger: charger {
 			monitored-battery = <&battery>;
 			rockchip,resistor-sense-micro-ohms = <10000>;
 			rockchip,sleep-enter-current-microamp = <300000>;
 			rockchip,sleep-filter-current-microamp = <100000>;
 		};
 	};
 };
 
 &i2c1 {
 	clock-frequency = <400000>;
 	status = "okay";
 
-	touchscreen@5d {
+	touchscreen: touchscreen@5d {
 		compatible = "goodix,gt911";
 		reg = <0x5d>;
 		interrupt-parent = <&gpio0>;
@@ -583,13 +583,13 @@ &i2c2 {
 	pinctrl-0 = <&i2c2m1_xfer>;
 	status = "okay";
 
-	vcm@c {
+	vcm: vcm@c {
 		compatible = "dongwoon,dw9714";
 		reg = <0x0c>;
 		vcc-supply = <&vcc1v8_dvp>;
 	};
 
-	camera@36 {
+	camerab: camera@36 {
 		compatible = "ovti,ov5648";
 		reg = <0x36>;
 		pinctrl-names = "default";
@@ -619,7 +619,7 @@ &i2c5 {
 	clock-frequency = <400000>;
 	status = "okay";
 
-	accelerometer@18 {
+	accelerometer: accelerometer@18 {
 		compatible = "silan,sc7a20";
 		reg = <0x18>;
 		interrupt-parent = <&gpio3>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
