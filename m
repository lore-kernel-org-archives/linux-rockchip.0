Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A658FC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Mar 2022 13:32:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kUk4IZa/aBSyxpn48PDY+n1F7Z0hXbxDF4fQqm4oHz8=; b=c2pAYRlXVERmNq
	sQ7G5l3Qj7Rdwvj2nLJ5hykY4puNrI0MFzI6769F4ds0IxozW+AC9YqL+Fm/b0pxPv42N6Q7nM8l/
	K0nVEORTSnL0Qd+MK9YhbPtZGv4Zsg2T13e0S1WATfWExK42He/43mw8mU3USJxIMbcynqaofZ72e
	pJkFkmmy/iEdMdWxnfh+GaSSc2Axv5Gq6Mj4dDnnTP+uRSaj16EBRlcA5SSKuXx3XZLYntl0NvCJ8
	vfoPc6mpiasfvgTIWAzlBwYPpIO3dXDww4QiZQcAKroXQIXg4z6JUW4qTp8dbsKVim0/AVrMUm5PW
	NdXUNs9/BOwVYgeSBOiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nXNa6-00GiY9-Bv; Thu, 24 Mar 2022 13:32:50 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nXNZu-00GiVe-45; Thu, 24 Mar 2022 13:32:40 +0000
Received: by mail-ed1-x52d.google.com with SMTP id g20so5635596edw.6;
 Thu, 24 Mar 2022 06:32:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kUVvYnYs4g2TTfOXTOoNhPTZFus1FHIFlYQM09GP0Vk=;
 b=Q8035X5zS23vYfXMn75+bVrxoYlc/oa9RWON9lVbkl1KBuSsYR2Y5iGqOTiwemLcAd
 DFCZ0VFdAofKru5LChgYARUyGn0H6Vovf7xmfOsHUfqU3/AsvBqISW16bHTmVrtB7V4Q
 OvcTra3rKbvwC9HzEjPCQcl4Nwn7Da+XFkKmJGFurbYzxct507mmnxbIFOdQoQlbh0E3
 gJckgjjxM5DUe7zlfS7DjhAN369LWzpcLCtX//2fnrQrdQiDQnakPkoXjzFKPsLeZu1I
 051XpIpdcyZu/YDzZVzCtq7T7DfHtjRMf5JCrgy7Qg7psg9fEXS8Tr11/dKCF0gWFPy1
 Ci/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kUVvYnYs4g2TTfOXTOoNhPTZFus1FHIFlYQM09GP0Vk=;
 b=4Y8eKLTTnlubnAlSe0DoP79tyoE6q+7qomuDLg0Ya+N+gcQ9bgsmPZuAcWwxMoplYH
 2DRNPCzhdAin3+X3BiFZZdZ/lFglmsThW0EtFtHhcg+E7Ry3N0fc7dsT42KsEHCCRg3l
 vI7+eXSLKi/pNgTjO6lGvQHJaj3I80kZSdDgVpGNNODuvDJK5fDaUu8dU4U/Sn0B5v3j
 9nx6HzDCvw1IIXH1QOCcjngX5UZ50Y8gkGEk5x1NoWew/PX/pHmoExFXJW4lebhZzicy
 8uX9inFyWrbqxc4iNkYtloKUEIrIbwX2RUr0NC3w7wcIHBhAfErvihbQ1Ka9Jdydao8i
 LUCA==
X-Gm-Message-State: AOAM53124n336uJHhJfPsIoPj08U3HymIR9kttgHHQH6L1Jo6+9NoBJp
 6MMDmzbaoprnE48bSDcOVTk=
X-Google-Smtp-Source: ABdhPJwpYrQv1JTNbSVl+ILm6u1YPNfOOvT6AddOYMuAqF2bXalSsHTwkuk6zOWeUfzN99+SZG72bA==
X-Received: by 2002:a05:6402:1388:b0:419:3d1a:9844 with SMTP id
 b8-20020a056402138800b004193d1a9844mr6762385edv.256.1648128756186; 
 Thu, 24 Mar 2022 06:32:36 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 g11-20020a170906538b00b006ae38eb0561sm1145586ejo.195.2022.03.24.06.32.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Mar 2022 06:32:35 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1] dt-bindings: clock: convert rockchip,
 rk3188-cru.txt to YAML
Date: Thu, 24 Mar 2022 14:32:29 +0100
Message-Id: <20220324133229.24035-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220324_063238_212551_0E045DA2 
X-CRM114-Status: GOOD (  18.90  )
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

Current dts files with RK3188/RK3066 'cru' nodes are manually verified.
In order to automate this process rockchip,rk3188-cru.txt has to be
converted to YAML.

Changed:
  Add properties to fix notifications by clocks.yaml for example:
    clocks
    assigned-clock-rates
    assigned-clocks

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../bindings/clock/rockchip,rk3188-cru.txt    | 61 --------------
 .../bindings/clock/rockchip,rk3188-cru.yaml   | 81 +++++++++++++++++++
 2 files changed, 81 insertions(+), 61 deletions(-)
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
index 000000000..136a9771e
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.yaml
@@ -0,0 +1,81 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/rockchip,rk3188-cru.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip RK3188/RK3066 Clock and Reset Unit (CRU)
+
+maintainers:
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
+  that they are defined using standard clock bindings with following
+  clock-output-names:
+    - "xin24m"    - crystal input                 - required
+    - "xin32k"    - RTC clock                     - optional
+    - "xin27m"    - 27mhz crystal input on RK3066 - optional
+    - "ext_hsadc" - external HSADC clock          - optional
+    - "ext_cif0"  - external camera clock         - optional
+    - "ext_rmii"  - external RMII clock           - optional
+    - "ext_jtag"  - external JTAG clock           - optional
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
+  "#clock-cells":
+    const: 1
+
+  "#reset-cells":
+    const: 1
+
+  clocks:
+    minItems: 1
+
+  assigned-clock-rates:
+    minItems: 1
+    maxItems: 64
+
+  assigned-clocks:
+    minItems: 1
+    maxItems: 64
+
+  rockchip,grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to the syscon managing the "general register files" (GRF),
+      if missing pll rates are not changeable, due to the missing pll lock status.
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
+    cru: cru@20000000 {
+      compatible = "rockchip,rk3188-cru";
+      reg = <0x20000000 0x1000>;
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
