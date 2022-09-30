Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D69F9C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Sep 2022 05:15:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O0GqcxS+xZ79EmQM3FXRAo7yd8rwFps4DhQjuJneR5w=; b=cloPsXUPIpeO6j
	sFBHuH2YVaxc9V2YAn4Hhe6uDfX9QO45Fn6KBq+Xo01FFdpUcykAZc8+yyMAa3I9qfgPCXvu70pjo
	yLJZu1WVsIUq+toXcAVi6m3Wa0WLfH93wioDwvAdcYihhHmkKxTmXYF0/QUNcF+bqPLqRLkHgpTaE
	vYCCsLuH37pYC+9jFtR7J4QpRIKbHG7iUTwgb/fDMCKNy9POGpNSq2i2/0YwmtTj32bW31/MBOpIo
	iox/blXnLFQzH8WpwkKWl09DKK9RJIgbGah1SvqaiZzIFpVDRk8Z/U22gcvVxrEK/NOIujggfILBh
	J9VJb6naWiolKtqFZ2Lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oe8MV-007Dx7-Ac; Fri, 30 Sep 2022 05:14:59 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oe8Kh-007CxH-Oe; Fri, 30 Sep 2022 05:13:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Content-Type:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=2Z0orixVMMmZ5VqVIk55pq3AUKfU1o1MRrPIzz8sIPw=; b=r9trFQ13Eo0msZk2ZZW67dl+qc
	Gd+Qt3yjWP3LlS4vDQvnPJ8y0rjDTDjvMEjCw7uTKKG9h/Ea0xwSSgbPIc1l9Em2rbmMRq2B1o/v1
	o1r4KIceemcBGnTXVb4julHAiKKk+6DEdQcSuL1H9JXHOrs2+YZIsllMwndIyu1oekmU/PA+9YVbY
	1/RwuOcPclnh6ExcYeK+AcF8o0PjK0o5CzvWEWbKP7m9FsTtQurteUIYIYB+Fn018KjeRfdpPgOdB
	XHetpb0JnoDPbiknDAWq8HyjkmxGZwEjzyWCHOqtbSk8hrDu/U79R8mWyTikXjsLZkc1jsoaVK3qZ
	vIllVRIQ==;
Received: from [2a01:e34:ec5d:a741:8a4c:7c4e:dc4c:1787] (helo=ohm.rr44.fr)
	by hall.aurel32.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1oe8Kf-00DjfX-An; Fri, 30 Sep 2022 07:13:05 +0200
Received: from aurel32 by ohm.rr44.fr with local (Exim 4.96)
	(envelope-from <aurelien@aurel32.net>)
	id 1oe8Ke-001dvk-1x;
	Fri, 30 Sep 2022 07:13:04 +0200
From: Aurelien Jarno <aurelien@aurel32.net>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Cc: Dongjin Kim <tobetter@gmail.com>,
	Aurelien Jarno <aurelien@aurel32.net>,
	Dan Johansen <strit@manjaro.org>
Subject: [PATCH v3 09/13] arm64: dts: rockchip: Enable the USB 2.0 ports on ODROID-M1
Date: Fri, 30 Sep 2022 07:12:42 +0200
Message-Id: <20220930051246.391614-10-aurelien@aurel32.net>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220930051246.391614-1-aurelien@aurel32.net>
References: <20220930051246.391614-1-aurelien@aurel32.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_221308_899254_127533F0 
X-CRM114-Status: GOOD (  10.52  )
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
Tested-by: Dan Johansen <strit@manjaro.org>
---
 .../boot/dts/rockchip/rk3568-odroid-m1.dts    | 61 +++++++++++++++++++
 1 file changed, 61 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
index e4b7699d3eea..2e4cc20bd676 100644
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
@@ -463,6 +485,15 @@ hp_det_pin: hp-det-pin {
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
@@ -561,6 +592,36 @@ &uart2 {
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
