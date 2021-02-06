Return-Path: <SRS0=YjQ7=HI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1439C433E0
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Feb 2021 18:50:48 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9470F64E64
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Feb 2021 18:50:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9470F64E64
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=sE+KNGcqjQNZiKkyZyyKTAMypCPevAHyuJz5IBUHcnk=; b=1lp7+c1qVC+u4Sv0s8CuS8gry6
	3/RYifVW1SrG1GmJbazLXgk1eLewC6FhGPZ6oHV+nIX9oc1RNJYYVoE+upmH/a8vfsChd5s5bzTsB
	3OfEsEeV8EwVvd77+h0kzx1hFA1A0vAWMVnNQnlYAmK8UEIMaSEpcaLloMlZPRh00BRcUO4d54x0Z
	lGPcs8PygC94go/LsAtebt+jF3RZ8L0azkD25FhRVnns3x8QvWfahFU/BMou7DK+B/Rx/xlNdsDM6
	rCC5oXbFy4Y4Wf+ifw1S6q7DKOYI/5U0CCypw6LdEGZuvv4Zfdl3OuGomsgkmE2Rys5ioXrtQRYEV
	KKYH+rgA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l8SfJ-0003xE-PM; Sat, 06 Feb 2021 18:50:41 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l8Sf7-0003sl-49; Sat, 06 Feb 2021 18:50:33 +0000
Received: by mail-ed1-x535.google.com with SMTP id c6so13431787ede.0;
 Sat, 06 Feb 2021 10:50:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=bP2TkjSLtuteWO1JClrvBULCopI78AgBBGVLp8X9jmQ=;
 b=IbVYJ/q8Z7A6d/Xr02l4CahlviL1LKWrvb5J55d6X8YEJcjlKMfavAmc0/gfUQLeC0
 wt8pBLwvDmb7mAdrO2g+TvAZ+ZPZnsD2cef8FAxa4WR7aRHhsmVhYABN0zN0bI0w3AAz
 +foSuKIdfEdlWd8O5Y2TLGcEpIGAPqjzQMarpVcCNiu4t2iPFxhQuhvdZO3AuiPaqEua
 TLMuOldX6eRs23HWyFYO0KQnltST447KN8eU2t5GxisoA0c/N9jHdapoROCy1p1A/b/A
 KgZ5NkOEYgE77xxF7KRzkf97m2aySfqkdTZDQZp9KgZa0KjUZYl0KffBy7vjpvDU87eF
 HSdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=bP2TkjSLtuteWO1JClrvBULCopI78AgBBGVLp8X9jmQ=;
 b=QrDLPykwYcAccBE50WUxCH+kJ7UI3Jl2iJUtVPOJG/MIi+7QCgwHzjrAerJBgqLqPb
 RVh3JFqjOjM5A0G6dw88eBFlJq5/WE8f1Rzwwq+FThp/oWZQsvy4aDVLEdoUxMlHlTHt
 2KfkzL/l0HH3xhbV7fxFEwkfj/BAW6sEVrIdlBM0Z8yo8lOySqbmP0xk/W2erWPVc7Gq
 ics6tIBuIHNpvll04E4M+VAtJ3Gozj2S/hBvJwi+XQ281vgB/C5iEvHSCHLD9bo6xT+e
 SQlDjqODrcDxxN1i0FYeshtEd5jRi6dJuzgOSnsSvkPjWNr6ydtCgBI/v45sqxQADDq8
 FduQ==
X-Gm-Message-State: AOAM5309J5fmcIEW7g2GSVopartdpFl/4WjNx8b5oQrrRQdN75tbAgs0
 jD3Lp6irUhA+bYNyEsZTUbRjvPY4Fdk=
X-Google-Smtp-Source: ABdhPJzUaY32Do01BL+HSNCqVecost6y7Df+ZCiCLRaYiYPG5W6KhJek61a00VsrqlxspFZjh1Jupg==
X-Received: by 2002:a05:6402:6d6:: with SMTP id
 n22mr9478788edy.128.1612637426105; 
 Sat, 06 Feb 2021 10:50:26 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id cb21sm5890005edb.57.2021.02.06.10.50.24
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 06 Feb 2021 10:50:25 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v4 1/8] dt-bindings: usb: convert rockchip,dwc3.txt to yaml
Date: Sat,  6 Feb 2021 19:50:10 +0100
Message-Id: <20210206185017.1817-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210206_135029_201198_9D915ED9 
X-CRM114-Status: GOOD (  16.50  )
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
Cc: devicetree@vger.kernel.org, balbi@kernel.org, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

In the past Rockchip dwc3 usb nodes were manually checked.
With the conversion of snps,dwc3.yaml as common document
we now can convert rockchip,dwc3.txt to yaml as well.
Remove node wrapper.

Added properties for rk3399 are:
  power-domains
  resets
  reset-names

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
Changed V3:
  remove aclk_usb3_rksoc_axi_perf
  remove aclk_usb3

Changed V2:
  remove node wrapper
---
 .../devicetree/bindings/usb/rockchip,dwc3.txt      | 56 -------------
 .../devicetree/bindings/usb/rockchip,dwc3.yaml     | 95 ++++++++++++++++++++++
 2 files changed, 95 insertions(+), 56 deletions(-)
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
index 000000000..d815aacfc
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
@@ -0,0 +1,95 @@
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
+description:
+  The common content of the node is defined in snps,dwc3.yaml.
+
+  Phy documentation is provided in the following places.
+
+  USB2.0 PHY
+  Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
+
+  Type-C PHY
+  Documentation/devicetree/bindings/phy/phy-rockchip-typec.txt
+
+allOf:
+  - $ref: snps,dwc3.yaml#
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - rockchip,rk3399-dwc3
+      - const: snps,dwc3
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
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
+          Controller grf clock
+
+  clock-names:
+    items:
+      - const: ref_clk
+      - const: suspend_clk
+      - const: bus_clk
+      - const: grf_clk
+
+  power-domains:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    const: usb3-otg
+
+unevaluatedProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3399-cru.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    bus {
+      #address-cells = <2>;
+      #size-cells = <2>;
+
+      usbdrd3_0: usb@fe800000 {
+        compatible = "rockchip,rk3399-dwc3", "snps,dwc3";
+        reg = <0x0 0xfe800000 0x0 0x100000>;
+        interrupts = <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&cru SCLK_USB3OTG0_REF>, <&cru SCLK_USB3OTG0_SUSPEND>,
+                 <&cru ACLK_USB3OTG0>, <&cru ACLK_USB3_GRF>;
+        clock-names = "ref_clk", "suspend_clk",
+                      "bus_clk", "grf_clk";
+        dr_mode = "otg";
+      };
+    };
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
