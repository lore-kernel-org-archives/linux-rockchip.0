Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62BE0C433FE
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Apr 2022 13:55:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5HXwpNZmzEU0ACsyS+jEwyQL5mbNbBrrJnXJcTCL9+A=; b=YEc/lle6ThD02f
	719zvU7LlcjrMklC0MeSlMs/DGo2iEUbxaJejFJrM1Dwe2yu3M37kxcc6+1KxlCWfkMXW+onGmVv5
	Oxi3jlPkJns6M7obs2GO3i5Lv8rrJPpIjE0GSIqv6oSTmJNmEqVfVQzN0oDd3N7Mzjitq9kYv45IP
	jXBbRynr+hKUO+oOoqpY1xHEEiUeaAIX+FKTieq+G/RfsPmsUNuL/f9GPdokzRMEGlaMn5qJkMwIy
	sLwmOM7O6Eh0bgy9wKcyz7A00x/HzD7ZkoZDqYHiaC27s/ykdCYtPd2hCd5K/59RFGG5aeUkZximv
	95cBaDWyI1x/qrhWXAdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nfitz-00D29i-H8; Sat, 16 Apr 2022 13:55:51 +0000
Received: from mxout3.routing.net ([2a03:2900:1:a::8])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nfitm-00D24n-Pn; Sat, 16 Apr 2022 13:55:40 +0000
Received: from mxbox2.masterlogin.de (unknown [192.168.10.89])
 by mxout3.routing.net (Postfix) with ESMTP id ACDE460362;
 Sat, 16 Apr 2022 13:55:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1650117332;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=s68gl0yAxZUm+X2bvVvokjQGAHtdT79RQMQEhISep+M=;
 b=rE8+uq6rNsCmMbExXD0PS3nAsHvd1dwdaJL/p41t0+95QEfLUYPl1ClZrBRyzZfI81PGKf
 o83mnws4tZCflHeGe/4+rnuKJtyX8Arfwu/t8rv+UGUKqu5PnxhOYhaHRAH7lakV4HxbdQ
 Fay4p/hLJBxd51Ey0DQwCUx16pTJp/8=
Received: from localhost.localdomain (fttx-pool-217.61.150.108.bambit.de
 [217.61.150.108])
 by mxbox2.masterlogin.de (Postfix) with ESMTPSA id 4397A1006D1;
 Sat, 16 Apr 2022 13:55:31 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Johan Jonker <jbx6244@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org
Subject: [RFC/RFT 1/6] dt-bindings: phy: rockchip: add pcie3 phy
Date: Sat, 16 Apr 2022 15:54:53 +0200
Message-Id: <20220416135458.104048-2-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220416135458.104048-1-linux@fw-web.de>
References: <20220416135458.104048-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: 2d0b12d3-a185-41d7-b17c-fea8090fc266
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220416_065539_444504_8A59689F 
X-CRM114-Status: GOOD (  11.33  )
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

Add a new binding file for Rockchip PCIe V3 phy driver.

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 .../bindings/phy/rockchip-pcie3-phy.yaml      | 77 +++++++++++++++++++
 1 file changed, 77 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/rockchip-pcie3-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/rockchip-pcie3-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip-pcie3-phy.yaml
new file mode 100644
index 000000000000..58a8ce175f13
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/rockchip-pcie3-phy.yaml
@@ -0,0 +1,77 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/rockchip-pcie3-phy.yaml#
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
+      - rockchip,rk3588-pcie3-phy
+
+  reg:
+    maxItems: 2
+
+  clocks:
+    minItems: 1
+    maxItems: 3
+
+  clock-names:
+    contains:
+      anyOf:
+        - enum: [ refclk_m, refclk_n, pclk ]
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
+  rockchip,pcie30-phymode:
+    $ref: '/schemas/types.yaml#/definitions/uint32'
+    description: |
+      use PHY_MODE_PCIE_AGGREGATION if not defined
+    minimum: 0x0
+    maximum: 0x4
+
+
+required:
+  - compatible
+  - reg
+  - rockchip,phy-grf
+
+additionalProperties: false
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3568-cru.h>
+    pcie30phy: phy@fe8c0000 {
+      compatible = "rockchip,rk3568-pcie3-phy";
+      reg = <0x0 0xfe8c0000 0x0 0x20000>;
+      #phy-cells = <0>;
+      clocks = <&pmucru CLK_PCIE30PHY_REF_M>, <&pmucru CLK_PCIE30PHY_REF_N>,
+       <&cru PCLK_PCIE30PHY>;
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
