Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3057C54E58
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Mar 2024 13:28:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0aXzCQfzLpfRhDFrpMSINNdq0az7ge1xtfJtRr2sSdU=; b=KichpOJGKyLJ5A
	b+o8V6RKpAYKIVZFdTY8Xl1B8EIG1YvUDpGf89u46XT0FU6cdEPPDGxgaKUdFqeiq10uYjKo5x62r
	G9oyAGCR9R3hzaF+QZnMCw0fK3BD7cKt4qn4IcwDnU4NrB0xtZ9lZG9nhhEf1r021snZgxCjl7ezd
	rkUbS31rgRKFHOc8E+IqReKxh9v+V6Y91elZzzqm+8RdjTllqCihjTci+oR9XYQbcn/il+qNP01LU
	rxXETwuQGOlCricW/uIN1SqpnmQCqh+DMYV9t5E8dUia8D3a7teci7yHk6tW3wvc50o4BM4dlbbqy
	M5E2Tj/pLHfiUO9XSGEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ro1QK-0000000ASVD-1geW;
	Sat, 23 Mar 2024 13:28:36 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ro1QG-0000000ASSr-2Do9;
	Sat, 23 Mar 2024 13:28:34 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-4147f659353so5010035e9.3;
        Sat, 23 Mar 2024 06:28:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711200511; x=1711805311; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+PsDCMEoJvArZ7FpaFDrW3J9rJO3aT3dwR+vHpofNMM=;
        b=Or/9D7NVjC+zpf/fhebJLoUnqzxhF02TB+7iKHqbepPr9vCZ0gNldFoWhj8IohfNMu
         YwVSNJP3XacruC5pwfi1t3C/wEIOjwwfO931cCfm5thjDjX2A2nupA+x0CXgHIYYSDU4
         76B8Ytvt7enpBxLbc8nWFiaQbBilwNesgQW1YR4iBKBnLs6Rq3JVlkZdnj26jqCZpO5c
         mzVLQ/Ftv3kBt40pLig8lneGTW7v+2FRRHhpz/ifHrkZFYhZA8CwrUp5BibBs3SC/zcM
         JDQQF6JYjKS2s2bmblfas3jwx0PU2Uk/k46ztameC0qhh984slTgHFxmckUNF1st7Xz4
         dp0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711200511; x=1711805311;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+PsDCMEoJvArZ7FpaFDrW3J9rJO3aT3dwR+vHpofNMM=;
        b=CRn0GeZ98zBpKe4V/NOsd1JP3QQZPiIeTIKBJZW6hZ8/7oLHhP6NBYCpUdVoj9g3Cu
         96WTUffokG3tegosL2DqPr/8/ncT6QU+nlGPwzLGi4iLqq6eT7Xh7SxEIfwbe031hUX0
         hAzkzhAjL2veH3cOcbm4WnPsLaMSV4mufDpTuTtULO0tbI0JGqxq9k0aV5kF6BST77tJ
         BDobQuM/CaSRYEjkjUxz0TodjnB6FwzZMkNTErYIzBnsWVnuU2TWgiwD4O5OzIkPWaai
         lN3x9n1eB4avWoFcj9Jpso4SQp3ydGBim07G8m33F4EjO3Mjc/rsHFeDdVW4OuObPwTy
         +uMQ==
X-Forwarded-Encrypted: i=1; AJvYcCUnicEUL6Uajj4GiS4SgcA+0+/TFzZJAddVFjUgLOw5gK8REGTYZShGE5pnkDLV7xTtUKVAd0D7rJgHFd1o5s72B0AOLJWzy6gtUseNCA+gMe1Q9kzgdLO+RFASaF8PrGk/XAVt74e0uxTEy1IWD6ffXrsQK1sLe8c=
X-Gm-Message-State: AOJu0YyxPo5DPWmd5rS1xD7vkgl+EEZqOV3QLXX46enBj9e4hPX7ZdkO
	ZgiDiDo7rkanRM/thWEO8+8ocjXSNYYcnARsLa7CbO1UfdFLoJA=
X-Google-Smtp-Source: AGHT+IGxQG8d/mbHn4BjiZm/SCx86waXRF8l/KiQCiAzFIZkYfEHIHpw6xI4uugcKxq6tW6Xc8qnUA==
X-Received: by 2002:a5d:5084:0:b0:33e:67c3:43cd with SMTP id a4-20020a5d5084000000b0033e67c343cdmr1395267wrt.27.1711200510895;
        Sat, 23 Mar 2024 06:28:30 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:fbb8:7547:139d:a40f])
        by smtp.gmail.com with ESMTPSA id x17-20020adfffd1000000b00341babb8af0sm3076061wrs.7.2024.03.23.06.28.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Mar 2024 06:28:30 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Linus Walleij <linus.walleij@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>
Cc: Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v3 1/5] dt-bindings: mfd: Add rk816 binding
Date: Sat, 23 Mar 2024 14:27:55 +0100
Message-ID: <20240323132757.141861-4-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240323132757.141861-2-knaerzche@gmail.com>
References: <20240323132757.141861-2-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240323_062832_625683_6225DDC2 
X-CRM114-Status: GOOD (  16.46  )
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

Add DT binding document for Rockchip's RK816 PMIC

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes since v1:
  - lowercase/hyphens for regulator node names
  - rename "-reg" to "-regulator" to make node names generic
  - dropped superfluous description for clock-output-names and
    wakeup-source
  - dropped "|" for text blocks that don't require to preserve formatting
  - use full path for `$ref`s
  - added pins description to the binding
  - added charger function to description

changes since v2:
  - dropped "-regulator"-suffix from regulator device names
  - use "'"-quotes consistently in the binding
  - dropped "pin_fun"-prefix from pin-function names
  - added pin to example

 .../bindings/mfd/rockchip,rk816.yaml          | 274 ++++++++++++++++++
 1 file changed, 274 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk816.yaml

diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk816.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk816.yaml
new file mode 100644
index 000000000000..b960ded35e99
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk816.yaml
@@ -0,0 +1,274 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/rockchip,rk816.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RK816 Power Management Integrated Circuit
+
+maintainers:
+  - Chris Zhong <zyw@rock-chips.com>
+  - Zhang Qing <zhangqing@rock-chips.com>
+
+description:
+  Rockchip RK816 series PMIC. This device consists of an i2c controlled MFD
+  that includes regulators, a RTC, a GPIO controller, a power button, and a
+  battery charger manager with fuel gauge.
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk816
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  '#clock-cells':
+    description:
+      See <dt-bindings/clock/rockchip,rk808.h> for clock IDs.
+    const: 1
+
+  clock-output-names:
+    maxItems: 2
+
+  gpio-controller: true
+
+  '#gpio-cells':
+    const: 2
+
+  system-power-controller:
+    type: boolean
+    description:
+      Telling whether or not this PMIC is controlling the system power.
+
+  wakeup-source:
+    type: boolean
+
+  vcc1-supply:
+    description:
+      The input supply for dcdc1.
+
+  vcc2-supply:
+    description:
+      The input supply for dcdc2.
+
+  vcc3-supply:
+    description:
+      The input supply for dcdc3.
+
+  vcc4-supply:
+    description:
+      The input supply for dcdc4.
+
+  vcc5-supply:
+    description:
+      The input supply for ldo1, ldo2, and ldo3.
+
+  vcc6-supply:
+    description:
+      The input supply for ldo4, ldo5, and ldo6.
+
+  vcc7-supply:
+    description:
+      The input supply for boost.
+
+  vcc8-supply:
+    description:
+      The input supply for otg-switch.
+
+  regulators:
+    type: object
+    patternProperties:
+      '^(boost|dcdc[1-4]|ldo[1-6]|otg-switch)$':
+        type: object
+        $ref: /schemas/regulator/regulator.yaml#
+        unevaluatedProperties: false
+    unevaluatedProperties: false
+
+patternProperties:
+  '-pins$':
+    type: object
+    additionalProperties: false
+    $ref: /schemas/pinctrl/pinmux-node.yaml
+
+    properties:
+      function:
+        enum: [gpio, thermistor]
+
+      pins:
+        $ref: /schemas/types.yaml#/definitions/string
+        const: gpio0
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - '#clock-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/pinctrl/rockchip.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/gpio/gpio.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        rk816: pmic@1a {
+            compatible = "rockchip,rk816";
+            reg = <0x1a>;
+            interrupt-parent = <&gpio0>;
+            interrupts = <RK_PA2 IRQ_TYPE_LEVEL_LOW>;
+            clock-output-names = "xin32k", "rk816-clkout2";
+            pinctrl-names = "default";
+            pinctrl-0 = <&pmic_int_l>;
+            gpio-controller;
+            system-power-controller;
+            wakeup-source;
+            #clock-cells = <1>;
+            #gpio-cells = <2>;
+
+            vcc1-supply = <&vcc_sys>;
+            vcc2-supply = <&vcc_sys>;
+            vcc3-supply = <&vcc_sys>;
+            vcc4-supply = <&vcc_sys>;
+            vcc5-supply = <&vcc33_io>;
+            vcc6-supply = <&vcc_sys>;
+
+            regulators {
+                vdd_cpu: dcdc1 {
+                    regulator-name = "vdd_cpu";
+                    regulator-min-microvolt = <750000>;
+                    regulator-max-microvolt = <1450000>;
+                    regulator-ramp-delay = <6001>;
+                    regulator-initial-mode = <1>;
+                    regulator-always-on;
+                    regulator-boot-on;
+
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                    };
+                };
+
+                vdd_logic: dcdc2 {
+                    regulator-name = "vdd_logic";
+                    regulator-min-microvolt = <800000>;
+                    regulator-max-microvolt = <1250000>;
+                    regulator-ramp-delay = <6001>;
+                    regulator-initial-mode = <1>;
+                    regulator-always-on;
+                    regulator-boot-on;
+
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                        regulator-suspend-microvolt = <1000000>;
+                    };
+                };
+
+                vcc_ddr: dcdc3 {
+                    regulator-name = "vcc_ddr";
+                    regulator-initial-mode = <1>;
+                    regulator-always-on;
+                    regulator-boot-on;
+
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                    };
+                };
+
+                vcc33_io: dcdc4 {
+                    regulator-min-microvolt = <3300000>;
+                    regulator-max-microvolt = <3300000>;
+                    regulator-name = "vcc33_io";
+                    regulator-initial-mode = <1>;
+                    regulator-always-on;
+                    regulator-boot-on;
+
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                        regulator-suspend-microvolt = <3300000>;
+                    };
+                };
+
+                vccio_pmu: ldo1 {
+                    regulator-min-microvolt = <3300000>;
+                    regulator-max-microvolt = <3300000>;
+                    regulator-name = "vccio_pmu";
+                    regulator-always-on;
+                    regulator-boot-on;
+
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                        regulator-suspend-microvolt = <3300000>;
+                    };
+                };
+
+                vcc_tp: ldo2 {
+                    regulator-min-microvolt = <3300000>;
+                    regulator-max-microvolt = <3300000>;
+                    regulator-name = "vcc_tp";
+
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                    };
+                };
+
+                vdd_10: ldo3 {
+                    regulator-min-microvolt = <1000000>;
+                    regulator-max-microvolt = <1000000>;
+                    regulator-name = "vdd_10";
+                    regulator-always-on;
+                    regulator-boot-on;
+
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                        regulator-suspend-microvolt = <1000000>;
+                    };
+                };
+
+                vcc18_lcd: ldo4 {
+                    regulator-min-microvolt = <1800000>;
+                    regulator-max-microvolt = <1800000>;
+                    regulator-name = "vcc18_lcd";
+
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                        regulator-suspend-microvolt = <1800000>;
+                    };
+                };
+
+                vccio_sd: ldo5 {
+                    regulator-min-microvolt = <1800000>;
+                    regulator-max-microvolt = <3300000>;
+                    regulator-name = "vccio_sd";
+
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                        regulator-suspend-microvolt = <3300000>;
+                    };
+                };
+
+                vdd10_lcd: ldo6 {
+                    regulator-min-microvolt = <1000000>;
+                    regulator-max-microvolt = <1000000>;
+                    regulator-name = "vdd10_lcd";
+
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                        regulator-suspend-microvolt = <1000000>;
+                    };
+                };
+            };
+
+            rk816_gpio_pins: gpio-pins {
+                function = "gpio";
+                pins = "gpio0";
+            };
+        };
+    };
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
