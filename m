Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F942ECAA2B
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Aug 2022 19:39:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kWJYIfguAlFiCbaaFLGAEA0PNQZSQHV/+kNpTMbJmYc=; b=mVC9VQa0tJtCAk
	NGj6p+7u+FJ1thJxTLyjJuPNQf3qupTg89pGYrgMiiPdhOQUkhmnO+h57xDizmlsb2DBEc8/Ij1ne
	PoPcrHQaOYFOXJ0iMFL8V/1UXUkTAqiENt4HPrrvuQMz155DF/p6pS60+R6EdjvpQQU8H/WS7s5iC
	WRAFt4+I9fY7gg43d96XmNhPUvoTJSE4O9XsiPm6QFniCWqztSJ9v5uHUxB13wIgjmpFMpGpBUK3w
	2O0D1DZv/due7q7hdOk0kiA9PYTOCK3q+YcB9/aviQqxcRgBxLJxK/VZn0ahawrEzORz/wmPjMgnX
	Pr+NUjpJL7h/VcRrxIDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRIhN-002mUW-MF; Thu, 25 Aug 2022 19:39:29 +0000
Received: from mxout4.routing.net ([2a03:2900:1:a::9])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRIgw-002mFq-Fc; Thu, 25 Aug 2022 19:39:05 +0000
Received: from mxbox1.masterlogin.de (unknown [192.168.10.88])
	by mxout4.routing.net (Postfix) with ESMTP id 437601006F8;
	Thu, 25 Aug 2022 19:38:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
	s=20200217; t=1661456337;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bITi9lO2I76P8aD+0Omkl/P9r5wyPjywtsDJ5kt5xZA=;
	b=C6enBtk2jTTUsrXZCG5nIncxahKMN4gNp9fpZSTjSrj0n7hQc6OoF2KmnkzZlP3lY9EUo5
	kS7o612ev8E3/PeBogtD0mlxcVh3BEFjquu9eaZmzmPSAm0CBunxIUfiOYr/Z+L0SjsXLa
	ITv1zH/FcBLIE4A4CI74ptgJ475CrM0=
Received: from frank-G5.. (fttx-pool-80.245.75.185.bambit.de [80.245.75.185])
	by mxbox1.masterlogin.de (Postfix) with ESMTPSA id 4DADA40353;
	Thu, 25 Aug 2022 19:38:56 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Johan Jonker <jbx6244@gmail.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Simon Xue <xxm@rock-chips.com>,
	Liang Chen <cl@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v5 1/5] dt-bindings: phy: rockchip: add PCIe v3 phy
Date: Thu, 25 Aug 2022 21:38:32 +0200
Message-Id: <20220825193836.54262-2-linux@fw-web.de>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220825193836.54262-1-linux@fw-web.de>
References: <20220825193836.54262-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: 428698de-88f0-4e9f-9155-37f1cf7a80cf
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220825_123903_705369_4F61D9E8 
X-CRM114-Status: GOOD (  15.22  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
v4:
- add reviewed-by
- remove minitems for clock-names as i have static list to fix error
- fix reg error by using 32-bit adressing in binding example
- change lane-map to u32 data-lanes
- tried to move data-lanes to phy-provider
  https://github.com/frank-w/dt-schema/blob/main/dtschema/schemas/phy/phy-provider.yaml#L17
  cloned and installed via pip install -e <local path>
  verified with pip show, but phy-privider seems not to be applied

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
 .../bindings/phy/rockchip,pcie3-phy.yaml      | 80 +++++++++++++++++++
 1 file changed, 80 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
new file mode 100644
index 000000000000..9f2d8d2cc7a5
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
@@ -0,0 +1,80 @@
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
+  data-lanes:
+    description: which lanes (by position) should be mapped to which
+      controller (value). 0 means lane disabled, higher value means used.
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
+      reg = <0xfe8c0000 0x20000>;
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
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
