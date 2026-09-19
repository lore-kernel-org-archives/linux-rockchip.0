Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3949C982CC
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Sep 2026 12:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5tAfrJ9FeQrQWXe2/Lq0jvm0sPGXF7B/GzgurfQZFXw=; b=RO/cP/bc8Ux7TV
	u71KOkeGiO6yQdPiYm78kpBQdvjiZvPAXBdfFZwujHDsnW5mrtgiSRl4vkeSGQ91dS5x0oSqzhW2U
	WPvtjbSHYehmIjYhb/EgCBg88olj0fwNrtZ205lZp0esvN2khPI36IwanwEJ5hSANHeBeK4TSu9cI
	OH7QqhhBodlJa0D2PcbUJl1i1KmrVWNz1AFjsU/uv+Da5yA/MaGxGV9mrxxzVve1lJXo9+UDKGoFV
	ARH3AkmcZrj2HH+wj1hR+PjzaGQYhn7V7YO5DjF57xE5gcJIQUwIpa87VWRl2wBvVH4eCPgBEdnsw
	CNe04DOov6WwagEo96Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7uYH-0000000GH6U-1bUf;
	Sat, 19 Sep 2026 12:52:21 +0000
Received: from mail-pz2-x04.google.com ([2607:f8b0:4864:3b::4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7uYD-0000000GH2E-0vfI
	for linux-rockchip@lists.infradead.org;
	Sat, 19 Sep 2026 12:52:20 +0000
Received: by mail-pz2-x04.google.com with SMTP id 41be03b00d2f7-cc4c181b42bso1006359a12.1
        for <linux-rockchip@lists.infradead.org>; Sat, 19 Sep 2026 05:52:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789822336; x=1790427136; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=WzUxf96lJcOF3iW8gS5QIxqqy13/2PJtTrFNEXc29ug=;
        b=KsbyX/oYrDWgo0oVtGLWYO5vAo8wD44uSFhAnWOmg9qltxfWCX3CLiaw5Ys/nti2lf
         Kr4tF7iv6NGUhPochxQZBhl+e7YzH4SVKnFZ+cZ4cF3j0v+Lgiudrf0IhRDSbYJMcxda
         YEJOEKu6g7zVdDV6TN2RSr8JlFz8XoFjlytrfK7A5pQjDWkACuiRNRR46DlZr1i51utt
         xSWPO0cXuc41NIR5+r+yWvbKUdECk6O5Xtth7UYXZmWeWfPBoKWdsRUrojRsBXjwBric
         oCHYj1yXxmiRwOjNokfbVvxVS4z/KA7dQ3ovudQ7BBtxknlwh8zqRreaf00ku3jvvPeq
         Go8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789822336; x=1790427136;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=WzUxf96lJcOF3iW8gS5QIxqqy13/2PJtTrFNEXc29ug=;
        b=fXLuHc1CylmyGYDM+4F9nobRcm+Yv+1Shd86VmQjDOgxL1zf84XdSBleJ2TLXbyv47
         m7ZE+ojUi6QaUBEq7bA84P6EdwYtbw16siyNJVGUaHzQIqDIysOaEh3mGK6edKi4l2En
         EoZtih1RBW7tdDjLzFRTpWqu9FddxA+Pe+dLFI6tqIVTPSH3mXFFgiqWFqOlS/ionJZa
         SOTqgGU1TTaRgtpkSWw2NBaHMepDhNVA1BZfBbWpg8JfbZQqAh9qxkwqJ6kQFh3mfRbI
         zF1ES3yH9lf8cDXfv77+nLs2uLLU0ZWGe0s8zVNhK9sjGAiDBe/hM0eMZFQSo5jyQ7P8
         AbVg==
X-Forwarded-Encrypted: i=1; AKwUvBx3jaA7kBWEA/QOYj1ChDTtbsknoxejQzeVLPCqQ12W0VVVcnES9t3RrlgAnPfoVQcgIEIomEDgH4Vtao7Csg==@lists.infradead.org
X-Gm-Message-State: AFuF++lwtct/XcWnDy5/xpkqyc14aTzwUoOvQin2zUBokDieSxghBi3J
	PvTz3OGPLBmnoOBQ4oL+ersBp4SCmi6kaC5mw00siYUzQExB5kELjmDP
X-Gm-Gg: AYBFou04S7UgOQ9YiC5QVaqzKbUQCCG3dZNYE2Ygn+mlyVaO7mS65znVsHiM/bfdY+N
	u7CEE3d/WlUmOG2h15sE6F9lD3PvjZn4343/miyvTi1vcLFF2ci/fbCaIEpcFQfWfPKSnGhh783
	rL1GIRuR5r9MXcCb8tJvpqY/40FZUTqhEBn6UrzX+5BaCo46nR9xlh5Xmm8gHqzZvGD8SZPto2D
	o1GwAGdoUjBEPBWZeD+iR8IBwvv6vhWaQZ4AJypJk6KKemGmVLcwwgojEwGcekYtB+Jv8PqJYGv
	HW2CHxtiIAFifU1FQy4D/snKFWTlLE2+tDqTOt95d8rTF5yaSmjTwS8eru/pjAU00SIlCtNwOy0
	xHDRzWTp621BjJVNwX+DF3rJRV71gbQHoAs/2uC3VCLMie+cp9tWFQ4NXLCOqdGI8BXj6tqt/AK
	1+Y6HH5fpOs7oS0c5BU+n93ZnptrsgyXvUQgN/gg38CYNEWXfO8pJO0uelERGW2yRBD6pVew==
X-Received: by 2002:a05:6a00:39a6:b0:878:34d7:6a35 with SMTP id d2e1a72fcca58-87834d76f58mr1393269b3a.41.1789822336163;
        Sat, 19 Sep 2026 05:52:16 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-877aa0026b2sm991805b3a.44.2026.09.19.05.52.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Sep 2026 05:52:14 -0700 (PDT)
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
Subject: [PATCH net-next v8 04/11] dt-bindings: net: pcs: add rockchip,rk3568-xpcs support
Date: Sat, 19 Sep 2026 20:51:11 +0800
Message-ID: <20260919125119.2107089-5-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260919125119.2107089-1-coiaprant@gmail.com>
References: <20260919125119.2107089-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260919_055217_295727_066AD57C 
X-CRM114-Status: GOOD (  15.52  )
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
