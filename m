Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0026560A260A
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2026 23:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=EbQXmwfU;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=fejOcUmL
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=npLkAe0o+Xq5LeZfUr/KFtkSLddNIEEwf75rtQ/5abM=; b=EbQXmwfUtyV0NDJkm9ld1nH0AO
	ol4rUhH1wxzNLmv6nomp8we0M3+Obb27U9+MbHPluDHPoHK5ijoU3pNXYs/Sryi8SbGuwoYyMuo35
	5jMC80hukgok4wOR1N0qvhufd00foseIOIHQ3vNOnTfEdg2zI54XStcwueF93xpplYKrgQYPk8SRN
	uyuZJyOyjZPWJIIVJKjaEFFNty2tqDvWP1zPxqaiIRtXfe8z22c+Vxy2T0bh4h0Gjr3CgYNb7uP7r
	BGOnRtwC2qw/Hn3thWVSx17yKGR65vpCYFFetU19qg0gpR3ZD/LTki+af/ckYrpKgLOcQzauFKLaV
	iB8RELqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTp6i-0000000AUGX-48e8;
	Wed, 18 Nov 2026 23:30:28 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTp6c-0000000AUBL-0pjg
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Nov 2026 23:30:23 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-c445c95d553so228632966b.1
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Nov 2026 15:30:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795044620; x=1795649420; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=D4kvXPXjJrJfC4xPYDD6GGUwfPJQ0tfGxICatFpEaO4=;
        b=fejOcUmL91zdrid8UstUEt5mT3l2QgrCaAmflJZyQkJoVCXBHk3xsCZmYQ0Khj33CZ
         neWdjlHkt6sBHaoE6y+G0XGulj5sFJ+JKpdYRtqKZJ7qEkSz4bQh5YnZsl6Ew7DufcsM
         UYoBT77AsKr6xILFqrQ3P5Afn4zGmeV/rrNfTb7yo/mw6wpDWoh0gJ/DY4CHu95WsdjB
         MCNk/fCMQ2bZmHpFQT0a7lhdPmSoc5UY6HIouYg/EylEabvCj2+j7PUGtjDjk9If0BVE
         /7qt+lHTFgB1wV+1NAqk8+HI5KiykBXdbha5E5ywnJir7zkPDiVyygUAEcrgHdWZpHRi
         wf4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795044620; x=1795649420;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=D4kvXPXjJrJfC4xPYDD6GGUwfPJQ0tfGxICatFpEaO4=;
        b=nE9uiRdicpaU2R0e1lbmXyJxNWf2swSHNmdxMO8vJgJqP8bkxcqf2/9irSM5710/Et
         P1ylsSw+1iFsxq+vfyMMfW2ZQjRTSaa8IA/LGEtQjDS4JLB6CHPYqVXdon+ciIL+aTeD
         gwUToMWE/AGKQp1rAh/ygbCY/kgiMACBuj6fuKO0hfjUQvR2BaaVCVmj7b4AfxecDuH2
         5V+U5K5MffmgupJEKseRAPt//vyNHEjl20I0XCJGv0tc1m447Oql+jS1WFqvSVGiC4Pl
         pJX+iJ5axVKfam1MmAaYIKIO1LDd1IGWk+elYcFewtBY3fRDynxP6a0cFwUKRz7CjS3K
         g+6Q==
X-Forwarded-Encrypted: i=1; AL+hErE5aJdLyHIO+nz2lzDD5bxignqk5YAmVVv02TsxCVrutHydbLta+BaWifduFVcHFkxet7ZOooHRnTxCl9eKWg==@lists.infradead.org
X-Gm-Message-State: APuU4Z/Gb31HQUnQZY6EhEo6uo5KT9h79s011iOot750/cIzvuduR50s
	trWFlqE5T/WmqML8/szPgVBVr7Hy2ogyWIyG6Jc9hpZrCGp3hfILi5e1
X-Gm-Gg: AYBFou3bjLC8mHZnDl8FBnfpWfLTXURx8rjsKQ1Kz3BqaJFBOap/Yu/S02tvZ4KCMXJ
	M61IiKKAf6/1RIN/7tNWnR8Xey9JWKDQA6IVnF8QzcLlm0GRpvM3gxmPtg7o/djAJ9cxl9I7KaA
	gwM4IekORLkQlDA8Yd0PXdAZlysO4QuT+WOCC0Fvymr49vneUdnMrGqT4Rbi8qMCxYSi3j6Z0Pf
	/kRoSvO9ndad1/KBB08OMZoBjPZmE3BnhfVdHP1bTiskOK/5mt0nMJCEQHr09fv5mWXz6I65256
	borrekI4k5sJrA4+pgemRCbsepwwpgjQxsq61bAjz0BcYsUeH/DJNEyY+x91wxrR/ueElOx11WQ
	qJlkWDa3JaHtp6vH2qzl6lP3MhG1eS3WTcDdSfwlVyUrtaHqBMgVIrcLLPf/TWlNM7Zsv+Wc3J+
	ZjprxxhoBZz4ipDt6OVt/FTigImmiG2wwe/gZ3XvW+9KOph4CDmbzy/LjAfA5W7nswe642destM
	gFXAONqB8nYvCdugKsnS2xzlj8MFL7QLx016kq85O0edXoHfj8adIAYFpKdktAEAIPeQdf22Btj
	428WQ4pWwlhDqAWkwajnXj4qFGZjvWqC5JUlc1NKEY0=
X-Received: by 2002:a17:907:3ea6:b0:c50:bf14:8ec1 with SMTP id a640c23a62f3a-c510e4c7a66mr412768966b.33.1795044620407;
        Wed, 18 Nov 2026 15:30:20 -0800 (PST)
Received: from localhost.localdomain ([193.107.16.241])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c51234d2159sm47809166b.78.2026.11.18.15.30.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Nov 2026 15:30:19 -0800 (PST)
From: Dmitry Yashin <dmt.yashin@gmail.com>
Date: Thu, 19 Nov 2026 04:29:40 +0500
Subject: [PATCH v3 2/4] arm64: dts: rockchip: add Forlinx FET3568-C
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261119-ok3568-c-v3-2-071840643591@gmail.com>
References: <20261119-ok3568-c-v3-0-071840643591@gmail.com>
In-Reply-To: <20261119-ok3568-c-v3-0-071840643591@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Dmitry Yashin <dmt.yashin@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795044612; l=8183;
 i=dmt.yashin@gmail.com; s=20260930; h=from:subject:message-id;
 bh=kwtI6S0QcRAZXZc30UUXQRskuC6D+uY+/6wBkU3Qvlg=;
 b=hF9VLMArxbcCXrfEOl+09lVDEFP7Wi+2yTUYDj5l/OTDw0U/OkI0Cwyy+l/bmpqo95DuJguu6
 c/n5PjDR4EaARBmYxWyAGJtIQzqTscMbkVkyiovmZC+47dXSVmNFk/s
X-Developer-Key: i=dmt.yashin@gmail.com; a=ed25519;
 pk=vBe9jaaOEH5bQEvfzb1tWOlz3AMIcXCu/GL/CdlwJco=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_153022_319165_0147DC09 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

FET3568-C is an System on Module made by Forlinx based on Rockchip RK3568.
This SoM used by OK3568-C Board.

FET3568-C features:
- Rockchip RK3568
- DDR4 1/2/4/8 GB
- eMMC 8/16/32/64 GB
- RK809 PMIC

Add devicetree for Forlinx FET3568-C SoM.

Signed-off-by: Dmitry Yashin <dmt.yashin@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-fet3568-c.dtsi | 332 +++++++++++++++++++++
 1 file changed, 332 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-fet3568-c.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-fet3568-c.dtsi
new file mode 100644
index 000000000000..9a3e810c46b5
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3568-fet3568-c.dtsi
@@ -0,0 +1,332 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
+#include "rk3568.dtsi"
+
+/ {
+	compatible = "forlinx,fet3568-c", "rockchip,rk3568";
+
+	aliases {
+		mmc0 = &sdhci;
+	};
+
+	chosen: chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led-0 {
+			color = <LED_COLOR_ID_BLUE>;
+			default-state = "on";
+			function = LED_FUNCTION_HEARTBEAT;
+			gpios = <&gpio0 RK_PB7 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+			pinctrl-names = "default";
+			pinctrl-0 = <&led0_pin>;
+		};
+	};
+};
+
+&cpu0 {
+	cpu-supply = <&vdd_cpu>;
+};
+
+&cpu1 {
+	cpu-supply = <&vdd_cpu>;
+};
+
+&cpu2 {
+	cpu-supply = <&vdd_cpu>;
+};
+
+&cpu3 {
+	cpu-supply = <&vdd_cpu>;
+};
+
+&gpu {
+	mali-supply = <&vdd_gpu>;
+	status = "okay";
+};
+
+&i2c0 {
+	status = "okay";
+
+	vdd_cpu: regulator@1c {
+		compatible = "tcs,tcs4525";
+		reg = <0x1c>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-name = "vdd_cpu";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <800000>;
+		regulator-max-microvolt = <1150000>;
+		regulator-ramp-delay = <2300>;
+		vin-supply = <&vcc5v0>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+
+	rk809: pmic@20 {
+		compatible = "rockchip,rk809";
+		reg = <0x20>;
+		assigned-clocks = <&cru I2S1_MCLKOUT_TX>;
+		assigned-clock-parents = <&cru CLK_I2S1_8CH_TX>;
+		#clock-cells = <1>;
+		clocks = <&cru I2S1_MCLKOUT_TX>;
+		clock-names = "mclk";
+		clock-output-names = "rk809-clkout1", "rk809-clkout2";
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_int>, <&i2s1m0_mclk>;
+		#sound-dai-cells = <0>;
+		system-power-controller;
+		wakeup-source;
+
+		vcc1-supply = <&vcc3v3>;
+		vcc2-supply = <&vcc3v3>;
+		vcc3-supply = <&vcc3v3>;
+		vcc4-supply = <&vcc3v3>;
+		vcc5-supply = <&vcc3v3>;
+		vcc6-supply = <&vcc3v3>;
+		vcc7-supply = <&vcc3v3>;
+		vcc8-supply = <&vcc3v3>;
+		vcc9-supply = <&vcc3v3>;
+
+		regulators {
+			vdd_logic: DCDC_REG1 {
+				regulator-name = "vdd_logic";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-initial-mode = <0x2>;
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_gpu: DCDC_REG2 {
+				regulator-name = "vdd_gpu";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-initial-mode = <0x2>;
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_ddr: DCDC_REG3 {
+				regulator-name = "vcc_ddr";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-initial-mode = <0x2>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vdd_npu: DCDC_REG4 {
+				regulator-name = "vdd_npu";
+				regulator-initial-mode = <0x2>;
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_1v8: DCDC_REG5 {
+				regulator-name = "vcc_1v8";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdda0v9_image: LDO_REG1 {
+				regulator-name = "vdda0v9_image";
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdda_0v9: LDO_REG2 {
+				regulator-name = "vdda_0v9";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdda0v9_pmu: LDO_REG3 {
+				regulator-name = "vdda0v9_pmu";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <900000>;
+				};
+			};
+
+			vccio_acodec: LDO_REG4 {
+				regulator-name = "vccio_acodec";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vccio_sd: LDO_REG5 {
+				regulator-name = "vccio_sd";
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
+			vcc3v3_pmu: LDO_REG6 {
+				regulator-name = "vcc3v3_pmu";
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
+			vcca_1v8: LDO_REG7 {
+				regulator-name = "vcca_1v8";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcca1v8_pmu: LDO_REG8 {
+				regulator-name = "vcca1v8_pmu";
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
+			vcca1v8_image: LDO_REG9 {
+				regulator-name = "vcca1v8_image";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_3v3: SWITCH_REG1 {
+				regulator-name = "vcc_3v3";
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc3v3_sd: SWITCH_REG2 {
+				regulator-name = "vcc3v3_sd";
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+		};
+	};
+};
+
+&pinctrl {
+	leds {
+		led0_pin: led0-pin {
+			rockchip,pins = <0 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	pmic {
+		pmic_int: pmic-int {
+			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+};
+
+&sdhci {
+	bus-width = <8>;
+	cap-mmc-highspeed;
+	max-frequency = <200000000>;
+	mmc-hs200-1_8v;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd &emmc_datastrobe>;
+	vmmc-supply = <&vcc_3v3>;
+	vqmmc-supply = <&vcc_1v8>;
+	status = "okay";
+};
+
+&tsadc {
+	rockchip,hw-tshut-mode = <0>;
+	rockchip,hw-tshut-polarity = <0>;
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+};

-- 
2.56.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
