Return-Path: <SRS0=SdcM=NX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 382DDC4320E
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Sep 2021 03:49:02 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F345060FF2
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Sep 2021 03:49:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org F345060FF2
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uutvFp/7kKAw9LNZOOnujTqv+t2lua7pKvVFR4yK1Io=; b=rTqYWH5jZGfLTr
	dLrq3HvH/k9KG8PdVLXGYvxonuYdWI18mSQxzSTDT6mZxm9Oqm2dzxlr6WUmsL5lWq9Ys8h46uZq2
	QivEChRknTfkK3KaauDQt7QGXUvjYbDJh1H6ynLkOruOoMXL1JaFVK5ec9K3CMMtYNc5btv8tJSH4
	r8XXFTI3sdfUDKhEnPQuKQMObdLs8hjh9BoTFlOSz6rg5zdPTYxiHP0eqFiBY9XPQKkjxZNDFkq/9
	YU3HSEiuzLEYeLONw/30bWCCuQYoYnGwPs3OEkb4e1q7vSJYQiq40F6GyWpVSXMl6T0PPoCFN/2o/
	UhuRPrNu9qow0rglS0mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mLHFC-003hkY-8g; Wed, 01 Sep 2021 03:48:58 +0000
Received: from lucky1.263xmail.com ([211.157.147.134])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mLHEy-003heI-Up
 for linux-rockchip@lists.infradead.org; Wed, 01 Sep 2021 03:48:49 +0000
Received: from localhost (unknown [192.168.167.172])
 by lucky1.263xmail.com (Postfix) with ESMTP id B8199CFAFF;
 Wed,  1 Sep 2021 11:48:41 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P6276T140522026899200S1630468119931360_; 
 Wed, 01 Sep 2021 11:48:41 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <6a04f27340317120328ab4c36cb59b7e>
X-RL-SENDER: sugar.zhang@rock-chips.com
X-SENDER: zxg@rock-chips.com
X-LOGIN-NAME: sugar.zhang@rock-chips.com
X-FST-TO: broonie@kernel.org
X-RCPT-COUNT: 6
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Sugar Zhang <sugar.zhang@rock-chips.com>
To: broonie@kernel.org,
	heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, Sugar Zhang <sugar.zhang@rock-chips.com>
Subject: [PATCH v3 7/7] ASoC: dt-bindings: rockchip: Convert pdm bindings to
 yaml
Date: Wed,  1 Sep 2021 11:48:38 +0800
Message-Id: <1630468118-7321-2-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1630468039-7186-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1630468039-7186-1-git-send-email-sugar.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210831_204846_031811_48E55C09 
X-CRM114-Status: GOOD (  20.16  )
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

This patch converts pdm bindings to yaml.

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
---

Changes in v3:
- Fix property 'path-map' suggested by Rob Herring.

Changes in v2:
- Fix yamllint errors.

 .../devicetree/bindings/sound/rockchip,pdm.txt     |  64 -----------
 .../devicetree/bindings/sound/rockchip,pdm.yaml    | 120 +++++++++++++++++++++
 2 files changed, 120 insertions(+), 64 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/rockchip,pdm.txt
 create mode 100644 Documentation/devicetree/bindings/sound/rockchip,pdm.yaml

diff --git a/Documentation/devicetree/bindings/sound/rockchip,pdm.txt b/Documentation/devicetree/bindings/sound/rockchip,pdm.txt
deleted file mode 100644
index b2d7e47..0000000
--- a/Documentation/devicetree/bindings/sound/rockchip,pdm.txt
+++ /dev/null
@@ -1,64 +0,0 @@
-* Rockchip PDM controller
-
-Required properties:
-
-- compatible: "rockchip,pdm"
-  - "rockchip,px30-pdm"
-  - "rockchip,rk1808-pdm"
-  - "rockchip,rk3308-pdm"
-  - "rockchip,rk3568-pdm"
-  - "rockchip,rv1126-pdm"
-- reg: physical base address of the controller and length of memory mapped
-  region.
-- dmas: DMA specifiers for rx dma. See the DMA client binding,
-	Documentation/devicetree/bindings/dma/dma.txt
-- dma-names: should include "rx".
-- clocks: a list of phandle + clock-specifer pairs, one for each entry in clock-names.
-- clock-names: should contain following:
-   - "pdm_hclk": clock for PDM BUS
-   - "pdm_clk" : clock for PDM controller
-- resets: a list of phandle + reset-specifer paris, one for each entry in reset-names.
-- reset-names: reset names, should include "pdm-m".
-- pinctrl-names: Must contain a "default" entry.
-- pinctrl-N: One property must exist for each entry in
-	     pinctrl-names. See ../pinctrl/pinctrl-bindings.txt
-	     for details of the property values.
-
-Optional properties:
-- rockchip,path-map: This is a variable length array, that shows the mapping
-  of SDIx to PATHx. By default, they are one-to-one mapping as follows:
-
-   path0 <-- sdi0
-   path1 <-- sdi1
-   path2 <-- sdi2
-   path3 <-- sdi3
-
-  e.g. "rockchip,path-map = <3 2 1 0>" means the mapping as follows:
-
-   path0 <-- sdi3
-   path1 <-- sdi2
-   path2 <-- sdi1
-   path3 <-- sdi0
-
-Example for rk3328 PDM controller:
-
-pdm: pdm@ff040000 {
-	compatible = "rockchip,pdm";
-	reg = <0x0 0xff040000 0x0 0x1000>;
-	clocks = <&clk_pdm>, <&clk_gates28 0>;
-	clock-names = "pdm_clk", "pdm_hclk";
-	dmas = <&pdma 16>;
-	#dma-cells = <1>;
-	dma-names = "rx";
-	pinctrl-names = "default", "sleep";
-	pinctrl-0 = <&pdmm0_clk
-		     &pdmm0_sdi0
-		     &pdmm0_sdi1
-		     &pdmm0_sdi2
-		     &pdmm0_sdi3>;
-	pinctrl-1 = <&pdmm0_clk_sleep
-		     &pdmm0_sdi0_sleep
-		     &pdmm0_sdi1_sleep
-		     &pdmm0_sdi2_sleep
-		     &pdmm0_sdi3_sleep>;
-};
diff --git a/Documentation/devicetree/bindings/sound/rockchip,pdm.yaml b/Documentation/devicetree/bindings/sound/rockchip,pdm.yaml
new file mode 100644
index 0000000..22e1cf6
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/rockchip,pdm.yaml
@@ -0,0 +1,120 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/rockchip,pdm.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip PDM controller
+
+description:
+  The Pulse Density Modulation Interface Controller (PDMC) is
+  a PDM interface controller and decoder that support PDM format.
+  It integrates a clock generator driving the PDM microphone
+  and embeds filters which decimate the incoming bit stream to
+  obtain most common audio rates.
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    enum:
+      - rockchip,pdm
+      - rockchip,px30-pdm
+      - rockchip,rk1808-pdm
+      - rockchip,rk3308-pdm
+      - rockchip,rk3568-pdm
+      - rockchip,rv1126-pdm
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: clock for PDM controller
+      - description: clock for PDM BUS
+
+  clock-names:
+    items:
+      - const: pdm_clk
+      - const: pdm_hclk
+
+  dmas:
+    maxItems: 1
+
+  dma-names:
+    items:
+      - const: rx
+
+  power-domains:
+    maxItems: 1
+
+  resets:
+    items:
+      - description: reset for PDM controller
+
+  reset-names:
+    items:
+      - const: pdm-m
+
+  rockchip,path-map:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    description:
+      Defines the mapping of PDM SDIx to PDM PATHx.
+      By default, they are mapped one-to-one.
+    maxItems: 4
+    uniqueItems: true
+    items:
+      enum: [ 0, 1, 2, 3 ]
+
+  "#sound-dai-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - dmas
+  - dma-names
+  - "#sound-dai-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3328-cru.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/pinctrl/rockchip.h>
+
+    bus {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        pdm@ff040000 {
+            compatible = "rockchip,pdm";
+            reg = <0x0 0xff040000 0x0 0x1000>;
+            interrupts = <GIC_SPI 82 IRQ_TYPE_LEVEL_HIGH>;
+            clocks = <&cru SCLK_PDM>, <&cru HCLK_PDM>;
+            clock-names = "pdm_clk", "pdm_hclk";
+            dmas = <&dmac 16>;
+            dma-names = "rx";
+            #sound-dai-cells = <0>;
+            pinctrl-names = "default", "sleep";
+            pinctrl-0 = <&pdmm0_clk
+                         &pdmm0_sdi0
+                         &pdmm0_sdi1
+                         &pdmm0_sdi2
+                         &pdmm0_sdi3>;
+            pinctrl-1 = <&pdmm0_clk_sleep
+                         &pdmm0_sdi0_sleep
+                         &pdmm0_sdi1_sleep
+                         &pdmm0_sdi2_sleep
+                         &pdmm0_sdi3_sleep>;
+        };
+    };
-- 
2.7.4




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
