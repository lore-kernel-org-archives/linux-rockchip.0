Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C4FACA5FFC
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Oct 2026 22:30:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5tAfrJ9FeQrQWXe2/Lq0jvm0sPGXF7B/GzgurfQZFXw=; b=fR6KdoP8EWchc0
	BxMfek4uRzjdIKxiVhUKjoOm0aWLK4sYW9CHSxjhqrBbDggMyCs6t9uBd/wGbFMCZPQKrTXih9AON
	0gHJPtfGoIGrWqgs2lLDP8SMpL5HyLjadg20nyHu2qhmAS2jBFyrnp4YMKJS9M3uyNY8781CYAg+m
	p7q8aFaWOQyEfb6RnzPPDRKmoC0CSAZn74QATI80tr9bpgbtY8OynnONMc9+rX/1Kc5q4sOdUPN+o
	2Ha9CTfQ3ZNElS10jj5jb/3ZLPu6wX9/e3R1DA0Lbw5QIFRt3sd17vFtmTFAG6nZVOfpiAczmauCF
	Uy56roVkEHO6wGj7McYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDrCm-0000000HG5y-3xRq;
	Mon, 05 Oct 2026 22:30:44 +0000
Received: from mail-pj2-x08.google.com ([2607:f8b0:4864:39::8])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDrCj-0000000HG4G-1KO0
	for linux-rockchip@lists.infradead.org;
	Mon, 05 Oct 2026 22:30:43 +0000
Received: by mail-pj2-x08.google.com with SMTP id d9443c01a7336-2e4a647d776so15053965ad.1
        for <linux-rockchip@lists.infradead.org>; Mon, 05 Oct 2026 15:30:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791239440; x=1791844240; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=WzUxf96lJcOF3iW8gS5QIxqqy13/2PJtTrFNEXc29ug=;
        b=XkDbP9/j186UW3AhnSnOQ/kC8LdhWnUDzwJgG7C3fxPBVjyegXk/n7bBRdzeB7XV5O
         uhziou3p1Mf5PfY+U5AAfcsUYDdotOYmRXpNQAqAzJhNU7P1whuPldfQrWGmbHVJ1Ui1
         XIrHfU3Cs5snRrvC4JaO5ZzkQQ9kXrdYAMcLoksLttupX63RtZiftKB1hPHw82oJC2X6
         C+TRjG9NAmQIUgvgAK3Z0+kkvzqQ+Sptmz3skWklw/IQQfB703I0vkHjPDiXrYU/C8W/
         dNUP/7jVGtUyfy4crnKxdij4YbU1rbmuRZwpW+fcyuzoHRQWKYwHbj5g1thelgTfId6S
         +5qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791239440; x=1791844240;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=WzUxf96lJcOF3iW8gS5QIxqqy13/2PJtTrFNEXc29ug=;
        b=UyDbul41cpVuH+L0zIFhXKdTO8MdVQLjVmNtV8YtFgxGtQrPfg1oTagL2Bra1FLjot
         Tdjnvrachk9Ss8Qa/KI7G/VPntj0Lu+bSyBisfvz0qyu6l/yS30/uUl5zNA56EcZ84dg
         d5JOLqhI1DF73psoUzf/HvUlYBbgETDBp0QAnOxKMmnTjCMW91KDFV/cE2Crw4wkoI6l
         vK3HhXUJOifv4s1HoIDgNGD7eAPoimZNUyVVXb8k2BBzikO7Mc1j3NUDHIQ96MoSZ19S
         wkqiF4gOvXOZStmV95a1ccz2BGrDAHX+TJU+0KwBczm9UV0edFrWiuiE5lUOGs1oJ//s
         uApQ==
X-Forwarded-Encrypted: i=1; AKwUvByvvfKjBfiLrwHjmyvYWVyMiAy4sTat/p3o0RB4eWiOzagxhJsPJ00bpDwNmmfMw3fgjGtNNSp1PGzYWKzA7w==@lists.infradead.org
X-Gm-Message-State: AFq9FYLZUbKaurK5srtw84ZaXWmWipAZdkY+Glgupdw4x7RUCEn6O2gy
	eHadWfW0/fiMc6ITYgdJJwVNa8RPXAOWkxYVSdMbM3u5tIejq5bZNyJt
X-Gm-Gg: AYBFou3top3UKL9sGKZydO9Xr8PYKMhwRraKjqt0vjQgFbmKE1DcSooygg+Ty2xMBIm
	jbOk0t1s/RV74tG3kxN6zwryI6HoXIVvOEAXysH3xJhHI0N8YzVg1Yh3m3/PX8JNnii6PbaWEfL
	EuJNY+iArOPqoII2ogVBK70gqIFnoR63KVUtZWKq12pODnltxiLYDHiiVCCqLrUy5gpweEmj+zV
	R/nIBJ5KxMupyZNHqL98mxT15i9q1MSXdNfsb+RT4414LyPUpqXMT+9aY081x9wMEata8DIqVPO
	LNfg0/+aWr+i14TcT8wqUO2lMGqq2sdCX3IkB/nBV4+QrRO9ifuQIRKwQCb8bDC0jnbNOTFgwzR
	uzv+OIBZrcCEL9ys8qbjsiyJOFG/Dl4/ZChSR/MnDdc+9coZYBCM+fuMe1M0ZuRkqgFoYUurzxI
	FCTdwqCh5+x5/axxhFC3dNAt34ScgX3B/Gbkfui4AAINP9KrVmDDDu5vptnduRSNYSq5K+wf5Lh
	6ZRr0ym
X-Received: by 2002:a17:903:f8e:b0:2e5:397a:b70 with SMTP id d9443c01a7336-2e5397a0cffmr76287505ad.56.1791239440308;
        Mon, 05 Oct 2026 15:30:40 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e5a5f05321sm13203705ad.78.2026.10.05.15.30.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2026 15:30:39 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	David Wu <david.wu@rock-chips.com>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH net-next v10 1/6] dt-bindings: net: pcs: add rockchip,rk3568-xpcs support
Date: Tue,  6 Oct 2026 06:30:03 +0800
Message-ID: <20261005223011.1124347-2-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261005223011.1124347-1-coiaprant@gmail.com>
References: <20261005223011.1124347-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_153041_355420_BD14B158 
X-CRM114-Status: GOOD (  14.81  )
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
