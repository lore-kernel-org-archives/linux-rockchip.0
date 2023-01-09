Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01423C61DB3
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Jan 2023 17:27:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9tsMfYGi/tufIhfquzHOagKhzlF714PcruX+DcLuRfE=; b=xrFem/bff4n4bT
	Bw0dRn1G46h7YlgUtn1QYnZzhA3en9NCfjpWepLQlrGmEWejTmR98UaBPA9clls3ttri1Xf8a1UB/
	aoDBrbPglDP2PVoNklDtFLO8YUd+c1cSkUryllc/eDktquOSasCq3OGpHQF7zQLkj1E6ZQdvsSALm
	DYJXrkesajo+71k2THYcgjOokEMxKOAFGUbRsJnNzZ19kncAsI5L+C+iSxNjji4IAe3vbHbfG2du0
	/E+8pVEtQfwIjEJ1Emsf6w6qzm6VAwzCCmyXVSjmOBtkOP6kz7LttihQiLVgZ13UQImQnTPvKVY1D
	bQvQ3g8I5F+CpKKns4yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEvvw-002uCw-EP; Mon, 09 Jan 2023 17:27:40 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEvvo-002u78-P2
	for linux-rockchip@lists.infradead.org; Mon, 09 Jan 2023 17:27:36 +0000
Received: from jupiter.universe (dyndsl-037-138-188-006.ewe-ip-backbone.de [37.138.188.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id BA4A76602D78;
	Mon,  9 Jan 2023 17:27:28 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1673285248;
	bh=98SyVSMeOM0GAF4HjP3GPcd97COlE9ru/uciJHp008M=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=IISKdGfdW8GjoEURXqOibUwvEivefXItA2Gz3Y6nZETWOP5AS2YGBp5xArgiSXj2L
	 ua5tvP7xkS739bvg0HEtxmQ6bEqwd0Wagq8fb4Fxa2DWVg3gwqqfj4JS6Kb7NHQFKz
	 wre1LZmB9qhzBEIgvFcziT85oa5x+W4DSqzwjzvpnX5IZb2Tgknb6xQkgpS+3viGdA
	 oJFRnJb1OTaG5giS+4rB/VoH8woWTKiXZR2G1NproZ3WpazFhZToqEBhjuK89oS1P/
	 Zv0TZsK6HGHG5SxrGhwzes4hSANyrhPint9ozzv6EGNiKRzq2jThbvqEr33sGx40af
	 sVhQkYJMee5Xw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 6153848011E; Mon,  9 Jan 2023 18:27:24 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lee Jones <lee@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCHv5 06/10] dt-bindings: mfd: add rk806 binding
Date: Mon,  9 Jan 2023 18:27:19 +0100
Message-Id: <20230109172723.60304-7-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230109172723.60304-1-sebastian.reichel@collabora.com>
References: <20230109172723.60304-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_092733_170114_FF3FFFB7 
X-CRM114-Status: GOOD (  13.47  )
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

Add DT binding document for Rockchip's RK806 PMIC.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../bindings/mfd/rockchip,rk806.yaml          | 406 ++++++++++++++++++
 1 file changed, 406 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml

diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml
new file mode 100644
index 000000000000..cf2500f2e9a0
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml
@@ -0,0 +1,406 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/rockchip,rk806.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RK806 Power Management Integrated Circuit
+
+maintainers:
+  - Sebastian Reichel <sebastian.reichel@collabora.com>
+
+description:
+  Rockchip RK806 series PMIC. This device consists of an spi or
+  i2c controlled MFD that includes multiple switchable regulators.
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk806
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  gpio-controller: true
+
+  '#gpio-cells':
+    const: 2
+
+  vcc1-supply:
+    description:
+      The input supply for dcdc-reg1.
+
+  vcc2-supply:
+    description:
+      The input supply for dcdc-reg2.
+
+  vcc3-supply:
+    description:
+      The input supply for dcdc-reg3.
+
+  vcc4-supply:
+    description:
+      The input supply for dcdc-reg4.
+
+  vcc5-supply:
+    description:
+      The input supply for dcdc-reg5.
+
+  vcc6-supply:
+    description:
+      The input supply for dcdc-reg6.
+
+  vcc7-supply:
+    description:
+      The input supply for dcdc-reg7.
+
+  vcc8-supply:
+    description:
+      The input supply for dcdc-reg8.
+
+  vcc9-supply:
+    description:
+      The input supply for dcdc-reg9.
+
+  vcc10-supply:
+    description:
+      The input supply for dcdc-reg10.
+
+  vcc11-supply:
+    description:
+      The input supply for pldo-reg1, pldo-reg2 and pldo-reg3.
+
+  vcc12-supply:
+    description:
+      The input supply for pldo-reg4 and pldo-reg5.
+
+  vcc13-supply:
+    description:
+      The input supply for nldo-reg1, nldo-reg2 and nldo-reg3.
+
+  vcc14-supply:
+    description:
+      The input supply for nldo-reg4 and nldo-reg5.
+
+  vcca-supply:
+    description:
+      The input supply for pldo-reg6.
+
+  regulators:
+    type: object
+    additionalProperties: false
+    patternProperties:
+      "^(dcdc-reg([1-9]|10)|pldo-reg[1-6]|nldo-reg[1-5])$":
+        type: object
+        $ref: /schemas/regulator/regulator.yaml#
+        unevaluatedProperties: false
+
+patternProperties:
+  '-pins$':
+    type: object
+    additionalProperties: false
+    $ref: /schemas/pinctrl/pinmux-node.yaml
+
+    properties:
+      function:
+        enum: [pin_fun0, pin_fun1, pin_fun2, pin_fun3, pin_fun4, pin_fun5]
+
+      pins:
+        $ref: /schemas/types.yaml#/definitions/string
+        enum: [gpio_pwrctrl1, gpio_pwrctrl2, gpio_pwrctrl3]
+
+allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/pinctrl/rockchip.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/gpio/gpio.h>
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        pmic@0 {
+            compatible = "rockchip,rk806";
+            reg = <0x0>;
+
+            interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
+
+            vcc1-supply = <&vcc5v0_sys>;
+            vcc2-supply = <&vcc5v0_sys>;
+            vcc3-supply = <&vcc5v0_sys>;
+            vcc4-supply = <&vcc5v0_sys>;
+            vcc5-supply = <&vcc5v0_sys>;
+            vcc6-supply = <&vcc5v0_sys>;
+            vcc7-supply = <&vcc5v0_sys>;
+            vcc8-supply = <&vcc5v0_sys>;
+            vcc9-supply = <&vcc5v0_sys>;
+            vcc10-supply = <&vcc5v0_sys>;
+            vcc11-supply = <&vcc_2v0_pldo_s3>;
+            vcc12-supply = <&vcc5v0_sys>;
+            vcc13-supply = <&vcc5v0_sys>;
+            vcc14-supply = <&vcc_1v1_nldo_s3>;
+            vcca-supply = <&vcc5v0_sys>;
+
+            regulators {
+                vdd_gpu_s0: dcdc-reg1 {
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <550000>;
+                    regulator-max-microvolt = <950000>;
+                    regulator-ramp-delay = <12500>;
+                    regulator-name = "vdd_gpu_s0";
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                    };
+                };
+
+                vdd_npu_s0: dcdc-reg2 {
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <550000>;
+                    regulator-max-microvolt = <950000>;
+                    regulator-ramp-delay = <12500>;
+                    regulator-name = "vdd_npu_s0";
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                    };
+                };
+
+                vdd_log_s0: dcdc-reg3 {
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <750000>;
+                    regulator-max-microvolt = <750000>;
+                    regulator-ramp-delay = <12500>;
+                    regulator-name = "vdd_log_s0";
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                        regulator-suspend-microvolt = <750000>;
+                    };
+                };
+
+                vdd_vdenc_s0: dcdc-reg4 {
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <550000>;
+                    regulator-max-microvolt = <950000>;
+                    regulator-ramp-delay = <12500>;
+                    regulator-name = "vdd_vdenc_s0";
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                    };
+                };
+
+                vdd_gpu_mem_s0: dcdc-reg5 {
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <675000>;
+                    regulator-max-microvolt = <950000>;
+                    regulator-ramp-delay = <12500>;
+                    regulator-name = "vdd_gpu_mem_s0";
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                    };
+                };
+
+                vdd_npu_mem_s0: dcdc-reg6 {
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <675000>;
+                    regulator-max-microvolt = <950000>;
+                    regulator-ramp-delay = <12500>;
+                    regulator-name = "vdd_npu_mem_s0";
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                    };
+                };
+
+                vcc_2v0_pldo_s3: dcdc-reg7 {
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <2000000>;
+                    regulator-max-microvolt = <2000000>;
+                    regulator-ramp-delay = <12500>;
+                    regulator-name = "vdd_2v0_pldo_s3";
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                        regulator-suspend-microvolt = <2000000>;
+                    };
+                };
+
+                vdd_vdenc_mem_s0: dcdc-reg8 {
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <675000>;
+                    regulator-max-microvolt = <950000>;
+                    regulator-ramp-delay = <12500>;
+                    regulator-name = "vdd_vdenc_mem_s0";
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                    };
+                };
+
+                vdd2_ddr_s3: dcdc-reg9 {
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-name = "vdd2_ddr_s3";
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                    };
+                };
+
+                vcc_1v1_nldo_s3: dcdc-reg10 {
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <1100000>;
+                    regulator-max-microvolt = <1100000>;
+                    regulator-ramp-delay = <12500>;
+                    regulator-name = "vcc_1v1_nldo_s3";
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                        regulator-suspend-microvolt = <1100000>;
+                    };
+                };
+
+                avcc_1v8_s0: pldo-reg1 {
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <1800000>;
+                    regulator-max-microvolt = <1800000>;
+                    regulator-ramp-delay = <12500>;
+                    regulator-name = "avcc_1v8_s0";
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                    };
+                };
+
+                vdd1_1v8_ddr_s3: pldo-reg2 {
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <1800000>;
+                    regulator-max-microvolt = <1800000>;
+                    regulator-ramp-delay = <12500>;
+                    regulator-name = "vdd1_1v8_ddr_s3";
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                        regulator-suspend-microvolt = <1800000>;
+                    };
+                };
+
+                vcc_1v8_s3: pldo-reg3 {
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <1800000>;
+                    regulator-max-microvolt = <1800000>;
+                    regulator-ramp-delay = <12500>;
+                    regulator-name = "vcc_1v8_s3";
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                        regulator-suspend-microvolt = <1800000>;
+                    };
+                };
+
+                vcc_3v3_s0: pldo-reg4 {
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <3300000>;
+                    regulator-max-microvolt = <3300000>;
+                    regulator-ramp-delay = <12500>;
+                    regulator-name = "vcc_3v3_s0";
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                    };
+                };
+
+                vccio_sd_s0: pldo-reg5 {
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <1800000>;
+                    regulator-max-microvolt = <3300000>;
+                    regulator-ramp-delay = <12500>;
+                    regulator-name = "vccio_sd_s0";
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                    };
+                };
+
+                master_pldo6_s3: pldo-reg6 {
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <1800000>;
+                    regulator-max-microvolt = <1800000>;
+                    regulator-name = "master_pldo6_s3";
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                        regulator-suspend-microvolt = <1800000>;
+                    };
+                };
+
+                vdd_0v75_s3: nldo-reg1 {
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <750000>;
+                    regulator-max-microvolt = <750000>;
+                    regulator-ramp-delay = <12500>;
+                    regulator-name = "vdd_0v75_s3";
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                        regulator-suspend-microvolt = <750000>;
+                    };
+                };
+
+                vdd2l_0v9_ddr_s3: nldo-reg2 {
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <900000>;
+                    regulator-max-microvolt = <900000>;
+                    regulator-name = "vdd2l_0v9_ddr_s3";
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                        regulator-suspend-microvolt = <900000>;
+                    };
+                };
+
+                master_nldo3: nldo-reg3 {
+                    regulator-name = "master_nldo3";
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                    };
+                };
+
+                avdd_0v75_s0: nldo-reg4 {
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <750000>;
+                    regulator-max-microvolt = <750000>;
+                    regulator-name = "avdd_0v75_s0";
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                    };
+                };
+
+                vdd_0v85_s0: nldo-reg5 {
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-min-microvolt = <850000>;
+                    regulator-max-microvolt = <850000>;
+                    regulator-name = "vdd_0v85_s0";
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                    };
+                };
+            };
+        };
+    };
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
