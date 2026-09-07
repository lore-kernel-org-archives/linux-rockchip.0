Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30009C79FA1
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Sep 2026 15:39:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vQPzIEH0Tj+Ht8FSJqAnkO+B1yVIUoLwD7IXGMBwx+8=; b=OpGyfZLh17ttQh
	qLAm8ITP2YJ/dQjWU5y6MUuSzFEEJ0l30qnqvCoLmYJFDgPam0JsvDcoq24yHW2ADMQSKYE00X2T4
	OwNr4rstuCCEh1wa7LRwsz9vdEjklcb4honvUcwQ7LfyU+giLxu+e/7b9KnGpELZAalT4xy5SdfZm
	TkVG2LUaHO7ZKxCS6sNsopXxfanZ6oxz5QZJ5vBnVwf4w6uHc16fxl7u9Hiq8E56g/n2z2PF6K+TE
	Sc0tlHYiSCaXRbDiHoDvFtNJeGaz3IL2AuHodUntcRF9SQNyx/feipOMsq7w3dxoZTPyC49Udjf+f
	mfvRt1TrkAo9ESuE8axg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3bR8-00000007CFJ-3w4k;
	Mon, 07 Sep 2026 15:39:10 +0000
Received: from mail-pj2-x00.google.com ([2607:f8b0:4864:39::])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3bR4-00000007CBG-2uUM
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Sep 2026 15:39:09 +0000
Received: by mail-pj2-x00.google.com with SMTP id 98e67ed59e1d1-39b2ad83680so1545199a91.1
        for <linux-rockchip@lists.infradead.org>; Mon, 07 Sep 2026 08:39:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788795546; x=1789400346; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=z6aB1UFx2dxtuDUMhshejketJxUphgoMFv4AnQI5Bfw=;
        b=bpckWL66EAIQvABaMb0gr2sLI9nayjuzxNQgM9NDNLNCaBf1pEgQSccvyXvN7lIPzs
         uKElfpMhpGlFu8nS6aJPf3iXhaIoAI+a64GfVazeBGMC/FpD4uGznFUHfySVNzlBAzZj
         OUvmsvm4lF1sqrXhOC9m5dfTeb2PPBBwaPm4FLJGe/m2scHZubBuRm5epo3PiwfQYuxD
         uP04OMtgnZGjRhIu820VGMoBkoBxe2xfCaKOSv4XfIPTG65RY23GtamZ7R5rs1rlbnQ6
         c0U+U03uvXJw4TF3D9oebFaIDRhbLNdqBos66cJ7Ka0bMkO9CmRWNcTDBfwc6j5WALk8
         qZtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788795546; x=1789400346;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=z6aB1UFx2dxtuDUMhshejketJxUphgoMFv4AnQI5Bfw=;
        b=cBEEil2K9I+VLqh6U4tTLQBT8b9M1+cNrNRTr0tZ7ZBXlKY/CjHhGc8xEao/4Naf2X
         Yh4eo8p4Qi0tmntTvwl4UIs7xiiYQw8GgMQZuCUgzPETUntbLudLxDx+47xOsZYAyB5n
         ggwusr80svueqFzaJhK2SfN9bF0PpHgF4R/iJHMZlmMPEl6jlyCcpdVNnAUs8ThX23+v
         h8ECf7mphXc5V8RemACC73LXDgPtcFtol/7H1k4xFk9RCRJZwtE6BnIiMS7CcNYdiAld
         8h3Ae45lXZb/WVE3vTYon3njWqoM8h3Xf9+zBE4GdaQ2eVMolRVEss+bFFnjSvaoLhOg
         5e3Q==
X-Forwarded-Encrypted: i=1; AKwUvBxZ+fSts/sYs6FDxv2cxRzgddnsVIwJqH2zaNYfup383jw/yqexrel9HAucnFGSMfYgFev209Qmrg/Te9sKVA==@lists.infradead.org
X-Gm-Message-State: AFuF++lgzPEmakZYEJujn/0xOqE/e9eRxLRyHwrnNGBZ4yo+cFx2NTDk
	g/gPGS8b3Ef/0Rh9dm6IEYoT5SMjLMhZ7qkrM1NpLbU3Qp08HSQRyUQg
X-Gm-Gg: AYBFou2zSn3bCPAUPMUxuJiByr+pSfJkDXttlPjcqXwwZfqFjDElW85u9hUi2m8XYz8
	62oJ4suknNf42aExlfu7ch4hbb5VhQ3vtMRMxSA5/29efbJu+8mGAAbIuwF9LL2eEqjNQQUpa/z
	mS4hTrk5kJbR2Ab+MYrFyf9oudKir0Ibtf67oHlYe4NQnSKNRL/+udPaT/LNl8CktTocdEauTIL
	sNr+4OapbdoYIgxInA/ZnG8/Vvh8pl2krW2lNeVfM4K0mFOhtC97ACrDzrBjrWnNl+948fNwid7
	5Z9YAN3PvskxdJ9oaWyqBX1/MZFc4zIT5UrcQMR88Q3w1ctNBNB6KArd/dzKWi8OJ0BsF5D1LoN
	4Je+xSL4hwXMBJOZdm5pQp6p2sIgCsLvhI8suYTJquiQJH4hvzwxqmBIFfANJsWZxW3i/FWRZcd
	Q8vnurvQ/7bSOZRwJ2szjeNFudyTfralQZMyjldxXXQV33a71M27lJyecNb6s=
X-Received: by 2002:a17:90b:3149:b0:393:194d:5366 with SMTP id 98e67ed59e1d1-39b2618060cmr36557328a91.10.1788795545874;
        Mon, 07 Sep 2026 08:39:05 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39b260fdf9asm21690121a91.9.2026.09.07.08.38.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 08:39:05 -0700 (PDT)
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
Subject: [PATCH net-next v4 04/10] dt-bindings: net: pcs: add rockchip,rk3568-xpcs support
Date: Mon,  7 Sep 2026 23:37:07 +0800
Message-ID: <20260907153713.2572547-6-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260907153713.2572547-2-coiaprant@gmail.com>
References: <20260907153713.2572547-2-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_083906_744030_2DBD1824 
X-CRM114-Status: GOOD (  13.69  )
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
 .../bindings/net/pcs/rockchip-dwxpcs.yaml     | 110 ++++++++++++++++++
 1 file changed, 110 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/pcs/rockchip-dwxpcs.yaml

diff --git a/Documentation/devicetree/bindings/net/pcs/rockchip-dwxpcs.yaml b/Documentation/devicetree/bindings/net/pcs/rockchip-dwxpcs.yaml
new file mode 100644
index 0000000000000..0852d0bcb66a2
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/pcs/rockchip-dwxpcs.yaml
@@ -0,0 +1,110 @@
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
+  "^pcs-mii@[0-3]$":
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
+    pcs@fda00000 {
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
