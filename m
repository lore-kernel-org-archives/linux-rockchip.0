Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E361EC3065C
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jul 2024 14:31:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UFAp7dZehBia/xSpifOlVeFtiQH5mYhbik+Prqm8J58=; b=UD6WnV4Pj4F6kn
	vC8guZj4QppWE+Er2CXNI7CXeztVutBqefulhRLWa5zuPs5j14eNaMTQ7JIXmQ5dS4C8UI6zEOKaV
	Sumvghmufta4MfnsbfR63AhQihHkIC/ypVnLj1jFeOdmvBfYIkPUtPlsfQGXdmPdE1STMMGDwv1ay
	pnqMfr04kFbgk0XfltcmtnplbQFsKkdbeDAVBV0RuuCbcrBpazGvu/gBW+t5yEw/5qGAMGDbaJIOX
	Gjn+ZGpU33VHFUARgSFsecAoe/ZSWY1gTGWbJKTUDfSphZ8KBoHhOuD+euQDWOdajMKXe5g7zdwE2
	q0G/Z1+rqTgGeBnOBP2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOI3k-00000003juN-08W0;
	Mon, 01 Jul 2024 14:31:12 +0000
Received: from mail-m155101.qiye.163.com ([101.71.155.101])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOI3X-00000003jqh-2zFG;
	Mon, 01 Jul 2024 14:31:01 +0000
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c00:7a80:98d3:5fc8:a2a:615f])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 760847E0180;
	Mon,  1 Jul 2024 22:30:34 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: amadeus@jmu.edu.cn
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org
Subject: [PATCH v2 2/9] arm64: dts: rockchip: fix usb regulator for Lunzn Fastrhino R6xS
Date: Mon,  1 Jul 2024 22:30:26 +0800
Message-Id: <20240701143028.1203997-2-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240701143028.1203997-1-amadeus@jmu.edu.cn>
References: <20240630150010.55729-1-amadeus@jmu.edu.cn>
 <20240701143028.1203997-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDHUJLVhlJQ0kfHU4aHU1JTVYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlJT0seQUgZSEFJGEtLQUwaQ0tBQkMfSEFOHRhDQRpJGkFNSk4dWVdZFhoPEh
	UdFFlBWU9LSFVKS0lIQktDVUpLS1VKQlkG
X-HM-Tid: 0a906eb465bd03a2kunm760847e0180
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mio6PSo6AzMBThcJFUI8T0NJ
	OQtPCipVSlVKTEpCQ09PSUhPQkxMVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS0tBTBpDS0FCQx9IQU4dGENBGkkaQU1KTh1ZV1kIAVlBSUJCQjcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_073100_051401_7D9B2B40 
X-CRM114-Status: UNSURE (   8.10  )
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

Remove the non-existent usb_host regulator and fix the supply according
to the schematic. Also remove the unnecessary always-on and boot-on for
the usb_otg regulator.

Fixes: c79dab407afd ("arm64: dts: rockchip: Add Lunzn Fastrhino R66S")
Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
---
 .../boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi | 16 ++++------------
 1 file changed, 4 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi
index 93987c8740f7..8f587978fa3b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi
@@ -78,15 +78,6 @@ vcc5v0_sys: vcc5v0-sys-regulator {
 		vin-supply = <&vcc12v_dcin>;
 	};
 
-	vcc5v0_usb_host: vcc5v0-usb-host-regulator {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc5v0_usb_host";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-	};
-
 	vcc5v0_usb_otg: vcc5v0-usb-otg-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;
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
 
@@ -460,7 +452,7 @@ &usb2phy0 {
 };
 
 &usb2phy0_host {
-	phy-supply = <&vcc5v0_usb_host>;
+	phy-supply = <&vcc5v0_sys>;
 	status = "okay";
 };
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
