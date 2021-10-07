Return-Path: <SRS0=t2gw=O3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4208FC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Oct 2021 14:40:52 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0321D60ED7
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Oct 2021 14:40:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0321D60ED7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LDGtmtCtCEyvC5W+TfGhB0Ev8fbJFHIeXFuaTK9hosM=; b=v7WuCs+3n7XuF9
	uPW67FQeX4LVbHkV7jGPURLRG3o/IqQ872r8sivur9L+eCfi+fm8/CbbfNPfoJsgVzyQfMsk4x92A
	ryHytAcg9nAZbNpkPqWpoNljLFZ9IxQPB9etxHM6iMAoVQYq9eShOeMBLHiTbtTBeysUSYLAk6YzE
	HG3mfiu7HQnG3MsGW37QAvbJSMkdNgarA8nYBkhXG1RqfjHIS7zreME3s1QsGZNd6yP1VnxG3u2Mk
	3oSEUvwOLptfwq0FIahwDFDSgGHrOW37sq2ZhcdWXyJhO5XGROT6sk2XBPm58TREeyop+51mNDEe6
	+mec7E9dgupNkTEt1NFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mYUZh-0001wy-NN; Thu, 07 Oct 2021 14:40:45 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mYUZT-0001s2-R6; Thu, 07 Oct 2021 14:40:33 +0000
Received: by mail-ed1-x52e.google.com with SMTP id t16so2142061eds.9;
 Thu, 07 Oct 2021 07:40:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yvmoIo/jp1Rmwxylzdxe5b42lAV5Oim2xHCPh6KbP+k=;
 b=Zv8FsBODeDM/gFraHYf8c5JeTBVxvpmF39jXRyMIKr1u7Zau1b9IQWelcXz2VlXjpb
 EJZ8UJyJaVRkJ4SpbUgP3tyK7eZfwHNbjTbVcxAc3XCYnqUuWo4JZuVg1ib+7gKOUipk
 I1+VfJZ7u/+Na6vtfMCXk2rqR2emZy8R7ZOeNto+OfZZrza83z/4ZGtOksRwFPivD0iA
 +hJM5llwSQc12P5de0Yyw850OxBajINmeocv9IiIYQSrzKK3tjP5foKVS3hA8e3wLpHU
 jSpMHYRDR992EzOageBoZlN71TZ9jvFbcp5pAcXpjSyIrEbtTRjSGqd1AjkDCEkThnYE
 jY5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yvmoIo/jp1Rmwxylzdxe5b42lAV5Oim2xHCPh6KbP+k=;
 b=rSS0phquPGOdzsd7mf0R0FTs6+ty6BQfpvV9jlUNIvWmmrqlmKd51tA225dJIAvvL5
 iNztLP0Nmqr1Iwun769LgQ+/qe27qev8/Lg03uS1Vh+H+ul4PLvVWcuc3kgxrbVqN3QA
 ri7kpuBWh4UD5l5V07kZHGSLRLWdk1rHS95qMi0y3BuZ7fTEDjqz4ZO6vSKc033TcmWP
 ekqHOdV7QG2qiq6DEChfT3QlCgntRuEHugCup8qkHw1ghNx2prNxcSNSauSDvQ6oH7Cu
 7vufYehNBHYRc3Ui5HuTNoVKM7YVhDhff4hSCKz1+SWdxZ47HK7KhLHI96ZYvNa/MXW4
 zlsQ==
X-Gm-Message-State: AOAM5312bwpZdU8lLvl3yXX2g7ZmqC/n2bY/rEbL6kpQkFW0NzAGHQj5
 IpvtE/w7D5GmwuFGijEYOMI=
X-Google-Smtp-Source: ABdhPJx85QKQdR101tmf1WbcPnP+jUdvPeQMvMBWd273yyiDBtTr1ITrrFbAwNt4+XJW7E71cUVzOw==
X-Received: by 2002:a50:e041:: with SMTP id g1mr7043269edl.4.1633617628308;
 Thu, 07 Oct 2021 07:40:28 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id 21sm10086523ejv.54.2021.10.07.07.40.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Oct 2021 07:40:27 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linus.walleij@linaro.org, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/3] dt-bindings: pinctrl: convert rockchip,
 pinctrl.txt to YAML
Date: Thu,  7 Oct 2021 16:40:17 +0200
Message-Id: <20211007144019.7461-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211007_074031_906465_6EBAF605 
X-CRM114-Status: GOOD (  21.09  )
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

Convert rockchip,pinctrl.txt to YAML

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Changed V3:
   Add uint32-matrix type reference.
   Add required.
   Restyle.

Changed V2:
   Add '|' to maintain the paragraphs.
   Change gpio patternProperties.
   Move description to items.
   Remove type array.
   Restyle.
---
 .../bindings/pinctrl/rockchip,pinctrl.txt     | 114 -----------
 .../bindings/pinctrl/rockchip,pinctrl.yaml    | 184 ++++++++++++++++++
 2 files changed, 184 insertions(+), 114 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt
 create mode 100644 Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml

diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt
deleted file mode 100644
index 84c411129..000000000
--- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt
+++ /dev/null
@@ -1,114 +0,0 @@
-* Rockchip Pinmux Controller
-
-The Rockchip Pinmux Controller, enables the IC
-to share one PAD to several functional blocks. The sharing is done by
-multiplexing the PAD input/output signals. For each PAD there are several
-muxing options with option 0 being the use as a GPIO.
-
-Please refer to pinctrl-bindings.txt in this directory for details of the
-common pinctrl bindings used by client devices, including the meaning of the
-phrase "pin configuration node".
-
-The Rockchip pin configuration node is a node of a group of pins which can be
-used for a specific device or function. This node represents both mux and
-config of the pins in that group. The 'pins' selects the function mode(also
-named pin mode) this pin can work on and the 'config' configures various pad
-settings such as pull-up, etc.
-
-The pins are grouped into up to 5 individual pin banks which need to be
-defined as gpio sub-nodes of the pinmux controller.
-
-Required properties for iomux controller:
-  - compatible: should be
-		"rockchip,px30-pinctrl":    for Rockchip PX30
-		"rockchip,rv1108-pinctrl":  for Rockchip RV1108
-		"rockchip,rk2928-pinctrl":  for Rockchip RK2928
-		"rockchip,rk3066a-pinctrl": for Rockchip RK3066a
-		"rockchip,rk3066b-pinctrl": for Rockchip RK3066b
-		"rockchip,rk3128-pinctrl":  for Rockchip RK3128
-		"rockchip,rk3188-pinctrl":  for Rockchip RK3188
-		"rockchip,rk3228-pinctrl":  for Rockchip RK3228
-		"rockchip,rk3288-pinctrl":  for Rockchip RK3288
-		"rockchip,rk3308-pinctrl":  for Rockchip RK3308
-		"rockchip,rk3328-pinctrl":  for Rockchip RK3328
-		"rockchip,rk3368-pinctrl":  for Rockchip RK3368
-		"rockchip,rk3399-pinctrl":  for Rockchip RK3399
-		"rockchip,rk3568-pinctrl":  for Rockchip RK3568
-
-  - rockchip,grf: phandle referencing a syscon providing the
-	 "general register files"
-
-Optional properties for iomux controller:
-  - rockchip,pmu: phandle referencing a syscon providing the pmu registers
-	 as some SoCs carry parts of the iomux controller registers there.
-	 Required for at least rk3188 and rk3288. On the rk3368 this should
-	 point to the PMUGRF syscon.
-
-Deprecated properties for iomux controller:
-  - reg: first element is the general register space of the iomux controller
-	 It should be large enough to contain also separate pull registers.
-	 second element is the separate pull register space of the rk3188.
-	 Use rockchip,grf and rockchip,pmu described above instead.
-
-Required properties for gpio sub nodes:
-See rockchip,gpio-bank.yaml
-
-Required properties for pin configuration node:
-  - rockchip,pins: 3 integers array, represents a group of pins mux and config
-    setting. The format is rockchip,pins = <PIN_BANK PIN_BANK_IDX MUX &phandle>.
-    The MUX 0 means gpio and MUX 1 to N mean the specific device function.
-    The phandle of a node containing the generic pinconfig options
-    to use, as described in pinctrl-bindings.txt in this directory.
-
-Examples:
-
-#include <dt-bindings/pinctrl/rockchip.h>
-
-...
-
-pinctrl@20008000 {
-	compatible = "rockchip,rk3066a-pinctrl";
-	rockchip,grf = <&grf>;
-
-	#address-cells = <1>;
-	#size-cells = <1>;
-	ranges;
-
-	gpio0: gpio0@20034000 {
-		compatible = "rockchip,gpio-bank";
-		reg = <0x20034000 0x100>;
-		interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&clk_gates8 9>;
-
-		gpio-controller;
-		#gpio-cells = <2>;
-
-		interrupt-controller;
-		#interrupt-cells = <2>;
-	};
-
-	...
-
-	pcfg_pull_default: pcfg_pull_default {
-		bias-pull-pin-default
-	};
-
-	uart2 {
-		uart2_xfer: uart2-xfer {
-			rockchip,pins = <1 RK_PB0 1 &pcfg_pull_default>,
-					<1 RK_PB1 1 &pcfg_pull_default>;
-		};
-	};
-};
-
-uart2: serial@20064000 {
-	compatible = "snps,dw-apb-uart";
-	reg = <0x20064000 0x400>;
-	interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
-	reg-shift = <2>;
-	reg-io-width = <1>;
-	clocks = <&mux_uart2>;
-
-	pinctrl-names = "default";
-	pinctrl-0 = <&uart2_xfer>;
-};
diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
new file mode 100644
index 000000000..07c0a98ef
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
@@ -0,0 +1,184 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pinctrl/rockchip,pinctrl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip Pinmux Controller
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+description: |
+  The Rockchip Pinmux Controller enables the IC to share one PAD
+  to several functional blocks. The sharing is done by multiplexing
+  the PAD input/output signals. For each PAD there are several muxing
+  options with option 0 being used as a GPIO.
+
+  Please refer to pinctrl-bindings.txt in this directory for details of the
+  common pinctrl bindings used by client devices, including the meaning of the
+  phrase "pin configuration node".
+
+  The Rockchip pin configuration node is a node of a group of pins which can be
+  used for a specific device or function. This node represents both mux and
+  config of the pins in that group. The 'pins' selects the function mode
+  (also named pin mode) this pin can work on and the 'config' configures
+  various pad settings such as pull-up, etc.
+
+  The pins are grouped into up to 9 individual pin banks which need to be
+  defined as gpio sub-nodes of the pinmux controller.
+
+properties:
+  compatible:
+    enum:
+      - rockchip,px30-pinctrl
+      - rockchip,rk2928-pinctrl
+      - rockchip,rk3066a-pinctrl
+      - rockchip,rk3066b-pinctrl
+      - rockchip,rk3128-pinctrl
+      - rockchip,rk3188-pinctrl
+      - rockchip,rk3228-pinctrl
+      - rockchip,rk3288-pinctrl
+      - rockchip,rk3308-pinctrl
+      - rockchip,rk3328-pinctrl
+      - rockchip,rk3368-pinctrl
+      - rockchip,rk3399-pinctrl
+      - rockchip,rk3568-pinctrl
+      - rockchip,rv1108-pinctrl
+
+  rockchip,grf:
+    $ref: "/schemas/types.yaml#/definitions/phandle"
+    description:
+      The phandle of the syscon node for the GRF registers.
+
+  rockchip,pmu:
+    $ref: "/schemas/types.yaml#/definitions/phandle"
+    description:
+      The phandle of the syscon node for the PMU registers,
+      as some SoCs carry parts of the iomux controller registers there.
+      Required for at least rk3188 and rk3288. On the rk3368 this should
+      point to the PMUGRF syscon.
+
+  "#address-cells":
+    enum: [1, 2]
+
+  "#size-cells":
+    enum: [1, 2]
+
+  ranges: true
+
+required:
+  - compatible
+  - rockchip,grf
+  - "#address-cells"
+  - "#size-cells"
+  - ranges
+
+patternProperties:
+  "gpio@[0-9a-f]+$":
+    type: object
+
+    $ref: "/schemas/gpio/rockchip,gpio-bank.yaml#"
+
+    unevaluatedProperties: false
+
+  "pcfg-[a-z0-9-]+$":
+    type: object
+    properties:
+      bias-disable: true
+
+      bias-pull-down: true
+
+      bias-pull-pin-default: true
+
+      bias-pull-up: true
+
+      drive-strength:
+        minimum: 0
+        maximum: 20
+
+      input-enable: true
+
+      input-schmitt-enable: true
+
+      output-high: true
+
+      output-low: true
+
+    additionalProperties: false
+
+additionalProperties:
+  type: object
+  additionalProperties:
+    type: object
+    properties:
+      rockchip,pins:
+        $ref: "/schemas/types.yaml#/definitions/uint32-matrix"
+        minItems: 1
+        items:
+          items:
+            - minimum: 0
+              maximum: 8
+              description:
+                Pin bank.
+            - minimum: 0
+              maximum: 31
+              description:
+                Pin bank index.
+            - minimum: 0
+              maximum: 6
+              description:
+                Mux 0 means GPIO and mux 1 to N means
+                the specific device function.
+            - description:
+                The phandle of a node contains the generic pinconfig options
+                to use as described in pinctrl-bindings.txt.
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/pinctrl/rockchip.h>
+
+    pinctrl: pinctrl {
+      compatible = "rockchip,rk3066a-pinctrl";
+      rockchip,grf = <&grf>;
+
+      #address-cells = <1>;
+      #size-cells = <1>;
+      ranges;
+
+      gpio0: gpio@20034000 {
+        compatible = "rockchip,gpio-bank";
+        reg = <0x20034000 0x100>;
+        interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&clk_gates8 9>;
+
+        gpio-controller;
+        #gpio-cells = <2>;
+
+        interrupt-controller;
+        #interrupt-cells = <2>;
+      };
+
+      pcfg_pull_default: pcfg-pull-default {
+        bias-pull-pin-default;
+      };
+
+      uart2 {
+        uart2_xfer: uart2-xfer {
+          rockchip,pins = <1 RK_PB0 1 &pcfg_pull_default>,
+                          <1 RK_PB1 1 &pcfg_pull_default>;
+        };
+      };
+    };
+
+    uart2: serial@20064000 {
+      compatible = "snps,dw-apb-uart";
+      reg = <0x20064000 0x400>;
+      interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&mux_uart2>;
+      pinctrl-0 = <&uart2_xfer>;
+      pinctrl-names = "default";
+      reg-io-width = <1>;
+      reg-shift = <2>;
+    };
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
