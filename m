Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 634D2C07E9D
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Sep 2022 18:40:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+8z6oQxrHx7X4FGmkLKuBfcU8gnUpF6Ie+hwpDLBJ/M=; b=Rds+dN0+UsZMKG
	xpxduO//1pMfYqAzhDDctxFAYh1D9YHhI2a54GtO9R/GD/8FMlzgdL5gqNDnjaWHy09JdqcMbQKB8
	y3ltv4I6JSuJqzjvfpi/xNo7g9K61xG3tEFOfuJxTMCF+HtHbfH8zcOgU0PqS5z7ZoPUoEzVmRZVr
	MeZCIkvhOOJjoGfnzWoAJlBzN9R2/TTm7Dt8sBukXQ4DkXWnK/2eZgVdrD/Eb5S/SYvxUsKQOxd2x
	xcBcj5r9bJ/x062jU0z0ROVdh++bh2JaO2fh2E8VNjnnyT5NlWoui/Uil/F+2sGtn4FMfe5ON2VTX
	KqEZuM711oIKbqmQhASg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oct1T-006KiA-KQ; Mon, 26 Sep 2022 18:40:07 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocsz7-006IIj-Dh; Mon, 26 Sep 2022 18:37:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Content-Type:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=kilOzW0pwUETTqeqUPsVrB9s7w7J8Zt9YgnjJdCajnk=; b=iI9i9CuIefkpcuji6V0Jtjk90n
	VUmdj3sZvoUZHaHS8vWZlRJzwijvlY5GfiOH8OxLRps+HgECdStL438WyrRuBhaJRaASeLDOXh4tY
	8/NQEr1VEIfHWzltCPen+fQkm6D5feO3TZUasSXY5fUjp0bOQE+nnNTJjyKFiPLMDvU+2F7nrZrvQ
	5jAzjDWSIeK7emjPRfgxX6ECik7WIlig9eM/b1pk6ftkn0tUfeahMdigCyvS4uWRiGaIKP8hgDAMs
	Hdtl6R29fTm45h/sepEFUpJnpRvlM+PY7Df0LXLpyl49nEZkWTyOUEavODXazi27gmyjv7oaD1HyC
	loeDZF9g==;
Received: from [2a01:e34:ec5d:a741:8a4c:7c4e:dc4c:1787] (helo=ohm.rr44.fr)
	by hall.aurel32.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1ocsz3-00B9Pa-CB; Mon, 26 Sep 2022 20:37:37 +0200
Received: from aurel32 by ohm.rr44.fr with local (Exim 4.96)
	(envelope-from <aurelien@aurel32.net>)
	id 1ocsz1-007wcM-1y;
	Mon, 26 Sep 2022 20:37:35 +0200
From: Aurelien Jarno <aurelien@aurel32.net>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Cc: Dongjin Kim <tobetter@gmail.com>,
	Aurelien Jarno <aurelien@aurel32.net>
Subject: [PATCH v2 09/13] arm64: dts: rockchip: Enable the USB 2.0 ports on ODROID-M1
Date: Mon, 26 Sep 2022 20:37:23 +0200
Message-Id: <20220926183727.1893566-10-aurelien@aurel32.net>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220926183727.1893566-1-aurelien@aurel32.net>
References: <20220926183727.1893566-1-aurelien@aurel32.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_113741_492640_A0AEDF3F 
X-CRM114-Status: GOOD (  10.37  )
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

The Rockchip RK3568 has two USB OHCI/EHCI controllers connected to a PHY
providing one host-only port and one OTG port. On the ODROID-M1, they
are both used in host mode. The USB ports are powered by a DC/DC
converter providing 5V and named VCC5V0_SYS on the schematics, followed
by a power switch.

Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
---
 .../boot/dts/rockchip/rk3568-odroid-m1.dts    | 61 +++++++++++++++++++
 1 file changed, 61 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
index 281d8fdc0885..595f56c41a15 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
@@ -105,6 +105,28 @@ vcc3v3_sys: vcc3v3-sys-regulator {
 		regulator-max-microvolt = <3300000>;
 		vin-supply = <&dc_12v>;
 	};
+
+	vcc5v0_sys: vcc5v0-sys-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&dc_12v>;
+	};
+
+	vcc5v0_usb_host: vcc5v0-usb-host-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_usb_host";
+		enable-active-high;
+		gpio = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_usb_host_en_pin>;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
 };
 
 &cpu0 {
@@ -449,6 +471,15 @@ hp_det_pin: hp-det-pin {
 			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	usb {
+		vcc5v0_usb_host_en_pin: vcc5v0-usb-host-en-pin {
+			rockchip,pins = <0 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+		vcc5v0_usb_otg_en_pin: vcc5v0-usb-otg-en-pin {
+			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
 };
 
 &pmu_io_domains {
@@ -546,6 +577,36 @@ &uart2 {
 	status = "okay";
 };
 
+&usb_host0_ehci {
+	status = "okay";
+};
+
+&usb_host0_ohci {
+	status = "okay";
+};
+
+&usb_host1_ehci {
+	status = "okay";
+};
+
+&usb_host1_ohci {
+	status = "okay";
+};
+
+&usb2phy1 {
+	status = "okay";
+};
+
+&usb2phy1_host {
+	phy-supply = <&vcc5v0_usb_host>;
+	status = "okay";
+};
+
+&usb2phy1_otg {
+	phy-supply = <&vcc5v0_usb_host>;
+	status = "okay";
+};
+
 &vop {
 	assigned-clocks = <&cru DCLK_VOP0>, <&cru DCLK_VOP1>;
 	assigned-clock-parents = <&pmucru PLL_HPLL>, <&cru PLL_VPLL>;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
