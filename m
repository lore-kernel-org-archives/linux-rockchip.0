Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C785CCA1013
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Sep 2025 19:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ecT8hQ9cgQoYFCBRADxTtpldowFtTkC/bV5CUjLLKVY=; b=yD4Ruzxobwnm8Q
	uMVoe6ss+bvdK+6G8bXnl4trU58AGhsidfreXUeaLkC/KVcLevLZI+Eh5ePfSHVkZy2jMNTbkglR5
	ZwYPhos5jjq+I0swxjxfIlEz6epRX/PAJi+3Kxzl6uDMwgk5ujr9diEv8L2OKvzyAeT5/H1E02eF0
	qCyMg6xmQLVY04BbIz+hkNN4IlU/3q0WPdgRIoC1/nxWd3DBXOamfi7Bbr44E2f6zKFB/a6CTtWbd
	NLMi7WwHjiWbO5IoBrDraXAH3aFpjMjlSKP0IwTlDwYtPIswCw64wPWyHcYsbywjqP+Dx+a2VxqeJ
	iwc9ZISXlfuHthZhT7VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuG1u-0000000E4c4-3G8u;
	Thu, 04 Sep 2025 19:53:58 +0000
Received: from mail-oa1-x2b.google.com ([2001:4860:4864:20::2b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuCVP-0000000Ckvb-0L2t
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Sep 2025 16:08:12 +0000
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-30ccec59b4bso965037fac.3
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Sep 2025 09:08:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757002090; x=1757606890; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rwhaNZ08bBHEsR9rXeumkyMkgjmU5QxiFqlW2m7YgJA=;
        b=Hnn6EWIPkNkQj8d2PqESQScMRdEuKYZIxiqfNd4UGje4/Bw0D1kMeSE3fY/DHHh5es
         HRoVln7YK49GXye+Xi10UIIj/KJlsXhEMp4RmLmQsq5rBgqo4L38SWNEAbPDgYjGJcLH
         KeX61+bsVBek6/kCsCA7CAY6DimBd9ljM/AK1IBLKnI75W+RckhHUNA2qhTIPO/LXOmT
         y4dNA9n6kWV4ybVM7l7CGGmCHYZteeg/mE0BtU8BH9NsUug+VlFxNrfjnt/IwPYl3AQ8
         WmjSm/dR3p7uZrzTHxPT+8KDNdPqy7Wzau9Xmv/wBnd9Py2lbILMlMQiuPQRTGiP812J
         K9VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757002090; x=1757606890;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rwhaNZ08bBHEsR9rXeumkyMkgjmU5QxiFqlW2m7YgJA=;
        b=qzJ30OvBo1NP4mLBiPudhm/p2gjRjip8Jljbqz6EotCJ8VZKwUhmf8812TJjpuLIUv
         Bo2+zjrFFkVU76gko87NgPbJ3uDPIb+EX2HhH9PDDurL6YDb+0v9tp0xeVrjiF5d1cd+
         UJoUJoxSys/Kx15XlL1mlMMM4LlHYph+5MV69JGXE10e0CX53zQXxQwscmGEjcmtaa+W
         c54a3kD2BhVBCvbPhmczq77wcS6qCalTpBZstW4n/X2a3Nh4Pw3XUoNCPxKIKMP2E5LE
         a92WqJB5xf3gsZltFNTwzOqULE6ZOJV0oI21Gjeqlkofj1Vh3tBYxQss1vNBuxZPdCBT
         c3mA==
X-Gm-Message-State: AOJu0Yzxiy18WI7wtH8H2uM77P5mP5jH1ArNyQD5BNVyjlC5O5HoLNaA
	nZxf0e4qwk2mkX28U08Rq6i7JAGlCjbyhRKxo+bmAFQjKaJXb5kSH7gr2iZE1Q==
X-Gm-Gg: ASbGncs7oD2gpYtPW+avju2lr8CCvRyTIE0I783qKnHZQnrPV6aFP4SSNdkwc3TR63D
	/yduXFDIl+ATjN5z2pxgu2KaaeiQ7s6lKCgupJN9/avGSis4HphiyT6DboZXJsSMy1MzjuiQaSt
	tGnMcYlf4dPtEfGIqaCkjIXFBppGkMDNBRdMFgbtmyKE38oU3N+nyhtiXZBbW778YTdtsfVDTU0
	LlK8IGtZLJUQz+n4rfW4fkBVtyoZ0NEne/Gx7yDuyCFPaXuuw7n1gkH7QYE8BxGluMiB/Uhqjfp
	bTj0rSeg6CyUvw7oNdqwfG/ZHOw822/7QFN+KfKidDs08sMYIPMcWFyN3Y5Yt94u/hsRZqaN+gf
	Edz25YNDDXnu3+6pG8qAQKXsZPJsDI5/40Li8h50XOQh7rSs/VRfl
X-Google-Smtp-Source: AGHT+IENuFTdThjy0C5PyNoJorQO0LITvjpC+z0vdRcLw4nPd9pMxYj4t6vj1Pai80yUZzJHVZlP7A==
X-Received: by 2002:a05:6871:8313:b0:314:9683:3758 with SMTP id 586e51a60fabf-31963480aa8mr9731532fac.49.1757002088822;
        Thu, 04 Sep 2025 09:08:08 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:c51e:64e3:dc5d:9652])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-319b5fcbf6asm2437593fac.20.2025.09.04.09.08.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 09:08:08 -0700 (PDT)
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
Subject: [PATCH v8 1/5] dt-bindings: mfd: ti,bq25703a: Add TI BQ25703A Charger
Date: Thu,  4 Sep 2025 11:05:26 -0500
Message-ID: <20250904160530.66178-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250904160530.66178-1-macroalpha82@gmail.com>
References: <20250904160530.66178-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_090811_121655_E7B62E98 
X-CRM114-Status: GOOD (  13.06  )
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
