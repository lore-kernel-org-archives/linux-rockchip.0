Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C094C32771
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Sep 2022 18:43:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r2owpKPmu0tdcJRxOgNIJgfloC/4kBu6N+zXmbFs9p4=; b=4rQezQTeKl5197
	zCS5Y4nwig+Gjz82xkz6CzYJkCGszbgZedZBqI9t5tSloWN/Ut9MSs0nff85tLLdXMe8bW+XVgFEq
	RNupDjAp51M2OFcr4Cwi52zc/Seyv6zpwpKq+VKE83qgiI3VbwO/AlfCu1PfR+YxuEQt8uqtHezYT
	S0S47DDUO+78W9+UMHufF9K6aE7LZ3FHVc3T4gcNO4kkzKLN5dz3J7aq6d6BTDN6jiNHGzWrBSOPz
	eFY2KY0zTciInLo04z1no2FOgmsaMKY0DskkME98VR7PVyWvf9TbS+kN/OCHTYWAumZPB0LmCK/3j
	ks0F0oskQgYrrOrDj1xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oct4c-006N8h-Fw; Mon, 26 Sep 2022 18:43:22 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocsz7-006IIh-Gu; Mon, 26 Sep 2022 18:37:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Content-Type:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=tAMiyMHYmqcRKZ4q0pvNj3OkA4K0ziUgR23bk4hzW2E=; b=V1s0PGxmNrVvjc01X106nIEY/o
	L/Y/0zT8Ea5qb+ckHtyh7ssuf2B8N1/jm7PWkRmgu9CgATg/JYy8dcubBKZu3JXZBSDbz/xmxuvMu
	e3g6wa1RoWNi4vGsIATwjNtJtl3tYV0uHoEdT7yJ9KHToXoAoCURvBWx3zbi9SG2o0FuE62OMb9ZM
	uBTmnCi75HJmk1uJP13DylH0pr+cSrFfzt8yMKGuToV4SOWL3ZUw+21rFnxS9w9M6/x84mYK9Hun+
	9ZVhHyiNwybDs0Bz+Y2ZaB+cd7tq1Q+9eaUaPGZi5C2HCP5Nw+uq7o784eWjP1t1KgxyIluc1FWPW
	PjQ9vjEA==;
Received: from [2a01:e34:ec5d:a741:8a4c:7c4e:dc4c:1787] (helo=ohm.rr44.fr)
	by hall.aurel32.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1ocsz4-00B9Pb-86; Mon, 26 Sep 2022 20:37:38 +0200
Received: from aurel32 by ohm.rr44.fr with local (Exim 4.96)
	(envelope-from <aurelien@aurel32.net>)
	id 1ocsz1-007wcP-23;
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
Subject: [PATCH v2 10/13] arm64: dts: rockchip: Enable the USB 3.0 ports on ODROID-M1
Date: Mon, 26 Sep 2022 20:37:24 +0200
Message-Id: <20220926183727.1893566-11-aurelien@aurel32.net>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220926183727.1893566-1-aurelien@aurel32.net>
References: <20220926183727.1893566-1-aurelien@aurel32.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_113741_777850_E773D99E 
X-CRM114-Status: GOOD (  14.86  )
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
---
 .../boot/dts/rockchip/rk3568-odroid-m1.dts    | 49 ++++++++++++++++++-
 1 file changed, 48 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
index 595f56c41a15..8f7c9dd8c47c 100644
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
@@ -476,7 +500,7 @@ usb {
 		vcc5v0_usb_host_en_pin: vcc5v0-usb-host-en-pin {
 			rockchip,pins = <0 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
-		vcc5v0_usb_otg_en_pin: vcc5v0-usb-otg-en-pin {
+		vcc5v0_usb_otg_en_pin: vcc5v0-usb-dr-en-pin {
 			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
@@ -585,6 +609,11 @@ &usb_host0_ohci {
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
@@ -593,6 +622,24 @@ &usb_host1_ohci {
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
