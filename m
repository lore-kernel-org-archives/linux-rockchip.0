Return-Path: <SRS0=kcRh=JJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B962BC433B4
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 22:36:57 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 04FF761206
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 22:36:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 04FF761206
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=DMZ47uixeO7aIm7mcdT+Zwxk5GqrUtgsegXndTVLr1w=; b=gyuezm07AcO2KcIVy/qH++jyYE
	m/96oZDc0FEdxj97Vq4Qr3ckrzYQ1iTB1T/+bP2usEnqiabbKgE+mTg0li3wL0jNuuQS0RH3yWIL0
	VZR3zmYYyfInOVsFy/2E4Di0o2LiJnSUgrXD488uhffT0ey5Soin6o6Di1h1iPrZsFqznXURfrkKD
	hfOYJw5EdktJzaQOUMvEORdkEfaQk6I7mA2hpEkVFy8L5FcXPGtafKvx4gtCPQ+onUZU6SkQxsybv
	x30eMMPb0s7J58xj1C+haKHmZPwVK1FhHoLmVg1l6HWdQaLCRrG6IAzKeSuYA5AKfrW0NdMPfnOuK
	aDMPBS2A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lW5Ao-007nnB-Lc; Mon, 12 Apr 2021 22:36:51 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW5AT-007nZD-3k; Mon, 12 Apr 2021 22:36:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=PCOQOWXTwfhkR+0L4ZauafZ+IJNAVs6L3CJ2sNHUQY8=; b=Aktq27a08R+mJPQuSZYNG7/cEp
 0K5DesyrK9Nw9xNCf2ITZ0XsIbi4T2NAMsaUmLJofa+xEAfaCjia1WrX8341sgxL5oKqDzj1XssgF
 kjBS98c1Mo8E1r068FPnfbr+sSSpGYEWEOR4bA/QXLGZLQDb00w7zqbgjMlMvmjGYbFq3mdqXpj4/
 3ekKlzpLMmOXPz0KulWjEoccj1Aet9dp0x93kAjK00VARDleiFHVusIszau03E8m934mdUYVP9z9f
 ucokvvkACBOpFt/s853bXyfZVc6Sxdzpk12LkNgEk8olqeorOxyYr+XQcSMaQxDMCH36X3Q6I4GeU
 O6MKTVFw==;
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW5AQ-006av4-2R; Mon, 12 Apr 2021 22:36:27 +0000
Received: by mail-ed1-x532.google.com with SMTP id f8so16983963edd.11;
 Mon, 12 Apr 2021 15:36:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=PCOQOWXTwfhkR+0L4ZauafZ+IJNAVs6L3CJ2sNHUQY8=;
 b=jZxqWTmRDZRSaxNzAEYEgxfkixY7xakoWasaoKXnE32gQoAjkLQdYEB2QR/AA39KuS
 vAM2y54IF33qMJh0ItuwD5JdoSMD6DeWNlf8WNdmcGYI9GdUTw1iG4YSW3veZZXbHg9p
 ecfv6ZrnJofFEdOg6MDZVnBIDuUUXRQEuaOyJkX8zLBsyCLHdmJ5P+sy2xFW1KXwDaul
 lu4z1zXZVApYc/vqzyfewYZqSZjCSJIJKb3hsKmuQ/WBO3V0jiUPUYZZrxCidvLhCULZ
 6YSZxrxGwiSamlYH3dSQn9E+MRM/964QttOhQSPJntY3613LUiV1+Sio+hJDG3NyDsz0
 bRfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=PCOQOWXTwfhkR+0L4ZauafZ+IJNAVs6L3CJ2sNHUQY8=;
 b=D8MOXze60Ij7knH2jd5dGXlycZD9al0BQ44oup6LhrcPyzW57+jKFEaTgLYU69gnwO
 pY+xkW8p9szeYdTSYRf2gSuMfdjTBTtiosZu7cVWg95m9B/zxULTuDaNcquvZnEW30F9
 GnPcDEK6qzWgtbJeJ0VL868wkVi7a1Vtbfq2g2piUfEBovoHENJPeMq30+ahgvZyTo5v
 9/JgEw8ADXtaMrXHZNRIuhFMX924/C/t/yw2f+DmsKZIeJfgVsNXf71AmbEB2P4rtEam
 AXAzE5xUq4IA5DX/o7V0woPKNTSJ4WwlS5BQk4xjL/wnFcICDAnFz9J2y92OP2/QtpcG
 eU/g==
X-Gm-Message-State: AOAM53098fpzgzu3QinOvwxm16e0ltLcJeC8YkN/rNeJYbxi77vGlT6f
 gnkNMZPotczbZxvvnvAidYk=
X-Google-Smtp-Source: ABdhPJw+YvEYtJMzuEKk1ETc2B4l3L35SVDmbqMmrZESh4suaxrIyFV4hUg+5YEtDYRWlhnLfzV60w==
X-Received: by 2002:a50:fd16:: with SMTP id i22mr31119515eds.239.1618266984692; 
 Mon, 12 Apr 2021 15:36:24 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id d10sm7817209edp.77.2021.04.12.15.36.23
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 12 Apr 2021 15:36:24 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/3] dt-bindings: gpio: add YAML description for rockchip,
 gpio-bank
Date: Tue, 13 Apr 2021 00:36:15 +0200
Message-Id: <20210412223617.8634-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_153626_152673_5D6723BE 
X-CRM114-Status: GOOD (  18.35  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Current dts files with "rockchip,gpio-bank" subnodes
are manually verified. In order to automate this process
the text that describes the compatible in rockchip,pinctrl.txt
is removed and converted to YAML in rockchip,gpio-bank.yaml.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
Changed V2:
  changed example gpio nodename
---
 .../bindings/gpio/rockchip,gpio-bank.yaml          | 82 ++++++++++++++++++++++
 .../bindings/pinctrl/rockchip,pinctrl.txt          | 58 +--------------
 2 files changed, 83 insertions(+), 57 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml

diff --git a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
new file mode 100644
index 000000000..d993e002c
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
@@ -0,0 +1,82 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/gpio/rockchip,gpio-bank.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip GPIO bank
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    enum:
+      - rockchip,gpio-bank
+      - rockchip,rk3188-gpio-bank0
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  gpio-controller: true
+
+  "#gpio-cells":
+    const: 2
+
+  interrupt-controller: true
+
+  "#interrupt-cells":
+    const: 2
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - gpio-controller
+  - "#gpio-cells"
+  - interrupt-controller
+  - "#interrupt-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    pinctrl: pinctrl {
+      #address-cells = <1>;
+      #size-cells = <1>;
+      ranges;
+
+      gpio0: gpio@2000a000 {
+        compatible = "rockchip,rk3188-gpio-bank0";
+        reg = <0x2000a000 0x100>;
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
+      gpio1: gpio@2003c000 {
+        compatible = "rockchip,gpio-bank";
+        reg = <0x2003c000 0x100>;
+        interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&clk_gates8 10>;
+
+        gpio-controller;
+        #gpio-cells = <2>;
+
+        interrupt-controller;
+        #interrupt-cells = <2>;
+      };
+    };
diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt
index d3eae61a3..4719a6a07 100644
--- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt
+++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt
@@ -50,23 +50,7 @@ Deprecated properties for iomux controller:
 	 Use rockchip,grf and rockchip,pmu described above instead.
 
 Required properties for gpio sub nodes:
-  - compatible: "rockchip,gpio-bank"
-  - reg: register of the gpio bank (different than the iomux registerset)
-  - interrupts: base interrupt of the gpio bank in the interrupt controller
-  - clocks: clock that drives this bank
-  - gpio-controller: identifies the node as a gpio controller and pin bank.
-  - #gpio-cells: number of cells in GPIO specifier. Since the generic GPIO
-    binding is used, the amount of cells must be specified as 2. See generic
-    GPIO binding documentation for description of particular cells.
-  - interrupt-controller: identifies the controller node as interrupt-parent.
-  - #interrupt-cells: the value of this property should be 2 and the interrupt
-    cells should use the standard two-cell scheme described in
-    bindings/interrupt-controller/interrupts.txt
-
-Deprecated properties for gpio sub nodes:
-  - compatible: "rockchip,rk3188-gpio-bank0"
-  - reg: second element: separate pull register for rk3188 bank0, use
-	 rockchip,pmu described above instead
+See rockchip,gpio-bank.yaml
 
 Required properties for pin configuration node:
   - rockchip,pins: 3 integers array, represents a group of pins mux and config
@@ -127,43 +111,3 @@ uart2: serial@20064000 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart2_xfer>;
 };
-
-Example for rk3188:
-
-	pinctrl@20008000 {
-		compatible = "rockchip,rk3188-pinctrl";
-		rockchip,grf = <&grf>;
-		rockchip,pmu = <&pmu>;
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges;
-
-		gpio0: gpio0@2000a000 {
-			compatible = "rockchip,rk3188-gpio-bank0";
-			reg = <0x2000a000 0x100>;
-			interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&clk_gates8 9>;
-
-			gpio-controller;
-			#gpio-cells = <2>;
-
-			interrupt-controller;
-			#interrupt-cells = <2>;
-		};
-
-		gpio1: gpio1@2003c000 {
-			compatible = "rockchip,gpio-bank";
-			reg = <0x2003c000 0x100>;
-			interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&clk_gates8 10>;
-
-			gpio-controller;
-			#gpio-cells = <2>;
-
-			interrupt-controller;
-			#interrupt-cells = <2>;
-		};
-
-		...
-
-	};
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
