Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26A90C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 14:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s2R1rG0+48CCxqhMsaHoxejDWBfKIlmslLTXL4YySOU=; b=iF2Vh0MOjEludJ
	lleRnavi7KwCgrStYPu1l/iGgpCm+dKHcQ4x/xyUuww2Ii8fwzYytSEjTRNHIsfwiDPcmp0cjfS40
	GIZqjzwJMmKkGp59cUcA+IV3zFX12onchzwUVbHBVByXSHzfZSxfUng8W5lSBt0NjhZCCpkuzkjtE
	iIyRVIPxS2P4KQBI3nsZ2lntZHOIAHeI6ED61ecHOymagBn69cHQR/IMX5ZgdLM0atgb//8Q88Bq0
	aEh6QfkSRNnfGQQ65MsT9a74s61ZuQrYd2JvMLEviFEkBbRpzOWQwS1sW7VztW4mcuOebZTZy8GUH
	/3j+vhRnJckElcj1Obsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naet1-009JuF-NI; Sat, 02 Apr 2022 14:37:55 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naerx-009JEl-Ac; Sat, 02 Apr 2022 14:36:51 +0000
Received: by mail-ej1-x632.google.com with SMTP id dr20so11364659ejc.6;
 Sat, 02 Apr 2022 07:36:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QIVGUjs41+UBtdFf/mZgPvyrkZrSiMzhST++uwe+iNs=;
 b=IGuZEVR1bFfkZLH0sXRh90pKHTRRNW+084MuD3+cu+xCPq7RTGrtNw3tLoT2zl7sZM
 EFO02jQytaY4f1Ib7Qb46XSoN+k9aXQUHsSy3VSO00Dlr3MkT7v0X3MaFyei6TvNNx17
 PghUn/aKObHAUxVd+ijKsB95beQTPQUinP0oKxwvvKNFSSt1kXJONRRZsCiwo1lEwCEi
 1GSASPfAxpBTSbowHLyGrmMnXbXI66rVTQUwqGpS6kmvPkKHqmIh0PG9AAJukYt1cBGk
 K5Ogcve+0/GAHD+AwBhAK8Bq15Z55hNE+aXv2uJW/fle+avizL1bqapFmElhkeftp13W
 urWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QIVGUjs41+UBtdFf/mZgPvyrkZrSiMzhST++uwe+iNs=;
 b=fi++NpADnzn+RfajrwZbHwKdDvB/H9f9OqfS5m+1JrH/FwZ69vMdnnXRLCF3NG5UdB
 V37QLBImdO9Th+LoqfgezbQibC6YhKULQtjQa0qYGMKJSSYePRG1JbpCR0WETuFi+r1q
 XCSpyqDLRyEp1RPhEL/nnhJ1zS4TkdwV+J1EUsDXPG8Po2Tu3NxK8jMsAxucQUe+MD8y
 nfLgeBacv1Z9aQTNy1KenzvicGrQ4anbfaiNIU3qyYgYVhOQL6nh9Kq48fPXm1/bw8oK
 lltAIr51Ndbg/jtYQ4+Lxs/VQRI7TpsDyIB8qfMYN3aSyACPevQ6a4Fh/S/x9/ifghIw
 JOzg==
X-Gm-Message-State: AOAM530sxnIfODfPJHocbjmQPOxDGUhkZQyfi157stxIMWbw6rmKwJ4K
 7+cH47BjsnrLJLzLxYtM3u0=
X-Google-Smtp-Source: ABdhPJwwbv2hW46fHq4psw3tyc9kpcHon8oxSjm3y1lmDhVixzxYpzsjl7IzWYUwvvIthjYoIrN/ag==
X-Received: by 2002:a17:907:8a17:b0:6e7:28d2:ba51 with SMTP id
 sc23-20020a1709078a1700b006e728d2ba51mr883255ejc.614.1648910206412; 
 Sat, 02 Apr 2022 07:36:46 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 bp8-20020a170907918800b006e0daaa63ddsm2169557ejb.60.2022.04.02.07.36.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Apr 2022 07:36:46 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 03/16] dt-bindings: clock: convert rockchip,
 rk3188-cru.txt to YAML
Date: Sat,  2 Apr 2022 16:36:23 +0200
Message-Id: <20220402143636.15222-4-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220402143636.15222-1-jbx6244@gmail.com>
References: <20220402143636.15222-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_073649_428782_29E2A60D 
X-CRM114-Status: GOOD (  20.26  )
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

Convert rockchip,rk3188-cru.txt to YAML.

Changes against original bindings:
  Add clocks and clock-names because the device has to have
  at least one input clock.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Changed V4:
  add more clocks
  add clocks to example
  add clocks requirement

Changed V3:
  add Rockchip maintainer on her request
  fix yamllint line too long

Changed V2:
  change clocks maxItems
  add clock-names
  use clock-controller node name
  remove assigned-xxx
---
 .../bindings/clock/rockchip,rk3188-cru.txt    | 61 -------------
 .../bindings/clock/rockchip,rk3188-cru.yaml   | 86 +++++++++++++++++++
 2 files changed, 86 insertions(+), 61 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.txt
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.yaml

diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.txt b/Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.txt
deleted file mode 100644
index 7f368530a..000000000
--- a/Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.txt
+++ /dev/null
@@ -1,61 +0,0 @@
-* Rockchip RK3188/RK3066 Clock and Reset Unit
-
-The RK3188/RK3066 clock controller generates and supplies clock to various
-controllers within the SoC and also implements a reset controller for SoC
-peripherals.
-
-Required Properties:
-
-- compatible: should be "rockchip,rk3188-cru", "rockchip,rk3188a-cru" or
-			"rockchip,rk3066a-cru"
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
-preprocessor macros in the dt-bindings/clock/rk3188-cru.h and
-dt-bindings/clock/rk3066-cru.h headers and can be used in device tree sources.
-Similar macros exist for the reset sources in these files.
-
-External clocks:
-
-There are several clocks that are generated outside the SoC. It is expected
-that they are defined using standard clock bindings with following
-clock-output-names:
- - "xin24m" - crystal input - required,
- - "xin32k" - rtc clock - optional,
- - "xin27m" - 27mhz crystal input on rk3066 - optional,
- - "ext_hsadc" - external HSADC clock - optional,
- - "ext_cif0" - external camera clock - optional,
- - "ext_rmii" - external RMII clock - optional,
- - "ext_jtag" - externalJTAG clock - optional
-
-Example: Clock controller node:
-
-	cru: cru@20000000 {
-		compatible = "rockchip,rk3188-cru";
-		reg = <0x20000000 0x1000>;
-		rockchip,grf = <&grf>;
-
-		#clock-cells = <1>;
-		#reset-cells = <1>;
-	};
-
-Example: UART controller node that consumes the clock generated by the clock
-  controller:
-
-	uart0: serial@10124000 {
-		compatible = "snps,dw-apb-uart";
-		reg = <0x10124000 0x400>;
-		interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
-		reg-shift = <2>;
-		reg-io-width = <1>;
-		clocks = <&cru SCLK_UART0>;
-	};
diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.yaml
new file mode 100644
index 000000000..ff849c729
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.yaml
@@ -0,0 +1,86 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/rockchip,rk3188-cru.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip RK3188/RK3066 Clock and Reset Unit (CRU)
+
+maintainers:
+  - Elaine Zhang <zhangqing@rock-chips.com>
+  - Heiko Stuebner <heiko@sntech.de>
+
+description: |
+  The RK3188/RK3066 clock controller generates and supplies clocks to various
+  controllers within the SoC and also implements a reset controller for SoC
+  peripherals.
+  Each clock is assigned an identifier and client nodes can use this identifier
+  to specify the clock which they consume. All available clocks are defined as
+  preprocessor macros in the dt-bindings/clock/rk3188-cru.h and
+  dt-bindings/clock/rk3066-cru.h headers and can be used in device tree sources.
+  Similar macros exist for the reset sources in these files.
+  There are several clocks that are generated outside the SoC. It is expected
+  that they are defined using standard clock bindings with the
+  clock-output-names defined in this schema.
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3066a-cru
+      - rockchip,rk3188-cru
+      - rockchip,rk3188a-cru
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    minItems: 1
+    maxItems: 7
+
+  clock-names:
+    minItems: 1
+    maxItems: 7
+    items:
+      enum:
+        - xin24m
+        - xin27m
+        - xin32k
+        - ext_cif0
+        - ext_hsadc
+        - ext_jtag
+        - ext_rmii
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
+    cru: clock-controller@20000000 {
+      compatible = "rockchip,rk3188-cru";
+      reg = <0x20000000 0x1000>;
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
