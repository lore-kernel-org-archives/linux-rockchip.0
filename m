Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B534BCCF2C6
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Oct 2026 05:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xzAdG/BvafL0nvWbG/GLuDr57Rbsw6t/7d3IeOZuP1I=; b=so7yQGdxHvlhJR
	9l4eocvkTKT0xcW+WxtNgl2lTqaatxjZBI33+zsiNFSVqciRda+LGoi4z4YD4uK4PCjAbc7B4UBQf
	n9Y/jlNkEXxZ/xbVytTQU4oc0IH/L+Iq/9vbqY5udCsMmnBESmAPWXflNxmzUIbvGNnEyf1sl10JI
	+oo15AvJjDWBSl4jtK8EYz44XbBQv5V0YNUI7ie0OC7J/X39rFX9XmqWQkCjJ4u2ZPHEdSjj0p6Hv
	6p33S/YUUPPJPWQdQ2TVCuFwBk2uCIi8NGqsYXsybKqBU6zPN60HVH4sqkcjQ6oDbr9ACa34kuw/5
	3s34RB8FDQb0qOCB/UeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHxE4-00000004SOQ-3qxv;
	Sat, 17 Oct 2026 05:45:00 +0000
Received: from mail-pz2-x08.google.com ([2607:f8b0:4864:3b::8])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHxDz-00000004SLB-3WXf
	for linux-rockchip@lists.infradead.org;
	Sat, 17 Oct 2026 05:44:58 +0000
Received: by mail-pz2-x08.google.com with SMTP id 41be03b00d2f7-cc75f2924abso447176a12.1
        for <linux-rockchip@lists.infradead.org>; Fri, 16 Oct 2026 22:44:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792215895; x=1792820695; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=oT/1KwqbtpFXM8iCK2NrIcWEMqWijDvNOiD3geX4Tok=;
        b=Bg94VPiVKBSxyWYrISHBVddAOpZj+AY5nDT4LleyWlTSFQ9q95YWfbogbDgdj9EAdL
         0iuWunHHyxSkfKpxRdDGqRfu3Y9HKJWkN3AaeZ3zFwjWUUHViRHTspfTbcU5Uzp9wRn2
         d7c4k4KoqQEN3WdOeP80TIljBVsQCQjvxMdpIoD60ae+kQ4CZINEyl11L8BhSWQSRaqm
         JBlEUpV8w1cmnKQHgMzgqyqpPJSMpJe1qJyFRvkmqJ4/NdJVi/4+Xge/b2jzZKIU6xjV
         TMdxmWfTs0Y3s+QCGUWdqols2UA8C1AanpKpoq/kgX/gnJNzSEM3egjCI6mB35K8yea4
         tn2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792215895; x=1792820695;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=oT/1KwqbtpFXM8iCK2NrIcWEMqWijDvNOiD3geX4Tok=;
        b=l3ImJ8D2H9abEO9K8BTprCxDerZYQFeeX7+i8srj3bInT6RsB/UAwFDxHa3nKXr223
         cGfKz2yV3V8iwjPzAbMNqazcOcM3B/nDCtP5KureSoTEpCY8dyFfga8KNfhOCCpquQbb
         QYMZFn9J0F/C+F5/jttFs4UJB5Tj12wWlXLQat06OgNHVlJX/XfVgO7AmPtpcAvZSKxR
         mt4I8TigwIjBEEbsLNKYrJf680CFGDkYsVwvvpS4Vqdku65EVwbdpgCYH6K6SR5kExrJ
         IFbVQ3Vz0MKeuOG62oO9f3Mpp77iT2TGtSabJL933aZnL/qBb8NYZojeC0N2kQHNKSjG
         fJ9g==
X-Forwarded-Encrypted: i=1; AKwUvBzQv8Ghwznu0cnugAq3p94xT8u/87OXkaEQmsUduajE8Seh7Gm9xTrbOPoqZr3FVqvmDvYk7Dzzv8YPOi018A==@lists.infradead.org
X-Gm-Message-State: AFq9FYJ2nlZrwdbpH4xC+Krn7EQHatQpgW2KdlyMDLmeVQB9g0f1Ulan
	1mKsQuQk/2w1btf7ZBzBi9PTIWjiNYXKehgsSDMMcGL16e24Tkk3V5pH
X-Gm-Gg: AYBFou1w8W3o6jeKBEt6l6pXMxadBXhm9143VudN+wPr4UQ2vcJ7uxxH+uUn9kDDFaZ
	Lyx0jv2uctavBReDuMAmLpSiC5ZAMVKckL4oI9vq756jG0krurWcDt1rx2vlLR3xgtOqDQVX9nj
	YaDOQb3BKAMp2qTYoV7eKfqJ7TOLyfrr9SjZgqmsNczEqx/rpBFDr5q4aUmYvQfpb+U4QDJW38i
	8khnr7pH81HoWy/4cZ1V6Zea/RwdK1hhorYGCuHAy7PfUZBQfIhgEa/Lm0zf6ZAeeW0VL5alGqY
	539DH3BNOxb4fHkK+qyaxm4RJy4j1kD8ur1A4gTc2X/2XCWuhc0UqI7biSRjUkwRy8B8hU3iAMP
	QG77mMJ0ZSKt6wm0ypT9dWrFMJFCS4PGhtrmCPn+TnxGPeQiaWV00HHO+9A7q+P6mBXD43B5qdO
	WrI/06XVJFMSARub/J2Aq7uqDVgN/OO38ooNcKL1mH2HpXC34wxf9SUb9Mixiz1Ip1UatbotzQD
	YFG7pw=
X-Received: by 2002:a05:6a00:408d:b0:89f:b166:bde6 with SMTP id d2e1a72fcca58-8a04c43805cmr1583712b3a.54.1792215894837;
        Fri, 16 Oct 2026 22:44:54 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-89f57269315sm1958225b3a.23.2026.10.16.22.44.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2026 22:44:53 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>,
	netdev@vger.kernel.org
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	David Wu <david.wu@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH net-next v12 2/6] dt-bindings: net: pcs: add rockchip,rk3568-xpcs support
Date: Sat, 17 Oct 2026 13:44:00 +0800
Message-ID: <20261017054406.1828061-3-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261017054406.1828061-1-coiaprant@gmail.com>
References: <20261017054406.1828061-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_224457_290881_A65D4A9E 
X-CRM114-Status: GOOD (  14.24  )
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

The MII port used by the SGMII link is derived from the MAC it is
routed to: GMAC0 uses port 0, GMAC1 uses port 1.  The port index is
not an independent board-level configuration, so the binding does
not describe the ports.  If a future SoC needs per-port configuration
that cannot be derived, pcs-handle argument cells can be added then.

The CRU reset lines (SRST_XPCS*) are intentionally not described: no
in-tree user requests them, and bring-up relies on the PD_PIPE power
domain, the SerDes PHY and the in-IP soft reset. They can be added
later as optional without breaking ABI.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../net/pcs/rockchip,rk3568-xpcs.yaml         | 69 +++++++++++++++++++
 1 file changed, 69 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/pcs/rockchip,rk3568-xpcs.yaml

diff --git a/Documentation/devicetree/bindings/net/pcs/rockchip,rk3568-xpcs.yaml b/Documentation/devicetree/bindings/net/pcs/rockchip,rk3568-xpcs.yaml
new file mode 100644
index 0000000000000..a331880eb11c1
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/pcs/rockchip,rk3568-xpcs.yaml
@@ -0,0 +1,69 @@
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
+properties:
+  compatible:
+    const: rockchip,rk3568-xpcs
+
+  reg:
+    maxItems: 1
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
+  power-domains:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - phys
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
+      clocks = <&cru PCLK_XPCS>, <&cru CLK_XPCS_EEE>;
+      clock-names = "csr", "eee";
+      phys = <&combphy2 PHY_TYPE_SGMII>;
+      power-domains = <&power RK3568_PD_PIPE>;
+    };
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
