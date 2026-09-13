Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89861C88E63
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Sep 2026 19:00:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ek+drvgaqcNrA+m81UroOPKBuNEISzgEBu/+wNJunb8=; b=U46Xms3EwRqSkk
	5LAeixT70dcM9k6/8z4jEcS7D4da8MGnPJyEELe7Br0OsGjllMx8n0mWNCcnV/LRoHsz0h4cWhylG
	Aps+tGDhHB9/wVEBcYbGd57RNTaluBW8+5UFPP/K+Q1dEmbdN20JPLC3wAzJ7o834cSq0bUNVp6HD
	ciC850pY15IbI9twujbv7RW37gv+uq7wleetL+h4mGVPOSmXnZhlV9roY4nLyGQ+iVECvNaW8ElK5
	8d25NWUsBQDQUZtX7x4mSYhz6rF0GVGX9GYXndHgiCHChURSb+GVAI1fynFeNq+w9AJDfKaf4LqL+
	BjrFfYgPdTXSm+cIRByg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5pR2-00000001x0J-0dqo;
	Sun, 13 Sep 2026 19:00:16 +0000
Received: from mail-pj2-x08.google.com ([2607:f8b0:4864:39::8])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5pQy-00000001wvy-2HsW
	for linux-rockchip@lists.infradead.org;
	Sun, 13 Sep 2026 19:00:15 +0000
Received: by mail-pj2-x08.google.com with SMTP id d9443c01a7336-2d8fcda61c8so11806705ad.1
        for <linux-rockchip@lists.infradead.org>; Sun, 13 Sep 2026 12:00:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789326012; x=1789930812; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=gaQPgN9xwJzuM0GPM5hNVMgAOEuPdKVKWJmnNDeBdbE=;
        b=QXrChBiGlqKEAAWV2vEOPDKUdaaJVAa8nIIlqRM/LRoZGehi80jDznMlYk4xbX9YHp
         4o6tXvOJhbZksWPZDrNXqQWBxR0P8/iWv9/VNJRzl/BANmcZGIm44ErreQhbbukdHi3d
         v0Erj+51PIuxHmSzMcE8ZLIQRiz/+N9US8ibVUjw7AqCQWLuJiCCeOqPkNHTrwkV6zHB
         cfbHafjDNIsZE0Yb3Dyvj5EkV8QgUnYrEgD0MaX20kmebuUDtpgEVdIMzD49w5IKeWQR
         OUp8inOHxX48mTrJc4mM5gZuKKdACEoihJTLgYa41YOt83z0htJFQTECACutGlhSII76
         MCtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789326012; x=1789930812;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=gaQPgN9xwJzuM0GPM5hNVMgAOEuPdKVKWJmnNDeBdbE=;
        b=klsfFy/QEnBz19OtwxNBtWkT5kXfquPRrvwVhdGDlGQ4fiq1mt8DKyuPsc37HTElCt
         3b1hqgh6CnF32VcxDKcoKqMR6+xEbf3i4xZ43d88m87ga2xnQR5SnA/h8BkwRwiqQlI3
         ln5j2XABsuvrlJPYlMpv5Af7TmtnxI4lmkoA+UJjjpJzRXe5z+nXbZ+myODBAFGqEFus
         IQE01mPvi0pGlicuBRzqZaFUJrbhF8lzDdewmh/yPLgyiU2tM8eIjhOdmZpT8IP+DRQA
         GaOgrk5FOSlP6+c5/esGXo3Z8w2OxVPHYOYHTEmFQVPhclQfGLQ/oQob88u1WbhjMzxR
         SdAA==
X-Forwarded-Encrypted: i=1; AKwUvBx7Uo7/3XbIZbcVE/ekMHEEhagWF+POScFNjn4mVCHf2n6zg76Rw5xxCa8+BoCVq4mO/PO3YGvQSM+tED408w==@lists.infradead.org
X-Gm-Message-State: AFuF++mS/+Xz81K2MV4JWjmhg8eZ9zTVVzXoxGAqpB3+j8Sb8vI5NpE6
	p6iKsJ30c4I7orVda0lunu4J2v4X7PB0q4mMDSRO0dboDs1ErAznSTWR
X-Gm-Gg: AYBFou12ZzHhuTAz+WILKSwVVJJeEQSzj6wgGmW6QDoxyoLtgoECUVOf6rmYF6/Tu3F
	yPVtWggOMQWcmyzYes58V5eRoye+EYCw1Fs2M7+frvuUHuQ+sDb2YgxpI8Z4Wn9sPQM58Z9nXJK
	xZUHC00xzw3W/BaU3F8nyKdI7aySsAWd5NuFNzwz8rMf7DSZnJGNLQVgZb4P3dBydjF2m4bJDHJ
	YH0+PByRhzodtjZG8GOh5eaG+/UgIaTODEpKawfJJSqqumsqVa23XNMw3eFYUYLtYuJBOsRlNNq
	RBGlx0JReMO8U5oPQ9NaesHAOsXBgo/LZe6MFLbcsmFKIhHL6tdoKnzif+tFjClvi4zgmY8NZFt
	3e+TVgcEW94nLdXmkLKiCwY09wnSPyV6No+dSzi+2GN6ExEC4BFPkuFu5dj7yyr2TI1bgC6u5A4
	XdsBUjFKKGlt3X3PHcID+MQm523nZmBXbY8bqCpIWsM+04K0z4Hzsb8dgYwOb2hgb0Yr0rNNE=
X-Received: by 2002:a17:903:13c8:b0:2db:3b35:1ac6 with SMTP id d9443c01a7336-2dd4bc32ee4mr166613045ad.5.1789326011475;
        Sun, 13 Sep 2026 12:00:11 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2dd2cca6b7bsm36808655ad.3.2026.09.13.12.00.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2026 12:00:09 -0700 (PDT)
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
Subject: [PATCH net-next v5 04/11] dt-bindings: net: pcs: add rockchip,rk3568-xpcs support
Date: Mon, 14 Sep 2026 02:58:39 +0800
Message-ID: <20260913185849.907479-5-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260913185849.907479-1-coiaprant@gmail.com>
References: <20260913185849.907479-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_120012_615589_77431E94 
X-CRM114-Status: GOOD (  13.45  )
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

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../net/pcs/rockchip,rk3568-xpcs.yaml         | 110 ++++++++++++++++++
 1 file changed, 110 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/pcs/rockchip,rk3568-xpcs.yaml

diff --git a/Documentation/devicetree/bindings/net/pcs/rockchip,rk3568-xpcs.yaml b/Documentation/devicetree/bindings/net/pcs/rockchip,rk3568-xpcs.yaml
new file mode 100644
index 0000000000000..703fcff0e3f70
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/pcs/rockchip,rk3568-xpcs.yaml
@@ -0,0 +1,110 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/pcs/rockchip,rk3568-xpcs.yaml#
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
+  The block contains four MII ports that can be individually enabled and
+  routed to one of the Ethernet GMAC controllers via the pcs-handle
+  property in the MAC device tree node.
+
+properties:
+  compatible:
+    const: rockchip,rk3568-xpcs
+
+  reg:
+    maxItems: 1
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+  clocks:
+    items:
+      - description: APB3 bus interface clock (clk_csr_i), required for register access
+      - description: EEE clock (clk_eee_i), required for Energy Efficient Ethernet operation
+
+  clock-names:
+    items:
+      - const: csr
+      - const: eee
+
+  phys:
+    maxItems: 1
+
+  phy-names:
+    const: serdes
+
+  power-domains:
+    maxItems: 1
+
+patternProperties:
+  "^ethernet-pcs-mii@[0-3]$":
+    type: object
+    description:
+      One of the four MII ports of the XPCS. The port is linked to an
+      Ethernet MAC controller via the pcs-handle property in the MAC's
+      device tree node.
+
+    properties:
+      reg:
+        description: MII port number.
+        enum: [0, 1, 2, 3]
+
+    required:
+      - reg
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - "#address-cells"
+  - "#size-cells"
+  - clocks
+  - clock-names
+  - phys
+  - phy-names
+  - power-domains
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3568-cru.h>
+    #include <dt-bindings/power/rk3568-power.h>
+    #include <dt-bindings/phy/phy.h>
+
+    ethernet-pcs@fda00000 {
+      compatible = "rockchip,rk3568-xpcs";
+      reg = <0xfda00000 0x200000>;
+      #address-cells = <1>;
+      #size-cells = <0>;
+      clocks = <&cru PCLK_XPCS>, <&cru CLK_XPCS_EEE>;
+      clock-names = "csr", "eee";
+      phys = <&combphy2 PHY_TYPE_SGMII>;
+      phy-names = "serdes";
+      power-domains = <&power RK3568_PD_PIPE>;
+
+      ethernet-pcs-mii@0 {
+        reg = <0>;
+      };
+    };
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
