Return-Path: <SRS0=GaOA=PN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8BF4FC433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Oct 2021 08:07:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1916A60EBD
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Oct 2021 08:07:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1916A60EBD
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wuVN61gu/tfRGaVfuiAUxYtV1xbHKSEb9q8lFpNAfl8=; b=A2ZYoOGqSJbYTs
	rVG7ZAs9oLEgdZ70cyuq2Py+7AfOGzSYUegl8ld6e/yE7HHgniaFi1GaV8s8FWdmsh7hLy0THu9D+
	EuIpQYwuAOyNMFZazUTZmmGz5x6iphpXomF0cFvge8dJi0PNEH3NlNDu4eafjxbUzBeOxPI2S44oT
	rRMiBWyVX2vPdTsx6PTfCTLgfkE2wadO2uVc04mOdCOJTy9Ko3TzDP5X58Ns9u4sulPYzGIN6TMX9
	6HBf76ty5idQbpKFZDtpXnKUOhA7ptAVDJm5IsGVoPqMNPjzYkU8ck4/vqmfG1Fg/LQZvnnMSuUuj
	KEyG4NWvI1JcEe0SKVJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mev0u-00FiZm-9C; Mon, 25 Oct 2021 08:07:24 +0000
Received: from lucky1.263xmail.com ([211.157.147.131])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mev0J-00FiPB-6s; Mon, 25 Oct 2021 08:06:49 +0000
Received: from localhost (unknown [192.168.167.70])
 by lucky1.263xmail.com (Postfix) with ESMTP id 2B74AC48A2;
 Mon, 25 Oct 2021 16:06:40 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P17687T140584201217792S1635149192925589_; 
 Mon, 25 Oct 2021 16:06:37 +0800 (CST)
X-IP-DOMAINF: 1
X-RL-SENDER: yifeng.zhao@rock-chips.com
X-SENDER: zyf@rock-chips.com
X-LOGIN-NAME: yifeng.zhao@rock-chips.com
X-FST-TO: heiko@sntech.de
X-RCPT-COUNT: 13
X-LOCAL-RCPT-COUNT: 2
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-UNIQUE-TAG: <ea9298ba5a19c70bb8e5bdbeb1619252>
X-System-Flag: 0
From: Yifeng Zhao <yifeng.zhao@rock-chips.com>
To: heiko@sntech.de,
	robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, vkoul@kernel.org,
 michael.riesch@wolfvision.net, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, kishon@ti.com, p.zabel@pengutronix.de,
 cl@rock-chips.com, Yifeng Zhao <yifeng.zhao@rock-chips.com>
Subject: [PATCH v3 1/3] dt-bindings: phy: rockchip: Add Naneng combo PHY
 bindings
Date: Mon, 25 Oct 2021 16:06:30 +0800
Message-Id: <20211025080632.32063-2-yifeng.zhao@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20211025080632.32063-1-yifeng.zhao@rock-chips.com>
References: <20211025080632.32063-1-yifeng.zhao@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211025_010648_021534_CCC58F7C 
X-CRM114-Status: GOOD (  12.52  )
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

Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
---

Changes in v3: None
Changes in v2:
- Fix dtschema/dtc warnings/errors

 .../phy/phy-rockchip-naneng-combphy.yaml      | 98 +++++++++++++++++++
 1 file changed, 98 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
new file mode 100644
index 000000000000..55ad33d902ec
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
@@ -0,0 +1,98 @@
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
+    minItems: 1
+    items:
+      - description: reference clock
+      - description: apb clock
+      - description: pipe clock
+
+  clock-names:
+    minItems: 1
+    items:
+      - const: ref
+      - const: apb
+      - const: pipe
+
+  '#phy-cells':
+    const: 1
+
+  resets:
+    minItems: 1
+    items:
+      - description: exclusive apb reset line
+      - description: exclusive PHY reset line
+
+  reset-names:
+    minItems: 1
+    items:
+      - const: combphy-apb
+      - const: combphy
+
+  rockchip,pipe-grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Some additional phy settings are access through GRF regs.
+
+  rockchip,pipe-phy-grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Some additional pipe settings are access through GRF regs.
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - '#phy-cells'
+  - resets
+  - reset-names
+  - rockchip,pipe-grf
+  - rockchip,pipe-phy-grf
+
+additionalProperties: false
+
+examples:
+  - |
+
+    #include <dt-bindings/clock/rk3568-cru.h>
+
+    pipegrf: syscon@fdc50000 {
+      reg = <0xfdc50000 0x1000>;
+    };
+
+    pipe_phy_grf0: syscon@fdc70000 {
+      reg = <0xfdc70000 0x1000>;
+    };
+
+    combphy0_us: phy@fe820000 {
+      compatible = "rockchip,rk3568-naneng-combphy";
+      reg = <0xfe820000 0x100>;
+      #phy-cells = <1>;
+      clocks = <&pmucru CLK_PCIEPHY0_REF>, <&cru PCLK_PIPEPHY0>,
+        <&cru PCLK_PIPE>;
+      clock-names = "ref", "apb", "pipe";
+      assigned-clocks = <&pmucru CLK_PCIEPHY0_REF>;
+      assigned-clock-rates = <100000000>;
+      resets = <&cru SRST_P_PIPEPHY0>, <&cru SRST_PIPEPHY0>;
+      reset-names = "combphy-apb", "combphy";
+      rockchip,pipe-grf = <&pipegrf>;
+      rockchip,pipe-phy-grf = <&pipe_phy_grf0>;
+    };
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
