Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 826C5CD6E75
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jun 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IfjIWCAcOnm/kurBCqPXyIczJ/Dxg9BEYOjLDHHMBO8=; b=HGRGcJ3vNV25dI
	pYCf4lp06tPZA1yL6e04JR0te4I3t/Ac/70TTLFobbJV6uxeNQvFG4jnsz1vjB0Y8igOd9cSZ1E2B
	RXb6B1B23ieFzn453hYTVQcrOghFYs2Rr44jnxwQUxrY52mwZ6ZU1oNnht53vSDGWthigU2fOZFKK
	7DTKRUpY4bmvvdFIKmojbuj4zqAAhMWkmc17putgFKMcD7/pC0ZjfBkcAd3zuHCJMdSjYRbANPdMP
	l8gtagfP5W/Dp71iT8/rbZw+0ws5GIHX8On49jCXCuYdFXHrtasLBduyoo6CzTqSepD6QNPx4o2Q+
	9FjaX+IodhvU2XSdv11Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVGGj-0000000HO0b-2EnA;
	Thu, 04 Jun 2026 22:10:29 +0000
Received: from mail-oa1-x34.google.com ([2001:4860:4864:20::34])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVGGg-0000000HNzM-48Tt
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Jun 2026 22:10:28 +0000
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-441080fd7b9so795359fac.3
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Jun 2026 15:10:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780611026; x=1781215826; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ASzuiA/oWwreVgFn7/8SW3dexF4emahYNJXfppn07Ak=;
        b=gUraRhT6lPn+xk7HBWfHD9eAS9jXnbRg9MaEMIKxrrwllH+2c8+e0QM9ZbAqfmLbGQ
         PW/nUOtcsT09XLi51ffioKSGjHemvkHrh5m7T8owhKH6xtjlrFn7nKX60UTgIgZf2bif
         5xlMKaGcDoSJqNpT2q8mzQ8k5Y/KECJPnq4qhGrAi0xrEZnGxtOfgcrHVh/zUNsQxJ7c
         vjW9gPFWiGkp1RPf7Fy7scNV3m504b6euoAV93/eXVoxj+KHJ6k5q7po9+84cbGOcBum
         yYgiVbgzj8VcrBCeNzbnZPqsaDrErt0uHHjy9JVJHaocmVlNyV71Ln5Tkpfkudy/RI7e
         6Cgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780611026; x=1781215826;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ASzuiA/oWwreVgFn7/8SW3dexF4emahYNJXfppn07Ak=;
        b=l2ykHIrvnfTlGdzny4YHOdvgSuvc+50yZk7Axsl/4ofoyNp9haMeVBpvxADaUBq6H/
         8wda+z6fWjhxmdS8nRgIeeSajHtUgpDrOGmoqdhssMcqQd5SS0tLhFl4sfN5/wTfjT/9
         HukH9p7vRIoFvp7SzaMY/TrACXYwMLu/L95mWJ3LM+dYwuEuvaDRXdexsmfNsF7iAk1b
         f82oZmIsU5eMou0aDzujqh/p0S6crw4V1lK0fEgpYY5Lf+eSHfmEzkea8gYpzcwQFNlM
         S2gWGRlaa2xsFuWqTne+85RXcTCb/0rPpBcqbHCAVuEWgLOjpFijgzYOFoMUzR5I0maE
         brIA==
X-Gm-Message-State: AOJu0YyAYxVGGqbmDY+8SzGk0MldUHprXCwjWJZRfNlV2eDfyXLepfhX
	enE4FlR9Bt5Q0HCvPegOB5zUQXVUpX1pGSvUxZFYwEo1j1GvByAQdNLumqksUYgJ
X-Gm-Gg: Acq92OHs7moOnJ9ZT0xmChpCdeVcRQwGBZTBkOf/Si4XMU9DEnzPVj8sObVRPIvPlZO
	mlI4P1d1ebp3b825IqPnzn3IqOadMno41ZZNKtsfYiyjwZ874bwpeU/zsqUdCssrLLOodOcD/sr
	mR0CQEh5y6cKOMC95QZzMp9+LZHwoLtM86AJdpZ241txNCzuK7GlMGpfhlXyV0w4J24XelOpuN3
	X0XYr5eiiWKTrtVwI2rJCxNf2aKB6f3eeEUXlGX0uL9NcZ/iVWqIP5tLvEdLPHum0jZHq3f7P4W
	z9bVCwhUOcQ+ZphZ0BmrlrWmUQ8Df86zIyVZnEqnWHBZZhGrOc4dBUPtlOcIsReMOii3x1whSm2
	mMKih2uh40bfY6+ayYwMxwZ2qrxuL5mrorF2l+HaupnBEON3ZIj5NVWjR3FY4Dfcvflv/ssyNtM
	XiO2tnTG/5G8yGVutQdHYb3Rzpei7FCUI=
X-Received: by 2002:a05:6870:6987:b0:43e:5b7f:8b81 with SMTP id 586e51a60fabf-4413ddad56amr411159fac.25.1780611025808;
        Thu, 04 Jun 2026 15:10:25 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-440d84c0ce2sm6802987fac.16.2026.06.04.15.10.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 15:10:25 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	xsf@rock-chips.com,
	sre@kernel.org,
	simona@ffwll.ch,
	airlied@gmail.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	jesszhan0024@gmail.com,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V5 1/6] dt-bindings: power: supply: sgm41542: document sgm41542
Date: Thu,  4 Jun 2026 17:07:56 -0500
Message-ID: <20260604220802.119107-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260604220802.119107-1-macroalpha82@gmail.com>
References: <20260604220802.119107-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_151027_026695_E8A80E9F 
X-CRM114-Status: GOOD (  14.63  )
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

Document the SG Micro sgm41542 battery charger/boost converter.
The parameters of input-current-limit-microamp and
input-voltage-limit-microvolt are defined as such since they are in
common use among multiple bindings currently.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../power/supply/sgmicro,sgm41542.yaml        | 104 ++++++++++++++++++
 1 file changed, 104 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542.yaml

diff --git a/Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542.yaml b/Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542.yaml
new file mode 100644
index 000000000000..a97afea83700
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542.yaml
@@ -0,0 +1,104 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/power/supply/sgmicro,sgm41542.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SGM41542 Battery Charger
+
+description:
+  The SGMicro SGM41542 is a single cell battery charger/boost controller.
+
+maintainers:
+  - Chris Morgan <macromorgan@hotmail.com>
+  - Xu Shengfei <xsf@rock-chips.com>
+
+allOf:
+  - $ref: power-supply.yaml#
+
+properties:
+  compatible:
+    const: sgmicro,sgm41542
+
+  input-current-limit-microamp:
+    description:
+      Optional value to clamp the maximum input current limit to for
+      the device. If omitted, the default value for the hardware will
+      be used (2400000).
+    minimum: 100000
+    maximum: 3800000
+
+  input-voltage-limit-microvolt:
+    description:
+      Optional value to clamp the maximum input voltage limit to for
+      the device. If omitted, the default value for the hardware will
+      be used (4500000).
+    minimum: 3900000
+    maximum: 12000000
+
+  interrupts:
+    maxItems: 1
+
+  monitored-battery:
+    description: |
+        A phandle to a monitored battery node. Values for the following
+        are used by the driver and if not present will result in default
+        values being applied:
+        constant-charge-current-max-microamp
+        constant-charge-voltage-max-microvolt
+        charge-term-current-microamp
+        precharge-current-microamp
+
+  reg:
+    maxItems: 1
+
+  regulators:
+    type: object
+    properties:
+      otg-vbus:
+        type: object
+        description: OTG boost regulator
+        $ref: /schemas/regulator/regulator.yaml
+        unevaluatedProperties: false
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    battery: battery {
+      compatible = "simple-battery";
+      constant-charge-current-max-microamp = <10000000>;
+      constant-charge-voltage-max-microvolt = <4350000>;
+      precharge-current-microamp = <180000>;
+      charge-term-current-microamp = <300000>;
+    };
+
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      charger@3b {
+        compatible = "sgmicro,sgm41542";
+        reg = <0x3b>;
+        input-current-limit-microamp = <3000000>;
+        input-voltage-limit-microvolt = <4500000>;
+        interrupt-parent = <&gpio0>;
+        interrupts = <26 IRQ_TYPE_EDGE_FALLING>;
+        monitored-battery = <&battery>;
+
+        regulators {
+          otg-vbus {
+            regulator-max-microvolt = <5000000>;
+            regulator-min-microvolt = <5000000>;
+          };
+        };
+      };
+    };
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
