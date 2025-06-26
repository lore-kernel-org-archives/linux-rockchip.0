Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7ECC8C7EE33
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Jun 2025 21:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CM353BHJ0h8SdA3G/DZdlkM8TK3SklSHbo0/U5qGR04=; b=X+4jgkZ+61HdyQ
	A67SZi49nSv9wS7dYgkK5Hana7u6TnHd+3avC2zzbxGYvr7CLr+Nmdchv0dy4uvxjtsN4sSM6+Vmp
	18+DxgYC8sYUf3sQcnkASBuiDPWtNd9C7tMsCDPLXX+Q1y6TxS4UZ7Q9yFdFdXFFkQI1YJZAZAIl4
	L+5u86CijsOrJjmLMZj9Hs/6t6C0tR1bfjLjOrrjfaWaeiFEP97Ox67CqOHDrD4UIHX1+wpbj+J/p
	yMoji5MZRJ+MrhvOtO6fnC2rW5kKWdcwYlMzhC3HmcDDGBOmXCtlMftF4dNrxGRNgNUgEH0z42MaJ
	0cBKl1uBEK6q8MhWeh7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUuBJ-0000000CqHa-0cJW;
	Thu, 26 Jun 2025 21:30:53 +0000
Received: from mail-oo1-xc35.google.com ([2607:f8b0:4864:20::c35])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUshb-0000000Cf0X-2nWG
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Jun 2025 19:56:09 +0000
Received: by mail-oo1-xc35.google.com with SMTP id 006d021491bc7-6113e68da82so584830eaf.1
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Jun 2025 12:56:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750967767; x=1751572567; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mMpDCcFT/4xis8BHvECtD3Eg/SXcPfGFzJVSLI+fMms=;
        b=AW3JIVDy7RwKtxd0FzbBZ6uDifNfbDqf7SYkXfikapu1R0dhSoQZI1QHwhlSf/+Hfe
         RBUYL6iIBWCBnPRYzhxP40PmlcLGYG2vY6blrNagfwj3bCZCh+SAPoO1huOnmBIw14y5
         nNpL/AF0SUA3g1Ny8DFQkfT8DBOCxQU62LJEPRoOEYscx2AG+/J6W5w5oHZVmiwsvLpZ
         aCCsW6QX645tCOfasthZO37FQWd8ndNXIYQyPsqU0Zhv2QfCsu8n+6e5h+yvta+LX369
         Lyvw3lAlMMZ86kzf1n/aMLUxeLt2+fIAxYNnihh6JwdU6g/RsRhLWUogQuKlPcO4ugJr
         vc3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750967767; x=1751572567;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mMpDCcFT/4xis8BHvECtD3Eg/SXcPfGFzJVSLI+fMms=;
        b=iSP7S2XxxT+6d5nh7UUPGyk2p0uN1313uMv/O14sQ0sG5QqNDIsIh4EtkBLeG03dJ8
         aEKKk9w6OXHQ94WVW6LIunoOPnpvCWDXWz0LjP8C6MmwDDPnmDlROiwebTRg7bsWLf50
         bLLxfA5tQNcu+U/ge0MO+HsPAlKPnhhNIeKS3NT09bQedzbEZTMQwIfr/eEiOqNq7x5y
         z449fVeCbePNzuaHQBd5/aKS80J45IV3CXyzvnecUDwLzYZIY/aq91y0+QjKMXY0BBsN
         aBjHGTxc2tVN0o/WKVUPl02tAqKB/jabxfN5QnWFNC2+lxW3oh+f86QD0EzL7LUjdP5x
         zenw==
X-Gm-Message-State: AOJu0YwI8WJ3iXtd87DrHZbcw1W0bKBeaYfRJiUouhumNYI1fz6s0S9d
	y7mtlzo7oRym3VXlKlGjsIWHgp78der1czVnc4bEM6OwFY516tpH9NbC
X-Gm-Gg: ASbGnctH5PJWf3xFAG8SRpM7AOlreSSuyx6HOTn60LZE/r1wW/wh+r74tMfzBbcfFwD
	CL5/weg6khWvmxeCydLEBSQhMgJpquGBHgz1ojZwnIb/sk/APISJWLmOCSryZqAPldUtMUBfWls
	4ZKgjZaMpFe2cYEclI1uTZYms9RZHYuZY0zgPvdkTRXbFPd8xwi5GSbmR8Cd0TiB36Tc4tT4EvO
	3augTGsUC7xhfMVpYbdspMFEEk6L1GkFQfKr+KIGlvah9PcRB4cYsG/4bzAZY5LYpyiTdq4CbQE
	/IKOx9ZYecWUliiZQOcz4lyIJJi4d1QRUYif2MEZMiBSeH06tnD9mXK3qxeGw9vUn6FD2yEDC9X
	uV0cNXQ==
X-Google-Smtp-Source: AGHT+IFAMSEfVKviYPBWYLsf7KJQHEh6Idjewbd6Ne+/AzGsF/wbxKbNMnjZ7XUV9beM5fyeH9i+Qg==
X-Received: by 2002:a05:6820:1798:b0:611:641a:9db3 with SMTP id 006d021491bc7-611b90ecfeemr599623eaf.7.1750967766656;
        Thu, 26 Jun 2025 12:56:06 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:f978:7e9c:c207:c035])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-611b8582352sm66915eaf.22.2025.06.26.12.56.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jun 2025 12:56:06 -0700 (PDT)
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
Subject: [PATCH V4 1/5] dt-bindings: mfd: ti,bq25703a: Add TI BQ25703A Charger
Date: Thu, 26 Jun 2025 14:53:39 -0500
Message-ID: <20250626195343.54653-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250626195343.54653-1-macroalpha82@gmail.com>
References: <20250626195343.54653-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_125607_705409_462DB1F1 
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
