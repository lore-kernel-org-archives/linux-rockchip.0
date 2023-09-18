Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5F46C46CA1
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Sep 2023 14:15:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oTTS8b82MdltkRY4G6C+UeY9zqvoBRnz09sResAsgxE=; b=SdDyGgRFbRTdaz
	2+hD4UTFynlcCHvkd732DzVmwxLWJZ79puTcueJbUNzMO7fDELCrBK95hFrOAdvUgdmhrP0mL2fpO
	Ac3RiP6UfKItyp093/rQRce/eL3ZeSQQHLEaIwtEKhOgq7doAotoDwRO2m4owP+yCA6yRgxURzFBi
	K3d9BcLGBSG9Vfwkh781g6NwhtcH1vcRn1/7L9DRWr8dtBaRmai3sNxmnSs1XpUV9rUW6xgPnjjRm
	u6KiUQ5oq0fKRT9LK/wdluieI6fHzTd0Wsyc6EPTfOKr5e4VYRr9UU3Qo8WDDxLAtB7isUZoWRPMV
	hNAjgcu1CBEEYL2QMHSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiF1s-00FdQI-1N;
	Mon, 18 Sep 2023 14:15:12 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiF1f-00FdJs-24;
	Mon, 18 Sep 2023 14:15:02 +0000
Received: from jupiter.universe (dyndsl-091-248-188-252.ewe-ip-backbone.de [91.248.188.252])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 4CF326607286;
	Mon, 18 Sep 2023 15:14:58 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1695046498;
	bh=bXZx9XdtvZgH7jGGWc4OyQZ2ltC3stVZRxLpBsUab7E=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Y/swLfEc0qDBI/zKIJwds4NVS8gJaAMfDtlvkJUHv+peWLSz0ejA1XMR2v9iGGDlS
	 JgAYhGzb0eRYT31aKFpHZ3GoYOqd230KjBKvrMT2AdkzBJZ5wQJMILb4XjIQR9I3CB
	 2rEdqulrv7/Y4u8LzOtKJNRV3KVn0cTxZwZHoN9K20yiRTQ7m9B8hu13w4lrH6/B71
	 GXnr1RR/7yXQt0T/gPNkUcC7pF3xdiFBSHWswLW8joEAs28QV9poQx3LoLqCdVX2zX
	 /TuGbw5aIOgSODQbHqIUwDlvE9g3EDmuWmqw7UN9ppcxvWwwEpXR58QqcjzM7+Ik/f
	 QXvMsx1ZeC+mg==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 856F04800D1; Mon, 18 Sep 2023 16:14:56 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH 3/3] arm64: dts: rockchip: rock-5b: add PCIe for M.2 E-Key
Date: Mon, 18 Sep 2023 16:14:51 +0200
Message-Id: <20230918141451.131247-4-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230918141451.131247-1-sebastian.reichel@collabora.com>
References: <20230918141451.131247-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230918_071459_819923_DCB1CD90 
X-CRM114-Status: GOOD (  11.46  )
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

Enable PCIe2_0 controller and its voltage supply, which is routed
to the M.2 E-Key on the upper side of the Radxa Rock 5B.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 6e52b5cf49a9..947a5ebe5bb3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -44,6 +44,21 @@ fan: pwm-fan {
 		#cooling-cells = <2>;
 	};
 
+	vcc3v3_pcie2x1l0: vcc3v3-pcie2x1l0-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpios = <&gpio1 RK_PD2 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pcie2_0_vcc3v3_en>;
+		regulator-name = "vcc3v3_pcie2x1l0";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		startup-delay-us = <50000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
 	vcc3v3_pcie2x1l2: vcc3v3-pcie2x1l2-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc3v3_pcie2x1l2";
@@ -104,6 +119,10 @@ &combphy0_ps {
 	status = "okay";
 };
 
+&combphy1_ps {
+	status = "okay";
+};
+
 &cpu_b0 {
 	cpu-supply = <&vdd_cpu_big0_s0>;
 };
@@ -230,6 +249,14 @@ i2s0_8ch_p0_0: endpoint {
 	};
 };
 
+&pcie2x1l0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie2_0_rst>;
+	reset-gpios = <&gpio4 RK_PA5 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pcie2x1l0>;
+	status = "okay";
+};
+
 &pcie2x1l2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie2_2_rst>;
@@ -264,6 +291,14 @@ hp_detect: hp-detect {
 	};
 
 	pcie2 {
+		pcie2_0_rst: pcie2-0-rst {
+			rockchip,pins = <4 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		pcie2_0_vcc3v3_en: pcie2-0-vcc-en {
+			rockchip,pins = <1 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
 		pcie2_2_rst: pcie2-2-rst {
 			rockchip,pins = <3 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
