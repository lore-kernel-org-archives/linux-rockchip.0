Return-Path: <SRS0=290H=HD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0855AC433E6
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Feb 2021 19:16:44 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8046B64E92
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Feb 2021 19:16:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8046B64E92
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PsHf3fr8ylEJkzyK9bcWFCVFNXUb6Gb6gzJ0L7mdnDA=; b=I5iuZSINAFsVs72oJPkGNbTU4G
	NOmqdnE/Yys6RA9g4nGQvmMldHiens/XlNiza6vQaDnnZyAx3Q3P37ueeHVRmNSJ2V1uNLGUr+bky
	1XO5AiIDm2spH1hqHazLvCCTugua7ZHjE6mrMra9o+1w/lvtStmdQPHeqXHHEjbOUwNFuFRpTsFi1
	8YSUm2Rjo0UOiIup6zvhdLzhGP9uaMUMqHxj73bvW+S4lK1zStzhSb7UhcbyuIX+2snlPlpXhXG7p
	oDdU0CndeXur3jbmQfRUSiXFZ5nAj6iKcDLJzPnyT1uOAQzvBfWhx0X3MsUTlOMI56IfOrVwZ2OuO
	8hvQI9Mw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l6egc-0006m0-2K; Mon, 01 Feb 2021 19:16:34 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l6egY-0006k1-DQ; Mon, 01 Feb 2021 19:16:31 +0000
Received: by mail-ed1-x52e.google.com with SMTP id c6so20221188ede.0;
 Mon, 01 Feb 2021 11:16:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Vudz7Jq3CovoiOUmAZDu7pX1ATasm53I9HD8Bq8Ch+U=;
 b=NOlicBRSikm/UtWBLnB71WogDHzgE/ktshfE/+H9dMxldgy4S53TuPHzO6DFWyp7om
 Tkisu2JF0glF1rVvZId9xYSyvLmsVoHCNRBN4A2sWamEKXSTGHRpOpkTnTqDOg82Spy9
 pa232VTfbmnzbh4ZjA/ivPBI2ayKjpEsXY9s8uPYIxWEwX7Om8Amt50CgB1BVWm+Qyva
 G8O1tsMPBvl/eiaiy8vZU/ADdjoC18CYxDLE0oL8bXFuYlBJKp6/MYkGbhx85TmhqDIX
 LtgCN4wW4Kj/LeFFca28hSmeRriTBQnbAAiUVRoeoysAIthTT9KGWtO18IjyUOazj5k1
 FE9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Vudz7Jq3CovoiOUmAZDu7pX1ATasm53I9HD8Bq8Ch+U=;
 b=MHacOI5UrBmZPEQ63UW55l2XKY59y8tVFRLFNiacYd1zRR+qFhT9WHph6PUXmUkBnW
 K7FguOiwvixs+o7z9iM/QkAuI5Z1cLnP+xaXQb1dZVqInSKthuiY5IzWkJtURpgE0Ba1
 bCtoXvaFUDXqfhRJT5XKGla1aa7cgPMEqUXuNx90baPRW5MBszvI+HN7OBfQVHZA+3sM
 6ZQRD7+1ln/8mPu+PuazwH2M9IoSYTAh0Rj64bdorfsMf/XIY0PbWOgBE1fjGx0LTUYF
 gZAfQjOJuZys1E3wqFSWFKDgt1PKv263/fk2jUT6z/GuxWTTjveFpkzbyibMKlA/pt6k
 oNhA==
X-Gm-Message-State: AOAM5331orvJWHv5TrR5Mrnos/nP8dphBp75DYYv3FOsOyh2gILosGk3
 REjhhi9VSGh1P58q04Ju5rE=
X-Google-Smtp-Source: ABdhPJwj/wg6nbbgC4bHudj+wMwJo0zVmkxIcLcYyFNyKLt7bB/XHOd8IiYRotcGBgJyuBgFB5azcw==
X-Received: by 2002:a50:fd0b:: with SMTP id i11mr11985392eds.387.1612206986770; 
 Mon, 01 Feb 2021 11:16:26 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id a11sm8243630ejc.64.2021.02.01.11.16.25
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 01 Feb 2021 11:16:26 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v1 1/5] dt-bindings: usb: convert rockchip,dwc3.txt to yaml
Date: Mon,  1 Feb 2021 20:16:15 +0100
Message-Id: <20210201191619.32353-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210201_141630_530081_DC0A770E 
X-CRM114-Status: GOOD (  17.60  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: balbi@kernel.org, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

In the past Rockchip dwc3 usb nodes were manually checked.
With the conversion of snps,dwc3.yaml as common document
we now can convert rockchip,dwc3.txt to yaml as well.

Added properties for rk3399 are:
  resets
  reset-names

Generic properties that are now also filtered:
  "#address-cells"
  "#size-cells"
  ranges

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../devicetree/bindings/usb/rockchip,dwc3.txt      |  56 -----------
 .../devicetree/bindings/usb/rockchip,dwc3.yaml     | 107 +++++++++++++++++++++
 2 files changed, 107 insertions(+), 56 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/usb/rockchip,dwc3.txt
 create mode 100644 Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml

diff --git a/Documentation/devicetree/bindings/usb/rockchip,dwc3.txt b/Documentation/devicetree/bindings/usb/rockchip,dwc3.txt
deleted file mode 100644
index 945204932..000000000
--- a/Documentation/devicetree/bindings/usb/rockchip,dwc3.txt
+++ /dev/null
@@ -1,56 +0,0 @@
-Rockchip SuperSpeed DWC3 USB SoC controller
-
-Required properties:
-- compatible:	should contain "rockchip,rk3399-dwc3" for rk3399 SoC
-- clocks:	A list of phandle + clock-specifier pairs for the
-		clocks listed in clock-names
-- clock-names:	Should contain the following:
-  "ref_clk"	Controller reference clk, have to be 24 MHz
-  "suspend_clk"	Controller suspend clk, have to be 24 MHz or 32 KHz
-  "bus_clk"	Master/Core clock, have to be >= 62.5 MHz for SS
-		operation and >= 30MHz for HS operation
-  "grf_clk"	Controller grf clk
-
-Required child node:
-A child node must exist to represent the core DWC3 IP block. The name of
-the node is not important. The content of the node is defined in dwc3.txt.
-
-Phy documentation is provided in the following places:
-Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml - USB2.0 PHY
-Documentation/devicetree/bindings/phy/phy-rockchip-typec.txt     - Type-C PHY
-
-Example device nodes:
-
-	usbdrd3_0: usb@fe800000 {
-		compatible = "rockchip,rk3399-dwc3";
-		clocks = <&cru SCLK_USB3OTG0_REF>, <&cru SCLK_USB3OTG0_SUSPEND>,
-			 <&cru ACLK_USB3OTG0>, <&cru ACLK_USB3_GRF>;
-		clock-names = "ref_clk", "suspend_clk",
-			      "bus_clk", "grf_clk";
-		#address-cells = <2>;
-		#size-cells = <2>;
-		ranges;
-		usbdrd_dwc3_0: dwc3@fe800000 {
-			compatible = "snps,dwc3";
-			reg = <0x0 0xfe800000 0x0 0x100000>;
-			interrupts = <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>;
-			dr_mode = "otg";
-		};
-	};
-
-	usbdrd3_1: usb@fe900000 {
-		compatible = "rockchip,rk3399-dwc3";
-		clocks = <&cru SCLK_USB3OTG1_REF>, <&cru SCLK_USB3OTG1_SUSPEND>,
-			 <&cru ACLK_USB3OTG1>, <&cru ACLK_USB3_GRF>;
-		clock-names = "ref_clk", "suspend_clk",
-			      "bus_clk", "grf_clk";
-		#address-cells = <2>;
-		#size-cells = <2>;
-		ranges;
-		usbdrd_dwc3_1: dwc3@fe900000 {
-			compatible = "snps,dwc3";
-			reg = <0x0 0xfe900000 0x0 0x100000>;
-			interrupts = <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH>;
-			dr_mode = "otg";
-		};
-	};
diff --git a/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
new file mode 100644
index 000000000..681086fa6
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
@@ -0,0 +1,107 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/rockchip,dwc3.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip SuperSpeed DWC3 USB SoC controller
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3399-dwc3
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
+          Controller aclk_usb3_rksoc_axi_perf clock
+      - description:
+          Controller aclk_usb3 clock
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
+  "#address-cells":
+    const: 2
+
+  "#size-cells":
+    const: 2
+
+  ranges: true
+
+patternProperties:
+  "^usb@[a-f0-9]+$":
+    type: object
+
+    $ref: "snps,dwc3.yaml"
+
+    description:
+      A child node must exist to represent the core DWC3 IP block.
+      The content of the node is defined in snps,dwc3.yaml.
+
+      Phy documentation is provided in the following places.
+
+      USB2.0 PHY
+      Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
+
+      Type-C PHY
+      Documentation/devicetree/bindings/phy/phy-rockchip-typec.txt
+
+    unevaluatedProperties: false
+
+additionalProperties: false
+
+required:
+  - compatible
+  - clocks
+  - clock-names
+  - "#address-cells"
+  - "#size-cells"
+  - ranges
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3399-cru.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    usbdrd3_0: usb@fe800000 {
+      compatible = "rockchip,rk3399-dwc3";
+      clocks = <&cru SCLK_USB3OTG0_REF>, <&cru SCLK_USB3OTG0_SUSPEND>,
+               <&cru ACLK_USB3OTG0>, <&cru ACLK_USB3_RKSOC_AXI_PERF>,
+               <&cru ACLK_USB3>, <&cru ACLK_USB3_GRF>;
+      clock-names = "ref_clk", "suspend_clk",
+                    "bus_clk", "aclk_usb3_rksoc_axi_perf",
+                    "aclk_usb3", "grf_clk";
+      #address-cells = <2>;
+      #size-cells = <2>;
+      ranges;
+      usbdrd_dwc3_0: usb@fe800000 {
+        compatible = "snps,dwc3";
+        reg = <0x0 0xfe800000 0x0 0x100000>;
+        interrupts = <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>;
+        dr_mode = "otg";
+      };
+    };
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
