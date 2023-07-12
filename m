Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1E70EB64DD
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jul 2023 16:53:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lmQGD5NdKo5XsjssawhZFT/rlP+E29wVhjtdXyhM1Bw=; b=2xIflXz2h6wkIv
	mrCX5ZgtHRYmM99HYTUW1pIIcnSuJWSM04XBRPNZxHOTHcGFNiVDqxTOaBW8g5Cr4A6jculeJCGy2
	Z1F46DgOTWp0HXJfDlZlS4n7fkb6mAUXRPzmvC6lIoxbGx7yB8cfmDL+oKnKQSlgiIhw4O9h78LLn
	jJCbStoUxsEJkisqygEEbutwVydtR8crvULP7kSZf0gnpGx6T9K7qerjASGHotzMgFmYohRr+mem7
	M4u+XC36qWxkeD8OMuQoyTKTZD0lsOwIxUikcQ+iiNMXYyIYy9BgHnVk2I+82m5ZxF0/4peiJI3mI
	uAbHKpv/oYHeIdgq+AoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJd5C-000ezq-1t;
	Wed, 12 Jul 2023 16:52:54 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJd57-000euV-2d;
	Wed, 12 Jul 2023 16:52:51 +0000
Received: from jupiter.universe (dyndsl-091-248-191-111.ewe-ip-backbone.de [91.248.191.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id ED6476607027;
	Wed, 12 Jul 2023 17:52:44 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689180765;
	bh=88rywqObFwpBKAI+SECDCZP0Ch3+dLlV5WnpkFjXbX4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=UxsdaLgLBD2WNL/TdPuXumYNKwmN0BE4DkRYGXXhVh9ptRrCb7NtmbcGszmOX3Qoy
	 lIEa7N18QaVlPKAUTCaELHG7aFrzzLE+4aLjUQbk+5V2e+TEYEVGRTFyBYRw1Kswcu
	 FxL6SAS8YmhSsAMXc+ZOjQwd98Ps8v8WdDCOXduJUHPK5dwyboXywtWXbj2CGvc5yq
	 Pz7ndHHYABvD4IRlNDqVi7FlfX1SvbG9XM/wHJ+RRRCvHz5kKMSGn88dO5eWERJbjv
	 49S46oXM5xv34hetuqhS/kapqmYossQ0SE1WCSlxT9T8yNFInsGPtuUINEDPTTY4JA
	 UGnnqUCFVR3nw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 1B7C248059A; Wed, 12 Jul 2023 18:52:43 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v1 3/4] arm64: dts: rockchip: rk3588-rock5b: add USB2
Date: Wed, 12 Jul 2023 18:51:05 +0200
Message-Id: <20230712165106.65603-4-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230712165106.65603-1-sebastian.reichel@collabora.com>
References: <20230712165106.65603-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230712_095250_011708_1392A3FF 
X-CRM114-Status: GOOD (  11.61  )
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

Enable USB2 (EHCI and OCHI mode) support for the Radxa ROCK 5 Model B.
This adds USB support on the M.2 Key E, both USB2 ports and USB2 mode
for the upper USB3 port (the one further away from the PCB).

The lower USB3 (closer to the PCB) and the USB-C ports use the RK3588
USB TypeC host controller, which is not yet supported upstream.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 9cea262998b4..6be759903411 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -43,6 +43,20 @@ fan: pwm-fan {
 		#cooling-cells = <2>;
 	};
 
+	vcc5v0_host: vcc5v0-host-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_host";
+		regulator-boot-on;
+		regulator-always-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+		gpio = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_host_en>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
 	vcc5v0_sys: vcc5v0-sys-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v0_sys";
@@ -201,6 +215,12 @@ hp_detect: hp-detect {
 			rockchip,pins = <1 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	usb {
+		vcc5v0_host_en: vcc5v0-host-en {
+			rockchip,pins = <4 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
 };
 
 &pwm1 {
@@ -564,3 +584,38 @@ &uart2 {
 	pinctrl-0 = <&uart2m0_xfer>;
 	status = "okay";
 };
+
+&u2phy2 {
+	status = "okay";
+};
+
+&u2phy2_host {
+	/* connected to USB hub, which is powered by vcc5v0_sys */
+	phy-supply = <&vcc5v0_sys>;
+	status = "okay";
+};
+
+&u2phy3 {
+	status = "okay";
+};
+
+&u2phy3_host {
+	phy-supply = <&vcc5v0_host>;
+	status = "okay";
+};
+
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
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
