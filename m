Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F8D7C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Mar 2022 13:17:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2h1LilRHAQ20q6VzHSOEG6h2m4TVJiriTIdV/VSe4kQ=; b=JM8obvP2A3O9Xw
	zu62ABvx1C7yokBV0RVHrQhaOHBve+OjwW4bAAywdcwChOTphVgTJxH28za2/y5iyT8VNk62gx6AA
	Js31D5iHwPQZEjmOjHWOUZMVPGTwsuzxmvCZXbV6eCXyfBmKEajGtwb01+5xzCGKrbGI9Hd+BuuUG
	FEYfzqUcyEncs7Hr6hCOg/ONvI5eB5IDwBUnJj7injLIOVHdL23aHMdln0xl4gc9tU6BRuh46yyTb
	UEkKmTM0AHRTlt2IEi3yGDgqy8XDLn6GqhsCa44FB6iBHNNIFcWnkhX6g6HRt3CyjB9uISMVI4x1y
	wVEVJ+1v/JuAdB2PxWCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZYC2-00G2AT-6y; Wed, 30 Mar 2022 13:16:58 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZYBM-00G1ut-Cg; Wed, 30 Mar 2022 13:16:18 +0000
Received: by mail-ej1-x62a.google.com with SMTP id lr4so33024723ejb.11;
 Wed, 30 Mar 2022 06:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kIZngZOjWy/J3S+b4z6+BUn/eXOxV020jVmkrkFNZpQ=;
 b=biH0nxISIqGQSS6v7IiQeP0zNDT0PEkBjLFaq1jmJRMkJP74TqKUjH2bP7aVt9KtQp
 TWRHFlLQ4mYWPEgAbR1NxjkfM75bZdcQu2rANl3Uo6noaZggYAYLZk9nXfn4965pQynB
 yooB4KgRMwDuXQPgsHGc2V49mFs4YafwhRqTzklEIj0mMBufGVxwLNzzVn9ba5f1qIJs
 iNbMX+bmavYi2ijWIwfXVxONCIlUgyCh1MGo3zg3A/nu1cVlHdB34YY5tM95G1/uym+q
 GgajeY3vUZ4rK263Jey0gj5Y6Iuq+lL5nNYHa03Ha+SR1tpxhGHob+DPqSw+g2NHMG+F
 34BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kIZngZOjWy/J3S+b4z6+BUn/eXOxV020jVmkrkFNZpQ=;
 b=he7vHtf6ho13lNS2CWO9b36Ihit9KHrGSy+ApUIqvav0u4sFk42ij7qp46tWuoCWiT
 BPTOefuLJBoJgOw+C6X0ZhCeRGXkUY/yfPFf7g9C2bd3eTojEugXt11EJiHyF/7eZJeY
 ft7I680D1PE+BdFxOt9ovvSGvZxzyI59SEv2cc29xJsWZvc0Co8Jkhso6cvdFfITeOZm
 Xs6TkMCbX1fzCP2tGU6MZUJw4ARzspq/17ycI966rcEHluuAYdH4IfcuJGAJoDOCnnYg
 T+Jo1ipRlxPRyQK3WX+MZWmXkp46t4TBxwsvgC4TLPPW3pJ4bwxjAnnAN+612sYHxW5Y
 sx/A==
X-Gm-Message-State: AOAM531+TbfRqbVzpGF3Dsq0jvGlmQrTuPY0IVQrWQFhfF7dhjSD8Gqv
 4IQ0yizttlod4sztBcPzgloC6Lw+xhI=
X-Google-Smtp-Source: ABdhPJxS9G9VHO3IThZxz4ao9YzTgP8Wz1c0iHE9nerrkjAwT9R8JXr1OX+n2TYNV647tHhxNfQ6vg==
X-Received: by 2002:a17:906:a4b:b0:6d0:fbdd:7cb5 with SMTP id
 x11-20020a1709060a4b00b006d0fbdd7cb5mr40462121ejf.152.1648646174471; 
 Wed, 30 Mar 2022 06:16:14 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 ge13-20020a170907908d00b006e09a005d73sm6603476ejb.31.2022.03.30.06.16.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Mar 2022 06:16:14 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/3] dt-bindings: clock: convert rockchip,
 rv1108-cru.txt to YAML
Date: Wed, 30 Mar 2022 15:16:06 +0200
Message-Id: <20220330131608.30040-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_061616_485646_21755891 
X-CRM114-Status: GOOD (  18.72  )
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

Convert rockchip,rv1108-cru.txt to YAML.

Changes against original bindings:
  Add clocks and clock-names because the device has to have
  at least one input clock.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../bindings/clock/rockchip,rv1108-cru.txt    | 59 ---------------
 .../bindings/clock/rockchip,rv1108-cru.yaml   | 75 +++++++++++++++++++
 2 files changed, 75 insertions(+), 59 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rv1108-cru.txt
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rv1108-cru.yaml

diff --git a/Documentation/devicetree/bindings/clock/rockchip,rv1108-cru.txt b/Documentation/devicetree/bindings/clock/rockchip,rv1108-cru.txt
deleted file mode 100644
index 161326a4f..000000000
--- a/Documentation/devicetree/bindings/clock/rockchip,rv1108-cru.txt
+++ /dev/null
@@ -1,59 +0,0 @@
-* Rockchip RV1108 Clock and Reset Unit
-
-The RV1108 clock controller generates and supplies clock to various
-controllers within the SoC and also implements a reset controller for SoC
-peripherals.
-
-Required Properties:
-
-- compatible: should be "rockchip,rv1108-cru"
-- reg: physical base address of the controller and length of memory mapped
-  region.
-- #clock-cells: should be 1.
-- #reset-cells: should be 1.
-
-Optional Properties:
-
-- rockchip,grf: phandle to the syscon managing the "general register files"
-  If missing pll rates are not changeable, due to the missing pll lock status.
-
-Each clock is assigned an identifier and client nodes can use this identifier
-to specify the clock which they consume. All available clocks are defined as
-preprocessor macros in the dt-bindings/clock/rv1108-cru.h headers and can be
-used in device tree sources. Similar macros exist for the reset sources in
-these files.
-
-External clocks:
-
-There are several clocks that are generated outside the SoC. It is expected
-that they are defined using standard clock bindings with following
-clock-output-names:
- - "xin24m" - crystal input - required,
- - "ext_vip" - external VIP clock - optional
- - "ext_i2s" - external I2S clock - optional
- - "ext_gmac" - external GMAC clock - optional
- - "hdmiphy" - external clock input derived from HDMI PHY - optional
- - "usbphy" - external clock input derived from USB PHY - optional
-
-Example: Clock controller node:
-
-	cru: cru@20200000 {
-		compatible = "rockchip,rv1108-cru";
-		reg = <0x20200000 0x1000>;
-		rockchip,grf = <&grf>;
-
-		#clock-cells = <1>;
-		#reset-cells = <1>;
-	};
-
-Example: UART controller node that consumes the clock generated by the clock
-  controller:
-
-	uart0: serial@10230000 {
-		compatible = "rockchip,rv1108-uart", "snps,dw-apb-uart";
-		reg = <0x10230000 0x100>;
-		interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
-		reg-shift = <2>;
-		reg-io-width = <4>;
-		clocks = <&cru SCLK_UART0>;
-	};
diff --git a/Documentation/devicetree/bindings/clock/rockchip,rv1108-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rv1108-cru.yaml
new file mode 100644
index 000000000..20421c22f
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/rockchip,rv1108-cru.yaml
@@ -0,0 +1,75 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/rockchip,rv1108-cru.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip RV1108 Clock and Reset Unit (CRU)
+
+maintainers:
+  - Elaine Zhang <zhangqing@rock-chips.com>
+  - Heiko Stuebner <heiko@sntech.de>
+
+description: |
+  The RV1108 clock controller generates and supplies clocks to various
+  controllers within the SoC and also implements a reset controller for SoC
+  peripherals.
+  Each clock is assigned an identifier and client nodes can use this identifier
+  to specify the clock which they consume. All available clocks are defined as
+  preprocessor macros in the dt-bindings/clock/rv1108-cru.h headers and can be
+  used in device tree sources. Similar macros exist for the reset sources in
+  these files.
+  There are several clocks that are generated outside the SoC. It is expected
+  that they are defined using standard clock bindings with following
+  clock-output-names:
+    - "xin24m"   - crystal input                              - required
+    - "ext_vip"  - external VIP clock                         - optional
+    - "ext_i2s"  - external I2S clock                         - optional
+    - "ext_gmac" - external GMAC clock                        - optional
+    - "hdmiphy"  - external clock input derived from HDMI PHY - optional
+    - "usbphy"   - external clock input derived from USB PHY  - optional
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rv1108-cru
+
+  reg:
+    maxItems: 1
+
+  "#clock-cells":
+    const: 1
+
+  "#reset-cells":
+    const: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: xin24m
+
+  rockchip,grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to the syscon managing the "general register files" (GRF),
+      if missing pll rates are not changeable, due to the missing pll
+      lock status.
+
+required:
+  - compatible
+  - reg
+  - "#clock-cells"
+  - "#reset-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    cru: clock-controller@20200000 {
+      compatible = "rockchip,rv1108-cru";
+      reg = <0x20200000 0x1000>;
+      rockchip,grf = <&grf>;
+      #clock-cells = <1>;
+      #reset-cells = <1>;
+    };
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
