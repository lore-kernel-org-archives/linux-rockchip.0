Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F703C07E9D
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Sep 2022 18:02:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZfmB1lYfRug/fH7Q4SY8DspKTj0gpmp7IKxx4yNUGzo=; b=rbgxbTLgTxC9jM
	6gv7PrQDOjJvxZ93TOC9nSwoFPecJ7U0syrNf6pyXZSHy/iFZKqWjqJKly/JSaugodriOYT7RZBJb
	+ZW0RzGqDFPy7CAICre4YYAZxyIaBgSApDXAdj0g0lm6/rLzQTCoqLdcL5v8Nx+x5RmJhnl5WtlSi
	x43qsnnqF8OEd1wthr6PFBFygOaiPppKDQ9+RCxkFMCGYnSvcYrBXwIT61HkN75xkMlU3PoR9cZBB
	E57rW2iekX6jJwm675Gl9S19tTPCT2w1Wh7BPjHZjSPXCRpmMWJGYhK90zmgDo1fRXOfXoofgvQYD
	VGud/r8MmMmR9XCVZ7Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocsQT-006COB-He; Mon, 26 Sep 2022 18:01:53 +0000
Received: from mail-m121145.qiye.163.com ([115.236.121.145])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocsQ9-006CHF-FG; Mon, 26 Sep 2022 18:01:35 +0000
Received: from amadeus-VLT-WX0.lan (unknown [218.85.118.195])
	by mail-m121145.qiye.163.com (Hmail) with ESMTPA id 038428000E4;
	Tue, 27 Sep 2022 02:01:24 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: linux.amoon@gmail.com
Cc: heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	michael.riesch@wolfvision.net,
	robh+dt@kernel.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: [PATCH 1/3] arm64: dts: rockchip: Add regulator suffix to rock-3a
Date: Tue, 27 Sep 2022 02:01:00 +0800
Message-Id: <20220926180102.37614-2-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220926180102.37614-1-amadeus@jmu.edu.cn>
References: <20220926061420.1248-1-linux.amoon@gmail.com>
 <20220926180102.37614-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaSRhMVkNOTRhITU9NSk9DSVUTARMWGhIXJBQOD1
	lXWRgSC1lBWUlKQ1VDTlVKSkNVSkJOWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Nj46EBw6Aj0oUQhWOikRSR8p
	OAoKCi9VSlVKTU1PSUpOSUNOTUlCVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlK
	Q1VDTlVKSkNVSkJOWVdZCAFZQUhMS0M3Bg++
X-HM-Tid: 0a837af5fdf9b03akuuu038428000e4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_110133_691627_351F0F78 
X-CRM114-Status: UNSURE (   6.99  )
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

Add -regulator suffix to regulator names on Radxa ROCK3 Model A
board. This makes the naming more consistent.

Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
---
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index fb87a168fe96..8adf672709e8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -60,7 +60,7 @@ simple-audio-card,codec {
 		};
 	};
 
-	vcc12v_dcin: vcc12v-dcin {
+	vcc12v_dcin: vcc12v-dcin-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc12v_dcin";
 		regulator-always-on;
@@ -79,7 +79,7 @@ vcc3v3_pcie: vcc3v3-pcie-regulator {
 		vin-supply = <&vcc5v0_sys>;
 	};
 
-	vcc3v3_sys: vcc3v3-sys {
+	vcc3v3_sys: vcc3v3-sys-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc3v3_sys";
 		regulator-always-on;
@@ -89,7 +89,7 @@ vcc3v3_sys: vcc3v3-sys {
 		vin-supply = <&vcc12v_dcin>;
 	};
 
-	vcc5v0_sys: vcc5v0-sys {
+	vcc5v0_sys: vcc5v0-sys-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v0_sys";
 		regulator-always-on;
@@ -99,7 +99,7 @@ vcc5v0_sys: vcc5v0-sys {
 		vin-supply = <&vcc12v_dcin>;
 	};
 
-	vcc5v0_usb: vcc5v0-usb {
+	vcc5v0_usb: vcc5v0-usb-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v0_usb";
 		regulator-always-on;
@@ -109,7 +109,7 @@ vcc5v0_usb: vcc5v0-usb {
 		vin-supply = <&vcc12v_dcin>;
 	};
 
-	vcc5v0_usb_host: vcc5v0-usb-host {
+	vcc5v0_usb_host: vcc5v0-usb-host-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;
 		gpio = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
@@ -144,7 +144,7 @@ vcc5v0_usb_otg: vcc5v0-usb-otg-regulator {
 		vin-supply = <&vcc5v0_usb>;
 	};
 
-	vcc_cam: vcc-cam {
+	vcc_cam: vcc-cam-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;
 		gpio = <&gpio1 RK_PB1 GPIO_ACTIVE_HIGH>;
@@ -160,7 +160,7 @@ regulator-state-mem {
 		};
 	};
 
-	vcc_mipi: vcc-mipi {
+	vcc_mipi: vcc-mipi-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;
 		gpio = <&gpio3 RK_PC0 GPIO_ACTIVE_HIGH>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
