Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF2BBC2BD09
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Jun 2024 14:02:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H9U7euqDC51sbxDenucAilK4YzridfV/TS3k6qxXGRg=; b=VmdaMLKa54Ji7I
	IflJheXgs/WccIHHD3oeaSwVBz4LytLvCMpzznFOHe6uJcbFQGhAXG/n67SFdKJVr2WPKIYLvdsJQ
	qihvqCG6NLrsPI2McEbNKtyYGI0W8fBjoQLBhDvyuS0kWPWXgytwPBcsNoRjV+Z9COtJvsUSgMV5+
	34Y7SBeO7+83yzr6mMlF7cQeIvlUYYJUEgnPqiIWesxUu0/bFSa9vyGYCbCYCNE80kmzwt0WrYljh
	txL1lQ8IuTpNUeMp9H7z3OXzGIwfQUS+8JBwQdNNWMCdLcaaswKFVw2h7CmTVV7HfYTZqBuH1uU9f
	FFJxY3occOk244Ci0JXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNCAy-0000000DuAz-2CXF;
	Fri, 28 Jun 2024 14:02:08 +0000
Received: from mail-m49197.qiye.163.com ([45.254.49.197])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNCAZ-0000000Dtx0-1BZ3;
	Fri, 28 Jun 2024 14:01:46 +0000
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c01:1720:7e27:c507:902f:f5f3])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 2F6A07E0108;
	Fri, 28 Jun 2024 22:01:15 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: [PATCH 1/5] arm64: dts: rockchip: fix regulator and supply for Lunzn Fastrhino R6xS
Date: Fri, 28 Jun 2024 22:01:00 +0800
Message-Id: <20240628140104.551760-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCGkxIVkseSBkYSE1ISk9PGlYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlJT0seQUgZSEFJGEtKQUpMSUtBTB5JTEEYTktMQUJLSR1BHU4dSFlXWRYaDx
	IVHRRZQVlPS0hVSktJT09PS1VKS0tVS1kG
X-HM-Tid: 0a905f2679ab03a2kunm2f6a07e0108
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Pz46OCo*DDNRDRoYTg8MDzco
	ERYaCihVSlVKTEpCTkNISUxOQ0hDVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS0pBSkxJS0FMHklMQRhOS0xBQktJHUEdTh1IWVdZCAFZQU9CSE43Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240628_070143_629783_FAF50510 
X-CRM114-Status: UNSURE (   8.75  )
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

Make the regulator name and supply the same as those marked by schematics.

Fixes: c79dab407afd ("arm64: dts: rockchip: Add Lunzn Fastrhino R66S")
Fixes: b9f8ca655d80 ("arm64: dts: rockchip: Add Lunzn Fastrhino R68S")
Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
---
 .../dts/rockchip/rk3568-fastrhino-r66s.dts    |  4 +++
 .../dts/rockchip/rk3568-fastrhino-r66s.dtsi   | 28 +++++++------------
 .../dts/rockchip/rk3568-fastrhino-r68s.dts    |  4 +++
 3 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dts b/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dts
index 58ab7e9971db..b5e67990dd0f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dts
@@ -11,6 +11,10 @@ aliases {
 	};
 };
 
+&pmu_io_domains {
+	vccio3-supply = <&vccio_sd>;
+};
+
 &sdmmc0 {
 	bus-width = <4>;
 	cap-mmc-highspeed;
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi
index 89e84e3a9262..82577eba31eb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi
@@ -39,9 +39,9 @@ status_led: led-status {
 		};
 	};
 
-	dc_12v: dc-12v-regulator {
+	vcc12v_dcin: vcc12v-dcin-regulator {
 		compatible = "regulator-fixed";
-		regulator-name = "dc_12v";
+		regulator-name = "vcc12v_dcin";
 		regulator-always-on;
 		regulator-boot-on;
 		regulator-min-microvolt = <12000000>;
@@ -65,7 +65,7 @@ vcc3v3_sys: vcc3v3-sys-regulator {
 		regulator-boot-on;
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
-		vin-supply = <&dc_12v>;
+		vin-supply = <&vcc12v_dcin>;
 	};
 
 	vcc5v0_sys: vcc5v0-sys-regulator {
@@ -75,16 +75,7 @@ vcc5v0_sys: vcc5v0-sys-regulator {
 		regulator-boot-on;
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
-		vin-supply = <&dc_12v>;
-	};
-
-	vcc5v0_usb_host: vcc5v0-usb-host-regulator {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc5v0_usb_host";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc12v_dcin>;
 	};
 
 	vcc5v0_usb_otg: vcc5v0-usb-otg-regulator {
@@ -94,8 +85,9 @@ vcc5v0_usb_otg: vcc5v0-usb-otg-regulator {
 		pinctrl-names = "default";
 		pinctrl-0 = <&vcc5v0_usb_otg_en>;
 		regulator-name = "vcc5v0_usb_otg";
-		regulator-always-on;
-		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v0_sys>;
 	};
 };
 
@@ -405,8 +397,8 @@ vcc5v0_usb_otg_en: vcc5v0-usb-otg-en {
 &pmu_io_domains {
 	pmuio1-supply = <&vcc3v3_pmu>;
 	pmuio2-supply = <&vcc3v3_pmu>;
-	vccio1-supply = <&vccio_acodec>;
-	vccio3-supply = <&vccio_sd>;
+	vccio1-supply = <&vcc_3v3>;
+	vccio2-supply = <&vcc_1v8>;
 	vccio4-supply = <&vcc_1v8>;
 	vccio5-supply = <&vcc_3v3>;
 	vccio6-supply = <&vcc_1v8>;
@@ -460,7 +452,7 @@ &usb2phy0 {
 };
 
 &usb2phy0_host {
-	phy-supply = <&vcc5v0_usb_host>;
+	phy-supply = <&vcc5v0_sys>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r68s.dts b/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r68s.dts
index e1fe5e442689..a3339186e89c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r68s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r68s.dts
@@ -102,6 +102,10 @@ eth_phy1_reset_pin: eth-phy1-reset-pin {
 	};
 };
 
+&pmu_io_domains {
+	vccio3-supply = <&vcc_3v3>;
+};
+
 &sdhci {
 	bus-width = <8>;
 	max-frequency = <200000000>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
