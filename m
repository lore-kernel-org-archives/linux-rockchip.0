Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A111CA0EE0
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Aug 2025 21:45:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ecT8hQ9cgQoYFCBRADxTtpldowFtTkC/bV5CUjLLKVY=; b=IR++4gZ3p86tQ5
	9hFiKW92MxNXQ4UsbT4MKGmi7q2yITRySWVI/pWAWBHOQoMMrEJluv9rvrBKQgMzZX/5pQCkVhFFH
	NAnwDsAIBWYq/fl/P6FiqbcU9yKnM7rOamJi6h8aIwNNtYqxbnP7W4hLUZUIDEm9ON1BxPmmdtrbv
	XLI+jrTj5Yl5QM0TN+bKJkq5OzyHBNc6NW4B4m1ez408zX6RvmEFn44+fJX1Onx3SD68VjOn+vY9L
	n6HGeoWQvwSaspt/kNc0dVCV1vEULG2qTFmkzqKiNlBI95K218aOy/Iy9O3QEBTxm8cfRxjDtpr4n
	0GAXH7HXvJq2SlWQjQSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulwoF-0000000C4yb-351g;
	Tue, 12 Aug 2025 21:45:31 +0000
Received: from mail-oa1-x2d.google.com ([2001:4860:4864:20::2d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulwoC-0000000C4wp-3PYH
	for linux-rockchip@lists.infradead.org;
	Tue, 12 Aug 2025 21:45:30 +0000
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-2e95ab2704fso5091279fac.3
        for <linux-rockchip@lists.infradead.org>; Tue, 12 Aug 2025 14:45:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755035128; x=1755639928; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rwhaNZ08bBHEsR9rXeumkyMkgjmU5QxiFqlW2m7YgJA=;
        b=EBIY7MyoBG8iw12Y5vfeRa/rfRFRcUE780hKJJghesj169+i+Ddz4qgAKzQBlKrgq/
         4BeGJLVUYQCFwy8vQH45tgf2oCeXbe/B8niqwuupqlHdl8vTs+G0rVPsK+tY1dvalZnz
         TjGvKf6quX+vNybpCX44jNSEPYOhp/ulDrdHTU3I8qYYm1NhxSH+Iox+TqU2C4GXYKGv
         Hb6jnckUy7SOxCDn2rzruOzhadMcTHcxy6izIAt4rSKvy649wTmHtkxN9Rdh/8b4D3as
         ySMmj4YMs7qiEfl+3GyiNFc1mp74nsK6i92ajbDO1Gzrdn040CB42p5eJZr3xlAzNJCo
         iojA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755035128; x=1755639928;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rwhaNZ08bBHEsR9rXeumkyMkgjmU5QxiFqlW2m7YgJA=;
        b=MqpB7HuV+0bZynxYGVeXS7J7PdLuPn3p/HjWZJ0AZu6MCqRhimO4Yblbp2TpgBUatw
         BIWWVKvYb3RtxP7jXRajcE85bLD+XcGTEnuzmxAA4sFcZInCQjtnuhOYNU3IE7S/dE/x
         3tJX1vzuNb2wz8Z5gDF/3zARnmNDeFAxN3+dplEMizzYTz53PYwstN8FEVLws7/0yr7P
         /vKHTiDj9g6PK2ygBPZcJ6bz1BdMd37SBXLP6DJ9xMZ86a2kDeCQfM2ksPDFgGuzvIgc
         KLyT9Tab14znCi28g/9JKKsiC9RQDU2/hykc/2C/RfS74qdzn/L9csxu0ldBBi65j8dA
         jF+g==
X-Gm-Message-State: AOJu0YxRZNlGoMb73i/CCiVQjCgLltfIzic/8jHPcBJaz7Cgj2CTRzGA
	YlWz2PJfPPpcciKl5zb4ymAix0sGpOiUiM2QY+ARQI5QLUsOezd4wcFiAjrtmA==
X-Gm-Gg: ASbGnct6kbMe2A7nph2vfkl3Mi1bLcx+o2fNerGjbwKK10V7CG5K21TBxSxJBtB8lZv
	YYCWb90PeQtMi5jp1xx9LvPirWPrp18RVyGV2louTTylp5wxgn/gf4MAUIrnrS9aHPggq0ey0oY
	rEyX9nYxfe31aZZ5QukTlsKTphqUEbxFH32onyOH9acT0QosXUGwQz25JbvULRoiGSAs0rAboO2
	uV33hv1Zcf0+NNX15T1RM1cv4/TXS99K77stbRKC0GDDAQX/kGv+YDQCF9JmelTnR6LEPOzW+H9
	IUsHhN7uHGXVr9HkIHHAEde2TMxnJLLzWE+U3hrosuYekYHwsTiYZFZaRURgH2JwYiDljf0f58E
	+jQY4Vh+6crBKLTU2qm8Ei0MPt5nt6Wph0T9huyefMg==
X-Google-Smtp-Source: AGHT+IFRd92U7K+eHEZdgRM8AARsngHyRg2/qFWS4mv5fzIbnsYlOoWoHuQ/KlUZysXRqhYqbUFjgw==
X-Received: by 2002:a05:6871:72c:b0:30c:9385:bf11 with SMTP id 586e51a60fabf-30cb59ab9a3mr511880fac.3.1755035127654;
        Tue, 12 Aug 2025 14:45:27 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:d904:cea9:a76b:d0a3])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-30c10c7a694sm4092741fac.9.2025.08.12.14.45.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 14:45:27 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	broonie@kernel.org,
	lee@kernel.org,
	lgirdwood@gmail.com,
	sre@kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH V6 1/5] dt-bindings: mfd: ti,bq25703a: Add TI BQ25703A Charger
Date: Tue, 12 Aug 2025 16:42:56 -0500
Message-ID: <20250812214300.123129-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250812214300.123129-1-macroalpha82@gmail.com>
References: <20250812214300.123129-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_144528_852946_89B9C749 
X-CRM114-Status: GOOD (  13.49  )
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

Document the Texas instruments BQ25703A series of charger managers/
buck/boost regulators.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/mfd/ti,bq25703a.yaml  | 117 ++++++++++++++++++
 1 file changed, 117 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml

diff --git a/Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml b/Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml
new file mode 100644
index 000000000000..ba14663c9266
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml
@@ -0,0 +1,117 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/ti,bq25703a.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: BQ25703A Charger Manager/Buck/Boost Converter
+
+maintainers:
+  - Chris Morgan <macromorgan@hotmail.com>
+
+allOf:
+  - $ref: /schemas/power/supply/power-supply.yaml#
+
+properties:
+  compatible:
+    const: ti,bq25703a
+
+  reg:
+    const: 0x6b
+
+  input-current-limit-microamp:
+    description:
+      Maximum total input current allowed used for both charging and
+      powering the device.
+    minimum: 50000
+    maximum: 6400000
+    default: 3250000
+
+  interrupts:
+    maxItems: 1
+
+  monitored-battery:
+    description:
+      A minimum of constant-charge-current-max-microamp,
+      constant-charge-voltage-max-microvolt, and
+      voltage-min-design-microvolt are required.
+
+  regulators:
+    type: object
+    additionalProperties: false
+    description:
+      Boost converter regulator output of bq257xx.
+
+    properties:
+      vbus:
+        type: object
+        $ref: /schemas/regulator/regulator.yaml
+        additionalProperties: false
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
+        required:
+          - regulator-name
+          - regulator-min-microamp
+          - regulator-max-microamp
+          - regulator-min-microvolt
+          - regulator-max-microvolt
+
+unevaluatedProperties: false
+
+required:
+  - compatible
+  - reg
+  - input-current-limit-microamp
+  - monitored-battery
+  - power-supplies
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
+        bq25703: charger@6b {
+            compatible = "ti,bq25703a";
+            reg = <0x6b>;
+            input-current-limit-microamp = <5000000>;
+            interrupt-parent = <&gpio0>;
+            interrupts = <RK_PD5 IRQ_TYPE_LEVEL_LOW>;
+            monitored-battery = <&battery>;
+            power-supplies = <&fusb302>;
+
+            regulators {
+                usb_otg_vbus: vbus {
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
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
