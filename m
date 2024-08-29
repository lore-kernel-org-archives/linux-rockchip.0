Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5291CA0EC0
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Aug 2024 21:33:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ssD0Dn+rlrWxODJXI8BKKvkkm69WKw2jbBRWFEAD1jA=; b=Jxr+0KqwNWLI2K
	TOweR2bWkVUvv6MiHsxVZRXp9zAdAkO7RWHPUD+DZNKn+NpxyJDxrp2dGfJgYPz/TkyzTDsHwiSww
	f22tflgHniWsTK/iUy/c2bIIaHv8zmlNT4iu0KAOo3tRhqQUCrOPqmBXadjAVlRwbSCvmeGsxH1PZ
	SaDsd6cbdU+su5ZXEIXKCZNUANwyS5fUntnph2iv1M4++2Sku+6PR2vmkAVnoo57YsUZSvixiw04Q
	pU02tsdIJeRP6G1tnaTgpEhWL8yPA6iyo81oF12rwNJZ9g0BaKiT9sWIhWHuG76MPXxshKXgdUTgz
	9+oNtkjwFfdFtbSHnFpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjmlr-00000003hy5-0yZK;
	Thu, 29 Aug 2024 21:33:35 +0000
Received: from mail-oi1-x22b.google.com ([2607:f8b0:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjmli-00000003hv4-3ctz
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Aug 2024 21:33:33 +0000
Received: by mail-oi1-x22b.google.com with SMTP id 5614622812f47-3db504ab5f3so682848b6e.0
        for <linux-rockchip@lists.infradead.org>; Thu, 29 Aug 2024 14:33:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724967205; x=1725572005; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n/l6Vuy6Yja6nMfuFm5IV/CQv24CYeSkA0vOpwlyExA=;
        b=BrNM4WPd1AOIIOO3/U0bi5emM+juRuzHooEC8tCy0JwXZfoCR3rsh0VBe7rigfNyS8
         HKsoKhy0qXsk68OIkeysieFPKfQLOwbFmxAnYEck6HD7f1ueoHvNzcKGFOgClBf8UZQb
         wYrLdSPhMMEgNaIvd6LdYsWM8nPT1T0ll94t2OvDOiKuChmHUoVLC9iTlmNIrCsukW2l
         C6ywmIYx6yylCBO2LFKUaE/blp3rvsuiWZ4FIQ9GP3WA4c6umTqbj29ZAryWgaqkB2lr
         aYpsiB/ig/C/4f7NKEiasJdgrJJWoBlqSuKm42MSAVCcbuclp6iIfdlOrg2WDrQ458o1
         AesA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724967205; x=1725572005;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n/l6Vuy6Yja6nMfuFm5IV/CQv24CYeSkA0vOpwlyExA=;
        b=ByHTx+BYAq5FRB7v0hkVntoul/IO3Q3ibdWd6FqlyjFU2QeOJbbbBA5yVnrwRLwA/D
         Eh6oBzLYSQgWcQE/BEOCQoUzK7bRHkzHrF9kPYhkPb22XmZeyya5R0FIUL+RNztDQIq1
         tW5kgOjeIw8xfPHq9IBjaN5BWSa5zkiEkfB9uaqiFHxn7cA6ZwhHfx58zXLo11xiYVIv
         jL+hIhoHiz6x+GOO4NLp0ZtO9pIQ0JLy1VhITYCsMqujYXSGZpI1ipOqzH7Cc1nk6w7M
         oUSrBywwbD/QaIg6yvOWPYdmJm7gOCBwdYkt7y+Bs4Jpr7dy4Q2OKGWh25PqCeAF+1Yc
         I/fw==
X-Gm-Message-State: AOJu0Yyw1lsauG2aa9t3EGC6SFdX2ux3Y29CbLuEwBEK0h/pMWfu/rVi
	iH++1PBAKnL6SbUHpI/sNQP6ht2/kQusuo3023ZtTGVq+asdhiz3
X-Google-Smtp-Source: AGHT+IEWu+O+TSKWVKhbXLuQSSvCgo+TCWgZ3yKoVGpE8zXP4ZswpIwCFYRo+byFPALHaw73+yBZuw==
X-Received: by 2002:a05:6808:238b:b0:3da:b3c2:b4c0 with SMTP id 5614622812f47-3df05ec779emr4477287b6e.31.1724967205478;
        Thu, 29 Aug 2024 14:33:25 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3df11865de3sm93097b6e.42.2024.08.29.14.33.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2024 14:33:25 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	broonie@kernel.org,
	lgirdwood@gmail.com,
	sre@kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	lee@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [RFC 1/5] dt-bindings: mfd: ti,bq25703a: Add TI BQ25703A Charger
Date: Thu, 29 Aug 2024 16:30:58 -0500
Message-Id: <20240829213102.448047-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240829213102.448047-1-macroalpha82@gmail.com>
References: <20240829213102.448047-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_143326_939437_E14EC859 
X-CRM114-Status: GOOD (  13.69  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Document the Texas instruments BQ25703 series of charger managers/
buck/boost regulators.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../devicetree/bindings/mfd/ti,bq25703a.yaml  | 143 ++++++++++++++++++
 1 file changed, 143 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml

diff --git a/Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml b/Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml
new file mode 100644
index 000000000000..e555aa60f9ad
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml
@@ -0,0 +1,143 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/ti,bq25703a.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: BQ25703 Charger Manager/Buck/Boost Converter
+
+maintainers:
+  - Chris Morgan <macromorgan@hotmail.com>
+
+properties:
+  compatible:
+    const: ti,bq25703a
+
+  reg:
+    const: 0x6b
+    description: I2C slave address
+
+  interrupts:
+    maxItems: 1
+
+  power-supplies:
+    description:
+      phandle of the power supply that provides input power
+    $ref: /schemas/types.yaml#/definitions/phandle
+
+  ti,charge-current:
+    description:
+      maximum current to apply to charging the battery
+    minimum: 0
+    maximum: 8128000
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+  ti,current-limit:
+    description:
+      maximum total input current allowed
+    minimum: 50000
+    maximum: 6400000
+    default: 3250000
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+  ti,max-charge-voltage:
+    description:
+      maximum voltage to apply to charging the battery
+    minimum: 1024000
+    maximum: 19200000
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+  ti,minimum-sys-voltage:
+    description:
+      minimum system voltage while on battery power, with default value
+      depending based on cell configuration
+    minimum: 1024000
+    maximum: 16128000
+    default:
+      enum: [3584000, 6144000, 9216000, 16128000]
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+  regulators:
+    type: object
+    additionalProperties: false
+    description:
+      Boost converter regulator output of bq257xx
+
+    properties:
+      "usb-otg-vbus":
+        type: object
+        $ref: /schemas/regulator/regulator.yaml
+
+        properties:
+          regulator-name: true
+          regulator-min-microamp:
+            minimum: 0
+            maximum: 6350000
+          regulator-max-microamp:
+            minimum: 0
+            maximum: 6350000
+          regulator-min-microvolt:
+            minimum: 4480000
+            maximum: 20800000
+          regulator-max-microvolt:
+            minimum: 4480000
+            maximum: 20800000
+          enable-gpios:
+            description:
+              The BQ25703 may require both a register write and a GPIO
+              toggle to enable the boost regulator.
+
+        additionalProperties: true
+
+        required:
+          - regulator-name
+          - regulator-min-microamp
+          - regulator-max-microamp
+          - regulator-min-microvolt
+          - regulator-max-microvolt
+
+additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - power-supplies
+  - ti,charge-current
+  - ti,current-limit
+  - ti,max-charge-voltage
+  - ti,minimum-sys-voltage
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/pinctrl/rockchip.h>
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        bq25703: bq25703@6b {
+            compatible = "ti,bq25703a";
+            reg = <0x6b>;
+            interrupt-parent = <&gpio0>;
+            interrupts = <RK_PD5 IRQ_TYPE_LEVEL_LOW>;
+            power-supplies = <&fusb302>;
+            ti,charge-current = <2500000>;
+            ti,current-limit = <5000000>;
+            ti,max-charge-voltage = <8750000>;
+            ti,minimum-sys-voltage = <7400000>;
+
+            regulators {
+                usb_otg_vbus: usb-otg-vbus {
+                    enable-gpios = <&gpio4 RK_PA6 GPIO_ACTIVE_HIGH>;
+                    regulator-max-microamp = <960000>;
+                    regulator-max-microvolt = <5088000>;
+                    regulator-min-microamp = <512000>;
+                    regulator-min-microvolt = <4992000>;
+                    regulator-name = "usb_otg_vbus";
+                };
+            };
+        };
+    };
+
+...
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
