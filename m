Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1BBAC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Mar 2022 10:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=01dXRGp1mSVJe0ZIy5I6ZGPekjRtdp06hchAVUSwSx4=; b=Ri0JaTMaht5zMV
	mpQkXl5Kge5CykAlOhkqq7NGgZMvp4cMgs43z+oPNXHlEDQ5Kg7nArVP6irD0AY9cEHcbPi2oRx8C
	8S77uwGKZX5yc1jH6b12xudbYxYcrv/TmIEQRZhD2s66ZBOrCtx3J8hiE7qbmTsSXXvr1GVwFBKDG
	47yMluZVohvzFW2mALR9b9BfntH4k7isT/tv08FKq6sLMl6AcA7jE09e8p/dymDqzc9hpbxNPhg3O
	o+T8dSIv4qCu5qSj4vXKz2WYNEvMvHD7UrHWO1hpjanF/E7x9bBd9l2F3tB/Mj3zCzu5EEpS2c8GQ
	qL/k6NgJIRi5yF+el4EQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZVjs-00FDDz-G8; Wed, 30 Mar 2022 10:39:44 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZVjf-00FDAK-Fo; Wed, 30 Mar 2022 10:39:33 +0000
Received: by mail-ej1-x629.google.com with SMTP id qa43so40582336ejc.12;
 Wed, 30 Mar 2022 03:39:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HvmiSu9xAVWzXe/vos+wSBdt9erRcs0gCDQxB9pqVmU=;
 b=Nb7h5fOcV9fCrQeAWHkS8H3GUTSFI6dj+3abP914pwFbJCEf7ezBG2jq6doiUOEcbe
 pa3wmC0vMjABFZbMAHIXaVv6IeVopOomX9b+dpxVxHo71cZDh310hTYx1/1ko7o0s3Wp
 iFMNo+MkBLx8SSrG2f9hOPk8A1Hy997E8Cy/TJmD3N0k/CNcf/JmQSZi3IjF04wF1mE7
 SI0+u3vUxZUy1lPqtDl4H65+BHwMxjkE8tNRl4BV3yg2njbHnw3WElF/i9dY9HTGgaeW
 yZrPM6dhgVTVIKd72i/ziGqdU6II96G2oYrGw+SKtaD4JYGnsesoAS64AL1iOYtpXaj2
 ni8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HvmiSu9xAVWzXe/vos+wSBdt9erRcs0gCDQxB9pqVmU=;
 b=CfDnSkXB0mEk0KwEcOYeKAulAWAuVGR3Tx9O9qw1d/N5EbLpwiIAyZLUZjLpObtd8D
 ST0SSpKuHZSfCqEHKbwbGzOXybSznFDLnZ/RRWV9Fp1+DCx7PAE67IARKrldGJFbQ2m9
 QJWtOb+vVwctrKyc2AFTyAs8V3NlLd+ps240nW+deOgad2DrzGCO/mvRErm+NzwQ+/cu
 CCZ+XJFzFCBQ5OzPkJBUACRxJ7smcl6UkM7H5wU3oWA9fLBLM+Rr4b1jEqE3TdQMgVAW
 Kd7P16AxQIaxHhkEmJaVMe3qO5Pd8zBN9tY9STtp2gxGeg69ULmZHgKPmCbGxKXh/DtN
 16xQ==
X-Gm-Message-State: AOAM530AUdvPrjH4qNqGpioouJkhomVnl3fR2MjV5PHa4SEUOaeY2Ft6
 nAZaw2Ql6HdcjsgjSygNGnM=
X-Google-Smtp-Source: ABdhPJzj6PjRZfoG8CmLerET50pv3HRkg/iiOQK9o1YzQSFScT1rWeTxqTuKciAnHVoxRcNz3BT9Eg==
X-Received: by 2002:a17:906:dc90:b0:6e0:1ef7:638f with SMTP id
 cs16-20020a170906dc9000b006e01ef7638fmr39578624ejc.234.1648636769900; 
 Wed, 30 Mar 2022 03:39:29 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 hq15-20020a1709073f0f00b006dfc0fe42b1sm8264920ejc.177.2022.03.30.03.39.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Mar 2022 03:39:29 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2] dt-bindings: clock: convert rockchip,px30-cru.txt to YAML
Date: Wed, 30 Mar 2022 12:39:23 +0200
Message-Id: <20220330103923.11063-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_033931_559109_5BF1CA1E 
X-CRM114-Status: GOOD (  19.20  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Convert rockchip,px30-cru.txt to YAML.

Changes against original bindings:
  Use compatible string: "rockchip,px30-pmucru"

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Changed V2:
  add allOf:if:then: constraining
---
 .../bindings/clock/rockchip,px30-cru.txt      |  70 -----------
 .../bindings/clock/rockchip,px30-cru.yaml     | 119 ++++++++++++++++++
 2 files changed, 119 insertions(+), 70 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,px30-cru.txt
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,px30-cru.yaml

diff --git a/Documentation/devicetree/bindings/clock/rockchip,px30-cru.txt b/Documentation/devicetree/bindings/clock/rockchip,px30-cru.txt
deleted file mode 100644
index 55e78cdde..000000000
--- a/Documentation/devicetree/bindings/clock/rockchip,px30-cru.txt
+++ /dev/null
@@ -1,70 +0,0 @@
-* Rockchip PX30 Clock and Reset Unit
-
-The PX30 clock controller generates and supplies clock to various
-controllers within the SoC and also implements a reset controller for SoC
-peripherals.
-
-Required Properties:
-
-- compatible: PMU for CRU should be "rockchip,px30-pmu-cru"
-- compatible: CRU should be "rockchip,px30-cru"
-- reg: physical base address of the controller and length of memory mapped
-  region.
-- clocks: A list of phandle + clock-specifier pairs for the clocks listed
-          in clock-names
-- clock-names: Should contain the following:
-  - "xin24m" for both PMUCRU and CRU
-  - "gpll" for CRU (sourced from PMUCRU)
-- #clock-cells: should be 1.
-- #reset-cells: should be 1.
-
-Optional Properties:
-
-- rockchip,grf: phandle to the syscon managing the "general register files"
-  If missing, pll rates are not changeable, due to the missing pll lock status.
-
-Each clock is assigned an identifier and client nodes can use this identifier
-to specify the clock which they consume. All available clocks are defined as
-preprocessor macros in the dt-bindings/clock/px30-cru.h headers and can be
-used in device tree sources. Similar macros exist for the reset sources in
-these files.
-
-External clocks:
-
-There are several clocks that are generated outside the SoC. It is expected
-that they are defined using standard clock bindings with following
-clock-output-names:
- - "xin24m" - crystal input - required,
- - "xin32k" - rtc clock - optional,
- - "i2sx_clkin" - external I2S clock - optional,
- - "gmac_clkin" - external GMAC clock - optional
-
-Example: Clock controller node:
-
-	pmucru: clock-controller@ff2bc000 {
-		compatible = "rockchip,px30-pmucru";
-		reg = <0x0 0xff2bc000 0x0 0x1000>;
-		#clock-cells = <1>;
-		#reset-cells = <1>;
-	};
-
-	cru: clock-controller@ff2b0000 {
-		compatible = "rockchip,px30-cru";
-		reg = <0x0 0xff2b0000 0x0 0x1000>;
-		rockchip,grf = <&grf>;
-		#clock-cells = <1>;
-		#reset-cells = <1>;
-	};
-
-Example: UART controller node that consumes the clock generated by the clock
-  controller:
-
-	uart0: serial@ff030000 {
-		compatible = "rockchip,px30-uart", "snps,dw-apb-uart";
-		reg = <0x0 0xff030000 0x0 0x100>;
-		interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&pmucru SCLK_UART0_PMU>, <&pmucru PCLK_UART0_PMU>;
-		clock-names = "baudclk", "apb_pclk";
-		reg-shift = <2>;
-		reg-io-width = <4>;
-	};
diff --git a/Documentation/devicetree/bindings/clock/rockchip,px30-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,px30-cru.yaml
new file mode 100644
index 000000000..3eec381c7
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/rockchip,px30-cru.yaml
@@ -0,0 +1,119 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/rockchip,px30-cru.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip PX30 Clock and Reset Unit (CRU)
+
+maintainers:
+  - Elaine Zhang <zhangqing@rock-chips.com>
+  - Heiko Stuebner <heiko@sntech.de>
+
+description: |
+  The PX30 clock controller generates and supplies clocks to various
+  controllers within the SoC and also implements a reset controller for SoC
+  peripherals.
+  Each clock is assigned an identifier and client nodes can use this identifier
+  to specify the clock which they consume. All available clocks are defined as
+  preprocessor macros in the dt-bindings/clock/px30-cru.h headers and can be
+  used in device tree sources. Similar macros exist for the reset sources in
+  these files.
+  There are several clocks that are generated outside the SoC. It is expected
+  that they are defined using standard clock bindings with following
+  clock-output-names:
+    - "xin24m"     - crystal input       - required
+    - "xin32k"     - rtc clock           - optional
+    - "i2sx_clkin" - external I2S clock  - optional
+    - "gmac_clkin" - external GMAC clock - optional
+
+properties:
+  compatible:
+    enum:
+      - rockchip,px30-cru
+      - rockchip,px30-pmucru
+
+  reg:
+    maxItems: 1
+
+  "#clock-cells":
+    const: 1
+
+  "#reset-cells":
+    const: 1
+
+  clocks:
+    minItems: 1
+    items:
+      - description: Clock for both PMUCRU and CRU
+      - description: Clock for CRU (sourced from PMUCRU)
+
+  clock-names:
+    minItems: 1
+    items:
+      - const: xin24m
+      - const: gpll
+
+  rockchip,grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to the syscon managing the "general register files" (GRF),
+      if missing pll rates are not changeable, due to the missing pll
+      lock status.
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - "#clock-cells"
+  - "#reset-cells"
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,px30-cru
+
+    then:
+      properties:
+        clocks:
+          minItems: 2
+
+        clock-names:
+          minItems: 2
+
+    else:
+      properties:
+        clocks:
+          maxItems: 1
+
+        clock-names:
+          maxItems: 1
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/px30-cru.h>
+
+    pmucru: clock-controller@ff2bc000 {
+      compatible = "rockchip,px30-pmucru";
+      reg = <0xff2bc000 0x1000>;
+      clocks = <&xin24m>;
+      clock-names = "xin24m";
+      rockchip,grf = <&grf>;
+      #clock-cells = <1>;
+      #reset-cells = <1>;
+    };
+
+    cru: clock-controller@ff2b0000 {
+      compatible = "rockchip,px30-cru";
+      reg = <0xff2b0000 0x1000>;
+      clocks = <&xin24m>, <&pmucru PLL_GPLL>;
+      clock-names = "xin24m", "gpll";
+      rockchip,grf = <&grf>;
+      #clock-cells = <1>;
+      #reset-cells = <1>;
+    };
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
