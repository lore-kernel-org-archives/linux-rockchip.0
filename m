Return-Path: <SRS0=gCTq=IH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6EE5C433E0
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Mar 2021 01:57:07 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 62CC865255
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Mar 2021 01:57:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 62CC865255
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=e+r2HwHVRv+pOjH+e0xnn8yya/97X5R9lhv49Mc7R5w=; b=nitfxNxGftkQ9hRQRAS8+u82NW
	/q6KE9ZwZbI0pWvrS3b7PGJcXfVWIu/qMQ3KaRLRUyrNA1DQt/YhQQH1/yXzqXkgD/mVci5TWsoop
	CDEflrS/LC1ighEdeoeGLv/yHbo01f/TadaFtYniBt8E66CARg/lWVwLeFM7RjZO97mw4rK/rq0jl
	OwBGn/V25s95AFe3nuO+TVFKF0UMjv4qcbL7FPxFA+7kQal+Bb0/aks+IIxqrHnNX949WGjvyAkQN
	gL9SWzMivemmIYB8ZHaMrDGTQJVK8HjnGPaP6xZ1FMU8cCw8Ub5PRk4odNHFATYU5nUX1LGOrUr4a
	HPL9SaNQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJRcM-003cMS-Ao; Tue, 09 Mar 2021 01:57:02 +0000
Received: from lucky1.263xmail.com ([211.157.147.132])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJRc9-003cJo-BJ
 for linux-rockchip@lists.infradead.org; Tue, 09 Mar 2021 01:56:52 +0000
Received: from localhost (unknown [192.168.167.223])
 by lucky1.263xmail.com (Postfix) with ESMTP id B297FF2DFF;
 Tue,  9 Mar 2021 09:56:38 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P23505T140626794366720S1615254997318814_; 
 Tue, 09 Mar 2021 09:56:38 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <99b35143d881a883b8cbf2167576181f>
X-RL-SENDER: shawn.lin@rock-chips.com
X-SENDER: lintao@rock-chips.com
X-LOGIN-NAME: shawn.lin@rock-chips.com
X-FST-TO: robh+dt@kernel.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Rob Herring <robh+dt@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>
Cc: linux-mmc@vger.kernel.org, Adrian Hunter <adrian.hunter@intel.com>,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v3 1/3] dt-bindings: mmc: sdhci-of-dwcmhsc: Convert to yaml
 file
Date: Tue,  9 Mar 2021 09:56:28 +0800
Message-Id: <1615254990-192784-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210309_015649_994071_132F29B1 
X-CRM114-Status: GOOD (  19.69  )
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

This patch converts sdhci-of-dwcmshc.txt to sdhci-of-dwcmshc.yaml

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

---

Changes in v3:
- fix filename and other improvments suggested by Rob

 .../devicetree/bindings/mmc/sdhci-of-dwcmshc.txt   | 20 -------
 .../bindings/mmc/snps,dwcmshc-sdhci.yaml           | 63 ++++++++++++++++++++++
 2 files changed, 63 insertions(+), 20 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mmc/sdhci-of-dwcmshc.txt
 create mode 100644 Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml

diff --git a/Documentation/devicetree/bindings/mmc/sdhci-of-dwcmshc.txt b/Documentation/devicetree/bindings/mmc/sdhci-of-dwcmshc.txt
deleted file mode 100644
index ee4253b..0000000
--- a/Documentation/devicetree/bindings/mmc/sdhci-of-dwcmshc.txt
+++ /dev/null
@@ -1,20 +0,0 @@
-* Synopsys DesignWare Cores Mobile Storage Host Controller
-
-Required properties:
-- compatible: should be one of the following:
-    "snps,dwcmshc-sdhci"
-- reg: offset and length of the register set for the device.
-- interrupts: a single interrupt specifier.
-- clocks: Array of clocks required for SDHCI; requires at least one for
-    core clock.
-- clock-names: Array of names corresponding to clocks property; shall be
-    "core" for core clock and "bus" for optional bus clock.
-
-Example:
-	sdhci2: sdhci@aa0000 {
-		compatible = "snps,dwcmshc-sdhci";
-		reg = <0xaa0000 0x1000>;
-		interrupts = <GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&emmcclk>;
-		bus-width = <8>;
-	}
diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
new file mode 100644
index 0000000..f99fb9f
--- /dev/null
+++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: GPL-2.0-only
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mmc/snps,dwcmshc-sdhci.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Synopsys Designware Mobile Storage Host Controller Binding
+
+maintainers:
+  - Ulf Hansson <ulf.hansson@linaro.org>
+  - Jisheng Zhang <Jisheng.Zhang@synaptics.com>
+
+allOf:
+  - $ref: mmc-controller.yaml#
+
+properties:
+  compatible:
+    enum:
+      - snps,dwcmshc-sdhci
+
+  reg:
+    minItems: 1
+    items:
+      - description: Offset and length of the register set for the device
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    minItems: 1
+    items:
+      - description: core clock
+      - description: bus clock for optional
+
+  clock-names:
+    minItems: 1
+    items:
+      - const: core
+      - const: bus
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    mmc@aa0000 {
+      compatible = "snps,dwcmshc-sdhci";
+      reg = <0xaa000 0x1000>;
+      interrupts = <0 25 0x4>;
+      clocks = <&cru 17>, <&cru 18>;
+      clock-names = "core", "bus";
+      bus-width = <8>;
+      #address-cells = <1>;
+      #size-cells = <0>;
+    };
+
+...
-- 
2.7.4




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
