Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E68A3C98304
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2026 20:04:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5tAfrJ9FeQrQWXe2/Lq0jvm0sPGXF7B/GzgurfQZFXw=; b=Ng5ZOTx/GpHuHg
	O2hwAYLH/cVUHoK0bTrgj9SYK1uDpodP44TDK+oJG4CTQYEps8t3JiVYzKXvZJGeOzZd9Y5enSfFf
	zDxcmAB/j5RG+ggaxkKch5jbTIOT6dIZLcY2yACAQwTe8M2+3/NZskoF54k+td/jSu9YU3OS6SLJU
	kYzhbZ1BzbQ08NlJCiJ+vIj3sesCktP/6GNmpQZOjUKvFvKzYyb0AWVjlC+7JEick+6ZU9WwQ3mis
	aqgd8enx50+z7iGcpwl2pYJKZLbibLrhgVa5SrhIqCvZCD8o0clmyMYVf+L9iqTHJGjfkXk8MhPvy
	D8bIZTUeUL/m4iNehStA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x96j0-00000006U2q-2a23;
	Tue, 22 Sep 2026 20:04:22 +0000
Received: from mail-pj2-x02.google.com ([2607:f8b0:4864:39::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x96ix-00000006TzP-0Qig
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Sep 2026 20:04:20 +0000
Received: by mail-pj2-x02.google.com with SMTP id d9443c01a7336-2cb3f5bb19aso498415ad.1
        for <linux-rockchip@lists.infradead.org>; Tue, 22 Sep 2026 13:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790107458; x=1790712258; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=WzUxf96lJcOF3iW8gS5QIxqqy13/2PJtTrFNEXc29ug=;
        b=qrAIG15g5A5mGd66/9zK1H549hg4FgxsFuIqgGUx1RLouZsK7O57UlLJVzaSDKdWaO
         MMy7ntaYCxnq0jtNz6Y82Uv7SnUK1VDMcDa5p9PFxlnkUWucgY+bHev5czMW8PX+Wza/
         TtYW/0rxBj0ZqY/Kqvj6FqTf3ZvsIK5p2H4xgCunPtpeQtdRb5SqR2F8CoecRdVeaWdN
         jJA15+OnNfpdQBFb0Q0T+J+xCchNepUWLMS1+Yezr4AGu76rY1+oaUMhKxKEuP0/fC87
         J6gcSRH5YUm+ejVfLvBd5akiRGyxUGWSaKMAxqn8f8rgYTCBfJf1U6Ucm2OXcXl7Axvq
         cnUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790107458; x=1790712258;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=WzUxf96lJcOF3iW8gS5QIxqqy13/2PJtTrFNEXc29ug=;
        b=WMJe3noPG3tfiOUmNV9MbySG7M/nDG7FLpaG2xVJl7uBpcpeq27KCBIpH7tEALp3CK
         mY7kwALR9mAzrvLlr6LR3sXVr9Jp7V41sYjB8XoG4pFHbVyBJw1MzrKBDPbn+qfQhFWl
         eHWa0OSltB/pAmn2rH0r90dSFzzy++rq/R47RSNptFdlMeMSm0YbAI5rc35qdMvNKTMt
         9paJSuvUWEV3P3Jhr8ZiWedlRSBzTw5/6KuQH4QP8fnBK+VbqzYYQnsuc4HKWga46FKY
         xWUynffWaHx2T5ZsJ2H1qriFRZzmRe5f47s92K5ktK8mp8OqQ77+ztZ3L82o79S5uRxa
         QLMQ==
X-Forwarded-Encrypted: i=1; AKwUvBzxZ+1M4QKy+qzzSOkPyVhplZ3OKYhwa4FTWvJdqT9XLNqGuL1iE6HF+YudnxJwafdBDOwjJnt7lc2Pqi5KlA==@lists.infradead.org
X-Gm-Message-State: AFuF++l7djsp0sl+nO0TRgyXd/GktrbK+Nbhx4Kcf4hr2u48BTJxsX6l
	y2mNFqFIUmubNhXy2dOMx7LdAemxk2cNyLAzJpZCkWXHszQo+zOOJyvO
X-Gm-Gg: AYBFou3uaOpmTRAPRzUE25mHSqKLDvifFGv1s+35EH5f5CrzpT46nIVXIPgfWFTVfwL
	Z71Q9nAb23B2QbZoU3s8EvBhTzJRz8HSEAeKcFPpMhCR5WVEQOFxxNWk5ebEh497reQKNpwJsYo
	F/VDL/8RVY6PempKD3XGPL2VoNfeZuV8UQhw+dkylRn27au7+kGDc8y9n22uaJbTZSL3yvofZGP
	vnWtsEImjmJAr0zopNW0X4JDVfTpOnMxrvRXsmP1JlYmQAahblMftQD3Qd7o8SenXuWr9YR7xhK
	9JsH5VJ93QotJISnW96mVw+7o/feVSU8hAGSGBZY7iGAm4wIzQM4LLTQO9FDF/XEMxFAkpnnoZO
	Mm8Yeyj6HHZxZqyf+JF23Gj8sa2zrNhQTpuX7wiD7HQoILxlWXyu3B28Z+rB/OTRJQn6lnuSBFU
	Fa0gU9Z/dnr3aS7EcfDN51qoPX+wxJ2/4zllyqKY4fUiHA+ph2Al+uKCatSa3Nr8nvRNN+
X-Received: by 2002:a17:903:2350:b0:2db:31d5:1448 with SMTP id d9443c01a7336-2df69d689a1mr3760135ad.22.1790107458354;
        Tue, 22 Sep 2026 13:04:18 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2df6a5eea15sm654515ad.64.2026.09.22.13.04.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2026 13:04:17 -0700 (PDT)
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
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH net-next v10 04/11] dt-bindings: net: pcs: add rockchip,rk3568-xpcs support
Date: Wed, 23 Sep 2026 04:03:28 +0800
Message-ID: <20260922200336.2201212-5-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260922200336.2201212-1-coiaprant@gmail.com>
References: <20260922200336.2201212-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_130419_315800_AF86FF38 
X-CRM114-Status: GOOD (  15.16  )
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

The four MII ports are described as ethernet-pcs-mii@N child nodes,
consumed by the Rockchip XPCS glue driver later in this series.

phys and phy-names are required because dtbs_check only validates
required properties for enabled nodes. The SerDes link is a board-level
design choice (combphy1 on some boards, combphy2 on others), so these
properties must be provided by the board device tree, not the SoC dtsi.

The CRU reset lines (SRST_XPCS*) are intentionally not described: no
in-tree user requests them, and bring-up relies on the PD_PIPE power
domain, the SerDes PHY and the in-IP soft reset. They can be added
later as optional without breaking ABI.

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
