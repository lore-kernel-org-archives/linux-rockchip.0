Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76A17CDE01A
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Nov 2025 07:38:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OSb7vUOK24Fts/4aHbZ5QsJKdyxVrEDCM+ouyUslYCo=; b=NUPutp/POxnVaf
	FCuyw18mED0VCP1Qj1zbSCo2Sz8PFExr6eUyRuO2kXd9PdcHVz0VFNw+qHSAu7vGvz2/i6dgpDk0x
	f1LjEQYzOhn08wS0fyJY8cNp7uBsnkeWbmSOsjOz3wM9Jax+MJ3WG6h/I/opjK9lWRWSlw5lZ4My/
	0M0nZUfv+WZ+MwomJhTrZ1qpCJ40UgsMytQrQsIo8wvSY0vpmh3lSTx49lioNa/FwYPs8z2SU+254
	LvDucsmDb2ZS3x3cwmKBW82lK0sCeQ6vAA9ujpFIvIwpUR3cXw9s4wbkVu0YHDEeZzhJy4KabHz4W
	NSw8W86GXs046TDQ/aLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJoNf-0000000BlKm-40qt;
	Fri, 14 Nov 2025 07:38:03 +0000
Received: from smtpbguseast2.qq.com ([54.204.34.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJoNc-0000000BlFa-0yh8
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Nov 2025 07:38:02 +0000
X-QQ-mid: zesmtpip4t1763105851ta8bae96b
X-QQ-Originating-IP: y+7dh7KnS88Dl2r9+XFt0Cist0BvQ1cEnDD5WSXPius=
Received: from [IPV6:240f:10b:7440:1:1ea:c5f5: ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 14 Nov 2025 15:37:26 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 17289963365921796477
Message-ID: <D88EE9EEB2B37D36+361d448f-d260-4d78-ae6b-abf1caabb94b@radxa.com>
Date: Fri, 14 Nov 2025 16:37:26 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/3] dt-bindings: arm: rockchip: Add Radxa CM5 IO Board
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com,
 i@next.chainsx.cn, honyuenkwun@gmail.com, quentin.schulz@cherry.de,
 dsimic@manjaro.org, pbrobinson@gmail.com, amadeus@jmu.edu.cn,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251105051335.17652-1-naoki@radxa.com>
 <20251105051335.17652-2-naoki@radxa.com>
 <ce6e6369-a7e4-4a35-80f8-70ef41c3b877@kernel.org>
 <A6C1199E2A0D3F37+f3fe0fd5-4ca5-4d3d-bc1d-45f46b48f89b@radxa.com>
 <93deab54-bd5e-433e-acbc-13f6ead47f43@kernel.org>
 <2177a0f0-68df-495c-b267-18e3d9b6ca80@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <2177a0f0-68df-495c-b267-18e3d9b6ca80@kernel.org>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: ND3CPZxVFFQcdOGYKK4WwQ9E0D+yQdgY2pnki1kz/MuAbYq/Mpf/fsvu
	8u+L55HJWZMHBdmnAtGRav/LBshEnNigsA8gOZbIJD2a2Zanxjm8FYsOGWVnkSkjlzxGpbT
	BHWKKDS33zDrYqMZZiX1d3jECoaVMNJA6r3AWAwFIEFV9DZmlNFTFVW76OM93L2act0m/TP
	FJJxQXN7SrH/nQe3hZ5S1FpnOsIFepF/ixOgcO+nWgnZIcN6SVYl7JzFQWD5tApViGlcwBl
	anHjYyhSupo88mf35Y+cqp5H1X9DMHMJ4aHPWGYgTOKNsxI5I3iiYD5EMBYWTglsbVBSr3F
	dTXOqWLvbSyvjglNCqBt77IzwHdM2V7tyP1T/0svokrHGYkBtXlXU2NFEm0tF4toqxkNPo3
	P+IrZkcjg1dMb83F/Ow3WJLqek6mZ1UO7QJV1w1GrmmyqP4sKVU2fnASN7Md2VNhkTvlMIl
	/RMOWT1EAqqDATvlp4G0l1fObQHxGutckAL991wqdDcyv62NXH/tW0f2NHzPQJyo3pxbeYa
	mXCj4QRuc+GUQN5f+WfMbgB8GQBbK0zbikgjFtYvwUAojWtURQboeEFMBhO2gBcCfdWK0mN
	wT0zMtMRTeeZ5iaN+kF5YPW47dyPKGWOs9qc0xR0rGsGpw1bLmFoNr5A+iiaX9z7+7JjkgV
	RRg/6ujb1NRhR1mkQP2jeZv/orS93/66/Saa9ijZa4LKd5Rn5/Z/+tnVWgEiM3o6FodUlMM
	R5Lb3ftKXg+fliGXmAFjgUxnvnKqm+JI5lsoFUszVama5CDkQnguUp/HKpSf/FU+IyLb31+
	B11Kkerx4C9r3lybAmY2ytXhghKBFKk2u6Y/7AqXZC6G7EFkgt26zlzA85rG+rk88bXODHb
	zExf3m2viYN2dqOTkm0d6oDb0PhJkyj0o7QzqN7lHu78kfbOuUyTjuCOBne5m6apmRu8Y+J
	zw0mytxwS+3L1I2/dH+RzjweMki0UKu/PW1VAl2L2Ck0MjrhFSe6aWOzB
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_233800_921704_0ACA53AA 
X-CRM114-Status: GOOD (  15.70  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Krzysztof,

On 11/14/25 16:12, Krzysztof Kozlowski wrote:
> On 05/11/2025 08:08, Krzysztof Kozlowski wrote:
>> On 05/11/2025 07:57, FUKAUMI Naoki wrote:
>>> On 11/5/25 15:43, Krzysztof Kozlowski wrote:
>>>> On 05/11/2025 06:13, FUKAUMI Naoki wrote:
>>>>> Add device tree binding documentation for the Radxa CM5 IO Board.
>>>>>
>>>>> Link: https://dl.radxa.com/cm5/radxa_cm5_product_brief.pdf
>>>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>>>>> Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
>>>>
>>>> Wrong DCO chain.
>>>>
>>>>> ---
>>>>>    Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
>>>>
>>>> NAK, you just stolen ownership of an already posted patch.
>>>
>>> Read "Changes in v6" and patches; my patches are not the same as v5.
>>> Your reply is totally inappropriate.
>>
>> Inappropriate is taking authorship of someone's patch, because we all
>> expect to preserve the original authorship. That's not only basic
>> decency but actually a standard.
>>
>> Additionally, read Joseph's reply that he wants to continue the work:
>> https://lore.kernel.org/all/CAMWSM7iHtAxewW4JkRqRsifVnccqeFviaCgeOyprKDr92FOurg@mail.gmail.com/
>>
>> You clearly do not understand how to continue with someone's work.
>>
>> It is still a NAK.
> 
> And I still wait for justification why you took authorship of this
> patch, because to my eye you changed here nothing.
> 
> So what did you change HERE that you think you are the author now?

Changes in v6:
(Patch 1/3)
- Fix description; "Radxa CM5" is the correct name
(Patch 2/3)
- Fix #include(s)
- Include rk3588s.dtsi
- Move alias for gmac1 from io board dts
- Add Maskrom key
- Add pinctrl-* for led-0
- Add vcc_1v1_nldo_s3 regulator for pmic
- Move gmac1 (except status) from io board dts
- Fix phy-supply for gmac1
- Fix compatible for vdd_cpu_big1_s0 regulator
- Add eeprom on i2c0
- Add vdd_npu_s0 regulator for rknn
- Fix compatible for rgmii_phy1
- Add pinctrl-* and reset-* for rgmii_phy1
- Add domain-supply for pd_npu
- Add rknn_*
- Add saradc
- Fix properties in sdhci
- Move pmic from io board dts
- Fix vcc*-supply for pmic
- Add regulators in pmic
- Add tsadc
- Move vop(_mmu) from io board dts
- Trivial changes (labels, names, etc)
(Patch 3/3)
- Fix #include(s)
- Remove #include "rk3588s.dtsi"
- Fix model
- Add fan
- Add Recovery key
- Add pinctrl-* for vcc3v3_wf
- Add vcc_sysin regulator
- Add pinctrl-* for vbus5v0_typec
- Add rfkill-bt and rfkill-wlan for M.2 module
- Add sound for es8316
- Add phy-supply for combphy2_psu
- Fix power-role to "source" for fusb302
- Add rtc for hym8536
- Add audio-codec on i2c8 for es8316
- Add i2s0_8ch for es8316
- Add package_thermal for fan
- Add pinctrl-* for pcie2x1l2
- Add pwm11 for fan
- Fix properties in sdmmmc
- Add phy-supply for u2phy2_host and u2phy3_host
- Remove usb_host0_ohci
- Add pinctrl-* for usbdp_phy0
- Trivial changes (labels, names, etc)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml 
b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 4fb6b0e7851f9..f38bbb233bd2a 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -880,13 +880,6 @@ properties:
            - const: radxa,cm3
            - const: rockchip,rk3566

-      - description: Radxa Compute Module 5 (CM5)
-        items:
-          - enum:
-              - radxa,cm5-io
-          - const: radxa,cm5
-          - const: rockchip,rk3588s
-
        - description: Radxa CM3 Industrial
          items:
            - enum:
@@ -894,6 +887,13 @@ properties:
            - const: radxa,cm3i
            - const: rockchip,rk3568

+      - description: Radxa CM5
+        items:
+          - enum:
+              - radxa,cm5-io
+          - const: radxa,cm5
+          - const: rockchip,rk3588s
+
        - description: Radxa E20C
          items:
            - const: radxa,e20c
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5-io.dts 
b/arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5-io.dts
index 18e11a9c7f037..12fa8ba83212a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5-io.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5-io.dts
@@ -1,23 +1,28 @@
  // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
  /*
+ * Copyright (c) 2025 Radxa Computer (Shenzhen) Co., Ltd.
   * Copyright (c) 2025 Joseph Kogut <joseph.kogut@gmail.com>
   */

  /*
- * CM5 IO board data sheet
- * https://dl.radxa.com/cm5/v2200/radxa_cm5_io_v2200_schematic.pdf
+ * CM5 IO Board schematic
+ * 
https://dl.radxa.com/cm5/io_board_v2200/radxa_cm5_io_board_v2200_schematic.pdf
   */

  /dts-v1/;
-#include "rk3588s.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/pwm/pwm.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
+#include <dt-bindings/usb/pd.h>
  #include "rk3588s-radxa-cm5.dtsi"

  / {
-	model = "Radxa Compute Module 5 (CM5) IO Board";
+	model = "Radxa CM5 IO Board";
  	compatible = "radxa,cm5-io", "radxa,cm5", "rockchip,rk3588s";

  	aliases {
-		ethernet0 = &gmac1;
  		mmc1 = &sdmmc;
  	};

@@ -25,18 +30,40 @@ chosen {
  		stdout-path = "serial2:1500000n8";
  	};

-	hdmi-con {
+	fan: fan {
+		compatible = "pwm-fan";
+		#cooling-cells = <2>;
+		cooling-levels = <0 64 128 192 255>;
+		fan-supply = <&vcc5v0_sys>;
+		pwms = <&pwm11 0 60000 0>;
+	};
+
+	hdmi0-con {
  		compatible = "hdmi-connector";
  		type = "a";

  		port {
-			hdmi_con_in: endpoint {
+			hdmi0_con_in: endpoint {
  				remote-endpoint = <&hdmi0_out_con>;
  			};
  		};
  	};

-	vcc12v_dcin: regulator-12v0-vcc-dcin {
+	keys-1 {
+		compatible = "adc-keys";
+		io-channels = <&saradc 1>;
+		io-channel-names = "buttons";
+		keyup-threshold-microvolt = <1800000>;
+		poll-interval = <100>;
+
+		button-1 {
+			label = "Recovery";
+			linux,code = <KEY_VENDOR>;
+			press-threshold-microvolt = <0>;
+		};
+	};
+
+	vcc12v_dcin: regulator-12v0 {
  		compatible = "regulator-fixed";
  		regulator-name = "vcc12v_dcin";
  		regulator-always-on;
@@ -45,21 +72,29 @@ vcc12v_dcin: regulator-12v0-vcc-dcin {
  		regulator-max-microvolt = <12000000>;
  	};

-	vcc5v0_host: vcc5v0-host-regulator {
+	vcc3v3_wf: regulator-3v3 {
  		compatible = "regulator-fixed";
-		regulator-name = "vcc5v0_host";
-		regulator-boot-on;
-		regulator-always-on;
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
  		enable-active-high;
-		gpio = <&gpio1 RK_PA0 GPIO_ACTIVE_HIGH>;
+		gpio = <&gpio1 RK_PD3 GPIO_ACTIVE_HIGH>;
  		pinctrl-names = "default";
-		pinctrl-0 = <&vcc5v0_host_en>;
+		pinctrl-0 = <&wifi_pwr_en>;
+		regulator-name = "vcc3v3_wf";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc_sysin: regulator-4v0 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_sysin";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <4000000>;
+		regulator-max-microvolt = <4000000>;
  		vin-supply = <&vcc5v0_sys>;
  	};

-	vcc5v0_sys: regulator-5v0-sys {
+	vcc5v0_sys: vcc5v0_usb: regulator-5v0-0 {
  		compatible = "regulator-fixed";
  		regulator-name = "vcc5v0_sys";
  		regulator-always-on;
@@ -69,43 +104,55 @@ vcc5v0_sys: regulator-5v0-sys {
  		vin-supply = <&vcc12v_dcin>;
  	};

-	vbus5v0_typec: vbus5v0-typec {
+	vcc5v0_usb1: regulator-5v0-1 {
  		compatible = "regulator-fixed";
-		regulator-name = "vbus5v0_typec";
-		gpio = <&gpio0 RK_PD5 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&vbus5v0_typec_en>;
  		enable-active-high;
+		gpio = <&gpio1 RK_PA0 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usb_host_pwren_h>;
+		regulator-name = "vcc5v0_usb1";
  		regulator-min-microvolt = <5000000>;
  		regulator-max-microvolt = <5000000>;
-		vin-supply = <&vcc5v0_sys>;
+		vin-supply = <&vcc5v0_usb>;
  	};

-	vcc3v3_pcie: regulator-3v3-vcc-pcie {
+	vbus5v0_typec: regulator-5v0-2 {
  		compatible = "regulator-fixed";
-		regulator-name = "vcc3v3_pcie2x1l0";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
  		enable-active-high;
-		regulator-boot-on;
-		regulator-always-on;
-		gpios = <&gpio1 RK_PD3 GPIO_ACTIVE_HIGH>;
-		startup-delay-us = <50000>;
+		gpio = <&gpio0 RK_PD5 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&typec5v_pwren_h>;
+		regulator-name = "vbus5v0_typec";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
  		vin-supply = <&vcc5v0_sys>;
  	};

-	vcc_3v3_s0: pldo-reg4 {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc_3v3_s0";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		regulator-ramp-delay = <12500>;
+	rfkill-bt {
+		compatible = "rfkill-gpio";
+		pinctrl-names = "default";
+		pinctrl-0 = <&host_wake_bt_h>;
+		radio-type = "bluetooth";
+		shutdown-gpios = <&gpio0 RK_PC6 GPIO_ACTIVE_HIGH>;
+	};

-		regulator-state-mem {
-			regulator-off-in-suspend;
-		};
+	rfkill-wlan {
+		compatible = "rfkill-gpio";
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_reg_on_h>;
+		radio-type = "wlan";
+		shutdown-gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
+	};
+
+	sound {
+		compatible = "audio-graph-card";
+		label = "rk3588-es8316";
+		dais = <&i2s0_8ch_p0>;
+		routing = "MIC2", "Mic Jack",
+			  "Headphones", "HPOL",
+			  "Headphones", "HPOR";
+		widgets = "Microphone", "Mic Jack",
+			  "Headphone", "Headphones";
  	};
  };

@@ -114,21 +161,11 @@ &combphy0_ps {
  };

  &combphy2_psu {
+	phy-supply = <&vcc5v0_usb1>;
  	status = "okay";
  };

  &gmac1 {
-	clock_in_out = "output";
-	phy-handle = <&rgmii_phy1>;
-	phy-mode = "rgmii-id";
-	phy-supply = <&vcc_3v3_s0>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&gmac1_miim
-		     &gmac1_tx_bus2
-		     &gmac1_rx_bus2
-		     &gmac1_rgmii_clk
-		     &gmac1_rgmii_bus
-		     &gmac1_clkinout>;
  	status = "okay";
  };

@@ -144,7 +181,7 @@ hdmi0_in_vp0: endpoint {

  &hdmi0_out {
  	hdmi0_out_con: endpoint {
-		remote-endpoint = <&hdmi_con_in>;
+		remote-endpoint = <&hdmi0_con_in>;
  	};
  };

@@ -161,24 +198,24 @@ &i2c6 {
  	pinctrl-0 = <&i2c6m3_xfer>;
  	status = "okay";

-	fusb302: usb-typec@22 {
+	usb-typec@22 {
  		compatible = "fcs,fusb302";
  		reg = <0x22>;
  		interrupt-parent = <&gpio0>;
  		interrupts = <RK_PC4 IRQ_TYPE_LEVEL_LOW>;
  		pinctrl-names = "default";
-		pinctrl-0 = <&usbc0_int>;
+		pinctrl-0 = <&cc_int0_l>;
  		vbus-supply = <&vbus5v0_typec>;

  		connector {
  			compatible = "usb-c-connector";
  			data-role = "dual";
  			label = "USB-C";
-			power-role = "dual";
-			try-power-role = "sink";
-			source-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
-			sink-pdos = <PDO_FIXED(5000, 1000, PDO_FIXED_USB_COMM)>;
-			op-sink-microwatt = <1000000>;
+			/* fusb302 supports PD Rev 2.0 Ver 1.2 */
+			pd-revision = /bits/ 8 <0x2 0x0 0x1 0x2>;
+			power-role = "source";
+			source-pdos =
+				<PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;

  			ports {
  				#address-cells = <1>;
@@ -186,205 +223,194 @@ ports {

  				port@0 {
  					reg = <0>;
-					usbc0_orientation_switch: endpoint {
-						remote-endpoint = <&usbdp_phy0_orientation_switch>;
+
+					usbc0_hs: endpoint {
+						remote-endpoint = <&usb_host0_xhci_to_usbc0>;
  					};
  				};

  				port@1 {
  					reg = <1>;
-					usbc0_role_switch: endpoint {
-						remote-endpoint = <&usb_host0_xhci_role_switch>;
+
+					usbc0_ss: endpoint {
+						remote-endpoint = <&usbdp_phy0_ss>;
  					};
  				};

  				port@2 {
  					reg = <2>;
-					usbc0_dp_altmode_mux: endpoint {
-						remote-endpoint = <&usbdp_phy0_dp_altmode_mux>;
+
+					usbc0_sbu: endpoint {
+						remote-endpoint = <&usbdp_phy0_sbu>;
  					};
  				};
  			};
  		};
  	};
-};

-&i2s5_8ch {
-	status = "okay";
+	rtc@51 {
+		compatible = "haoyu,hym8563";
+		reg = <0x51>;
+		#clock-cells = <0>;
+		clock-output-names = "rtc_32k_in";
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&rtc_int_l>;
+		wakeup-source;
+	};
  };

-&pcie2x1l2 {
-	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
-	vpcie3v3-supply = <&vcc3v3_pcie>;
+&i2c8 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c8m2_xfer>;
  	status = "okay";
-};

-&pinctrl {
-	fusb302 {
-		vbus5v0_typec_en: vbus5v0-typec-en {
-			rockchip,pins = <0 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
+	audio-codec@11 {
+		compatible = "everest,es8316";
+		reg = <0x11>;
+		assigned-clocks = <&cru I2S0_8CH_MCLKOUT>;
+		assigned-clock-rates = <12288000>;
+		clocks = <&cru I2S0_8CH_MCLKOUT>;
+		clock-names = "mclk";
+		#sound-dai-cells = <0>;

-		usbc0_int: usbc0-int {
-			rockchip,pins = <0 RK_PC4 RK_FUNC_GPIO &pcfg_pull_up>;
+		port {
+			es8316_p0_0: endpoint {
+				remote-endpoint = <&i2s0_8ch_p0_0>;
+			};
  		};
  	};
+};

-	usb {
-		vcc5v0_host_en: vcc5v0-host-en {
-			rockchip,pins = <1 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
+&i2s0_8ch {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2s0_lrck
+		     &i2s0_mclk
+		     &i2s0_sclk
+		     &i2s0_sdi0
+		     &i2s0_sdo0>;
+	status = "okay";
+
+	i2s0_8ch_p0: port {
+		i2s0_8ch_p0_0: endpoint {
+			dai-format = "i2s";
+			mclk-fs = <256>;
+			remote-endpoint = <&es8316_p0_0>;
  		};
  	};
  };

-&sdmmc {
-	bus-width = <4>;
-	cap-mmc-highspeed;
-	cap-sd-highspeed;
-	disable-wp;
-	max-frequency = <200000000>;
-	no-sdio;
-	no-mmc;
-	sd-uhs-sdr104;
-	pinctrl-names = "default";
-	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd &sdmmc_det>;
-	vmmc-supply = <&vcc_3v3_s3>;
-	vqmmc-supply = <&vccio_sd_s0>;
+&i2s5_8ch {
  	status = "okay";
  };

-&spi2 {
-	assigned-clocks = <&cru CLK_SPI2>;
-	assigned-clock-rates = <200000000>;
-	num-cs = <1>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&spi2m2_cs0 &spi2m2_pins>;
-	status = "okay";
+&package_thermal {
+	polling-delay = <1000>;

-	pmic@0 {
-		compatible = "rockchip,rk806";
-		reg = <0x0>;
-		interrupt-parent = <&gpio0>;
-		interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pmic_pins>, <&rk806_dvs1_null>,
-			    <&rk806_dvs2_null>, <&rk806_dvs3_null>;
-		spi-max-frequency = <1000000>;
-		system-power-controller;
-
-		vcc1-supply = <&vcc5v0_sys>;
-		vcc2-supply = <&vcc5v0_sys>;
-		vcc3-supply = <&vcc5v0_sys>;
-		vcc4-supply = <&vcc5v0_sys>;
-		vcc5-supply = <&vcc5v0_sys>;
-		vcc6-supply = <&vcc5v0_sys>;
-		vcc7-supply = <&vcc5v0_sys>;
-		vcc8-supply = <&vcc5v0_sys>;
-		vcc9-supply = <&vcc5v0_sys>;
-		vcc10-supply = <&vcc5v0_sys>;
-		vcc11-supply = <&vcc_2v0_pldo_s3>;
-		vcc12-supply = <&vcc5v0_sys>;
-		vcc13-supply = <&vdd2_ddr_s3>;
-		vcc14-supply = <&vdd2_ddr_s3>;
-		vcca-supply = <&vcc5v0_sys>;
-
-		gpio-controller;
-		#gpio-cells = <2>;
-
-		rk806_dvs1_null: dvs1-null-pins {
-			pins = "gpio_pwrctrl1";
-			function = "pin_fun0";
+	trips {
+		package_fan0: package-fan0 {
+			hysteresis = <2000>;
+			temperature = <55000>;
+			type = "active";
  		};

-		rk806_dvs2_null: dvs2-null-pins {
-			pins = "gpio_pwrctrl2";
-			function = "pin_fun0";
+		package_fan1: package-fan1 {
+			hysteresis = <2000>;
+			temperature = <65000>;
+			type = "active";
  		};
+	};

-		rk806_dvs3_null: dvs3-null-pins {
-			pins = "gpio_pwrctrl3";
-			function = "pin_fun0";
+	cooling-maps {
+		map0 {
+			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
+			trip = <&package_fan0>;
  		};

-		regulators {
-			vdd_gpu_s0: dcdc-reg1 {
-				regulator-name = "vdd_gpu_s0";
-				regulator-boot-on;
-				regulator-enable-ramp-delay = <400>;
-				regulator-min-microvolt = <550000>;
-				regulator-max-microvolt = <950000>;
-				regulator-ramp-delay = <12500>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
+		map1 {
+			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
+			trip = <&package_fan1>;
+		};
+	};
+};

-			vdd_cpu_lit_s0: dcdc-reg2 {
-				regulator-name = "vdd_cpu_lit_s0";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <550000>;
-				regulator-max-microvolt = <950000>;
-				regulator-ramp-delay = <12500>;
+&pcie2x1l2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie20x1_2_perstn_m0>;
+	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_wf>;
+	status = "okay";
+};

-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
+&pinctrl {
+	pcie {
+		pcie20x1_2_perstn_m0: pcie20x1-2-perstn-m0 {
+			rockchip,pins = <3 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};

-			vccio_sd_s0: pldo-reg5 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-name = "vccio_sd_s0";
+		wifi_pwr_en: wifi-pwr-en {
+			rockchip,pins = <1 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};

-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
+	rfkill {
+		bt_reg_on_h: bt-reg-on-h {
+			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_pull_down>;
+		};

-			vdd2_ddr_s3: dcdc-reg6 {
-				regulator-name = "vdd2_ddr_s3";
-				regulator-always-on;
-				regulator-boot-on;
+		host_wake_bt_h: host-wake-bt-h {
+			rockchip,pins = <0 RK_PC6 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};

-				regulator-state-mem {
-					regulator-on-in-suspend;
-				};
-			};
+	rtc {
+		rtc_int_l: rtc-int-l {
+			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};

-			vcc_2v0_pldo_s3: dcdc-reg7 {
-				regulator-name = "vdd_2v0_pldo_s3";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <2000000>;
-				regulator-max-microvolt = <2000000>;
-				regulator-ramp-delay = <12500>;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <2000000>;
-				};
-			};
+	usb {
+		cc_int0_l: cc-int0-l {
+			rockchip,pins = <0 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		usb_host_pwren_h: usb-host-pwren-h {
+			rockchip,pins = <1 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};

-			vcc_3v3_s3: dcdc-reg8 {
-				regulator-name = "vcc_3v3_s3";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
+		usbc_sbu_dc: usbc-sbu-dc {
+			rockchip,pins = <3 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>,
+					<3 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};

-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <3300000>;
-				};
-			};
+		typec5v_pwren_h: typec5v-pwren-h {
+			rockchip,pins = <0 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
  		};
  	};
  };

+&pwm11 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm11m3_pins>;
+	status = "okay";
+};
+
+&sdmmc {
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
+	disable-wp;
+	no-sdio;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd>;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc_3v3_s3>;
+	vqmmc-supply = <&vccio_sd_s0>;
+	status = "okay";
+};
+
  &u2phy0 {
  	status = "okay";
  };
@@ -398,6 +424,7 @@ &u2phy2 {
  };

  &u2phy2_host {
+	phy-supply = <&vcc5v0_usb1>;
  	status = "okay";
  };

@@ -406,6 +433,7 @@ &u2phy3 {
  };

  &u2phy3_host {
+	phy-supply = <&vcc5v0_usb1>;
  	status = "okay";
  };

@@ -419,18 +447,13 @@ &usb_host0_ehci {
  	status = "okay";
  };

-&usb_host0_ohci {
-	status = "okay";
-};
-
  &usb_host0_xhci {
-	dr_mode = "otg";
  	usb-role-switch;
  	status = "okay";

  	port {
-		usb_host0_xhci_role_switch: endpoint {
-			remote-endpoint = <&usbc0_role_switch>;
+		usb_host0_xhci_to_usbc0: endpoint {
+			remote-endpoint = <&usbc0_hs>;
  		};
  	};
  };
@@ -450,6 +473,8 @@ &usb_host2_xhci {
  &usbdp_phy0 {
  	mode-switch;
  	orientation-switch;
+	pinctrl-names = "default";
+	pinctrl-0 = <&usbc_sbu_dc>;
  	sbu1-dc-gpios = <&gpio3 RK_PC4 GPIO_ACTIVE_HIGH>;
  	sbu2-dc-gpios = <&gpio3 RK_PD4 GPIO_ACTIVE_HIGH>;
  	status = "okay";
@@ -458,26 +483,18 @@ port {
  		#address-cells = <1>;
  		#size-cells = <0>;

-		usbdp_phy0_orientation_switch: endpoint@0 {
+		usbdp_phy0_ss: endpoint@0 {
  			reg = <0>;
-			remote-endpoint = <&usbc0_orientation_switch>;
+			remote-endpoint = <&usbc0_ss>;
  		};

-		usbdp_phy0_dp_altmode_mux: endpoint@1 {
+		usbdp_phy0_sbu: endpoint@1 {
  			reg = <1>;
-			remote-endpoint = <&usbc0_dp_altmode_mux>;
+			remote-endpoint = <&usbc0_sbu>;
  		};
  	};
  };

-&vop {
-	status = "okay";
-};
-
-&vop_mmu {
-	status = "okay";
-};
-
  &vp0 {
  	vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
  		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi 
b/arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi
index 6410ea5255dc7..f2da73126c1fe 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi
@@ -1,36 +1,67 @@
  // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
  /*
+ * Copyright (c) 2025 Radxa Computer (Shenzhen) Co., Ltd.
   * Copyright (c) 2025 Joseph Kogut <joseph.kogut@gmail.com>
   */

  /*
- * CM5 data sheet
+ * CM5 schematic
   * https://dl.radxa.com/cm5/v2210/radxa_cm5_v2210_schematic.pdf
   */

+/dts-v1/;
+
  #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
  #include <dt-bindings/leds/common.h>
-#include <dt-bindings/soc/rockchip,vop2.h>
-#include <dt-bindings/usb/pd.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include "rk3588s.dtsi"

  / {
  	compatible = "radxa,cm5", "rockchip,rk3588s";

  	aliases {
+		ethernet0 = &gmac1;
  		mmc0 = &sdhci;
  	};

-	leds {
+	keys-0 {
+		compatible = "adc-keys";
+		io-channels = <&saradc 0>;
+		io-channel-names = "buttons";
+		keyup-threshold-microvolt = <1800000>;
+		poll-interval = <100>;
+
+		button-0 {
+			label = "Maskrom";
+			linux,code = <KEY_SETUP>;
+			press-threshold-microvolt = <0>;
+		};
+	};
+
+	leds-0 {
  		compatible = "gpio-leds";

-		led_sys: led-0 {
+		led-0 {
  			color = <LED_COLOR_ID_BLUE>;
  			default-state = "on";
-			function = LED_FUNCTION_HEARTBEAT;
+			function = LED_FUNCTION_STATUS;
  			gpios = <&gpio4 RK_PB4 GPIO_ACTIVE_HIGH>;
  			linux,default-trigger = "heartbeat";
+			pinctrl-names = "default";
+			pinctrl-0 = <&gpio4_b4>;
  		};
  	};
+
+	vcc_1v1_nldo_s3: regulator-1v1 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_1v1_nldo_s3";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1100000>;
+		regulator-max-microvolt = <1100000>;
+		vin-supply = <&vcc_sysin>;
+	};
  };

  &cpu_b0 {
@@ -65,6 +96,20 @@ &cpu_l3 {
  	cpu-supply = <&vdd_cpu_lit_s0>;
  };

+&gmac1 {
+	clock_in_out = "output";
+	phy-handle = <&rgmii_phy1>;
+	phy-mode = "rgmii-id";
+	phy-supply = <&vcc_3v3_s3>;
+	pinctrl-0 = <&gmac1_miim
+		     &gmac1_tx_bus2
+		     &gmac1_rx_bus2
+		     &gmac1_rgmii_clk
+		     &gmac1_rgmii_bus
+		     &gmac1_clkinout>;
+	pinctrl-names = "default";
+};
+
  &gpu {
  	mali-supply = <&vdd_gpu_s0>;
  	status = "okay";
@@ -85,7 +130,7 @@ vdd_cpu_big0_s0: regulator@42 {
  		regulator-min-microvolt = <550000>;
  		regulator-max-microvolt = <1050000>;
  		regulator-ramp-delay = <2300>;
-		vin-supply = <&vcc5v0_sys>;
+		vin-supply = <&vcc_sysin>;

  		regulator-state-mem {
  			regulator-off-in-suspend;
@@ -93,7 +138,7 @@ regulator-state-mem {
  	};

  	vdd_cpu_big1_s0: regulator@43 {
-		compatible = "rockchip,rk8602";
+		compatible = "rockchip,rk8603", "rockchip,rk8602";
  		reg = <0x43>;
  		fcs,suspend-voltage-selector = <1>;
  		regulator-name = "vdd_cpu_big1_s0";
@@ -102,7 +147,36 @@ vdd_cpu_big1_s0: regulator@43 {
  		regulator-min-microvolt = <550000>;
  		regulator-max-microvolt = <1050000>;
  		regulator-ramp-delay = <2300>;
-		vin-supply = <&vcc5v0_sys>;
+		vin-supply = <&vcc_sysin>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+
+	eeprom@50 {
+		compatible = "belling,bl24c16a", "atmel,24c16";
+		reg = <0x50>;
+		pagesize = <16>;
+		read-only;
+		vcc-supply = <&vcc_3v3_s3>;
+	};
+};
+
+&i2c2 {
+	status = "okay";
+
+	vdd_npu_s0: regulator@42 {
+		compatible = "rockchip,rk8602";
+		reg = <0x42>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-name = "vdd_npu_s0";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <550000>;
+		regulator-max-microvolt = <950000>;
+		regulator-ramp-delay = <2300>;
+		vin-supply = <&vcc_sysin>;

  		regulator-state-mem {
  			regulator-off-in-suspend;
@@ -111,9 +185,14 @@ regulator-state-mem {
  };

  &mdio1 {
-	rgmii_phy1: phy@1 {
-		compatible = "ethernet-phy-ieee802.3-c22";
-		reg = <0x1>;
+	rgmii_phy1: ethernet-phy@1 {
+		compatible = "ethernet-phy-id001c.c916";
+		reg = <1>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&gmac1_rstn>;
+		reset-assert-us = <20000>;
+		reset-deassert-us = <100000>;
+		reset-gpios = <&gpio3 RK_PB2 GPIO_ACTIVE_LOW>;
  	};
  };

@@ -121,15 +200,403 @@ &pd_gpu {
  	domain-supply = <&vdd_gpu_s0>;
  };

+&pd_npu {
+	domain-supply = <&vdd_npu_s0>;
+};
+
+&pinctrl {
+	ethernet {
+		gmac1_rstn: gmac1-rstn {
+			rockchip,pins = <3 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	leds {
+		gpio4_b4: gpio4-b4 {
+			rockchip,pins = <4 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&rknn_core_0 {
+	npu-supply = <&vdd_npu_s0>;
+	sram-supply = <&vdd_npu_s0>;
+	status = "okay";
+};
+
+&rknn_core_1 {
+	npu-supply = <&vdd_npu_s0>;
+	sram-supply = <&vdd_npu_s0>;
+	status = "okay";
+};
+
+&rknn_core_2 {
+	npu-supply = <&vdd_npu_s0>;
+	sram-supply = <&vdd_npu_s0>;
+	status = "okay";
+};
+
+&rknn_mmu_0 {
+	status = "okay";
+};
+
+&rknn_mmu_1 {
+	status = "okay";
+};
+
+&rknn_mmu_2 {
+	status = "okay";
+};
+
+&saradc {
+	vref-supply = <&vcca_1v8_s0>;
+	status = "okay";
+};
+
  &sdhci {
  	bus-width = <8>;
-	no-sdio;
-	no-sd;
-	non-removable;
-	max-frequency = <200000000>;
+	cap-mmc-highspeed;
  	mmc-hs400-1_8v;
  	mmc-hs400-enhanced-strobe;
-	mmc-hs200-1_8v;
+	no-sd;
+	no-sdio;
+	non-removable;
+	vmmc-supply = <&vcc_3v3_s3>;
+	vqmmc-supply = <&vcc_1v8_s3>;
+	status = "okay";
+};
+
+&spi2 {
+	assigned-clocks = <&cru CLK_SPI2>;
+	assigned-clock-rates = <200000000>;
+	num-cs = <1>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi2m2_cs0 &spi2m2_pins>;
+	status = "okay";
+
+	pmic@0 {
+		compatible = "rockchip,rk806";
+		reg = <0>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_pins>, <&rk806_dvs1_null>,
+			    <&rk806_dvs2_null>, <&rk806_dvs3_null>;
+		spi-max-frequency = <1000000>;
+		system-power-controller;
+
+		vcc1-supply = <&vcc_sysin>;
+		vcc2-supply = <&vcc_sysin>;
+		vcc3-supply = <&vcc_sysin>;
+		vcc4-supply = <&vcc_sysin>;
+		vcc5-supply = <&vcc_sysin>;
+		vcc6-supply = <&vcc_sysin>;
+		vcc7-supply = <&vcc_sysin>;
+		vcc8-supply = <&vcc_sysin>;
+		vcc9-supply = <&vcc_sysin>;
+		vcc10-supply = <&vcc_sysin>;
+		vcc11-supply = <&vcc_2v0_pldo_s3>;
+		vcc12-supply = <&vcc_sysin>;
+		vcc13-supply = <&vcc_1v1_nldo_s3>;
+		vcc14-supply = <&vcc_1v1_nldo_s3>;
+		vcca-supply = <&vcc_sysin>;
+
+		rk806_dvs1_null: dvs1-null-pins {
+			pins = "gpio_pwrctrl1";
+			function = "pin_fun0";
+		};
+
+		rk806_dvs2_null: dvs2-null-pins {
+			pins = "gpio_pwrctrl2";
+			function = "pin_fun0";
+		};
+
+		rk806_dvs3_null: dvs3-null-pins {
+			pins = "gpio_pwrctrl3";
+			function = "pin_fun0";
+		};
+
+		regulators {
+			vdd_gpu_s0: dcdc-reg1 {
+				regulator-name = "vdd_gpu_s0";
+				regulator-boot-on;
+				regulator-min-microvolt = <550000>;
+				regulator-max-microvolt = <950000>;
+				regulator-ramp-delay = <12500>;
+				regulator-enable-ramp-delay = <400>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_cpu_lit_s0: dcdc-reg2 {
+				regulator-name = "vdd_cpu_lit_s0";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <550000>;
+				regulator-max-microvolt = <950000>;
+				regulator-ramp-delay = <12500>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_logic_s0: dcdc-reg3 {
+				regulator-name = "vdd_logic_s0";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <675000>;
+				regulator-max-microvolt = <800000>;
+				regulator-ramp-delay = <12500>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <750000>;
+				};
+			};
+
+			vdd_vdenc_s0: dcdc-reg4 {
+				regulator-name = "vdd_vdenc_s0";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <550000>;
+				regulator-max-microvolt = <950000>;
+				regulator-ramp-delay = <12500>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_ddr_s0: dcdc-reg5 {
+				regulator-name = "vdd_ddr_s0";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <675000>;
+				regulator-max-microvolt = <900000>;
+				regulator-ramp-delay = <12500>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <850000>;
+				};
+			};
+
+			vdd2_ddr_s3: dcdc-reg6 {
+				regulator-name = "vdd2_ddr_s3";
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vcc_2v0_pldo_s3: dcdc-reg7 {
+				regulator-name = "vcc_2v0_pldo_s3";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <2000000>;
+				regulator-max-microvolt = <2000000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <2000000>;
+				};
+			};
+
+			vcc_3v3_s0: vcc_3v3_s3: dcdc-reg8 {
+				regulator-name = "vcc_3v3_s3";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vddq_ddr_s0: dcdc-reg9 {
+				regulator-name = "vddq_ddr_s0";
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_1v8_s3: dcdc-reg10 {
+				regulator-name = "vcc_1v8_s3";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vcc_1v8_s0: pldo-reg1 {
+				regulator-name = "vcc_1v8_s0";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vcca_1v8_s0: pldo-reg2 {
+				regulator-name = "vcca_1v8_s0";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vdda_1v2_s0: pldo-reg3 {
+				regulator-name = "vdda_1v2_s0";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1200000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcca_3v3_s0: pldo-reg4 {
+				regulator-name = "vcca_3v3_s0";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vccio_sd_s0: pldo-reg5 {
+				regulator-name = "vccio_sd_s0";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			pldo-reg6 {
+				regulator-name = "pldo_reg6";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vdd_0v75_s3: nldo-reg1 {
+				regulator-name = "vdd_0v75_s3";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <750000>;
+				regulator-max-microvolt = <750000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <750000>;
+				};
+			};
+
+			vdda_ddr_pll_s0: nldo-reg2 {
+				regulator-name = "vdda_ddr_pll_s0";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <850000>;
+				regulator-max-microvolt = <850000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <850000>;
+				};
+			};
+
+			vdda_0v75_s0: nldo-reg3 {
+				regulator-name = "vdda_0v75_s0";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <837500>;
+				regulator-max-microvolt = <837500>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <750000>;
+				};
+			};
+
+			vdda_0v85_s0: nldo-reg4 {
+				regulator-name = "vdda_0v85_s0";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <850000>;
+				regulator-max-microvolt = <850000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			hdmi_vdda0v85_s0: nldo-reg5 {
+				regulator-name = "hdmi_vdda0v85_s0";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <837500>;
+				regulator-max-microvolt = <837500>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+		};
+	};
+};
+
+&tsadc {
+	rockchip,hw-tshut-mode = <1>; /* tshut mode 0:CRU 1:GPIO */
+	rockchip,hw-tshut-polarity = <0>; /* tshut polarity 0:LOW 1:HIGH */
+	status = "okay";
+};
+
+&vop {
  	status = "okay";
  };

+&vop_mmu {
+	status = "okay";
+};

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Best regards,
> Krzysztof
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
