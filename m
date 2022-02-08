Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E663C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Feb 2022 09:14:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EiqQXE8YvrLF2AiG1qFh3hXM+Rdhgvu+peHAB5ZApUs=; b=v8IfYmejhl4TtU
	+pxD414nxPQD6h+K6rRUw0L7CHSia/Li0eIR1l7wQ3nFWzksJCekYuHzA04Q3z/AyXh6wy+bZiemv
	esYpVvfqBYhs+u9TmYEHnJtdyi7HTBDcbkkxv6qu+tTVkDjEG2Z0QXMhJE0gmzcRqO5460XgcAWtZ
	PBu29xLewM0eHE90StBymQCuqFAY5zzYlion6L2DSPTVS+WGti6HXyoN6nzGcfC1oUBt7Lz25VZ3B
	tEsAxt5NUZ5qjTMgvOYfIDRRj1lZM+YFtj/DDArSPg4Gyh345iLnFLAqB0AtE8zP8E4Z6Jfmn3mYI
	rfqYJMEq93HMwo4zeJuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHMZk-00DB9B-2M; Tue, 08 Feb 2022 09:14:16 +0000
Received: from mail-m17635.qiye.163.com ([59.111.176.35])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHMZA-00DAxI-6W; Tue, 08 Feb 2022 09:13:43 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
 by mail-m17635.qiye.163.com (Hmail) with ESMTPA id E7D434002DD;
 Tue,  8 Feb 2022 17:13:35 +0800 (CST)
From: Yifeng Zhao <yifeng.zhao@rock-chips.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, jbx6244@gmail.com, devicetree@vger.kernel.org,
 vkoul@kernel.org, michael.riesch@wolfvision.net,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, kishon@ti.com,
 p.zabel@pengutronix.de, cl@rock-chips.com, kever.yang@rock-chips.com,
 lee.jones@linaro.org, wulf@rock-chips.com, david.wu@rock-chips.com,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>
Subject: [PATCH v8 2/4] dt-bindings: phy: rockchip: Add Naneng combo PHY
 bindings
Date: Tue,  8 Feb 2022 17:13:24 +0800
Message-Id: <20220208091326.12495-3-yifeng.zhao@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220208091326.12495-1-yifeng.zhao@rock-chips.com>
References: <20220208091326.12495-1-yifeng.zhao@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUhPN1dZLVlBSVdZDwkaFQgSH1lBWRpKTkxWGhhJHU1LTh8dHk
 NMVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWVVLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NQw6Ixw*HT5WDiEZSThKL0sK
 KCowCzpVSlVKTU9PSEpKTUpNQ0lOVTMWGhIXVQISHR4VHFUBExoUOwkUGBBWGBMSCwhVGBQWRVlX
 WRILWUFZTkNVSUlVTFVKSk9ZV1kIAVlBTUpLQzcG
X-HM-Tid: 0a7ed89c1b8cd991kuwse7d434002dd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_011340_697278_A8298E34 
X-CRM114-Status: GOOD (  12.79  )
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

Add the compatible strings for the Naneng combo PHY found on rockchip SoC.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Changes in v8: None
Changes in v7:
- remove u3otg0_port_en, u3otg1_port_en and pipe_sgmii_mac_sel

Changes in v5:
- modify description for ssc and ext-refclk
- remove apb reset

Changes in v4:
- restyle
- remove some minItems
- add more properties
- remove reset-names
- move #phy-cells
- add rockchip,rk3568-pipe-grf
- add rockchip,rk3568-pipe-phy-grf

Changes in v3: None
Changes in v2:
- Fix dtschema/dtc warnings/errors

 .../phy/phy-rockchip-naneng-combphy.yaml      | 109 ++++++++++++++++++
 1 file changed, 109 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
new file mode 100644
index 000000000000..f14454401419
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
@@ -0,0 +1,109 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/phy-rockchip-naneng-combphy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip SoC Naneng Combo Phy Device Tree Bindings
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3568-naneng-combphy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: reference clock
+      - description: apb clock
+      - description: pipe clock
+
+  clock-names:
+    items:
+      - const: ref
+      - const: apb
+      - const: pipe
+
+  resets:
+    items:
+      - description: exclusive PHY reset line
+
+  rockchip,enable-ssc:
+    type: boolean
+    description:
+      The option SSC can be enabled for U3, SATA and PCIE.
+      Most commercially available platforms use SSC to reduce EMI.
+
+  rockchip,ext-refclk:
+    type: boolean
+    description:
+      Many PCIe connections, especially backplane connections,
+      require a synchronous reference clock between the two link partners.
+      To achieve this a common clock source, referred to as REFCLK in
+      the PCI Express Card Electromechanical Specification,
+      should be used by both ends of the PCIe link.
+      In PCIe mode one can choose to use an internal or an external reference
+      clock.
+      By default the internal clock is selected. The PCIe PHY provides a 100MHz
+      differential clock output(optional with SSC) for system applications.
+      When selecting this option an externally 100MHz differential
+      reference clock needs to be provided to the PCIe PHY.
+
+  rockchip,pipe-grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Some additional phy settings are accessed through GRF regs.
+
+  rockchip,pipe-phy-grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Some additional pipe settings are accessed through GRF regs.
+
+  "#phy-cells":
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+  - rockchip,pipe-grf
+  - rockchip,pipe-phy-grf
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3568-cru.h>
+
+    pipegrf: syscon@fdc50000 {
+      compatible = "rockchip,rk3568-pipe-grf", "syscon";
+      reg = <0xfdc50000 0x1000>;
+    };
+
+    pipe_phy_grf0: syscon@fdc70000 {
+      compatible = "rockchip,rk3568-pipe-phy-grf", "syscon";
+      reg = <0xfdc70000 0x1000>;
+    };
+
+    combphy0: phy@fe820000 {
+      compatible = "rockchip,rk3568-naneng-combphy";
+      reg = <0xfe820000 0x100>;
+      clocks = <&pmucru CLK_PCIEPHY0_REF>,
+               <&cru PCLK_PIPEPHY0>,
+               <&cru PCLK_PIPE>;
+      clock-names = "ref", "apb", "pipe";
+      assigned-clocks = <&pmucru CLK_PCIEPHY0_REF>;
+      assigned-clock-rates = <100000000>;
+      resets = <&cru SRST_PIPEPHY0>;
+      rockchip,pipe-grf = <&pipegrf>;
+      rockchip,pipe-phy-grf = <&pipe_phy_grf0>;
+      #phy-cells = <1>;
+    };
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
