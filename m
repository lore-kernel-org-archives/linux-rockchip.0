Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DF83C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 May 2022 12:00:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nsm43cMlWIEfyAxeDYLmIwgxlJD96gKJ6XwO7V50ipk=; b=FIXBL97f/RkgWs
	ugZrlNlSu2bm88wlnfDwcKEOrwhim8W5HQOfWyt17D7f0T5XCitwv+WbKQCFmz8tp28YX2fdE8oh/
	gz4g6fzAiaODyCsCrUyAX2A3ZMAOj+o+QtLOtftPPFTpfJtfVMn8qy7Efc3cG1/KsyKyQeYa26hMM
	HB8VNdYtd74cccqKrRyvfVf0peUhzgpEqCQkzlK/zjYbXmxG5S3eUK8866tHDUTuqAIh0JRW6GcCb
	v/yQDv7/SixelDjHU8xcHWHF6O9vRsRyTeXZ0qCXYRcHmxBAcAGuSZYuGPzSYOvvkbEVZ84tXnBpd
	EIE01w4f2xQ0b6lkZvvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1npqRc-001LLe-DI; Sat, 14 May 2022 12:00:24 +0000
Received: from mxout1.routing.net ([2a03:2900:1:a::a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1npqRG-001LDH-KC; Sat, 14 May 2022 12:00:04 +0000
Received: from mxbox3.masterlogin.de (unknown [192.168.10.78])
 by mxout1.routing.net (Postfix) with ESMTP id D379D3FFD5;
 Sat, 14 May 2022 11:59:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1652529597;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IAsHMgWaTeifT9oHZKT7MIkb2mXov9xmYNWYjnzFv4I=;
 b=KrRd5jdRTSSGat2gh6COzuHg1Dfm12wrxNRt7upHExngBZH0TPuDNNAlSE7egD7BgPRG+j
 I/LEJj+pC0cSyJTIJ7pOQ9yu2nO0CaMeM+SEX7Ust0Jz/NmAwMAFWIUySqXb1Im3DpBw9y
 Bu0ah4Dpl04NZNX+ZnGBTL9dnHkyPVc=
Received: from localhost.localdomain (fttx-pool-217.61.148.252.bambit.de
 [217.61.148.252])
 by mxbox3.masterlogin.de (Postfix) with ESMTPSA id DBC5B360696;
 Sat, 14 May 2022 11:59:55 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Johan Jonker <jbx6244@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [RFC v3 1/5] dt-bindings: phy: rockchip: add PCIe v3 phy
Date: Sat, 14 May 2022 13:59:42 +0200
Message-Id: <20220514115946.8858-2-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220514115946.8858-1-linux@fw-web.de>
References: <20220514115946.8858-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: 707fb3cc-767b-4f44-8e0e-2da81b096e9e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220514_050003_337294_C6619F2F 
X-CRM114-Status: GOOD (  13.37  )
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

From: Frank Wunderlich <frank-w@public-files.de>

Add a new binding file for Rockchip PCIe v3 phy driver.

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>

---
v3:
- drop quotes
- drop rk3588
- make clockcount fixed to 3
- full path for binding header file
- drop phy-mode and its header and add lane-map

v2:
dt-bindings: rename yaml for PCIe v3
rockchip-pcie3-phy.yaml => rockchip,pcie3-phy.yaml

changes in pcie3 phy yaml
- change clock names to ordered const list
- extend pcie30-phymode description
- add phy-cells to required properties
- drop unevaluatedProperties
- example with 1 clock each line
- use default property instead of text describing it
- update license
---
 .../bindings/phy/rockchip,pcie3-phy.yaml      | 82 +++++++++++++++++++
 1 file changed, 82 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
new file mode 100644
index 000000000000..ac82f551bbfb
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
@@ -0,0 +1,82 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/rockchip,pcie3-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip PCIe v3 phy
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3568-pcie3-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    minItems: 3
+    maxItems: 3
+
+  clock-names:
+    items:
+      - const: refclk_m
+      - const: refclk_n
+      - const: pclk
+
+    minItems: 3
+
+  lane-map:
+    description: which lanes (by position) should be mapped to which
+      controller (value). 0 means lane unused, higher value means used.
+      (controller-number +1 )
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 2
+    maxItems: 16
+    items:
+      minimum: 0
+      maximum: 16
+
+  "#phy-cells":
+    const: 0
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    const: phy
+
+  rockchip,phy-grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: phandle to the syscon managing the phy "general register files"
+
+  rockchip,pipe-grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: phandle to the syscon managing the pipe "general register files"
+
+required:
+  - compatible
+  - reg
+  - rockchip,phy-grf
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3568-cru.h>
+    pcie30phy: phy@fe8c0000 {
+      compatible = "rockchip,rk3568-pcie3-phy";
+      reg = <0x0 0xfe8c0000 0x0 0x20000>;
+      #phy-cells = <0>;
+      clocks = <&pmucru CLK_PCIE30PHY_REF_M>,
+               <&pmucru CLK_PCIE30PHY_REF_N>,
+               <&cru PCLK_PCIE30PHY>;
+      clock-names = "refclk_m", "refclk_n", "pclk";
+      resets = <&cru SRST_PCIE30PHY>;
+      reset-names = "phy";
+      rockchip,phy-grf = <&pcie30_phy_grf>;
+    };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
