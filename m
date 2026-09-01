Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8DF9C624D3
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2026 15:02:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vQPzIEH0Tj+Ht8FSJqAnkO+B1yVIUoLwD7IXGMBwx+8=; b=z6EbLOqegWvpZY
	zaPkakW7aHPGtyVGkcv4dM57WuR5QmZQxvF5FuJy9uGRf9c3jyl2164e9d0kt9Xw88JH5IjsGGNd0
	0NeO9vrhCUMUCHpIF/9laIkWznunT+SJodAGE6UUxPI7P5yh424FzwkoP7dI0+1txcJoAytjxPYkW
	q7wD4tgf5xB3Netd+ZQw59BGfXwmkGf0nZmgeIjma6Sv3ZNKJpVaXJ3WiZGi80UqtQ3HM4CQe4Rpx
	HFpYWJhSYlCkokjtitg3svhxBPf7v0ySP3r0kExI9HtHne4+ZKNeNnj9816OL9sF5+Hm8AsCGGTR3
	4KCC7LSIX0ttR58BwmWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Q0Y-0000000CPYg-2DTY;
	Tue, 01 Sep 2026 15:02:42 +0000
Received: from mail-pz2-x03.google.com ([2607:f8b0:4864:3b::3])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Q0V-0000000CPWi-41h1
	for linux-rockchip@lists.infradead.org;
	Tue, 01 Sep 2026 15:02:41 +0000
Received: by mail-pz2-x03.google.com with SMTP id 41be03b00d2f7-cc1c2963c92so1656590a12.0
        for <linux-rockchip@lists.infradead.org>; Tue, 01 Sep 2026 08:02:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788274959; x=1788879759; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=z6aB1UFx2dxtuDUMhshejketJxUphgoMFv4AnQI5Bfw=;
        b=AjKvRJ2IZrmq9yLRibJHSGI8uIn3A9/GBuo3nhypCpwzw/dDwkdAKOOzBK82bqzAD1
         btXgblyWjE3pztXoSJi1BhtEtJwyA7+MkxlU3lxa2lpNuFlj4St8noiu4LUR72UgXAC8
         oFrWIzshSkxxeyhTj0G7bgqzNEyOtrPmtLvjNj+7P5zaBp3WRNlhnxePtJacg1zDmWdU
         s9+hjxSmQfPHQH0DDMLOOueNvX32bqoTZ5CTwQgwyoQb+umIyOb0L65HdkeBoaDG0+jK
         bVyBHCZO8boOiMu8OjMYq+wmiF3Z3N5F06BNuk0uoqtrBtwv3p5MawADWk5s5f50VHNH
         QtuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788274959; x=1788879759;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=z6aB1UFx2dxtuDUMhshejketJxUphgoMFv4AnQI5Bfw=;
        b=duZ30SKqTJYczjjAagSPmOr98vhpb29I2M8bm8Ye1bZYLZCwfElhnsFWeevNk1J47N
         avcy2KhNShCYgPNdCppA922gBcFBcVwJnEQvXp/WNaWAV/B0Yqrf0n4vGSbz1ipIfnmc
         cjAIHc4SFmNPpIw/vZjrORxwG9ZbjQjm+2E2/BRfjkJT8H6h8YGJulK7Jvtx1wXvVNoE
         PK+3/e7xT+HdqDCI6KFt0P9OWzUzwYz2Pn7/0Lj8lIdWDey19XRQDunYhGj6wqaQzJ0B
         LkkI8dENXOEJ5l/cdzaPPTK0Qdn8CoNOZclhvOYaLI/tM1ef6MYCUuro/HSCBtKl4IQq
         8SQA==
X-Forwarded-Encrypted: i=1; AHgh+Rod5U0tI2rsbTDP8G0gWfT5Ah/s3Nt7mgLIeJomFwxdQqMU8UTheqyOWXbUmo9tCI/gEh3vz9VsLGhUN6XAUw==@lists.infradead.org
X-Gm-Message-State: AFuF++l6rybMBLsXhqCGSM2PMSVotNLCzs4hhqtEiPfSx/SNE79XHG1h
	vq1Htt4+VWcxpIHia+TQrbQ78RMc3vOGaYUVHnBH/dUVq4S257qONIp+
X-Gm-Gg: AR+sD10EB2AyJcFIzXeJg+JO2hpR9tTBNSh0bqSXgOYbnFUqcQHxTuVCT/gMqd3PbF8
	ycx2+DegH1cKmxRGjgIvFpi7FPv3rz/T9lHUYzo5UROXI11iNN+aXPjrqH/fIiRFEYoTkFG06wn
	RZ/cULBAmif0bXw9xegQMANupA4zTQq/RBEtsLGP7ulUAPL8dyOZfIwSRHzKZR3yBmGeJuyNDZw
	8bCbSzTwKQPUIV3jRje/3Jdpok+oaw5TjPemJWotExGN6b2Rgf6H5SFbmPd2b1hJMRBAOeGhEqV
	KACPY4l6/NsoRYwGwM1V+UHtfCzfMA+RnKkpMqhl0+UWwgcAaVcvfFxQgnDeLTfzLBCmGnebW2B
	L48Pj+6ew12T0Vn+kaXhGg4QLRiM0uzZsFPFXiwhScRXFkjX0lgfY0gm5SbMyA/5OjtyDKv7PR5
	lSUyPzfPABcSNCSDKTYX6vuuycjDivYus8/8yqH6vaddDokfAJQ7uXD1HZsrlc
X-Received: by 2002:a05:6a00:3ccd:b0:847:770f:da4c with SMTP id d2e1a72fcca58-8562bf5a609mr51668111b3a.16.1788274959110;
        Tue, 01 Sep 2026 08:02:39 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-85dc0716846sm27914b3a.45.2026.09.01.08.02.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2026 08:02:37 -0700 (PDT)
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
Subject: [PATCH net-next v3 04/10] dt-bindings: net: pcs: add rockchip,rk3568-xpcs support
Date: Tue,  1 Sep 2026 23:01:04 +0800
Message-ID: <20260901150111.141037-5-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260901150111.141037-1-coiaprant@gmail.com>
References: <20260901150111.141037-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_080240_006762_87DECAFB 
X-CRM114-Status: GOOD (  14.26  )
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
