Return-Path: <SRS0=3kgl=KH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5066C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 May 2021 12:24:26 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F2B69613E6
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 May 2021 12:24:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F2B69613E6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sR6+LT6IQWiNAR5W4dN4LSwqIGiEDEKz/DTaJyHzEZk=; b=BkAgkqYinwWS8nZiW6XEbTopY2
	rK9JsBZjnFSgvYXu4m2LMR1x5tWkCtK5+MkEavE1Uvb2+fHUNtaMS2W1p8gEbhm3CJ4Ejg6s903sZ
	jdIltqVjpMqA02vJFNX2J4CkU4URFljEyfTU2uopALo7rQE3r1wvSrbjcETE3FuoQ7GoFSIWDLpqu
	FozP9iw7NP0/UfhUpJ+uzJN4wLqot01Ru2px0GOEOOYkyxf2Z2eku8cTDm3lZAbA/G1Lq93IkRnH6
	3ImbK8QssNXp0prt3tx3Wlz4rSizlWbiU53fPLQ7JSj65UGEHhg4aUz2ZRGP1JtzFDeuJ0wpDiB2M
	lcAlJpKg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgnuX-002iWp-Nh; Wed, 12 May 2021 12:24:21 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgnuG-002iTJ-0I; Wed, 12 May 2021 12:24:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=KcBlhNy+y/3yePkccttiknGUOz0xWvn4FicjxYWioSo=; b=uDM0cSItCKjPa9KZbeQnIcAzS2
 urCHuaUmVH7fVfEBVlo8/U1k2YO10ZgdeVyUT341GEqCHxmXQ0o/Prh12TRd14eKW6y+kxKTvTN4K
 /HkyXSvlVq1sblS70RQghLyHcpBxjricFl1ZiVSZOEyrgqdds2TkXPQ5igq/wocpZujOF7AelBcAt
 71lejO/ODqYI5hWprEQ/MDSDmNtBPEX9hfWwskoE6Tn8TV1s9UMht5L5SmzIY/+qYva7U5f0DLFzd
 qxYiDaQ5TvaV4LYFoBXBmz+5cY3hba7vF8aaXb4J2LG2aPraeXiGCaYEUxqOBJWOZoWjOUatDcIv+
 XOvI+OGQ==;
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgnuC-00AL8v-Od; Wed, 12 May 2021 12:24:02 +0000
Received: by mail-ed1-x536.google.com with SMTP id r11so2778162edt.13;
 Wed, 12 May 2021 05:24:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=KcBlhNy+y/3yePkccttiknGUOz0xWvn4FicjxYWioSo=;
 b=N9G46sdmAjU7FVDevL/c75jDRurvgh9Khc3HWsF7I9vB5pYTqE7bwTSRgguH0zHfxf
 K7dOuafmr1g/LPUkAYkKGqQzlD5n1AS3QIyK/39Zd0riZyZSJY2veYRAcSlV8mc9vd+g
 KMXEXV3yqOieKh4W/9KOzTKLTbGKlGZwDVNIsFu/1Ci0Num2A0biPM6PFP5ZjR3CH2oa
 TkpBs9UGpt7s7DZdtm16mJF+Pe6TXWlREfTLi/i+hFIkR4k9GPmoGAEJthK+YHHgffpz
 6V4txOGZeV1vFXgVrYkLi56srlZAJlAidye58UppjmSN7jHXeP5m98d+TzPDwTfqS2Qn
 ZJUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=KcBlhNy+y/3yePkccttiknGUOz0xWvn4FicjxYWioSo=;
 b=Szno67WT5syvaBOXU5C7IINnik/2znuZq0fudk409jdaKtQD2cma9oGBN1KfA1axRy
 bVoBWmIDdK8uZ5mW61rHk/T6rQppxvmeufWSMSvtR3DU/Bad9liYNv4sF2v+4ZKAVQWw
 CojIisjzH/rQINaHS6uQXBtS6pm4s0Op2+hLrGYIFvhr84eGlaDmByQqsctogHpApFV1
 1omCIPSu6VRsrIcSyz8cDgVIqwG25hOE5acInFjPudD/6vWQvkq5wRQqlAV2GqTAlG5C
 V4HK5sTruEsvI8J9su4gcdl2dRtVNJFpF2IIc4TYw/Pef1QzmKOodo3Rms68tSGq9e2F
 jpuA==
X-Gm-Message-State: AOAM531lVUYGcgq1Ubt5M2NTD+x+SNM4EF+sB9nIqMGTUoE080zMrn+F
 FD+eGRyKtAQmO5U+Nj+iJmM=
X-Google-Smtp-Source: ABdhPJyJ4bKcZ2QlsBhpGfkxF1a/bavmKCs3QkWMHbPydaKPHU8s/+SuXnVY3sohcnoys57ZzxduXQ==
X-Received: by 2002:aa7:cdca:: with SMTP id h10mr43254802edw.271.1620822238942; 
 Wed, 12 May 2021 05:23:58 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id g17sm21459665edv.47.2021.05.12.05.23.56
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 May 2021 05:23:58 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linus.walleij@linaro.org, kishon@ti.com,
 vkoul@kernel.org, jay.xu@rock-chips.com, shawn.lin@rock-chips.com,
 david.wu@rock-chips.com, zhangqing@rock-chips.com, huangtao@rock-chips.com,
 cl@rock-chips.com, linux-phy@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 2/4] dt-bindings: soc: rockchip: convert grf.txt to YAML
Date: Wed, 12 May 2021 14:23:44 +0200
Message-Id: <20210512122346.9463-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210512122346.9463-1-jbx6244@gmail.com>
References: <20210512122346.9463-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210512_052400_831776_5455F3EC 
X-CRM114-Status: GOOD (  19.53  )
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

Current dts files with 'grf' nodes are manually verified.
In order to automate this process grf.txt has to be
converted to YAML.

Most compatibility strings are in use with "simple-mfd" added.

Changed compatibles:
"rockchip,rk3066-grf", "syscon", "simple-mfd"
"rockchip,rk3188-grf", "syscon", "simple-mfd"

Add description already in use:
"rockchip,rv1108-pmugrf", "syscon"

Add new descriptions for:
"rockchip,rk3568-grf", "syscon", "simple-mfd"
"rockchip,rk3568-pmugrf", "syscon", "simple-mfd"

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Changed V5:
  changed compatibles for rk3066/rk3188
  add rockchip-usb-phy.yaml

Changed V4:
  revert separate schemas for each 'if' subset
  add additionalProperties
  move properties to top level

Changed V3:
  remove select
  change unevaluatedProperties
  add separate schemas for each 'if' subset

Changed V2:
  add rockchip,rk3328-grf-gpio.yaml
  rename grf-gpio nodename
---
 .../devicetree/bindings/soc/rockchip/grf.txt       |  61 -----
 .../devicetree/bindings/soc/rockchip/grf.yaml      | 260 +++++++++++++++++++++
 2 files changed, 260 insertions(+), 61 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/soc/rockchip/grf.txt
 create mode 100644 Documentation/devicetree/bindings/soc/rockchip/grf.yaml

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.txt b/Documentation/devicetree/bindings/soc/rockchip/grf.txt
deleted file mode 100644
index f96511aa3..000000000
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.txt
+++ /dev/null
@@ -1,61 +0,0 @@
-* Rockchip General Register Files (GRF)
-
-The general register file will be used to do static set by software, which
-is composed of many registers for system control.
-
-From RK3368 SoCs, the GRF is divided into two sections,
-- GRF, used for general non-secure system,
-- SGRF, used for general secure system,
-- PMUGRF, used for always on system
-
-On RK3328 SoCs, the GRF adds a section for USB2PHYGRF,
-
-ON RK3308 SoC, the GRF is divided into four sections:
-- GRF, used for general non-secure system,
-- SGRF, used for general secure system,
-- DETECTGRF, used for audio codec system,
-- COREGRF, used for pvtm,
-
-Required Properties:
-
-- compatible: GRF should be one of the following:
-   - "rockchip,px30-grf", "syscon": for px30
-   - "rockchip,rk3036-grf", "syscon": for rk3036
-   - "rockchip,rk3066-grf", "syscon": for rk3066
-   - "rockchip,rk3188-grf", "syscon": for rk3188
-   - "rockchip,rk3228-grf", "syscon": for rk3228
-   - "rockchip,rk3288-grf", "syscon": for rk3288
-   - "rockchip,rk3308-grf", "syscon": for rk3308
-   - "rockchip,rk3328-grf", "syscon": for rk3328
-   - "rockchip,rk3368-grf", "syscon": for rk3368
-   - "rockchip,rk3399-grf", "syscon": for rk3399
-   - "rockchip,rv1108-grf", "syscon": for rv1108
-- compatible: DETECTGRF should be one of the following:
-   - "rockchip,rk3308-detect-grf", "syscon": for rk3308
-- compatilbe: COREGRF should be one of the following:
-   - "rockchip,rk3308-core-grf", "syscon": for rk3308
-- compatible: PMUGRF should be one of the following:
-   - "rockchip,px30-pmugrf", "syscon": for px30
-   - "rockchip,rk3368-pmugrf", "syscon": for rk3368
-   - "rockchip,rk3399-pmugrf", "syscon": for rk3399
-- compatible: SGRF should be one of the following:
-   - "rockchip,rk3288-sgrf", "syscon": for rk3288
-- compatible: USB2PHYGRF should be one of the following:
-   - "rockchip,px30-usb2phy-grf", "syscon": for px30
-   - "rockchip,rk3328-usb2phy-grf", "syscon": for rk3328
-- compatible: USBGRF should be one of the following:
-   - "rockchip,rv1108-usbgrf", "syscon": for rv1108
-- reg: physical base address of the controller and length of memory mapped
-  region.
-
-Example: GRF and PMUGRF of RK3399 SoCs
-
-	pmugrf: syscon@ff320000 {
-		compatible = "rockchip,rk3399-pmugrf", "syscon";
-		reg = <0x0 0xff320000 0x0 0x1000>;
-	};
-
-	grf: syscon@ff770000 {
-		compatible = "rockchip,rk3399-grf", "syscon";
-		reg = <0x0 0xff770000 0x0 0x10000>;
-	};
diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
new file mode 100644
index 000000000..84bdaf88d
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -0,0 +1,260 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/rockchip/grf.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip General Register Files (GRF)
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - rockchip,rk3288-sgrf
+              - rockchip,rv1108-pmugrf
+              - rockchip,rv1108-usbgrf
+          - const: syscon
+      - items:
+          - enum:
+              - rockchip,px30-grf
+              - rockchip,px30-pmugrf
+              - rockchip,px30-usb2phy-grf
+              - rockchip,rk3036-grf
+              - rockchip,rk3066-grf
+              - rockchip,rk3188-grf
+              - rockchip,rk3228-grf
+              - rockchip,rk3288-grf
+              - rockchip,rk3308-core-grf
+              - rockchip,rk3308-detect-grf
+              - rockchip,rk3308-grf
+              - rockchip,rk3328-grf
+              - rockchip,rk3328-usb2phy-grf
+              - rockchip,rk3368-grf
+              - rockchip,rk3368-pmugrf
+              - rockchip,rk3399-grf
+              - rockchip,rk3399-pmugrf
+              - rockchip,rk3568-grf
+              - rockchip,rk3568-pmugrf
+              - rockchip,rv1108-grf
+          - const: syscon
+          - const: simple-mfd
+
+  reg:
+    maxItems: 1
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties:
+  type: object
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,px30-grf
+
+    then:
+      properties:
+        lvds:
+          description:
+            Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3288-grf
+
+    then:
+      properties:
+        edp-phy:
+          description:
+            Documentation/devicetree/bindings/phy/rockchip-dp-phy.txt
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,rk3066-grf
+              - rockchip,rk3188-grf
+              - rockchip,rk3288-grf
+
+    then:
+      properties:
+        usbphy:
+          type: object
+
+          $ref: "/schemas/phy/rockchip-usb-phy.yaml#"
+
+          unevaluatedProperties: false
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3328-grf
+
+    then:
+      properties:
+        gpio:
+          type: object
+
+          $ref: "/schemas/gpio/rockchip,rk3328-grf-gpio.yaml#"
+
+          unevaluatedProperties: false
+
+        power-controller:
+          type: object
+
+          $ref: "/schemas/power/rockchip,power-controller.yaml#"
+
+          unevaluatedProperties: false
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3399-grf
+
+    then:
+      properties:
+        mipi-dphy-rx0:
+          type: object
+
+          $ref: "/schemas/phy/rockchip-mipi-dphy-rx0.yaml#"
+
+          unevaluatedProperties: false
+
+        pcie-phy:
+          description:
+            Documentation/devicetree/bindings/phy/rockchip-pcie-phy.txt
+
+      patternProperties:
+        "phy@[0-9a-f]+$":
+          description:
+            Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,px30-pmugrf
+              - rockchip,rk3036-grf
+              - rockchip,rk3308-grf
+              - rockchip,rk3368-pmugrf
+
+    then:
+      properties:
+        reboot-mode:
+          type: object
+
+          $ref: "/schemas/power/reset/syscon-reboot-mode.yaml#"
+
+          unevaluatedProperties: false
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,px30-usb2phy-grf
+              - rockchip,rk3228-grf
+              - rockchip,rk3328-usb2phy-grf
+              - rockchip,rk3399-grf
+              - rockchip,rv1108-grf
+
+    then:
+      required:
+        - "#address-cells"
+        - "#size-cells"
+
+      patternProperties:
+        "usb2-phy@[0-9a-f]+$":
+          type: object
+
+          $ref: "/schemas/phy/phy-rockchip-inno-usb2.yaml#"
+
+          unevaluatedProperties: false
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,px30-pmugrf
+              - rockchip,px30-grf
+              - rockchip,rk3228-grf
+              - rockchip,rk3288-grf
+              - rockchip,rk3328-grf
+              - rockchip,rk3368-pmugrf
+              - rockchip,rk3368-grf
+              - rockchip,rk3399-pmugrf
+              - rockchip,rk3399-grf
+
+    then:
+      properties:
+        io-domains:
+          description:
+            Documentation/devicetree/bindings/power/rockchip-io-domain.txt
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3399-cru.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/rk3399-power.h>
+    grf: syscon@ff770000 {
+      compatible = "rockchip,rk3399-grf", "syscon", "simple-mfd";
+      reg = <0xff770000 0x10000>;
+      #address-cells = <1>;
+      #size-cells = <1>;
+
+      mipi_dphy_rx0: mipi-dphy-rx0 {
+        compatible = "rockchip,rk3399-mipi-dphy-rx0";
+        clocks = <&cru SCLK_MIPIDPHY_REF>,
+                 <&cru SCLK_DPHY_RX0_CFG>,
+                 <&cru PCLK_VIO_GRF>;
+        clock-names = "dphy-ref", "dphy-cfg", "grf";
+        power-domains = <&power RK3399_PD_VIO>;
+        #phy-cells = <0>;
+      };
+
+      u2phy0: usb2-phy@e450 {
+        compatible = "rockchip,rk3399-usb2phy";
+        reg = <0xe450 0x10>;
+        clocks = <&cru SCLK_USB2PHY0_REF>;
+        clock-names = "phyclk";
+        #clock-cells = <0>;
+        clock-output-names = "clk_usbphy0_480m";
+        #phy-cells = <0>;
+
+        u2phy0_host: host-port {
+          #phy-cells = <0>;
+          interrupts = <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH 0>;
+          interrupt-names = "linestate";
+         };
+
+        u2phy0_otg: otg-port {
+          #phy-cells = <0>;
+          interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH 0>,
+                       <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH 0>,
+                       <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH 0>;
+          interrupt-names = "otg-bvalid", "otg-id",
+                            "linestate";
+        };
+      };
+    };
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
