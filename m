Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1D69C38147
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Jan 2023 19:31:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XRTOTSvBrQYNQlsH3LQtOYStVf9pNkCufbYLoVdYRKM=; b=ZVXjJQPQi32mBs
	3DhVZeiukZ4CiX+j0L70xdR+gEmXN/G+U2Y4F98LiJV0BmbOPnn838tA5rcprrIPi1D5xNkB+Bxf5
	hpX0ICr9ocgJZymZgeYHfIJ8Rpfsr+nH0mPkUyocj6uSvrQVvGAGLHOOOvVVLe8J5Eq+B+jBVd9KH
	RhhPE1HAPb98hjbqp8olPtf5RvfSui/6/V4CdKk5bDOM/W+Apy7+7GrBA4XcQT2CNRVC4Xlav01IW
	x52INL6s+106KAoPZVqCnbzWCQ9CyjbFXLknA1pEGGn+UDamVbjb2mOZEaQfcMCg+xSVy9OuyKthH
	ad4PvoI7T3mmZ8PV0hDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIE9c-002VnL-2D; Wed, 18 Jan 2023 19:31:24 +0000
Received: from mail-oa1-f53.google.com ([209.85.160.53])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIE9I-002VdF-J6; Wed, 18 Jan 2023 19:31:06 +0000
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-15f97c478a8so5692fac.13;
        Wed, 18 Jan 2023 11:31:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=my6ZdLv862wYg9TxuhtKrEA+XZxlWplWgg57C2nOybM=;
        b=rrS0NKODnSOQfspN2MdGVDxXCOAt9+6By9nS3CLo/SQc1n6bbmvpTslaPIje0Ko/kx
         vR9vURQsrQ1pR+wewL3O4uh/hIFSykldlQIERa6pVvfgaD2KNAdqDxOFmGfwE9WrQqjT
         18ZNAeFKCHDPpK+fxw9ByYFr4plZxnpTZevHhSdG3YyMM/W3exIGMApGajQtVDChfYSW
         e8XzFQ2W3VY0sgcwPhIBSDK/lNOxqNkEPUKnDHQ2IWB8n3v0EzkvJBzslz5cyyz17Z11
         lpq8CQgjRHgAqAQ2Q87iWGZxh1NWn+eQH3Jeuow1+bVWbdxwLGID5e53DkkrIR7PPsn6
         datw==
X-Gm-Message-State: AFqh2kpqvx5DYOIPG6v9NI8rc4NKwIoMIxAvd2apHTHejMTKjqKL1ZLn
	eLwWy1e66ZTd2S37MX6Pdg==
X-Google-Smtp-Source: AMrXdXuTYP5x9FCt8KmW/4bqFsCXQmRSADl5rnPcURlrjiznG1eL4rfMkjqN8aHngMRnog6MAtQkNA==
X-Received: by 2002:a05:6870:7997:b0:15b:9fb0:864c with SMTP id he23-20020a056870799700b0015b9fb0864cmr4818573oab.19.1674070263292;
        Wed, 18 Jan 2023 11:31:03 -0800 (PST)
Received: from robh_at_kernel.org ([4.31.143.193])
        by smtp.gmail.com with ESMTPSA id eq2-20020a056870a90200b0014fb4bdc746sm18709458oab.8.2023.01.18.11.31.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jan 2023 11:31:02 -0800 (PST)
Received: (nullmailer pid 673667 invoked by uid 1000);
	Wed, 18 Jan 2023 19:31:01 -0000
From: Rob Herring <robh@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Felipe Balbi <balbi@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Johan Jonker <jbx6244@gmail.com>, linux-rockchip@lists.infradead.org, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] dt-bindings: usb: rockchip,dwc3: Move RK3399 to its own schema
Date: Wed, 18 Jan 2023 13:30:56 -0600
Message-Id: <20230118193056.673514-2-robh@kernel.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230118193056.673514-1-robh@kernel.org>
References: <20230118193056.673514-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_113104_692365_D8262882 
X-CRM114-Status: GOOD (  17.36  )
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
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
