Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB23EC433FE
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 14:41:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BN+s5fJXNOAe7fufKA3MtGtFXiKTpDiSYtV5Aq9G7Cs=; b=SCjx9KLDjJEsA4
	HQcq1QmNMZ20lCszOvvcZLrnAZwMebTc3y3IRHDfR5kNDcy46Spo4PDMJV2wYe+nR34TUqhcQ0Lt5
	SIlmuJQ1iOAjDkG00oZtKQH6tfVO8GXjMt10yvCjnMP5UbM6r1HVdhlKwueuUgU6v0qIU8Z3Ty7Pl
	8aJT6UJQ6g7wc6bKaxyTkeTRku6cpXpzArMGR31FmrKodfN6UFC7nNJaFpeo6PmWmSDr4SkwAnrLh
	R/71kCkE06N0z4Zbp9zhYNCf8Oql8IDI9pqIlHIyI558XioPO5YA9T+MOQ+cpQpl/ATMpGJ4SLkz1
	ub97t1ItFsSbmj1+DXrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naewH-009LrV-9u; Sat, 02 Apr 2022 14:41:17 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naesD-009JHv-1V; Sat, 02 Apr 2022 14:37:06 +0000
Received: by mail-ej1-x630.google.com with SMTP id bq8so11357289ejb.10;
 Sat, 02 Apr 2022 07:36:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RI0GoRc5b1X0/vt9l1Smbq3N/ifsIvAYcPQbiupDesQ=;
 b=Fu/AyvztsYDGFE4E4SbHfWP3jdau9pB/RhNZtRTr4NEiw1+HpAsmxypnrgc3eRo3PN
 yxf7tfLd/8WleFomFsQAFVAY2P2s11ZRRnRrZDtw6JfaQX+dJG0N3l7Mg4jCkNX5Nh9f
 7LNzDlVxDYDHMvD2pAAMU2aPPNEx2HFh9DuVW/ZkJsmpEnVmai2WkRHnGLOzt0AX2lSG
 sTc76KvIh0+DE/bEG3jQSnXA1hKyGlHzCu+17XZqm0ITfxmpJkyjHzjvswUCf1Qe9Rzh
 jnZChEKN2Gxe/yjqtbMXag8rAHfE7Tfq4IYhvSiWw4fDr75CM0UfpLlZ9vqJfcbLNBV3
 nbTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RI0GoRc5b1X0/vt9l1Smbq3N/ifsIvAYcPQbiupDesQ=;
 b=eYBVpyvrh3P45X9sHR9v0sbJqtqczjf2RBoUDpHP6L5gbZ+yrJySQtNhk2U7Yh0TuL
 r7FqVwIsyh6uq2kZ6IAFowOOTsnx/MvsiltuvFCxFTMHLGbstvN/qv5xLlLRBvA9Uzlt
 FRpQGlN+EkRoKTmWCENVC3+AWcL5vstwoGL+Kk1uo0JIdqa6nkLxyBiDzOa2oDWYatnY
 ktAWmTObQB7cHExnbyAfbfxtfaoZDixXv94iBoVv1RauRTICprg1ltw8Ir/wFR4hBoR0
 UooEcrfw3W8CMXND0buzWT84pniQn7CjeqriqotEREfoHMWDaz5XWgcQlWW9otWwcldk
 8msA==
X-Gm-Message-State: AOAM530vwVT86Mxz3FX6u3d/2+hXKNeTCXpuly9afMxtede4gXddSFaN
 +jKtGXk+1/V2+WMmF3e5P+U=
X-Google-Smtp-Source: ABdhPJxjvkr5bVULkIKPFJH4QLeCWNip5rPSmhjzRxv3NkzjaHPu80dIevC+y3oKx/F/XxZBhky4fA==
X-Received: by 2002:a17:907:60cf:b0:6db:f0a6:74af with SMTP id
 hv15-20020a17090760cf00b006dbf0a674afmr3927634ejc.317.1648910211938; 
 Sat, 02 Apr 2022 07:36:51 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 bp8-20020a170907918800b006e0daaa63ddsm2169557ejb.60.2022.04.02.07.36.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Apr 2022 07:36:51 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 09/16] dt-bindings: clock: convert rockchip,
 rv1108-cru.txt to YAML
Date: Sat,  2 Apr 2022 16:36:29 +0200
Message-Id: <20220402143636.15222-10-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220402143636.15222-1-jbx6244@gmail.com>
References: <20220402143636.15222-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_073705_130466_2130F902 
X-CRM114-Status: GOOD (  20.00  )
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

Changed V4:
  add more clocks
  add clocks to example
  add clocks requirement
---
 .../bindings/clock/rockchip,rv1108-cru.txt    | 59 -------------
 .../bindings/clock/rockchip,rv1108-cru.yaml   | 83 +++++++++++++++++++
 2 files changed, 83 insertions(+), 59 deletions(-)
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
index 000000000..abbfdfae8
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/rockchip,rv1108-cru.yaml
@@ -0,0 +1,83 @@
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
+  that they are defined using standard clock bindings with the
+  clock-output-names defined in this schema.
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rv1108-cru
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    minItems: 1
+    maxItems: 6
+
+  clock-names:
+    minItems: 1
+    maxItems: 6
+    items:
+      enum:
+        - xin24m
+        - ext_gmac
+        - ext_i2s
+        - ext_vip
+        - hdmiphy
+        - usbphy
+
+  rockchip,grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to the syscon managing the "general register files" (GRF),
+      if missing pll rates are not changeable, due to the missing pll
+      lock status.
+
+  "#clock-cells":
+    const: 1
+
+  "#reset-cells":
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
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
+      clocks = <&xin24m>;
+      clock-names = "xin24m";
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
