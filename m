Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36AB0C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Dec 2022 19:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xf+mA7DeWSCJ6nZ79WVjmRpem4ulT16pSdgvRXH0cj0=; b=ceoHEABxOQXLv5
	fBfcPVF/TBhvPYQMhuY3S12OaBgeUlGlVNaF7MVYkMET7lBgTfCQJVWVe2Ua0bm8lhQ5T1xEtjKip
	cLnWHmlVs4UHqWmevaOgIqBv96uXEbU8rQ5IFVZcNZmhyV/NWkYS+c/qc9ud6l7asbFt2+0NxmKL9
	EiwbqgSk0HcV0PjHgUGRDJbjOPp2xQIdI2GiDbwDQCRX/nHovp7li50LRIn+ydgSyrRAhgc4SlqrZ
	NeoDUwIY1IoRdSOIV4Q/oZA3NFSErXUcVmiy298IAIoQcvUhFxHLEbZVNRZ6Xt4azs0k++UjbOPoN
	uJrihkS/FdWmKoUSn7qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7MDl-001Rdj-CL; Mon, 19 Dec 2022 19:54:45 +0000
Received: from mail-oa1-f54.google.com ([209.85.160.54])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7LXN-000dzD-QV; Mon, 19 Dec 2022 19:10:59 +0000
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-144b21f5e5fso12672649fac.12;
        Mon, 19 Dec 2022 11:10:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gHyNrMLw9TVdwvo9glGPtmC9whUFGDHMxj6CFCq5jcQ=;
        b=1WNxUVLyHLGH/Q1u8zATa0aH8btxkiLi40/BJP/3vPgQWhwuJHQjJ2mHq/eabu2zar
         cvTYmaFsaaZMDOMqbcL963VBAXn9QhOaBIQz7Bea9V7x3vMfSbdj/6zr1cS/Qj7Jxnsu
         FhqpMI1nuJSvtyoBJ/BVeK5ZExUmGkfvvC6gCOlI172+Gzz6kw+wFkdhuAFEAYGqCHmx
         FMZ1RVELURdBQtb4NrI4tx1FC5GGJjniNfvNTokxaTYTgWM+XT6XpszRmvscdPDOKK/Y
         gouOsc+qEm4wBM8AEZH8932pB5zKPrqW12j64i/tcoixoSnoT6CS34pdafceMj2kU+HN
         yW2w==
X-Gm-Message-State: ANoB5pkiICuFqoX8ANJXjQjCit4sS4E1nj709B98pJTnEcyMJWfWLOkb
	vrKoANJ8S7bEhdf79fAJ0w==
X-Google-Smtp-Source: AA0mqf4ztAfqoCZ6mZ2cdyIEJB0UEQoy+ZFvktD++nPsr/zZhNIUv1aPDTv895sfSbNoXEc2hhllRg==
X-Received: by 2002:a05:6870:c10e:b0:144:54b3:750 with SMTP id f14-20020a056870c10e00b0014454b30750mr21813961oad.12.1671477057063;
        Mon, 19 Dec 2022 11:10:57 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id w11-20020a056870430b00b001447602267esm5007095oah.41.2022.12.19.11.10.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Dec 2022 11:10:56 -0800 (PST)
Received: (nullmailer pid 1974257 invoked by uid 1000);
	Mon, 19 Dec 2022 19:10:56 -0000
From: Rob Herring <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Felipe Balbi <balbi@kernel.org>
Cc: linux-rockchip@lists.infradead.org, Johan Jonker <jbx6244@gmail.com>, linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] dt-bindings: usb: rockchip,dwc3: Move RK3399 to its own schema
Date: Mon, 19 Dec 2022 13:10:38 -0600
Message-Id: <20221219191038.1973807-2-robh@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221219191038.1973807-1-robh@kernel.org>
References: <20221219191038.1973807-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221219_111057_964927_150466C4 
X-CRM114-Status: GOOD (  17.64  )
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

The rockchip,dwc3.yaml schema defines a single DWC3 node, but the RK3399
uses the discouraged parent wrapper node and child 'generic' DWC3 node.
The intent was to modify the RK3399 DTs to use a single node, but the DT
changes were rejected for ABI reasons. However, the schema was accepted
as-is.

To fix this, we need to move the RK3399 binding to its own schema file.
The RK3328 and RK3568 bindings are correct and use a single node.

Cc: Johan Jonker <jbx6244@gmail.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../bindings/usb/rockchip,dwc3.yaml           |  10 +-
 .../bindings/usb/rockchip,rk3399-dwc3.yaml    | 115 ++++++++++++++++++
 2 files changed, 119 insertions(+), 6 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/usb/rockchip,rk3399-dwc3.yaml

diff --git a/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
index b3798d94d2fd..edb130c780e4 100644
--- a/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
@@ -29,7 +29,6 @@ select:
       contains:
         enum:
           - rockchip,rk3328-dwc3
-          - rockchip,rk3399-dwc3
           - rockchip,rk3568-dwc3
   required:
     - compatible
@@ -39,7 +38,6 @@ properties:
     items:
       - enum:
           - rockchip,rk3328-dwc3
-          - rockchip,rk3399-dwc3
           - rockchip,rk3568-dwc3
       - const: snps,dwc3
 
@@ -90,7 +88,7 @@ required:
 
 examples:
   - |
-    #include <dt-bindings/clock/rk3399-cru.h>
+    #include <dt-bindings/clock/rk3328-cru.h>
     #include <dt-bindings/interrupt-controller/arm-gic.h>
 
     bus {
@@ -98,11 +96,11 @@ examples:
       #size-cells = <2>;
 
       usbdrd3_0: usb@fe800000 {
-        compatible = "rockchip,rk3399-dwc3", "snps,dwc3";
+        compatible = "rockchip,rk3328-dwc3", "snps,dwc3";
         reg = <0x0 0xfe800000 0x0 0x100000>;
         interrupts = <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>;
-        clocks = <&cru SCLK_USB3OTG0_REF>, <&cru SCLK_USB3OTG0_SUSPEND>,
-                 <&cru ACLK_USB3OTG0>, <&cru ACLK_USB3_GRF>;
+        clocks = <&cru SCLK_USB3OTG_REF>, <&cru SCLK_USB3OTG_SUSPEND>,
+                <&cru ACLK_USB3OTG>;
         clock-names = "ref_clk", "suspend_clk",
                       "bus_clk", "grf_clk";
         dr_mode = "otg";
diff --git a/Documentation/devicetree/bindings/usb/rockchip,rk3399-dwc3.yaml b/Documentation/devicetree/bindings/usb/rockchip,rk3399-dwc3.yaml
new file mode 100644
index 000000000000..e39a8a3a7ab3
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/rockchip,rk3399-dwc3.yaml
@@ -0,0 +1,115 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/rockchip,rk3399-dwc3.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip RK3399 SuperSpeed DWC3 USB SoC controller
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    const: rockchip,rk3399-dwc3
+
+  '#address-cells':
+    const: 2
+
+  '#size-cells':
+    const: 2
+
+  ranges: true
+
+  clocks:
+    items:
+      - description:
+          Controller reference clock, must to be 24 MHz
+      - description:
+          Controller suspend clock, must to be 24 MHz or 32 KHz
+      - description:
+          Master/Core clock, must to be >= 62.5 MHz for SS
+          operation and >= 30MHz for HS operation
+      - description:
+          USB3 aclk peri
+      - description:
+          USB3 aclk
+      - description:
+          Controller grf clock
+
+  clock-names:
+    items:
+      - const: ref_clk
+      - const: suspend_clk
+      - const: bus_clk
+      - const: aclk_usb3_rksoc_axi_perf
+      - const: aclk_usb3
+      - const: grf_clk
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    const: usb3-otg
+
+patternProperties:
+  '^usb@':
+    $ref: snps,dwc3.yaml#
+
+additionalProperties: false
+
+required:
+  - compatible
+  - '#address-cells'
+  - '#size-cells'
+  - ranges
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3399-cru.h>
+    #include <dt-bindings/power/rk3399-power.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    bus {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        usb {
+            compatible = "rockchip,rk3399-dwc3";
+            #address-cells = <2>;
+            #size-cells = <2>;
+            ranges;
+            clocks = <&cru SCLK_USB3OTG0_REF>, <&cru SCLK_USB3OTG0_SUSPEND>,
+              <&cru ACLK_USB3OTG0>, <&cru ACLK_USB3_RKSOC_AXI_PERF>,
+              <&cru ACLK_USB3>, <&cru ACLK_USB3_GRF>;
+            clock-names = "ref_clk", "suspend_clk",
+                    "bus_clk", "aclk_usb3_rksoc_axi_perf",
+                    "aclk_usb3", "grf_clk";
+            resets = <&cru SRST_A_USB3_OTG0>;
+            reset-names = "usb3-otg";
+
+            usb@fe800000 {
+                compatible = "snps,dwc3";
+                reg = <0x0 0xfe800000 0x0 0x100000>;
+                interrupts = <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH 0>;
+                clocks = <&cru SCLK_USB3OTG0_REF>, <&cru ACLK_USB3OTG0>,
+                  <&cru SCLK_USB3OTG0_SUSPEND>;
+                clock-names = "ref", "bus_early", "suspend";
+                dr_mode = "otg";
+                phys = <&u2phy0_otg>, <&tcphy0_usb3>;
+                phy-names = "usb2-phy", "usb3-phy";
+                phy_type = "utmi_wide";
+                snps,dis_enblslpm_quirk;
+                snps,dis-u2-freeclk-exists-quirk;
+                snps,dis_u2_susphy_quirk;
+                snps,dis-del-phy-power-chg-quirk;
+                snps,dis-tx-ipgap-linecheck-quirk;
+                power-domains = <&power RK3399_PD_USB3>;
+            };
+        };
+    };
+...
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
