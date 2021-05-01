Return-Path: <SRS0=EhM5=J4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A83BC433B4
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 May 2021 20:36:10 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E6E9161449
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 May 2021 20:36:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E6E9161449
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=uhp12hLl/QpU89f56Df4k6h0MN0A6lAaquXm3zQbwnA=; b=rEVRu1HWBGGIUj7fPujJ83D+H7
	PUOUAdjxETE8VSPEekFSM0hRjybq47VZv3clhraVVobwp6MVsH2djaP6d2SWEskY5puXY836oCYZs
	8IHmf1H/Rquc50Mcc65WW5O8vDdX94oZbZOtoyVs3Xn3Rm4Nj8E22Eg6NscamUuGO5kEKiX2lHaGb
	TeJvPjg0eeJ57sclm6cMNV40A3v08C1havj7HVzPQykDZ+g8Xsrz1iefX7zfdJ7S2qGwtBC8ZrtTV
	fxZ7ERXHsP7YACAuoUfsyK9akXNUuAKFBRqmEfm2BJed6Vh3sP3isgEFmATl0u8fXEMY08wtPYfUB
	tW4TSWOA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcwLL-00AeLJ-Dt; Sat, 01 May 2021 20:36:03 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcwKw-00AeIp-Qp; Sat, 01 May 2021 20:35:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=sVBwFT5onhZh1pPgvteGEsjGuLXW4VAnp9XDwPRr8XM=; b=X4e0jqlALrHA9bGHaohzL50E7a
 0ceEgUKk5eQms9sUXaz89HlqFG58lMTnE0/01HVL8kMaOPeU2mGZ5k3ItCXwGpST/buiiH8Hlf11u
 IGk3i1Fzpe0ooZAwLJtJycEPYj0JY7Sy3WhYCQECS0PBUuNJ/kLVvAIWF4JWntt9gybT7/muru0jX
 Scq+5+E+HpGhIRPD2mldm5WRJW/++U7dirrO1C1z9HL+I0UC+fvJ6dxUayWv+M14rFLmRR1sV7Z5K
 kTbBv2huQutySK0YZ7CXJKmQLgEg7zaovkynfHYDl9UR/seRF8Wt17LXViN/daTXFoT6ubt7nBKEv
 UNl/DCZA==;
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcwKt-00291f-H5; Sat, 01 May 2021 20:35:37 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a4so2177291ejk.1;
 Sat, 01 May 2021 13:35:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=sVBwFT5onhZh1pPgvteGEsjGuLXW4VAnp9XDwPRr8XM=;
 b=dJ15BV8+vFs5dm1H/U38HR28CAdhUfnhpiyEBqxIcyQOXNtb0zW4FW5aIgWJpd0pAY
 oU8wuVE+SCbxqkvF2ujYvs251ZdSoo0LMU7ceOxEf79gNC6gsW2xinp//oCtoKL66x9G
 LMIMfFWvM0FiyJy+PnewiJNtY1rzwZbiZZBJYUZ/aF7F3M0cuFj9o2He1rm9CAsu7iop
 /zBEVaCy24WonMAcUFeTXH0+g53AiWTvAzv6EEwE1mNU3ElHsWfDwZphDUGug8vbWtAr
 5Vlmr6Nf1K0nZncztn2ef2agxasl2VNd+cM9tTcc8DQp03Ke2/1lyrZflit9rMSOWYAo
 xxOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=sVBwFT5onhZh1pPgvteGEsjGuLXW4VAnp9XDwPRr8XM=;
 b=OAW32Mie7Vq+ZzSvK5Ez3Lzk995vP67HkV9j5VQJvkMdStAoC03/7bLTDfj+euovPj
 Kh/ZmQUbMGz6IgMi+Dfxi5NlIkPJifOPOveetruWBRjUTM29rUQoebw1eZer43/02LLd
 5TgQC86y3g5esr4a+cv6wqCdGy7HRIG3XqZVJQ3gILlfh9yFlbpaxQKC3GQXlWrit/iB
 4yFEsiIpB9/3JWI4DGAs1OyRkl1SkBoSFqbxdW2MmaFxpcF/N1pm1hcL3ReiwzFqN+a+
 xOPJ0SIsmWSqmvnEAtBte+DgiEeKkZETkfY1WdH0D8ai8jkrcCxbBX0qvXN0mLNBzdBm
 g6Yw==
X-Gm-Message-State: AOAM533J0T+qVS6VkOwH0h5gTROQoaPzPL5dr2Qr2La5K4dfQwTs6QNm
 5EiZgByUvLzLFdov45duGzE=
X-Google-Smtp-Source: ABdhPJy4LdyuSiVPNUwPXSRlECLyxXF4eqBop7mU0VCHgv5gvLkeKNNuqyQ5O7I8X/a0aj1lDF5i7A==
X-Received: by 2002:a17:906:3e97:: with SMTP id
 a23mr10210952ejj.440.1619901330225; 
 Sat, 01 May 2021 13:35:30 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id 9sm6607544ejv.73.2021.05.01.13.35.27
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 01 May 2021 13:35:29 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: cl@rock-chips.com, jay.xu@rock-chips.com, david.wu@rock-chips.com,
 zhangqing@rock-chips.com, huangtao@rock-chips.com,
 shawn.lin@rock-chips.com, robh+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/2] dt-bindings: soc: rockchip: convert grf.txt to YAML
Date: Sat,  1 May 2021 22:35:19 +0200
Message-Id: <20210501203520.5465-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210501_133535_605412_367EA7F1 
X-CRM114-Status: GOOD (  18.50  )
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

Add description already in use:
"rockchip,rv1108-pmugrf", "syscon"

Add new descriptions for:
"rockchip,rk3568-grf", "syscon", "simple-mfd"
"rockchip,rk3568-pmugrf", "syscon", "simple-mfd"

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../devicetree/bindings/soc/rockchip/grf.txt       |  61 -----
 .../devicetree/bindings/soc/rockchip/grf.yaml      | 277 +++++++++++++++++++++
 2 files changed, 277 insertions(+), 61 deletions(-)
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
index 000000000..3f66328a3
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -0,0 +1,277 @@
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
+select:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - rockchip,px30-grf
+          - rockchip,px30-pmugrf
+          - rockchip,px30-usb2phy-grf
+          - rockchip,rk3036-grf
+          - rockchip,rk3066-grf
+          - rockchip,rk3188-grf
+          - rockchip,rk3228-grf
+          - rockchip,rk3288-grf
+          - rockchip,rk3288-sgrf
+          - rockchip,rk3308-core-grf
+          - rockchip,rk3308-detect-grf
+          - rockchip,rk3308-grf
+          - rockchip,rk3328-grf
+          - rockchip,rk3328-usb2phy-grf
+          - rockchip,rk3368-grf
+          - rockchip,rk3368-pmugrf
+          - rockchip,rk3399-grf
+          - rockchip,rk3399-pmugrf
+          - rockchip,rk3568-grf
+          - rockchip,rk3568-pmugrf
+          - rockchip,rv1108-grf
+          - rockchip,rv1108-pmugrf
+          - rockchip,rv1108-usbgrf
+
+  required:
+    - compatible
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - rockchip,rk3066-grf
+              - rockchip,rk3188-grf
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
+required:
+  - compatible
+  - reg
+
+additionalProperties: true
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
+        usbphy:
+          description:
+            Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3328-grf
+
+    then:
+      properties:
+        grf-gpio:
+          description:
+            Documentation/devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.txt
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
+      properties:
+        "#address-cells":
+          const: 1
+
+        "#size-cells":
+          const: 1
+
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
+          unevaluatedProperties: false
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
