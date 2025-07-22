Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 890C5C87FCC
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jul 2025 17:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ecT8hQ9cgQoYFCBRADxTtpldowFtTkC/bV5CUjLLKVY=; b=Nqu/203+xvxCCJ
	D3litebwrpU/YFv2XBCwmZP2UkKd1RhqQEWsWGfgXAMfw4Qaqsr0XyLuHYuWUs+MJ6PwcvRAPuPtW
	YK3+DoxR600YSuYI8VTHtGm9du+vsWa9m7QWOPh/KYKCkX4jBc+a3HG2pDiRVj7ePoprgTl0nCiNK
	jNlZE1+UDVs9iu1Bso8GBCqAFbXpwPhWt7mmRbCgWvqiVV4/+oqgRZtDTGmUCIqBFhZqzW3oTqqEV
	UCvKKggf/rJNMjUTfZTXkME9dIUV9ZwBiJ4bdFkWVubwCKAzNgxZDeSkqbqfEVDU8U+1HhW3I1SHS
	0NlRrN6Rnsz0hCBcKHaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueGLg-000000034xf-3jQd;
	Tue, 22 Jul 2025 17:00:16 +0000
Received: from mail-oi1-x236.google.com ([2607:f8b0:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueGCP-0000000344T-3jK9
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Jul 2025 16:50:43 +0000
Received: by mail-oi1-x236.google.com with SMTP id 5614622812f47-41c3addd37cso4091492b6e.3
        for <linux-rockchip@lists.infradead.org>; Tue, 22 Jul 2025 09:50:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753203041; x=1753807841; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rwhaNZ08bBHEsR9rXeumkyMkgjmU5QxiFqlW2m7YgJA=;
        b=mZ7kiLOPV2WPfkf/+SRZOSWWq9KTtux2+5dYIny3fRyU3eNcKA0cKGTTCkJ2ASSYhE
         Mi2rGfpNyAlXuq4ibVEr2Ned1PXLmRivB/Y260/Kz7Bc2h1P31m8mtHwQpMWR77EMTpw
         sp+hu3N3pElbXYdzfIklm+tqvHCYK/kJaLOcw/6bhPOioJlO2rkYtTEBA/2QzCYX5Fb8
         Ubn+9F+WsLSgfG4yhzxKEG9udJLGcTZcwpObXCMQZGbPG0XQHC1Ps9OaKj4a4ODUZX1G
         G6vHFv2NsLJ0VMhbZbjdSMqSKRp3ByE1VfaX8S0Th2GY6lUWZITbC69NZ8Wv+ITFNngx
         2fOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753203041; x=1753807841;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rwhaNZ08bBHEsR9rXeumkyMkgjmU5QxiFqlW2m7YgJA=;
        b=UvpRj8NRL3JWiOXNbeMe4GcnUp7eKOr05gAlCd2tgqzB7Zhp0Zd0O7Wq2TY0B0bgWO
         fTuGE+/YVLmc4HjPxk2FAB0uv29FkFD9+n6iM7xnnBZDPccXC254DzHA7ucD9w8L8tPy
         Iv9n2AugX0ua72g+ytzHVem7hMjEf758vYZHrZshFCyvZpKkQBqZ2/aB4gFkXIzl3egs
         NDfPiRO+kj80cZSeTTieINup3fjPkvN5W2kJUe3PCrUzGYcc4yhcQYrECjmyZXeU373Z
         Wm938VVKBU3AwVB4FzpPIrU8woxORbelRKPqe4BQ6Z0fDnupGMla+0VfjxtviyFkLN1b
         eeYw==
X-Gm-Message-State: AOJu0YyQb+sGSdV0xpCaJlj4rtmCHhLfYjlW1niwrQzvidg/zZF4+kMR
	ztFnjBTSX/otbHZuWaWb+Kxgi1BJ1gHdeLu/KQY5+Wh7A+btx4OoAdhm
X-Gm-Gg: ASbGncuyEd0E9cpWr0Q6H0fDRuR5isjsphkYW7LedYdNz6Tcx9ashv8z6xh8BZiMtFv
	6djAatjOhWzByS045y1DFh+GT5nMyjDOOU/pBdLkVf0AXf5wvsheVu29akXPHr7DGIm7i38To7b
	pG7w/JqtrldiveYX5BQMEduML7S6iYuo3KqAgEv+EP1vm2JmvI0d4ay+wANIFdJCZ/B6+aiSUdo
	Z/Ja/+FR27rvtveD4vBWYcTiP2EGQ2fULm/b5I3h/Qttvpf0c7OTIEQZkr10vxcWWw3mqmBCO0I
	xx1kMvKOGJR0/OMY3ULaURqAVXy6BD55DKJrHG9QMD7rHfGz9G7GQCpt60Gn20rEAXTa4QaT+Y4
	sOh2Hi/kyRMWuLDc7cuLoZLZptBmUWw0LNJ51hvbi6g==
X-Google-Smtp-Source: AGHT+IFvyhKDm2vjt3qbNveipU06hYF+b/GBJZQY4ZrBYhcW8LzR1y78N4yFBsC0SSxFw6knLZTQXA==
X-Received: by 2002:a05:6808:221f:b0:406:794b:462 with SMTP id 5614622812f47-426b6ef2e6fmr16756b6e.0.1753203035947;
        Tue, 22 Jul 2025 09:50:35 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:a130:f3a0:d203:abc8])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-41fd59531d8sm2935217b6e.42.2025.07.22.09.50.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Jul 2025 09:50:35 -0700 (PDT)
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
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v5 1/5] dt-bindings: mfd: ti,bq25703a: Add TI BQ25703A Charger
Date: Tue, 22 Jul 2025 11:48:08 -0500
Message-ID: <20250722164813.2110874-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250722164813.2110874-1-macroalpha82@gmail.com>
References: <20250722164813.2110874-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_095041_930517_0B4F378F 
X-CRM114-Status: GOOD (  12.76  )
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
