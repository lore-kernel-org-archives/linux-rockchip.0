Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 093BEC433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Sep 2022 05:17:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BPPKLi+IlWCqS4zSuPochkNtFNTFIqFgWQQzWTWhXKc=; b=1UVNMzGr3BlzRG
	Wca73/CH8l/0QkYrBP/a9HnFc+r+Q+HBNtl710zzLAJ3Qn4eSLJPSMN+Rco7kisTRZdj2EOnpE5ap
	qJaiU8fFBPmGy9WchnQrILWaCyMg02pvqAFziYuToE8oOCg2t/TOHascqzKZgQyGbM98fR/apiFg5
	0SlwBmdpotSuDOONVKPqy9gO83whMtvw3VBfn1Ltd4RhmYyF9xnfvWZdqUV8v3ktxihXw45h8wg52
	JvEhKx+8rrllCO0pNj0pNT/mMkqxKLf19AriDJcP8geCEdA68wW81rc1qlLU6s5bvPxfzt85dkw6b
	IKxW3ELrnMLAskO2DhyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oe8P0-007FdW-6r; Fri, 30 Sep 2022 05:17:34 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oe8Ki-007CxM-1x; Fri, 30 Sep 2022 05:13:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Content-Type:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=qq4c1qCdY2ad+VBqPzxONr8nb5OSEU3D+xvzA/5hS94=; b=DQm0aLh2wAjdj0mnH7/WqBHljL
	4DiNuZueJ+b3gbMvsQhBL0rUmeqNo5ovtp4XP1erR4I5cNr19o3HD3EejDoOd64qtG1RyKSqyMLhh
	XfbbCnDB8UGp19qv7vxKgGCYUbMaBhbOb6wIUbXYEEPg2vnVIgKOPTQU8GoEQU9CX5DXSoLGpqui1
	zaD8LTs8UvQH5ziHj6gfuTH+NmQxcuCbw7btH07/tNAgxFin5q1g9etBS7KdH5CbZdIEm+GXX3jvy
	n6O2BsZK7eylg+0gDUlVbNP3XADqrJ6IZwHKFL86PmpQ7RLTsTBlYCw39+ueTV265wmpK6R2lu9zV
	0jbQN4ag==;
Received: from [2a01:e34:ec5d:a741:8a4c:7c4e:dc4c:1787] (helo=ohm.rr44.fr)
	by hall.aurel32.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1oe8Kf-00Djfi-Jv; Fri, 30 Sep 2022 07:13:05 +0200
Received: from aurel32 by ohm.rr44.fr with local (Exim 4.96)
	(envelope-from <aurelien@aurel32.net>)
	id 1oe8Ke-001dvv-3A;
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
Subject: [PATCH v3 10/13] arm64: dts: rockchip: Enable the USB 3.0 ports on ODROID-M1
Date: Fri, 30 Sep 2022 07:12:43 +0200
Message-Id: <20220930051246.391614-11-aurelien@aurel32.net>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220930051246.391614-1-aurelien@aurel32.net>
References: <20220930051246.391614-1-aurelien@aurel32.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_221313_155294_DE0D4ED0 
X-CRM114-Status: GOOD (  15.30  )
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

The Rockchip RK3568 has two USB XHCI controllers. The USB 2.0 signals
are connected to a PHY providing one host-only port and one OTG port.
The USB 3.0 signals are connected to two USB3.0/PCIE/SATA combo PHY.

The ODROID M1 has 2 type A USB 3.0 connectors, with the USB 3.0 signals
connected to the two combo PHYs. For the USB 2.0 signals, one connector
is connected to the host-only PHY and uses the same power switch as the
USB 2.0 ports. The other connector has its own power switch and is
connected to the OTG PHY, which is also connected to a device only
micro-USB connector. The purpose of this micro-USB connector is for
firmware update using the Rockusb vendor specific USB class. Therefore
it does not make sense to enable this port on Linux, and the PHY is
forced to host mode.

Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
Tested-by: Dan Johansen <strit@manjaro.org>
---
 .../boot/dts/rockchip/rk3568-odroid-m1.dts    | 49 ++++++++++++++++++-
 1 file changed, 48 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
index 2e4cc20bd676..9a84a7e76d7a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
@@ -127,6 +127,30 @@ vcc5v0_usb_host: vcc5v0-usb-host-regulator {
 		regulator-max-microvolt = <5000000>;
 		vin-supply = <&vcc5v0_sys>;
 	};
+
+	vcc5v0_usb_otg: vcc5v0-usb-otg-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_usb_otg";
+		enable-active-high;
+		gpio = <&gpio0 RK_PA5 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_usb_otg_en_pin>;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+};
+
+&combphy0 {
+	/* Used for USB3 */
+	phy-supply = <&vcc5v0_usb_host>;
+	status = "okay";
+};
+
+&combphy1 {
+	/* Used for USB3 */
+	phy-supply = <&vcc5v0_usb_otg>;
+	status = "okay";
 };
 
 &cpu0 {
@@ -490,7 +514,7 @@ usb {
 		vcc5v0_usb_host_en_pin: vcc5v0-usb-host-en-pin {
 			rockchip,pins = <0 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
-		vcc5v0_usb_otg_en_pin: vcc5v0-usb-otg-en-pin {
+		vcc5v0_usb_otg_en_pin: vcc5v0-usb-dr-en-pin {
 			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
@@ -600,6 +624,11 @@ &usb_host0_ohci {
 	status = "okay";
 };
 
+&usb_host0_xhci {
+	dr_mode = "host";
+	status = "okay";
+};
+
 &usb_host1_ehci {
 	status = "okay";
 };
@@ -608,6 +637,24 @@ &usb_host1_ohci {
 	status = "okay";
 };
 
+&usb_host1_xhci {
+	status = "okay";
+};
+
+&usb2phy0 {
+	status = "okay";
+};
+
+&usb2phy0_host {
+	phy-supply = <&vcc5v0_usb_host>;
+	status = "okay";
+};
+
+&usb2phy0_otg {
+	phy-supply = <&vcc5v0_usb_otg>;
+	status = "okay";
+};
+
 &usb2phy1 {
 	status = "okay";
 };
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
