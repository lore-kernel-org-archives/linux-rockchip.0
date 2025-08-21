Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 127CFCA0EFA
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Aug 2025 22:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ecT8hQ9cgQoYFCBRADxTtpldowFtTkC/bV5CUjLLKVY=; b=I9ZMeAaPxOJSLh
	8cDe0WLD5wYIKidDJlg/+YRBTEtUY5JXNfr5rCrQfYSStJEY62Pw7Wdv7QGiN8H0xXkvNrIMCMBuS
	CQkZclc3RpI8Gk0/WB1IT28f9Tx67Ao7iwKHHtmM+lrFluGTQa5QyOT3z/ipSN8spRGIpeWBfRPB8
	cZTvQtcSYqVFQ0sIt+CAs8XICe3j8x3XoFFfShTTdP+MdYb0SVeA0I7fXr4C5CMtUV/EvB5ChlDzB
	xqq2aPaza0HkD2MV53E9EzA0RJHfNhJ80aunoJX6YCjGIpG72ILjNfI6zH+yXFBcJNSYcLjMaxcue
	Yv2JjEnXi9unvwM3wqRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upDwX-00000000op2-3oRU;
	Thu, 21 Aug 2025 22:39:37 +0000
Received: from mail-ot1-x32c.google.com ([2607:f8b0:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up888-0000000HXiK-1DDx
	for linux-rockchip@lists.infradead.org;
	Thu, 21 Aug 2025 16:27:13 +0000
Received: by mail-ot1-x32c.google.com with SMTP id 46e09a7af769-74381fbd6f3so334049a34.2
        for <linux-rockchip@lists.infradead.org>; Thu, 21 Aug 2025 09:27:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755793631; x=1756398431; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rwhaNZ08bBHEsR9rXeumkyMkgjmU5QxiFqlW2m7YgJA=;
        b=kwZe+MmhNQpzj3lHsYraPO9raDpsXOZ6OOskfyhSZp13ngPS+khBlaLNyAIH848oyE
         LtrJFNXRo2ufUwmdzCgeHIkn+UwZI0rCckSNqSPa1jr1eXrMGC9NPj15PHskPzE6y6Zx
         mngbbk4nS0DbF2y1gCPiTjfyj4LZun1AIojfujcL+FVjL5AdabqPTfCru6wCGZ0SPCnl
         Ly/kC6vO6loVcYQ7QR5p53YDArXBM54PNgWIrEIymnBlmgkq1vITq1RbnjobIDYXTZoG
         9JA37ziuVB2tPEEO+yRL0+6Q1wjrzKQct4fhG2R73l8zWSJoMHrecveGxN6moLszwBlQ
         TGtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755793631; x=1756398431;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rwhaNZ08bBHEsR9rXeumkyMkgjmU5QxiFqlW2m7YgJA=;
        b=BsXr68JrNFLoT5xDu61yMrVThjmkKICAhCCz09lJVz1j/pCvqrhet2o8M+rsBkPwUA
         Q0MfuvGW3RQUvZIPF4hnBX8Lk+38Sc3jDctpQkjnSY+zUR5SkENC7ylEb8KJSa4mfrDB
         M1aA0zjGLzFXUIIXRclJc6PYtm+a4CroBXKb6fZkw0gn55NyV40AC1nAljItyRecWIK5
         Z4LIDIenX+1yAUG0t8oB8O7GxQu8GoeVye/Cwvw89ZoRrFZcOixTLOof0Q8Rqg8gwsi6
         tFBESrKUcItAl+LiDyuQ3Blkz23uUhSKlijI9M/ndR0SUH58PZ8dlXOLjdm9KHHr6rSn
         717A==
X-Gm-Message-State: AOJu0YzFNMjU2jXkweot7pAWuQVej0WMoPa9P6s9jsxZvjBxGo9JWwno
	WMReeez79l+1L4h/J74y2qa9pkuKm29WiC/5G36kS4Os87AS/KjOTMkYhOOA/w==
X-Gm-Gg: ASbGncuipLNWbQRyDgq/dQ3k0TAESMGnmtU87xgRFR7f2wJiBDjTMFi0Rzkl5dcOZH8
	ADDRS4UwXMCdXzTyTELsU5+Ga5EE04gltFNJ1Riu9ML8pYwwrJWLLoNAiFTK0NFgk53LcPgQ0d6
	bV/K/Ql69H7ShkvjfhMsgRZuq1cYiuGMlUuBP1kslGwfppYxeqgQJnLXH3JFFLdAlPGt604iSQh
	lKhgaE4Rc760TXFpt27CR5HRhzHISzz7VzYT4tK78mL1PtHtww94aC61RCmBdC0oWKB4jZHJkXv
	h7iJG+DKHFtiKhrKEO4nNxcJbKVyMaNo+q9q2vlfiX5nxJG2RiCnKKNxL3vggP9/7gupepkmCNt
	4/aBy5iCwzB7D/CcNWKy1I3Qlung2PjRyKXKXnkB0CkN6gNo7sv4f
X-Google-Smtp-Source: AGHT+IGyUMANTlMdGPp+4RTF12Sthavabp2GSYDKoVzkB4ZEPnN+pPNdX5eKmlwrPgD+E87kywiFaA==
X-Received: by 2002:a05:6830:7101:b0:742:fc4d:6615 with SMTP id 46e09a7af769-74500ab159emr66751a34.18.1755793631127;
        Thu, 21 Aug 2025 09:27:11 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:b19a:18c8:26b9:21c7])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-61bec14b3cesm1674706eaf.27.2025.08.21.09.27.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 09:27:10 -0700 (PDT)
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
Subject: [PATCH V7 1/5] dt-bindings: mfd: ti,bq25703a: Add TI BQ25703A Charger
Date: Thu, 21 Aug 2025 11:24:44 -0500
Message-ID: <20250821162448.117621-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250821162448.117621-1-macroalpha82@gmail.com>
References: <20250821162448.117621-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_092712_331226_9FB18901 
X-CRM114-Status: GOOD (  12.95  )
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
