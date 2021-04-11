Return-Path: <SRS0=scLn=JI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7194C433B4
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Apr 2021 17:55:20 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6A4AA6109F
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Apr 2021 17:55:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6A4AA6109F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=wYUZ3CfADcvY20nujzcwnaBObIG5w1nm5dbFE4hA91Q=; b=nZB4o/LZKLQF2bYkH0D+oHCQJG
	Z6NCJlyUnyw0vEqN9ZdsSuGUmJcEs25lr5FZA7bF2y9HB2iDBvWV28nVdyncxrxaW/NMMB1OtmHuR
	7Mx+H0E60CuJexKU+hrZvZ3x37kx1K+SVPWLqSqO4FR1yLWAzOS18LHwC6e0zxL7vykTsoABA9hnl
	lYMGeZba30lXBA/uzALUcQInVtqD+UKPsaciYa363QOlVNno1krnJdvkOJUFqfjOxFBxxRi/NYbry
	TC662CmDWBdbZFsm05qcjEQzmINFuSi11oBelSojQOM+8e0Z2z9prG8ZlqCdqXAkyDspMsMNTMadq
	G+fUv1/Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVeIh-004rdb-NT; Sun, 11 Apr 2021 17:55:11 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVeIJ-004rZx-9v; Sun, 11 Apr 2021 17:54:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=nI53kziyfbKnEvjuBZ+bfWn5m7mWLDh7ze9LttdxKG8=; b=4QCvr7meum3b9Xwi3xD10Wm5yz
 LmLI845l4NqJwqR3cMPSwbpbulepo7DVVHSj2ZPhCVHFqpj5VAp7q704FRHriC3emxFhN3+YM+oOB
 K3fxgFlLjZYz2YIIAieHzsmpCAchk8i5MH8QGOnrpg0XNmAdT87Me2b+IGpB9Ybo63RKOpT3MElnE
 ShJMFC6sm6dXGQ+yqKc4LHvu0gVi3wxiuppW5/8KNk3Capq03mNHbBwpMvGzinqL4rewfVchzAyDJ
 2dwYB6J5KaojvoPsmXHAedHHAUM/+GTjbc4pKpicOhSf87G7Iql+hR8WyZLCTAcG4xWCNq24OOxUc
 WGh62CyA==;
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVeIG-005d3S-8j; Sun, 11 Apr 2021 17:54:46 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a7so16531681eju.1;
 Sun, 11 Apr 2021 10:54:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=nI53kziyfbKnEvjuBZ+bfWn5m7mWLDh7ze9LttdxKG8=;
 b=e+k+gtKZE9MsFc07l1+sdWdw/nfatox4OuF07RPrRCnXMpkKd+8wTn62uTEiOcR0SP
 oXbt4DPmBn4rrf019iBr4TZMaSarwevpSrnpf97Yt6xYYzdV6RiIdetdvo0Xn27rtL64
 jwJYL3JXYydEufEuG3V15GZnNhBMlo5hdPXCgE6L8Ja9nodynWKjUULSrL4J5H21J4KI
 QN0urQCcePII0gQw4EhtwQIJFpsMef28dMupU56JF1fTsn7SXXFjkOA6rDc3AKYq4UjZ
 IxJokMUYk7Mnr4/bnSJ8zmGNw+WBGDJuD+mZNoCLi2NM9vZaB9ewElfsHBbm3yD/zANc
 OJeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=nI53kziyfbKnEvjuBZ+bfWn5m7mWLDh7ze9LttdxKG8=;
 b=f2lpfJVmcbov0ENe3zdKTM7Z9K5inwD4FWmT6UuJiaIlTJNOmgecCGRwjL0tbradiw
 VRgR0G96C5VfE8T3w/eNnq6jvrEEFZMm1RjvMC91eCVtaGq57O86In8Y0llzIxte8oZZ
 aOywNSf6+EP0p1Ji/AOPRM44nQT4Un5TVDeeXw1kkfAZngdTTfooDApPTaMCI3Dp2URb
 k6W7elD8C+b9UwE9E7Y/kVA9FL8MBSGyxwyTsr884n6rhDu4Rq2CmsFXUziUPN3hAxY7
 ytfay+blMA3GI3Bb/51C3OnPneb/JRmanS3hmALFk6D0St90YB0aZbdKTGf7+wpCyFBN
 ldEA==
X-Gm-Message-State: AOAM532DAk22yo7k40vAHsbZbg3lAkk4AewoDjvD1ecdzlXLJ/WWGvFU
 2eFjEcvBCIl6jBEeqj7t+Mw=
X-Google-Smtp-Source: ABdhPJx+so6mjMmxaxstEpIv2+fsU54/IXGjC6HocAs37FoIfmVuxcP1+ymTH6ybMtRG+YTcpyxITA==
X-Received: by 2002:a17:906:a1c8:: with SMTP id
 bx8mr23568241ejb.381.1618163682737; 
 Sun, 11 Apr 2021 10:54:42 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id h15sm5021738edb.74.2021.04.11.10.54.41
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 11 Apr 2021 10:54:42 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1] dt-bindings: gpio: add YAML description for rockchip,
 gpio-bank
Date: Sun, 11 Apr 2021 19:54:35 +0200
Message-Id: <20210411175435.807-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210411_105444_334695_0D5DDBC0 
X-CRM114-Status: GOOD (  17.89  )
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
 .../bindings/gpio/rockchip,gpio-bank.yaml          | 82 ++++++++++++++++++++++
 .../bindings/pinctrl/rockchip,pinctrl.txt          | 58 +--------------
 2 files changed, 83 insertions(+), 57 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml

diff --git a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
new file mode 100644
index 000000000..ac2479732
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
+      gpio0: gpio0@2000a000 {
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
+      gpio1: gpio1@2003c000 {
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
