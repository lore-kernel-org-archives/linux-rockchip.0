Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D80C5C4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Apr 2024 16:13:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I/KCsZKVhMQTIX8utpOfMFt7Wc2+Qf53HsVnw5siheI=; b=iNZNM8IQgQA5Up
	jP9KTOBLYABS3AyGkaFYsKszofhSki8dCqorLeIHk92fnOLi2Pp9K+KFmR4BFK+Xzzqd87l3gyYyO
	lr3iX4TOZ8msN0jWf752RyTJcdqiYMfuhHJLQD1OGd7dz1KiI+8doTrmP3RMmGLY4Fb3bhL4QUfVO
	Q+OMdvCBiDeTmqPszI5mDx0/XNVBtgGoWPiHJkJBAgxXwoyERPYXjixMaReTyiIkHdzm5qybxIZgJ
	6ag6Gcj6XNpzkPVriOxWJFda5dohAqwjUwOk9KyuGnH3/NTZX+kDupPXM92/e0I61utDbqHgojXLt
	6Y8lA6S0aOvOFJa4gDwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwlQc-0000000CwfY-0OaG;
	Tue, 16 Apr 2024 16:13:02 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwlQW-0000000CwcB-3UYF;
	Tue, 16 Apr 2024 16:12:58 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-518d98b9620so3214107e87.3;
        Tue, 16 Apr 2024 09:12:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713283974; x=1713888774; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DZ5AXaaZvF3udQdn/XiOr1JWab5XW1E44Fc/EcaEkYk=;
        b=e5cawHu45zCUOfPqGeUcdhpLOuiHm+SWAe0jBC5VzHYxMiz427hb1HXAVQd5Q9KgfF
         zZ7PzaBQx3jc2ItZ/xNgMFD9Rqpu5Jwz73hJE2ZfuszkJqbJWffDA7BIqVUiTbZXDz9t
         YXWX7jRXxkRiv0MAaQ5QaN6cqFEIIkpRbw/kl8HkvyYYOC+DGEKM87uv/UIGx8bbkwNF
         0UVN1cDtvgIh/gCO3xcnwMvKXHayTj9VpnPI+OjGK4i0zKlYPDyiR7q96/pg42YVHJB3
         QwD1EdY2mVY1ztUP+p+a/YOYXsVzR2vpTlfCxuI1nl29/DUfgZKIMoxn9odglLPCw84e
         FqGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713283974; x=1713888774;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DZ5AXaaZvF3udQdn/XiOr1JWab5XW1E44Fc/EcaEkYk=;
        b=Db8aRVVoMIYD9nwZhs8DsHG3afuxQcjTwgQnZVSzaFvccqutVmRSkp4x249ck6ZrUG
         wFIvpkF0Y6P005stWKpVi+VNF0lrEy2TNI8agSQuqaBrFkLUVkfxOleFr/OlQdjfXHHG
         Tf05Fdo897nC+8pGk75IMJW5gnIY/KJVg9mg7+dXThIJq2++6hp6+WFERvSnKMkvSZ15
         yuKhjtE4mlr5Hpf069N+Ig0S69I/dRJuhAdsLDV1eYObq3I9bGdEMctMeLvIv7UU9ew7
         y7gaXVNrZaULmhcU6D3yZMhlHWZyw7gmSwzfa9SuY4ivN/UnV0OR4qzVW7AQf1yj2Cwn
         Fi8Q==
X-Forwarded-Encrypted: i=1; AJvYcCXNHwxo7vcmz48KkyWCsZEp+Oz7uiXVWkr9h1/CzG2aXc0wbSrW5jmd+mUfs9CdQp/AHBPEIFE9gAmG+H+8Xz+x/nQq1yWX9+tcBRt97C5voKFymHNc7Y1/oWc37E4fyXmY0tumsNTVVy4s8cPbIF4fCrttRpZA5G0=
X-Gm-Message-State: AOJu0Yx2dJGKhMTjfRWhIJy7BdbM35trT2K3kqKGe5dE8wpHCwZ/tqUT
	YEeA84tg8rQR5589t+UOowXz8mJnFDOqyzjZWlPna8f0qobgo4w=
X-Google-Smtp-Source: AGHT+IHIKxf50ytdcwXdlZtYo1Szbwh4f+kLLgZNYs3gmQjei7+UEemHruTuLGWMf9W3fuWbS3xbjQ==
X-Received: by 2002:ac2:555a:0:b0:515:cb19:41f4 with SMTP id l26-20020ac2555a000000b00515cb1941f4mr7692676lfk.59.1713283973710;
        Tue, 16 Apr 2024 09:12:53 -0700 (PDT)
Received: from U4.lan ([91.66.160.190])
        by smtp.gmail.com with ESMTPSA id t7-20020adfe447000000b00343eac2acc4sm15350743wrm.111.2024.04.16.09.12.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Apr 2024 09:12:53 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Linus Walleij <linus.walleij@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 1/5] dt-bindings: mfd: Add rk816 binding
Date: Tue, 16 Apr 2024 18:12:33 +0200
Message-ID: <20240416161237.2500037-2-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240416161237.2500037-1-knaerzche@gmail.com>
References: <20240416161237.2500037-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_091256_911269_4CC62EB6 
X-CRM114-Status: GOOD (  16.48  )
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
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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

changes since v3:
  - made "unevaluatedProperties: false" to "additionalProperties: false" for
    regulators node
  - added RB-tag

 .../bindings/mfd/rockchip,rk816.yaml          | 274 ++++++++++++++++++
 1 file changed, 274 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk816.yaml

diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk816.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk816.yaml
new file mode 100644
index 000000000000..0676890f101e
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
+    additionalProperties: false
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
