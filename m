Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5104C88E72
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Sep 2026 20:47:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5tAfrJ9FeQrQWXe2/Lq0jvm0sPGXF7B/GzgurfQZFXw=; b=EUmT35iy2Ir88o
	yHQ4/aUQMT800q/ozdqyMj+BBpXtYXa9shwflx89+aQ9UZJbLLROHa3nbf8QI/hUxYyuAGlujsXR0
	awB09C7qaRY5hPeKUJhWb/s/kzzSMpf9yaEPhedb3JcLNIPZ1xnpZYwUlhSy0Bb3vLOQqP7nCGtib
	S1jXd0doejMlmUIXkoILrkF4KwyLoan8jGFoxf16xjtUzznjdWuw1mA8gYSZ1rz2RFD8dUu6TVPHy
	9nI8puZd0niyrREOB8dRN20b3YYOfr98Bi5dCAP6SVD0g4iauV6vqBfDXr7hhxbb+jXlsVMnEBJC4
	tbeaf6T4W4EthniCK2AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7J1J-0000000CSrS-1tMb;
	Thu, 17 Sep 2026 20:47:49 +0000
Received: from mail-pj2-x00.google.com ([2607:f8b0:4864:39::])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7J1D-0000000CSlK-2qnG
	for linux-rockchip@lists.infradead.org;
	Thu, 17 Sep 2026 20:47:48 +0000
Received: by mail-pj2-x00.google.com with SMTP id 98e67ed59e1d1-39e4b1e7d12so128664a91.0
        for <linux-rockchip@lists.infradead.org>; Thu, 17 Sep 2026 13:47:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789678063; x=1790282863; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=WzUxf96lJcOF3iW8gS5QIxqqy13/2PJtTrFNEXc29ug=;
        b=WtzwqIodaoS7d3JkiJJo+tmeM/vjlwC98mbqC2B9uKxmJICRXNOvxdWFKBkG5tghvq
         1OPR+daTZP/mr4F4AH9+ccN7lT8KJ4ya6SHxl3+PNeEJWKWoSq8hiSFL5oSkuPDp34/j
         1mDEiVB1CNb2ju2RG7N4H2zPPjIazntIEMY8tbBsFCwAZUVv3gNkQMUEi33KkzWtdlso
         Z6dZGtmAvqMvEfSxiTVqqcgCO2iySBY+Dt+KAD127bk/bi9nH/OKySYo9a/lfZdHaabU
         gQh/GwWGHBrIQfZ/wDLpqZpKnWINZhDyAlvBKgK4Ay/Mg6kdEdI9rB7hcLakY7S1imR7
         WDoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789678063; x=1790282863;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=WzUxf96lJcOF3iW8gS5QIxqqy13/2PJtTrFNEXc29ug=;
        b=hqZxBpRhN6iDseCXQNoIp9qgQ28I4WExkV/RdHx0E9oi+2xNzuGw4+lq0Qu+kK0M6Z
         ybzB+HIPBFfHycxx2ifoW33BmcL8wuIppLDC4tcAsugRYyvPx95Y44g4sDp0DDxWYUfL
         CxQYJS6mj2KEQgfVpz2PWTsb5ShqE0A3hQYfEXvavVLPvdoXEwUAbeppRnilMmLeOkYM
         BbT3R5a8s56mcmd3Kygb3SPxDIOop+t4iF3owDocjH4jHkgjWUydx/w2uD7ikfoNQXof
         3rhRZbhDqwc8R0H0q+rsHXMhVnN4GU90NGjDGEPbpCPecT8vUzNRHo0f7YbvdmfCbtnL
         Boxg==
X-Forwarded-Encrypted: i=1; AKwUvByEJpcRlxwAWCxvPYJFAdGGgsmTwwTWdH6HzreYVSRBJA9JV1tA8B3TCHiJP7YawwVROVj/BJgTmhA/wFgGlA==@lists.infradead.org
X-Gm-Message-State: AFuF++l1PFf5T2pK+l6OOiYm1a4Hj5ZJsz08tnLq+QCvThgsxixrUwoS
	7uUE4gV/2i22xi/aHAvzwI4Dw95qHF4wdkKswT6ppfCfdhloQHSgiNz0
X-Gm-Gg: AYBFou26/ib9GX1jku03tuu2NwUdYb2Vb+AlCCbapQoiqN8+ft3OmvWxDz0KogXrxIi
	WImuiShAbgq1Xf+XAUNggDk7kONER67pQKWtpDRhxwU41HXwte82MS9kPsqxZn0pHZmc05YlbdG
	/BU0YR7uN0sZOActlcc0FNxKw9ZlzYV0fZaa3F72MPHu3rWHPMMZgrhiNNunIQAqUB5vCfEY7/n
	0v8CBSyVdegKfXCTNeDrLQT7B9b5wNPuOPn3/9Tja4yuaeqtpkltkQHkRs0CdfkoDg1Wom8tbXk
	fRrb5337bFK3SGavwtQnkyDLdAZHFJ6jSJzFuGjW3+zfH2IS/d4Ju3agjBYuB/kifpFJgGS7ZeW
	ZrXyh11R5/tEjRSDxzwphqP1JqscEi4nmFpNTo+Ft62taR2hQ1Vr3u9imynHGTyqMBQZ6nEtf4r
	phb+tQgbR4BEiuh31XeD07Ad4XpMn3qLAoOT2D9P9kagJrozB2B72U2adgZ23QXiMOGm/cngs=
X-Received: by 2002:a17:90b:224a:b0:39e:4c81:6c99 with SMTP id 98e67ed59e1d1-39e54fa5deamr672836a91.31.1789678062912;
        Thu, 17 Sep 2026 13:47:42 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39e50a4bc22sm1232196a91.17.2026.09.17.13.47.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2026 13:47:41 -0700 (PDT)
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
Subject: [PATCH net-next v7 04/11] dt-bindings: net: pcs: add rockchip,rk3568-xpcs support
Date: Fri, 18 Sep 2026 04:46:15 +0800
Message-ID: <20260917204624.2427486-5-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260917204624.2427486-1-coiaprant@gmail.com>
References: <20260917204624.2427486-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_134743_880479_14EC82E7 
X-CRM114-Status: GOOD (  14.71  )
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
