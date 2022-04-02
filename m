Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6D12C433FE
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 14:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dHBhcuO1irWvO4bt+MjmVMkYkZnG3/c8spP3odGyEww=; b=r8tH+Tp3KG7g21
	YnPCBbQ+nTbleNKRw65pzVcGxxjeyUXhJ6J/LiHYe0Rn4YLejoNNkweUQOGFqyCNUrGMJAJclQltC
	pLX2R5WPrQag14uQivxM1T/4xJsFifp597vxR4sv3zhMrvw7VKb5khmUsSsU9T6nkfBPq7KLcASIw
	afybbm//bMvp1jkkWXnoMfdur2ZcWpTAvMQC2Y9X4sJIhAyO6AZLPddb6Xuuhd6AtaPi61j51mc58
	CwI1+JHfU6lnruYUx6laJtsW61ZLa9pPbSEEshWOlcim9CU5KU389WKKFxY/lMbK1cb6V6ZIRmURF
	eyJ1RxTfiYeJcxbwaiJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naesh-009JfY-ER; Sat, 02 Apr 2022 14:37:35 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naerw-009JEb-Dh; Sat, 02 Apr 2022 14:36:51 +0000
Received: by mail-ej1-x629.google.com with SMTP id qh7so1398362ejb.11;
 Sat, 02 Apr 2022 07:36:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ay5bIkDMN0uWXFaucFOQ03lqhqXOzPmmv54m4o8auLE=;
 b=RvgbPEG3WIiL//B+ubI3vbRFJWsOVYJku3J9ODjBbgB1bLKL0HE6yHEpz7c0zAEFoN
 w7WiczXcCXezSPwFP5LqpDHoGG9De5viqdBAgEgAwa4apaYbR/mU093W6ZqzW6QZXbbM
 t8ch6M0V6mJsKJJo0+crOv8cGXYX7AOfq4sQYQsYhGmEn9qj05qYEK0OA1yz/01L1Dun
 U1Dw0nWZPGiSSWZ9wJNcGBci24sNtT1Ssyj4TQ42/d32seY0xLUMdSBUaAf9LY2Al6pv
 RS9XH11lyqWAD70gS/S22z5YUM9Vp6Jm7Do8nTPDYtnJfHD6SZN231AI1+Vm8KfFLg7h
 BZmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ay5bIkDMN0uWXFaucFOQ03lqhqXOzPmmv54m4o8auLE=;
 b=JNHjJyDnsyLDcoey9csBb7V3OT7Ei1YifyhGww3OC/VTpBJEngwCcd46Kk8My1eWU5
 ayLy71QAckyIkHltgKV7qEWYbIYz/8rOhu0C9GXqm9m9mAsXO2LS1DxMt+ScGrwEvZOu
 Qy6h+gGxAqYL0//YiIdrQj9WFC3bN+meuSVt2SV4LGFR262MUEssmcUaqHXT0dxOEXEA
 e3rrqvgjmNdLS2qC6qshyayJEh8y4FYwxnIqPiCd9uRoOFWXH/tPp+97QzfOpfT98fUG
 ICRAJiybvYg36qbiPn7jLT8t7K7RHTcMrfkxpMn4AyJX3b4llrlFS9rayyNEoroYQZWy
 xP7w==
X-Gm-Message-State: AOAM530UXsj+Mj8OSOCbLzg5yAv26bTSTalKEhTowAln3x0uCiHITUJz
 AxJ+4hf4JaSuDT+KooCaO6E=
X-Google-Smtp-Source: ABdhPJxm4mqwNr+KeTDo/7qreofruqZueesSFWpUFtS4m+sFct+MNlyiLH22R+eW/XGiaHx72ivOSQ==
X-Received: by 2002:a17:907:2cc3:b0:6e6:45fb:39fa with SMTP id
 hg3-20020a1709072cc300b006e645fb39famr2593392ejc.545.1648910204514; 
 Sat, 02 Apr 2022 07:36:44 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 bp8-20020a170907918800b006e0daaa63ddsm2169557ejb.60.2022.04.02.07.36.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Apr 2022 07:36:44 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 01/16] dt-bindings: clock: convert rockchip,
 px30-cru.txt to YAML
Date: Sat,  2 Apr 2022 16:36:21 +0200
Message-Id: <20220402143636.15222-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220402143636.15222-1-jbx6244@gmail.com>
References: <20220402143636.15222-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_073648_526751_3B962587 
X-CRM114-Status: GOOD (  20.07  )
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

Changed V4:
  add more clocks

Changed V2:
  add allOf:if:then: constraining
---
 .../bindings/clock/rockchip,px30-cru.txt      |  70 ----------
 .../bindings/clock/rockchip,px30-cru.yaml     | 120 ++++++++++++++++++
 2 files changed, 120 insertions(+), 70 deletions(-)
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
index 000000000..c88e7e3db
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/rockchip,px30-cru.yaml
@@ -0,0 +1,120 @@
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
+  that they are defined using standard clock bindings with the
+  clock-output-names defined in this schema.
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
+  clocks:
+    minItems: 1
+    maxItems: 5
+
+  clock-names:
+    minItems: 1
+    maxItems: 5
+
+  rockchip,grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to the syscon managing the "general register files" (GRF),
+      if missing pll rates are not changeable, due to the missing pll
+      lock status.
+
+  "#clock-cells":
+    const: 1
+
+  "#reset-cells":
+    const: 1
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
+          minItems: 1
+          maxItems: 5
+
+        clock-names:
+          minItems: 1
+          maxItems: 5
+          items:
+            enum:
+              - xin24m
+              - xin32k
+              - gpll
+              - gmac_clkin
+              - i2sx_clkin
+
+    else:
+      properties:
+        clocks:
+          maxItems: 1
+
+        clock-names:
+          const: xin24m
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
