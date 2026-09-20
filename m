Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF67BC982DA
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Sep 2026 17:02:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5tAfrJ9FeQrQWXe2/Lq0jvm0sPGXF7B/GzgurfQZFXw=; b=PhjLXJvRQ3OnxL
	ypN+ENKTS5Eens3rH594kSPm0h8BDAnZj81XZSdTnOeA3Kqw/FKy3Uw58YtTmGp1hBTS3rAssDQIo
	tVgceN7l47saE2E2TbgPGbnSeIb3Cq6L5wJdd1LVjk79HdZjeETvqsvbdleSEfjblm4WI9u24IHoM
	bL4pUCX2TCnO0vNHb0Voc2zOowMBGxt5UWxxIK3VoxdgOyLdS9IwALC8pGpVyyP6qh27Rbe3OHh1e
	ukkggXTB8wUIhiHES57QihBuNvZ+pcxO/VZcPiOrSSFTRkHl0G927znIjzU3v1i3AZjwg+aRQEZNp
	ZSC9KIbCGSaf0tYJoMSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8KwA-000000008ze-2K3W;
	Sun, 20 Sep 2026 17:02:46 +0000
Received: from mail-pz2-x09.google.com ([2607:f8b0:4864:3b::9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Kw7-000000008wu-2pKH
	for linux-rockchip@lists.infradead.org;
	Sun, 20 Sep 2026 17:02:45 +0000
Received: by mail-pz2-x09.google.com with SMTP id 41be03b00d2f7-cc53988d9f3so1289022a12.0
        for <linux-rockchip@lists.infradead.org>; Sun, 20 Sep 2026 10:02:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789923763; x=1790528563; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=WzUxf96lJcOF3iW8gS5QIxqqy13/2PJtTrFNEXc29ug=;
        b=marh/kybHuSy/3e2CSP2r/HPza6FbeSEpVJhRxgckLB/SvsSh9+XO88ckz/ukySOWN
         A0IQEJGi4SlAZn8rmFS53xluZoNWawDeeUg9XWm4XopUkJ4aQxM6YUy2gJhdv4Oft9dG
         4C5j9p5b/sHqWqi2szATZ9q+SS9QCfdj3i63US98yopstnuZHDhr+9ezF58OxvRzwCkv
         DJfzX7gBZmOHlZQtXuBLJkUkxTbjT1qi+xkdUpmBNWmdfDv7aL+epdLAfXyHn1/kUga3
         hMcomCjtT4cPp6+2fU9mo33JI/bFEpvqJ4ZUiTV4k17R+9D8XJa4DcIJBce95oxHEmtV
         gFBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789923763; x=1790528563;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=WzUxf96lJcOF3iW8gS5QIxqqy13/2PJtTrFNEXc29ug=;
        b=rqxYFC26BBNnvMzdNjhbmGPYBP3e3HnCnwLwEpFitohslEBiDynb7Q7aNcogNqazF7
         y7DEpfk1STPQkjAdOLWVAlYol79JS+lJAHM0h0EaJm3T1YlgkpLdj3ATxYxL9Jo2we8p
         /au0/QffHvMHxvmbboMEItVL38M7LOGr3PBy/x0+HGaxyAD43awFan5bc2N/sKU77taB
         VMTR11bsIP/psbo+VW/sMUXR8PEv0jrL4LCW7u0eQ9CortV/MAT9KoSkIfvPsRxMhzdr
         3mSqL2bD6q9QF38vHO2k0n2c/w/Q62uKYktpYEKmv8Tkrx6oDMVa98QuwbhK7nrP2eNf
         VEgA==
X-Forwarded-Encrypted: i=1; AKwUvBwLox5ptB2zq7Q4uebT2prETXOEyRzd0GMexzWbcwr3jjeZZcW+xgNi7M7th+p5qsQ3b/9pEz3T/2yERGVzAQ==@lists.infradead.org
X-Gm-Message-State: AFuF++k+HXQ3ZHP5ec06+p5WGEmTXZmmTuYzXQvUuJmoA7cCeXndkvVU
	/MQQ+Y1ZfqrxGVnbRHmeZStqkrXCxq9q4zBo0gX1P59+eKCemnxakzyI
X-Gm-Gg: AYBFou1V/BQ044KzmBSqluxu3IdCwZOPyU9TSxezZ1LdL8/036JK7IGeE/w+KMKj1UN
	ic2Sx8hA0RwfmCcbq7P80twiJaRt07xxRkj1Ff/QvvJVZ1IMpXFrFys6aNwGXncpjHtltUiKifO
	EZ5PclBEB0XWwAd/Xkn/yMd35t2EwxDVlDTDpiy40pdJaIjFB88Y8w+q46UWFK3TcNIEPeLs4ID
	SFKcwxtDOoGlTNds/8g/D+NtnHl2t39mfgOzn3cXgs+qQofHIKnM3v6Awqfx7Jfih2PVbPRLAhd
	p8zbsT2IzAeIZiEOml6zVzywSnSKdB995RyD5/3jBrgA8P2l3NvyUn0gZq3L76eSo4tnxHOK6SZ
	XtMB5m3Dkse+PHXyVp84z92WuMR107SwVNi0Pamrja6oEkO5niJ0iPbKELyoo5xU8cDYQdXS1au
	7UUAdyIqhXsqstOw8OvsYco9ebyuaDe4wJcqAn5PxnRHFOUxceLwidTGq2QHbNrt5QDctaCg==
X-Received: by 2002:a05:6a00:8010:b0:874:706d:856a with SMTP id d2e1a72fcca58-874de307e79mr11865330b3a.27.1789923762894;
        Sun, 20 Sep 2026 10:02:42 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-877a9d07425sm2140646b3a.42.2026.09.20.10.02.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Sep 2026 10:02:40 -0700 (PDT)
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
Subject: [PATCH net-next v9 04/11] dt-bindings: net: pcs: add rockchip,rk3568-xpcs support
Date: Mon, 21 Sep 2026 01:01:08 +0800
Message-ID: <20260920170116.3624104-5-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260920170116.3624104-1-coiaprant@gmail.com>
References: <20260920170116.3624104-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260920_100243_712145_325E9D76 
X-CRM114-Status: GOOD (  14.76  )
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
