Return-Path: <SRS0=fMZx=HL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D94DC433DB
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Feb 2021 19:24:12 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0EAF564EB4
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Feb 2021 19:24:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0EAF564EB4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=FlDw9tRrcDPVBRIlfnmxXVv8TvYfLZi2whoBQWToaKA=; b=dlTffWMkNxG5ZLqRwVLiyBqaaV
	7fZWrGAA4jhlszevd993p72kIDxunPtNrLjZavTVUpXfO4ZsG8r0jiNz/7suwvkzP4WqF6e1lhISg
	cgMeI3DFqh611FJQXjbU2rmh0/61BKrOTMx7YqgyFV0QVDoIaWLgFcciLgbYXFB2JWR/OatYfOfgO
	V0r8ASNSzzbw6Farc+32Du7zgc4grF2IDz+YsFco2B1HSyHIPsjr3LsjmLy1X189HpWX3oUOrM4pz
	Q63rAPwVA5P69kWqL/Muuk76sTXm5dH/6cNKJMQ9U9MpCIwSN5ylDAXOs5CptfqRtj0mhQo9FOgN3
	QGJYSy6g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l9YcG-0004t3-SB; Tue, 09 Feb 2021 19:24:04 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9YcE-0004rO-BD; Tue, 09 Feb 2021 19:24:03 +0000
Received: by mail-ed1-x534.google.com with SMTP id s11so25379057edd.5;
 Tue, 09 Feb 2021 11:24:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=4V4/+26zsQZ2u3jORNUZoR6RaMNMYHKRgtZ7++gnTVQ=;
 b=RlOyEWxUPx0hNNFrJ0DkMvgTbdW7WTaT3poNpKaI9Y2zrsbpPA1suK7o1EYyi+D3gP
 efpqeMF12k6rLTGoNZcCijq/qJx6dX2c+XI5KjlFAQT7ynvz1vzw1hw0tr6tXCBnmMZ0
 G2W+0zXQoYhg/sFualou4xb0fRIHP7zSCRqSgIcP4dIAU9IZxAxgasYmAOjuD9eD2+c+
 6nd2janVOktg+K5+tkjJ5czP8tnrK5e3v07bLzzfQs/uMbl+v4tSWt9E2xrE3eaRVTVf
 dF1PmYNSdl+3Ak9X+Vc4plaGBw61haTZmSHcQEyMbxqDXUcXaLyZbt33SQBX5Gpz4TyN
 4NoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=4V4/+26zsQZ2u3jORNUZoR6RaMNMYHKRgtZ7++gnTVQ=;
 b=KuL7Iy8FXwTaioE2/zJSH8tO8pNqOZbCA7XRJEZRu4sQpEI7lrhhxF4AZ8y6zQjrHX
 G75bP1B+1H3/cvPjn+eHe6QZdA0ZnM3yhjzO/pKkJcxOQseM0xf6JteRTpnoUiHAVeSo
 pKmsrf0scOsgk3Jm4irM1E2gfC8Tbn9gyNmHF50gOkHNA2sTc1y9ZlmhZ4RR4AXDPNGB
 myYiuGCt7IV16YopkVlh872HJHQQSjDn0ZlBrPYCdYxrPxtNZg0RFzsOWrgQv0u0kCl6
 yHE9cFpAu7NjR0GDTIIOh6KPOPwV4/wU0Oz03/XXi1s1yrRSFR/naeAXjCvuuM31KGDN
 0nLg==
X-Gm-Message-State: AOAM5322dOB1CNgzEHZ77cEAFA1kvqGtSPF8vK/9XSEOUwprd1Oaa/yg
 W672l6zXkyTnpFI4PfyOdyVket2KAEk=
X-Google-Smtp-Source: ABdhPJzQ95LGdKuV+f/YUrN0ggL7Ct6sBaX/OzVyRU1WmwijkdKR22tvrlllf21hzI/g7xEMabdXKQ==
X-Received: by 2002:a05:6402:281:: with SMTP id
 l1mr5021169edv.252.1612898639175; 
 Tue, 09 Feb 2021 11:23:59 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id w3sm11075779eja.52.2021.02.09.11.23.57
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Feb 2021 11:23:58 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v5 1/8] dt-bindings: usb: convert rockchip,dwc3.txt to yaml
Date: Tue,  9 Feb 2021 20:23:43 +0100
Message-Id: <20210209192350.7130-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210209_142402_419758_0D62CCA1 
X-CRM114-Status: GOOD (  17.38  )
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
Changed V5:
  add select

Changed V3:
  remove aclk_usb3_rksoc_axi_perf
  remove aclk_usb3

Changed V2:
  remove node wrapper
---
 .../devicetree/bindings/usb/rockchip,dwc3.txt      |  56 -----------
 .../devicetree/bindings/usb/rockchip,dwc3.yaml     | 104 +++++++++++++++++++++
 2 files changed, 104 insertions(+), 56 deletions(-)
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
index 000000000..9908270a9
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
@@ -0,0 +1,104 @@
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
+select:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - rockchip,rk3399-dwc3
+  required:
+    - compatible
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
