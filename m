Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CAC7C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Oct 2022 15:27:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OI0zYhLcUgBOT5V4mP9L7BTENcI0S3hT8A1OayD2NRY=; b=lVMGS1cnzu4s1n
	KFOanA0VfEJSxMKA+zZtrpiBoiaTAKrUpAOg6J63TRC6MU1ta6OGP7/n2rR8mlyExFeSloQPveCWG
	dfaHJds7g8hz5NTi5IBdyiSG/3ReXcWfwsvZE8jSsxEWGRXt3pQq88hkXyTRO0BQprV4jn+yTCRxF
	7ik2jnVoFzDPwZv6qic48kuw9rt3SzrFAgtSu+AVTxXexvE8+KSDaNRMSCXjFOTFVEaqf2xUfA+qW
	ltuZ8v6Kwg17bK7xqktxU5G3NW4ehqYvj6a1ccVMX/cls884oi3b7KV1wgk9LCM9iuRtafxRhLg2h
	LbswBA9R6LgprUWlYV0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogSmV-003NZ7-GV; Thu, 06 Oct 2022 15:27:27 +0000
Received: from mail-m121145.qiye.163.com ([115.236.121.145])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogSl1-003Mnd-W3; Thu, 06 Oct 2022 15:26:00 +0000
Received: from amadeus-VLT-WX0.lan (unknown [120.37.187.24])
	by mail-m121145.qiye.163.com (Hmail) with ESMTPA id D68198000C3;
	Thu,  6 Oct 2022 23:25:45 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Michael Riesch <michael.riesch@wolfvision.net>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: [PATCH v2 1/2] arm64: dts: rockchip: Add regulator suffix to rock-3a
Date: Thu,  6 Oct 2022 23:25:23 +0800
Message-Id: <20221006152524.502445-2-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221006152524.502445-1-amadeus@jmu.edu.cn>
References: <20221006152524.502445-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZSxhDVkwaTU9PSEtDTh0aQlUTARMWGhIXJBQOD1
	lXWRgSC1lBWUpJS1VITFVKQ0xVSU9ZV1kWGg8SFR0UWUFZT0tIVUpKS0hKQ1VKS0tVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OD46Khw6Ej0ZTU9OSAEzViw4
	Iw0wCTFVSlVKTU1OS01CQk9NTktKVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUpJ
	S1VITFVKQ0xVSU9ZV1kIAVlBSExMTTcG
X-HM-Tid: 0a83ade714ddb03akuuud68198000c3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221006_082556_230870_BE566229 
X-CRM114-Status: UNSURE (   7.74  )
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
Acked-by: Michael Riesch <michael.riesch@wolfvision.net>
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
