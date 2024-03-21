Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 505EAC54E58
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Mar 2024 14:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d7saUngS96tAIHZC/v9F//LFWAWy9gPg3k8xg1FRBck=; b=0sT3bxRe6xyQ7M
	uJ862XtxVsNpsmz3xhiep3jo8lehBq5hy77DSvTgCAm5AzAM+pP1glBXbw/wm3vK9QPp3vyX27gH6
	qNz3iwFEcEtO1ATsRa5E59cLJbtoL3XSkt1MZZsbkGMJRf/MWqU6LCT2sVFxVl1OgJ4dbIFhWGZtc
	TNGSfEnBKPndWC1yDhY9aVZZm64JEl07cDGGb/EVlGDsQnYlDf3XMW/lrYRq2TrchpbP7+Yl3vLop
	gnjWG4oWjpB/8HBlxqCh1iIidJpWZl0shha/yPi5SfrRBPy12qdMB2jIZzFZ31SgeEdITHD81lYdY
	BdpsFxXJ88uFwORuf09A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnJa3-00000003Isv-2LIj;
	Thu, 21 Mar 2024 14:39:43 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnJZy-00000003Ipm-3HWp;
	Thu, 21 Mar 2024 14:39:40 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-55a179f5fa1so1496091a12.0;
        Thu, 21 Mar 2024 07:39:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711031975; x=1711636775; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lt8p4RY6k043MwULpqhdmkYzdtutmtSYnRG7ixAL6cQ=;
        b=Au3N/rLrsmt9e1ZUHn94m6Eq5jBMm5PqDHT+ptwDezBSFsv/2VRtwSyiCnco6sbGHn
         aK9Ltx+N24JO37f3LmVGPQzS211vcgJprZDyWOlRo8CnkpoFvMHSo/fDbzVMeuetqAih
         /btKTDAEWq400rpU5V6cxBMhQdKgvy3ui2Gggez7lY2oYrKAHOevAHjLWNC8K+BPi6GO
         25BwW0o1/a4z8qdNRfEZ4FjffYUVAZHExgRjOCQbg7sCKmPNia4Yuxwk9CdT9rzOnhT/
         hhdJM3rv8qv7q0pOuYZj4Pe+wieySPHnJhvUJH/afA9goShTaxAoNPp4N9QRbCMpSVnA
         tm2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711031975; x=1711636775;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lt8p4RY6k043MwULpqhdmkYzdtutmtSYnRG7ixAL6cQ=;
        b=XJfmUy53fRd9UuRsFmE0gqBE01NjyAnae9ItCdKQwOg4R8XL5hAdFQk2xJmzQu7nmh
         GF/orgY/7Zb2tTRKIQeldvEt77V/jm4uHMds6DbJf0Z26yFZgTW5wnXoCST+Vx2RiBQi
         icRyFHnDQ7mJ3xUTyiBLZe0jU3vecP/l+HLv7zMzYmy8b9gzYHcbV4Ag2Z5p2FNOurx9
         uexY2jAtq06KycPfs4iciiV06LEzo5UxJzx2f6dxQ6TBqwHKWYewK/lNe617t9MGy0Kc
         z6XrtxFwbUhJVZJsNqGlZV5o9mfMIq0zkwhQprw+1uP1zP/nWIliQSn2yORJi4kR442B
         YPYA==
X-Forwarded-Encrypted: i=1; AJvYcCW31KKvagulVyA34mUFAW+KGAxvp22minpqDgkzBKXBRW8Tt3SB4gmh6a+HaYSZceEhqxGTwzdK8BER5Y0qB2XVc3wMOe32FxdEoLn1sWB+bALMSpFx41ixEFqVIH4O4jWPcX3RctPFRFKh5/gz794hFNjPliIxnBs=
X-Gm-Message-State: AOJu0Yz3O1D2K7LbqkqkaBYJcw6gxY2SQjNdy9hit2IdUAqUpRBhUvZQ
	qYYIXY9EulJZRVhnDrZyXJubZnSpftpBbe5uiyjvnJHdiJrBdN4OwPG+8QY=
X-Google-Smtp-Source: AGHT+IGjKKL/8jQHlXcH90JXlNKIhdKLi9UJuSrfaawd5b8R4sBEFnY1PIvJdbq4+rqf2e0WmemiTA==
X-Received: by 2002:a17:906:254b:b0:a46:cf63:d96b with SMTP id j11-20020a170906254b00b00a46cf63d96bmr3819163ejb.51.1711031975555;
        Thu, 21 Mar 2024 07:39:35 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:b39:dab4:8e20:e918])
        by smtp.gmail.com with ESMTPSA id e3-20020a170906248300b00a46abaeeb1csm6147923ejb.104.2024.03.21.07.39.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Mar 2024 07:39:35 -0700 (PDT)
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
Subject: [PATCH 1/5] dt-bindings: mfd: Add rk816 binding
Date: Thu, 21 Mar 2024 15:39:09 +0100
Message-ID: <20240321143911.90210-4-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240321143911.90210-2-knaerzche@gmail.com>
References: <20240321143911.90210-2-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240321_073938_859204_B1C272C2 
X-CRM114-Status: GOOD (  15.24  )
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
 .../bindings/mfd/rockchip,rk816.yaml          | 259 ++++++++++++++++++
 1 file changed, 259 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk816.yaml

diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk816.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk816.yaml
new file mode 100644
index 000000000000..b46de99f60ff
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk816.yaml
@@ -0,0 +1,259 @@
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
+description: |
+  Rockchip RK816 series PMIC. This device consists of an i2c controlled MFD
+  that includes regulators, a RTC, a gpio controller, and a power button.
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
+    description: |
+      See <dt-bindings/clock/rockchip,rk808.h> for clock IDs.
+    const: 1
+
+  clock-output-names:
+    description:
+      From common clock binding to override the default output clock name.
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
+    description:
+      Device can be used as a wakeup source.
+
+  vcc1-supply:
+    description:
+      The input supply for DCDC_REG1.
+
+  vcc2-supply:
+    description:
+      The input supply for DCDC_REG2.
+
+  vcc3-supply:
+    description:
+      The input supply for DCDC_REG3.
+
+  vcc4-supply:
+    description:
+      The input supply for DCDC_REG4.
+
+  vcc5-supply:
+    description:
+      The input supply for LDO_REG1, LDO_REG2, and LDO_REG3.
+
+  vcc6-supply:
+    description:
+      The input supply for LDO_REG4, LDO_REG5, and LDO_REG6.
+
+  vcc7-supply:
+    description:
+      The input supply for BOOST.
+
+  vcc8-supply:
+    description:
+      The input supply for OTG_SWITCH.
+
+  regulators:
+    type: object
+    patternProperties:
+      "^(DCDC_REG[1-4]|LDO_REG[1-6]|BOOST|OTG_SWITCH)$":
+        type: object
+        $ref: ../regulator/regulator.yaml#
+        unevaluatedProperties: false
+    unevaluatedProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - "#clock-cells"
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
+
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
+                vdd_cpu: DCDC_REG1 {
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
+                vdd_logic: DCDC_REG2 {
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
+                vcc_ddr: DCDC_REG3 {
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
+                vcc33_io: DCDC_REG4 {
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
+                vccio_pmu: LDO_REG1 {
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
+                vcc_tp: LDO_REG2 {
+                    regulator-min-microvolt = <3300000>;
+                    regulator-max-microvolt = <3300000>;
+                    regulator-name = "vcc_tp";
+
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                    };
+                };
+
+                vdd_10: LDO_REG3 {
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
+                vcc18_lcd: LDO_REG4 {
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
+                vccio_sd: LDO_REG5 {
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
+                vdd10_lcd: LDO_REG6 {
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
+        };
+    };
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
