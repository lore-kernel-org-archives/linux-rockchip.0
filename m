Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CBDF606A32A
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Nov 2026 06:02:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=g3IeYUSD;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.a=rsa-sha256 header.s=fe-e1b5cab7be header.b=c2be52fu;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=forwardemail.net header.i=@forwardemail.net header.a=rsa-sha256 header.s=default header.b=N1vBnqsn
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=8cCveqjTPqjpTkWKpGD9KV7wPnifpmDr/+nCLryvEIE=; b=g3IeYUSDg/zQHgPoL2NiE0Jifl
	UGmISA+sVzKgwHPVNpBGqN0NDvdqPhD8ncj0YeINbNThPcGqk2Bf6C5f7h2VeNgTRFfM33uc3n7gz
	x+NQULZcnQa+JbixINH+rgGM+7EPug7sLvDJPxDULzhKD1pvHmxm182mr+RnTRhUzTWURYi2/qgcz
	K+v1miRFvoELPEyHYlwITCXHqeMVR+im0s2LWssttRc2An5OF7CMZpuETs26Dpda/9hw8888pGNZm
	vGQrfTAsmSk2bvxKVaZbNXrPTh6hEcaMmKmDKJbmoZzanbtjE2J1HZXkeAM7aTFrcpgwW647naMrG
	5Uy3kzig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xV0eA-00000000lds-40eM;
	Sun, 22 Nov 2026 06:01:54 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xV0dq-00000000lJL-2TdT
	for linux-rockchip@lists.infradead.org;
	Sun, 22 Nov 2026 06:01:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From: CFBL-Address: CFBL-Feedback-ID;
 q=dns/txt; s=fe-e1b5cab7be; t=1795327294;
 bh=PSaaih/TC6HtEPnPEaEMghzv6bsIxzEaN+ljYxDHnws=;
 b=c2be52ful6YZFsIIgJTAWzBIYyBENn6cnyY80TA2is0RAwHUWGhL3lnmHfVa8SIYxf/vx46xA
 9z9MA9LDut+/m4cgaoSk6kziOl/X/UeK+JMVnsPVaJbfEuKrrPHvqsk3/WGDYZiOvtAkQ8xjkfY
 sqeXYH0IMUVDTEXxh1+z5URZvSHAkHnPBJFXJMyDxK948O3lBcoYUAm8w6jLs90Kmal1OVXgUPe
 Jj+IuX41FhubqVRu0Qsxr8aaXJKOg84owCDFT+flWAh0qPh25Ez0SYQsHrDG4NHZQoEsGzdil9X
 Fx/eWHTvbAN52dQPpko05t8j6eLUpeHoVd5prmk8RLag==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=forwardemail.net;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From: CFBL-Address: CFBL-Feedback-ID;
 q=dns/txt; s=default; t=1795327294;
 bh=PSaaih/TC6HtEPnPEaEMghzv6bsIxzEaN+ljYxDHnws=;
 b=N1vBnqsnBi7zGMEffkse+Hb3eOnG+4LQcm9g8Eif28Lpyw3prBzGt9RLiwUYmCjq28onhCQc2
 WqBHpP8mRv8pO7COOxx/017UAlGEcjw92e9u3W0S+rRJ10PSs//CFOtH0IAnEipTwEKseZ1cZ5d
 /GA559PoT2WSMzaciHj/bTw=
CFBL-Feedback-ID: 6b028538cff95ecda8c0938d:f74adc2c9755cd2d037dd43ccbb4b341
CFBL-Address: abuse@forwardemail.net; report=arf
X-Forward-Email-ID: 6b028538cff95ecda8c0938d
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 2.19.37
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 4/8] ARM: dts: rockchip: Add Luckfox Lyra and Lyra Plus boards
Date: Sun, 22 Nov 2026 06:01:07 +0000
Message-ID: <20261122060114.773624-5-jonas@kwiboo.se>
X-Mailer: git-send-email 2.56.1
In-Reply-To: <20261122060114.773624-1-jonas@kwiboo.se>
References: <20261122060114.773624-1-jonas@kwiboo.se>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261121_220134_664048_30CAC2E2 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: -2.0 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Luckfox Lyra and Lyra Plus is powered by the Rockchip RK3506G2 SoC,
which integrates three Cortex-A7 cores, one Cortex-M0 core, and 128 MB
of DDR3 memory.

Link: https://wiki.luckfox.com/Luckfox-Lyra/Luckfox-Lyra
Link: https://wiki.luckfox.com/Luckfox-Lyra/Luckfox-Lyra-Plus
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
Changes in v2:
- No change
---
 arch/arm/boot/dts/rockchip/Makefile           |   4 +-
 .../dts/rockchip/rk3506-luckfox-lyra-plus.dts |  31 +++++
 .../boot/dts/rockchip/rk3506-luckfox-lyra.dts |   9 ++
 .../dts/rockchip/rk3506-luckfox-lyra.dtsi     | 124 ++++++++++++++++++
 4 files changed, 167 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/rockchip/rk3506-luckfox-lyra-plus.dts
 create mode 100644 arch/arm/boot/dts/rockchip/rk3506-luckfox-lyra.dts
 create mode 100644 arch/arm/boot/dts/rockchip/rk3506-luckfox-lyra.dtsi

diff --git a/arch/arm/boot/dts/rockchip/Makefile b/arch/arm/boot/dts/rockchip/Makefile
index e9f9e0ac3bfd..df620116bb2d 100644
--- a/arch/arm/boot/dts/rockchip/Makefile
+++ b/arch/arm/boot/dts/rockchip/Makefile
@@ -45,4 +45,6 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += \
 	rk3288-veyron-pinky.dtb \
 	rk3288-veyron-speedy.dtb \
 	rk3288-veyron-tiger.dtb \
-	rk3288-vyasa.dtb
+	rk3288-vyasa.dtb \
+	rk3506-luckfox-lyra-plus.dtb \
+	rk3506-luckfox-lyra.dtb
diff --git a/arch/arm/boot/dts/rockchip/rk3506-luckfox-lyra-plus.dts b/arch/arm/boot/dts/rockchip/rk3506-luckfox-lyra-plus.dts
new file mode 100644
index 000000000000..c8991f4179bd
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rk3506-luckfox-lyra-plus.dts
@@ -0,0 +1,31 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+#include "rk3506-luckfox-lyra.dtsi"
+
+/ {
+	model = "Luckfox Lyra Plus";
+	compatible = "luckfox,lyra-plus", "rockchip,rk3506";
+
+	aliases {
+		ethernet0 = &gmac1;
+	};
+};
+
+&gmac1 {
+	assigned-clocks = <&cru CLK_MAC1>;
+	assigned-clock-rates = <50000000>;
+	phy-handle = <&rmii_phy1>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&eth_rmii1_miim>, <&eth_rmii1_tx_bus2>,
+		    <&eth_rmii1_rx_bus2>, <&eth_rmii1_clk>;
+	clock_in_out = "output";
+	status = "okay";
+};
+
+&mdio1 {
+	rmii_phy1: ethernet-phy@1 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <1>;
+	};
+};
diff --git a/arch/arm/boot/dts/rockchip/rk3506-luckfox-lyra.dts b/arch/arm/boot/dts/rockchip/rk3506-luckfox-lyra.dts
new file mode 100644
index 000000000000..b7f11c7c510f
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rk3506-luckfox-lyra.dts
@@ -0,0 +1,9 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+#include "rk3506-luckfox-lyra.dtsi"
+
+/ {
+	model = "Luckfox Lyra";
+	compatible = "luckfox,lyra", "rockchip,rk3506";
+};
diff --git a/arch/arm/boot/dts/rockchip/rk3506-luckfox-lyra.dtsi b/arch/arm/boot/dts/rockchip/rk3506-luckfox-lyra.dtsi
new file mode 100644
index 000000000000..d02d3a18b052
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rk3506-luckfox-lyra.dtsi
@@ -0,0 +1,124 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
+#include "rk3506.dtsi"
+
+/ {
+	aliases {
+		mmc0 = &sdmmc;
+		serial0 = &uart0;
+	};
+
+	chosen {
+		stdout-path = "serial0:1500000n8";
+	};
+
+	adc-keys {
+		compatible = "adc-keys";
+		io-channels = <&saradc 1>;
+		io-channel-names = "buttons";
+		keyup-threshold-microvolt = <1800000>;
+		poll-interval = <100>;
+
+		button-recovery {
+			label = "Recovery";
+			press-threshold-microvolt = <0>;
+			linux,code = <KEY_VENDOR>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led-0 {
+			color = <LED_COLOR_ID_RED>;
+			default-state = "on";
+			function = LED_FUNCTION_HEARTBEAT;
+			gpios = <&gpio1 RK_PA0 GPIO_ACTIVE_HIGH>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&led1>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+
+	vcc_1v8: regulator-1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_1v8";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc_3v3>;
+	};
+
+	vcc_3v3: regulator-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_3v3";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc3v3_sd: regulator-3v3-sd {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_sd";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_3v3>;
+	};
+
+	vcc5v0_sys: regulator-5v0-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+};
+
+&fspi {
+	status = "okay";
+
+	flash@0 {
+		compatible = "spi-nand";
+		reg = <0>;
+		bootph-pre-ram;
+		bootph-some-ram;
+		spi-max-frequency = <80000000>;
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <1>;
+	};
+};
+
+&pinctrl {
+	leds {
+		/omit-if-no-ref/
+		led1: led1 {
+			rockchip,pins = <1 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&saradc {
+	vref-supply = <&vcc_1v8>;
+	status = "okay";
+};
+
+&sdmmc {
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	disable-wp;
+	no-sdio;
+	vmmc-supply = <&vcc3v3_sd>;
+	status = "okay";
+};
+
+&uart0 {
+	status = "okay";
+};
-- 
2.56.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
