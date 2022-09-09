Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94574ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Sep 2022 19:52:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tPMW9siFzHMxHepWN8zWUFGNd+vxQiCwfrMxs/xUX3E=; b=WfMoVUKnHIBwLe
	2X5tAqCK+2SnuqLLXdHQu4fc3zJWPSnDwHTJYx5DdO4961nx9cmR17fBxymzQKW8UN/sg1q0mShUN
	XVuXWtF7uvh9vnoOKLK+JUGLWcYD9+td4F9kSM+kZl2wvhTNvvQ9JfnRFojQ7JLIAkCkWwa86MlQj
	pwfHC5Z7rIk8T5YX6sSrFI9ndIs/o4UqwF882y80HPxDFnUyM3zuJcRVSbTqLbu8xAgqHWyAls9Gh
	eBAShE6L1+Y0t4jqJBqgRa3nWiM0IG4MWQlJPQF7Q0i+cDC0mGzDztcUfxcYTeoMrgYexdtsZXXx1
	6vcmEOL1KNbH33N3JR9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWk3G-002CqV-R3; Fri, 09 Sep 2022 19:52:34 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWk2l-002CO4-Km; Fri, 09 Sep 2022 19:52:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=7BHSZjHop+9HJ/9aV1BpN8oh93FjP5eLEzQbgHt/QW4=; b=k87kDKS1kGTw+fz/SQMUbnbjon
	DvqG/gUzpdxlpSRwhiBkLAprWSMozTjJKh2yj2f1zBm9Lqt5Sk6R1+y1UDWDu9/iqvlqEY2cbImDD
	Mll/U3zlpVP0KMYVxm1kLk891S09nbyLzdg4zYCenYW4Sgldcg6MfOW2UFSzpLPgxqvjtSDQkpBWV
	zpjAiXr461u1h2xRV14AD4A49Jc3+0b9q0rZrioyltlEe1MmhAbWRFy4Fbyp0hNvAWBdhO3sc3zM/
	8Sj3FdvNEjbkpxYTkl+yfGAHkPdabzUCWpdHlwMo06f2hJvuiJdOeG63pS4AHRDpYcK1Ds/qFPrVG
	qDYU4sIg==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWk2f-00DWYa-IE; Fri, 09 Sep 2022 19:52:04 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 289Joxel025079;
	Sat, 10 Sep 2022 04:51:00 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 4/6] arm64: dts: rockchip: rk3399-rock-4: fix regulator name
Date: Fri,  9 Sep 2022 19:50:04 +0000
Message-Id: <20220909195006.127957-4-naoki@radxa.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220909195006.127957-1-naoki@radxa.com>
References: <20220909195006.127957-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_205158_137665_ACEFEEF0 
X-CRM114-Status: UNSURE (   7.01  )
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

fix regulator name

ref:
 https://dl.radxa.com/rockpi4/docs/hw/rockpi4/rockpi4_v13_sch_20181112.pdf

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 .../boot/dts/rockchip/rk3399-rock-pi-4.dtsi   | 25 ++++++++++---------
 1 file changed, 13 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index 6464a6729729..bb1dcf319b02 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -136,24 +136,25 @@ vcc5v0_host: vcc5v0-host-regulator {
 		vin-supply = <&vcc5v0_sys>;
 	};
 
-	vcc5v0_typec: vcc5v0-typec-regulator {
+	vbus_typec: vbus-typec-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;
 		gpio = <&gpio1 RK_PA3 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&vcc5v0_typec_en>;
-		regulator-name = "vcc5v0_typec";
+		regulator-name = "vbus_typec";
 		regulator-always-on;
 		vin-supply = <&vcc5v0_sys>;
 	};
 
-	vcc_lan: vcc3v3-phy-regulator {
+	vcc3v3_lan: vcc3v3-lan-regulator {
 		compatible = "regulator-fixed";
-		regulator-name = "vcc_lan";
+		regulator-name = "vcc3v3_lan";
 		regulator-always-on;
 		regulator-boot-on;
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc3v3_sys>;
 	};
 
 	vdd_log: vdd-log {
@@ -200,7 +201,7 @@ &gmac {
 	assigned-clocks = <&cru SCLK_RMII_SRC>;
 	assigned-clock-parents = <&clkin_gmac>;
 	clock_in_out = "input";
-	phy-supply = <&vcc_lan>;
+	phy-supply = <&vcc3v3_lan>;
 	phy-mode = "rgmii";
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmii_pins>;
@@ -305,8 +306,8 @@ regulator-state-mem {
 				};
 			};
 
-			vcc1v8_codec: LDO_REG1 {
-				regulator-name = "vcc1v8_codec";
+			vcca1v8_codec: LDO_REG1 {
+				regulator-name = "vcca1v8_codec";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1800000>;
@@ -316,8 +317,8 @@ regulator-state-mem {
 				};
 			};
 
-			vcc1v8_hdmi: LDO_REG2 {
-				regulator-name = "vcc1v8_hdmi";
+			vcca1v8_hdmi: LDO_REG2 {
+				regulator-name = "vcca1v8_hdmi";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1800000>;
@@ -374,8 +375,8 @@ regulator-state-mem {
 				};
 			};
 
-			vcc0v9_hdmi: LDO_REG7 {
-				regulator-name = "vcc0v9_hdmi";
+			vcca0v9_hdmi: LDO_REG7 {
+				regulator-name = "vcca0v9_hdmi";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <900000>;
@@ -517,7 +518,7 @@ &io_domains {
 	status = "okay";
 
 	bt656-supply = <&vcc_3v0>;
-	audio-supply = <&vcc1v8_codec>;
+	audio-supply = <&vcca1v8_codec>;
 	sdmmc-supply = <&vcc_sdio>;
 	gpio1830-supply = <&vcc_3v0>;
 };
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
