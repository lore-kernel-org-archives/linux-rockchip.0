Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9428C55172
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Aug 2026 14:23:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u8Zi1MR22FWsrD513nq27oOyLmylnWARges1ztO66sU=; b=MVjC5A8yjWTcjD
	IrJfJVFjDoZO5nys1JUC4dvcEBgQUk8AtzzwbJ7+eBT2iCNbfNdUe3FjhlFWy68O8iFyZ+BY5N2zM
	DPhMvhiQeB+wP3Px/SUnwfmJDONQgUXAJf0XCP81keJtjLjC1HO/AZ/Omkjkomg0CJtoUpNkPIDUm
	hWgJKIPXzztbm9PMZjlLjAqIiDs+mFYen6eAHBuuO1BTQcXS9khRvjaDhmUBK0vRyjQENgkwZrxYc
	EO3QseqPrEWCt2ZT7TK6sYVwKz3tskATKqJS1FuAMGZUo85nnLhkk0WIz9fq0k+i93MTjv6t1TiiJ
	/fKHGyryVn3jY1MIyVxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqAcu-0000000EigY-1auz;
	Sat, 01 Aug 2026 14:23:48 +0000
Received: from mail-pj2-x04.google.com ([2607:f8b0:4864:39::4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqAcn-0000000Eia2-1OZ3
	for linux-rockchip@lists.infradead.org;
	Sat, 01 Aug 2026 14:23:46 +0000
Received: by mail-pj2-x04.google.com with SMTP id d9443c01a7336-2ccc2e84048so11251005ad.1
        for <linux-rockchip@lists.infradead.org>; Sat, 01 Aug 2026 07:23:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785594221; x=1786199021; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ApDMeM/bjE3TDpuc1mM/C2VeZt90bzUPQWagsmJ3H2c=;
        b=gjvpghUZS1r+ITs2Sg4NWtdk2Bnbj43zUe7pnoR3YADdNizSSW2w/nduEXkALD6HFp
         atIg+bI/7YFrDAbXMOsnaAejrMQKPRFmYVSVqel/ThX4g0Ed5H7bX0UG8VRdK6AAeitr
         vWQVoecZWYSL/vp+kZu17e+nyGtal8KyComcUQHrWu2ccx/XY7lPdVEn5yR0lZqybTRY
         j0ess1Lh4PBDvnd/VwRLb5VewZkxt8byeDleUukNmpg0oIHmaYoPUjVx/g/zyFxh34bM
         246wx/HPaIx+A02zCxX6M98XTs9R32h9/s+08lHi/y2zHOyFCrLGqJsW1V/2cVKl0CmV
         VagA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785594221; x=1786199021;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=ApDMeM/bjE3TDpuc1mM/C2VeZt90bzUPQWagsmJ3H2c=;
        b=tC/pYKaBghOK591CDHTxycbZp0ynPj8GYHgPTUykU1/nfaIkIqIAekfwoARV4NdUbw
         qngPzD0EtbMIg9vJjuUUWuD7PuQhznmdR3uncMTHr7OTEBxlMfVNVFckAd1BIvC3sAXU
         RJvNoNR9so+fOr8uTylcuYfx/bjX9uxe4BuHYvVeC+V3yargtZZSG2AB6w5PHU4yc4KB
         g6uK+G1hHJ/OgQJZAtw8N7WxGdyklGYW3QWjSab3moP1ezFNcZPPYzOrhSvK+ERrvI8N
         YK9MJM+2XJj2MiLvxsaoDGSIaout698DNHa09YzKOWgUluPWI83Aj1GoXfJPxSZBEgcN
         uycg==
X-Forwarded-Encrypted: i=1; AHgh+Ror1CyQuz7K87nEpMkri3J4k2WnahI7RCgXJwW/VH8yv3YmD3q3sDp/egZ7G/QMAXcRCue4WIuace1ntFXkng==@lists.infradead.org
X-Gm-Message-State: AOJu0YydQZyOnjlefXRygO5jlTUTtRMSvh2vGseaNyPpKVcEW+GEQCRt
	1yeHAKHqMZA9OgVwNPPpeP39imVuFUyQzzTp8wOfqz4dplk3KOKOlYKn
X-Gm-Gg: AR+sD10v2B7T8cqcs55FHvH/fxtwtPpG1FBfxI6MPsN9vkToGb0Nm+MPkE0+896SBNl
	ZOGh1X98qEDIZlpN5Huqgs8OeIvfOmnEw1fuQsHzueToJbbqOB8W78aecGlfMn1BeHxQHnoSLls
	cyG7XTnNsy/7xK1K+VPsTm/+Bm5zsgnr76s1b/W5SX518yf2PIOMEXsQ64wLGgm599la1Y4oh3k
	rzHxoQ7oU4eidmFwD4sqyeJkfBVQlylJrWLlec3OiGd0CrnfJDtpoheohEeSo2fGzrDgLy8cwhj
	ywc6BzjOJboqPwgkWt267cUi0RZFmQBvSPLPbB2vKg7CAZGGd8SXmKUMAlIKQuKwQdRrZXzbk5R
	BOcS501rrk579ppboGSYaUIdbUUooQyMLxui9PM1xPadiBC+WoZISPzhkPzyxRoLivjHPlhYDeh
	zEvFBXmN+PmRASXhXXECgd9PmOUS2GNBFB1HA0N9QFUtj6DpcxWdnUIbo=
X-Received: by 2002:a17:902:f54e:b0:2cc:6329:b7ba with SMTP id d9443c01a7336-2d05224fa51mr37049725ad.16.1785594220516;
        Sat, 01 Aug 2026 07:23:40 -0700 (PDT)
Received: from server.lan ([103.213.4.16])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2d04ae5ac3dsm18043845ad.23.2026.08.01.07.23.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Aug 2026 07:23:39 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Coia Prant <coiaprant@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	David Heidelberg <david@ixit.cz>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH v2 04/10] dt-bindings: net: pcs: add rockchip,rk3568-xpcs binding
Date: Sat,  1 Aug 2026 22:22:28 +0800
Message-ID: <20260801142244.679437-6-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260801142244.679437-2-coiaprant@gmail.com>
References: <20260801142244.679437-2-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260801_072341_414192_5BC9DEE5 
X-CRM114-Status: GOOD (  16.41  )
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
 .../bindings/net/pcs/rockchip-dwxpcs.yaml     | 127 ++++++++++++++++++
 1 file changed, 127 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/pcs/rockchip-dwxpcs.yaml

diff --git a/Documentation/devicetree/bindings/net/pcs/rockchip-dwxpcs.yaml b/Documentation/devicetree/bindings/net/pcs/rockchip-dwxpcs.yaml
new file mode 100644
index 0000000000000..3e3f3a388d822
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/pcs/rockchip-dwxpcs.yaml
@@ -0,0 +1,127 @@
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
+    #include <dt-bindings/phy/phy.h>
+
+    pcs@fda00000 {
+      compatible = "rockchip,rk3568-xpcs";
+      #address-cells = <1>;
+      #size-cells = <0>;
+      reg = <0xfda00000 0x200000>;
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
