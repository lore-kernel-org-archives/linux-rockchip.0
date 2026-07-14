Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1954FC44507
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jul 2026 19:14:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v0qXzuc+VaEvKHSMQJQ3DLxBu/qFb/EB/xrMOX4TxRE=; b=t5pNHiH2PBlA5S
	6Uve4S/CgXQ3hcY0EKdt5e8kSl+IBo4s1ovCggTc/yqyVwSHrEgBuHgdo7+rRxnaScKnC/Jlrvi7p
	BbIrn0BZBwUql6fSIBIfw9qFzSaFpKTtkaYl8XO466mThGdDBU6RDBAAFt5TfowBcnrd0OZz62B9c
	r6YaBA65nFy/Wjo6UIIPWTHOkfae2rHfAAZtAR8kFOGyEZ14fKqIGLqYQGQvpdQ9sAz7PY8BhOpTW
	5s41f2Aq2JnLahZK8y7SCazuuCeXrNqjNFheip+IU9KzpZx5/YtyAPS5rGaP1bDCN1XyZcPjaC0Io
	ZYXWox3YnAOwhpouyBnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjiaA-0000000D03n-3Mow;
	Tue, 14 Jul 2026 19:14:18 +0000
Received: from mail-pj2-x02.google.com ([2607:f8b0:4864:39::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjia6-0000000CzyH-0Dic
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Jul 2026 19:14:16 +0000
Received: by mail-pj2-x02.google.com with SMTP id d9443c01a7336-2ccbff2e6a7so31004175ad.1
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Jul 2026 12:14:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784056453; x=1784661253; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=puD3SxDRZK2kLUJhdwB2OWJks0pBuRZ5Hw4UZYV+czY=;
        b=fyld8ZewK446LqPS1tMvyP4fXMf7kj3RYQnV2AqVyc2QmjHXPeU8YIKSur7nXIV9fR
         o2FAulFSCiM+ZYZgRqU04fon1zbzQyo7Jm0KK3nqQ4sI5Lpn/LJV773Q4YCZ8YGFsrtS
         NFHpif/RHMhN7s87lzOJNylz3XnUeHU9rVfuNQ5DaAF2w4mxeRRxOYTCDySfuo+MVayQ
         HhNnKdJjgKQEveEGnJSjoITtbWvskWTKxp2fmbNaGOHeDwFtVQGMpKr2Wwh2QoR7SLGb
         aN4yQR7N9p5YDH0AEyA6pFLSJoX9cyVV945MFJG/As82uBbjyocaNUM4SFHHDrDr6a1d
         M0wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784056453; x=1784661253;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=puD3SxDRZK2kLUJhdwB2OWJks0pBuRZ5Hw4UZYV+czY=;
        b=Ck6GF1WPN8FAMcM6uJcCRUiCOF6thGRzqlyYp4wgGMA0J8+CSMd89mrUcOpNARYDY/
         iR4qp/n+cvEZfaWY9aC9lyUmZGoWjT7zt7x0xu+VftTGlcbhyI4NLpUpMCEFjhFp2We4
         Lh/Z9U4unusT6OjuhU3ienNxR1aGwlgIXRmsUGxxeJxBzbP+PByqYeCO/o+PjJ7ReAgQ
         8xEp6qVxK7Ga74nZyEWH6df8vuhh0sJ10lJm0SEG+oJio+0BXrWdufq9G2zyyNxXuwUD
         YESAJq61qQuTgEZpbWLcneKwYuZdu+eBYJtu00hngGCh+iwIWQRxD1FMA1EVF3YSvRVv
         suWQ==
X-Forwarded-Encrypted: i=1; AHgh+RrtS9eUdncKxah8ujcZIF0vWSzQ757uM4tEOhuOmNqDNY1NfF6ZZYeBrGrr1I3ozeCGKYItI/JFn3MXfH+aKQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzNfbn0Q80Ali3eb8ST75jFqWcRbPJ7Te8pM///SXKuKtdZhm4W
	zS2HIWL1d033fwQghtcwVQampPAoFg5AU8Y/Db6TqajdLrBNQIt3THgm
X-Gm-Gg: AfdE7cnBRZycIobkcIvDtgzqee34a9xWDDeXeL3qmO+ER/4nVXKG1Ddhvpp4zHC6DaJ
	fKScW220mCYfM4cRFKBinhlPMxFvvxGq0ANGouZqGc+G0imvoovM1vxA0huvkMr8RqW91pBv7N/
	a7wV2jOTKVa+zzqIxqk/h+Z/BYD5RPst6e6jMfO48snsDM87wCglifC6ZbMRmuRP51xrxMWE/sY
	7YbECfT8vpK94Vup9wZZXfkK9Ql2rzk/vxQ8JUWektJCJBQ4Dfkc19T13BakyFwLIFoQt7WYu5t
	SnTcOU7K2yw25mbIw7YYpjNTMel8aqERy5Vh1axAN7jhFdCCqQqDApamdRqKXYGCs0YUQrvxttX
	UfxAYbTduKWoJnEo3jymaqN0wF3oD5ISdKUZ/WIOAXbKii4NlMf0QHGrbBBSAMwfnU5gx1GeR8z
	3bcWAChQj8vylCFdbDukmAtA==
X-Received: by 2002:a17:902:cec9:b0:2c9:d298:6c06 with SMTP id d9443c01a7336-2cef12fc6a4mr40014075ad.25.1784056453327;
        Tue, 14 Jul 2026 12:14:13 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ccc9d3d451sm120763245ad.65.2026.07.14.12.14.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 12:14:11 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: kuba@kernel.org,
	davem@davemloft.net,
	edumazet@google.com,
	pabeni@redhat.com,
	andrew+netdev@lunn.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	heiko@sntech.de
Cc: netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [RFC PATCH 04/10] dt-bindings: net: pcs: add rockchip,rk3568-xpcs binding
Date: Wed, 15 Jul 2026 03:08:32 +0800
Message-ID: <20260714191341.690906-5-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260714191341.690906-1-coiaprant@gmail.com>
References: <20260714191341.690906-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260714_121414_104949_C151E633 
X-CRM114-Status: GOOD (  15.21  )
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

Add device tree binding documentation for the Synopsys DesignWare
XPCS integrated on the Rockchip RK3568 SoC.

The XPCS is accessed over the APB3 bus and internally connected to
a Naneng Combo SerDes PHY.  It supports 1000BASE-X, SGMII, and
QSGMII modes, with four MII ports.

The binding describes:
- Required properties: compatible, reg, clocks, clock-names
- Optional properties: phys, phy-names, power-domains
- pcs-mii sub-nodes for each MII port (reg 0..3)

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../bindings/net/pcs/rockchip-dwxpcs.yaml     | 126 ++++++++++++++++++
 1 file changed, 126 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/pcs/rockchip-dwxpcs.yaml

diff --git a/Documentation/devicetree/bindings/net/pcs/rockchip-dwxpcs.yaml b/Documentation/devicetree/bindings/net/pcs/rockchip-dwxpcs.yaml
new file mode 100644
index 0000000000000..14fadf67c793a
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/pcs/rockchip-dwxpcs.yaml
@@ -0,0 +1,126 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/pcs/rockchip-dwxpcs.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip RK3568 Synopsys DesignWare Ethernet PCS
+
+maintainers:
+  - Coia Prant <coiaprant@gmail.com>
+
+description: |
+  Rockchip RK3568 SoC integrates a Synopsys DesignWare Ethernet Physical
+  Coding Sublayer (XPCS).
+  The PCS provides an interface between the Media Access Control (MAC)
+  and the Physical Medium Attachment (PMA) sublayer through a Media
+  Independent Interface (GMII).
+
+  The XPCS is accessed over the APB3 bus and internally connected to a
+  Naneng Combo SerDes PHY.
+  It supports 1000BASE-X, SGMII and QSGMII modes.
+
+  The block contains four MII ports (pcs-mii@0..3) that can be
+  individually enabled and routed to one of the Ethernet GMAC controllers
+  via the pcs-handle property in the MAC device tree node.
+
+properties:
+  compatible:
+    const: rockchip,rk3568-xpcs
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+  reg:
+    description: |
+      Base address and size of the XPCS register space mapped over the
+      APB3 bus.
+    maxItems: 1
+
+  clocks:
+    description: |
+      Clock sources for the XPCS:
+      - csr: APB3 bus interface clock (clk_csr_i), required for register
+        access.
+      - eee: EEE clock (clk_eee_i), required for Energy Efficient
+        Ethernet (EEE) operation.
+    minItems: 2
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: csr
+      - const: eee
+
+  phys:
+    description: |
+      The phandle of SerDes PHY (Naneng Combo PHY) that provides
+      the serial lanes for 1000BASE-X / SGMII / QSGMII.
+      The SerDes must be powered on and initialised before any XPCS
+      register access.
+    maxItems: 1
+
+  phy-names:
+    const: serdes
+
+  power-domains:
+    description: |
+      Power domain for the XPCS.
+      On RK3568 this is typically the PD_PIPE power domain, which also
+      supplies the SerDes PHY.
+    maxItems: 1
+
+patternProperties:
+  "^pcs-mii@[0-3]$":
+    type: object
+    description: |
+      One of the four MII ports of the XPCS.
+      The port number is specified by the reg property (0..3).
+      The port is linked to an Ethernet MAC controller via the
+      pcs-handle property in the MAC's device tree node.
+
+    properties:
+      reg:
+        minimum: 0
+        maximum: 3
+        description: |
+          MII port number of PCS.
+
+      status: true
+
+    required:
+      - reg
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3568-cru.h>
+    #include <dt-bindings/power/rk3568-power.h>
+
+    pcs@fda00000 {
+      compatible = "rockchip,rk3568-xpcs";
+      #address-cells = <1>;
+      #size-cells = <0>;
+      reg = <0x0 0xfda00000 0x0 0x200000>;
+      clocks = <&cru PCLK_XPCS>, <&cru CLK_XPCS_EEE>;
+      clock-names = "csr", "eee";
+      phys = <&combphy2 PHY_TYPE_SGMII>;
+      phy-names = "serdes";
+      power-domains = <&power RK3568_PD_PIPE>;
+
+      pcs-mii@0 {
+        reg = <0>;
+      };
+    };
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
