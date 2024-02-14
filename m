Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E69EC48BED
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Feb 2024 11:47:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XRRSC/dn5c9GP3ycNzBTIdIUlKzqpHl8Nt4KMlVa9D0=; b=DnS0+XsKlWocIF
	dkbgBWsC+tdGBDgTyC+BRN4MxmYzSklw7EfnM98LP9LO2DBjvsGg4lLAXJMV04N9YtDgJs8Ljl3Xn
	y75oyHxlUHSjV7mLSoZpe5no6b0naRnusMoSooRXjqfyxkbuxp3bffizEzLFVnXw6VddC0DO+HKHL
	j8gS/TsHfWIA9Qeu9N/C9Deeo0x9VRWzaJYRwrm6l0JPhaQukzuPrj+733tYkhrvOBha8RdNOOMUX
	Mk9BSn3ndX3t2WQdT9/UfRjoq9CD1RbbinO3Z4qtzSJvsji5BQx9tdpQtQYvKSYh4B3e+oPFY0txG
	SPyi3C8nMMVpIakuUmMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raDj4-0000000Cix7-1aci;
	Wed, 14 Feb 2024 11:46:54 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raDir-0000000Ciox-2qoe;
	Wed, 14 Feb 2024 11:46:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1707911199;
	bh=L1Xv0upbYC1NK7GU2DwkbRMikhm9rpTORFzsKNFZn/M=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=gIoofpF9d/n7cxls2/M/6yTKRz9FD7GPyY2q7V+P96rziAExt+wGu6uKRnJ9zPGTT
	 Ubb0HXR9I6YH2Wg7WRDUawLcmToqviGXswwtJlu9LshceVzIwUMa4sizQWKOYaXxqy
	 S3GI/DMBAxPZe/lW4bsiRtPKUt4ymyJ4/zsWUTnZ3iIzvCQ+vxaaVLed3TqIjcfJrT
	 pC0O36kJbdlaejMoTK7wbie9P1MGtZuPHT1HLoeAdxW8rgUmQroVk7siair8IHlFJr
	 XSCNj/2fc97l8Xej1dRncmZ77+fIJh8YmZRzFeXjPqFQSK4DPewNVugswejXwptxBI
	 yk8SoHBlHw8uQ==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id DF80F378207B;
	Wed, 14 Feb 2024 11:46:38 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Wed, 14 Feb 2024 13:45:36 +0200
Subject: [PATCH v4 1/2] dt-bindings: phy: Add Rockchip HDMI/eDP Combo PHY
 schema
MIME-Version: 1.0
Message-Id: <20240214-phy-hdptx-v4-1-e7974f46c1a7@collabora.com>
References: <20240214-phy-hdptx-v4-0-e7974f46c1a7@collabora.com>
In-Reply-To: <20240214-phy-hdptx-v4-0-e7974f46c1a7@collabora.com>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Johan Jonker <jbx6244@gmail.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Andy Yan <andy.yan@rock-chips.com>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Algea Cao <algea.cao@rock-chips.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, kernel@collabora.com, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13-dev-a684c
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240214_034641_903215_1F664B67 
X-CRM114-Status: GOOD (  11.31  )
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

Add dt-binding schema for the HDMI/eDP Transmitter Combo PHY found on
Rockchip RK3588 SoC.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 .../bindings/phy/rockchip,rk3588-hdptx-phy.yaml    | 91 ++++++++++++++++++++++
 1 file changed, 91 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,rk3588-hdptx-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,rk3588-hdptx-phy.yaml
new file mode 100644
index 000000000000..54e822c715f3
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/rockchip,rk3588-hdptx-phy.yaml
@@ -0,0 +1,91 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/rockchip,rk3588-hdptx-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip SoC HDMI/eDP Transmitter Combo PHY
+
+maintainers:
+  - Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3588-hdptx-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Reference clock
+      - description: APB clock
+
+  clock-names:
+    items:
+      - const: ref
+      - const: apb
+
+  "#phy-cells":
+    const: 0
+
+  resets:
+    items:
+      - description: PHY reset line
+      - description: APB reset line
+      - description: INIT reset line
+      - description: CMN reset line
+      - description: LANE reset line
+      - description: ROPLL reset line
+      - description: LCPLL reset line
+
+  reset-names:
+    items:
+      - const: phy
+      - const: apb
+      - const: init
+      - const: cmn
+      - const: lane
+      - const: ropll
+      - const: lcpll
+
+  rockchip,grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: Some PHY related data is accessed through GRF regs.
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - "#phy-cells"
+  - resets
+  - reset-names
+  - rockchip,grf
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rockchip,rk3588-cru.h>
+    #include <dt-bindings/reset/rockchip,rk3588-cru.h>
+
+    soc {
+      #address-cells = <2>;
+      #size-cells = <2>;
+
+      phy@fed60000 {
+        compatible = "rockchip,rk3588-hdptx-phy";
+        reg = <0x0 0xfed60000 0x0 0x2000>;
+        clocks = <&cru CLK_USB2PHY_HDPTXRXPHY_REF>, <&cru PCLK_HDPTX0>;
+        clock-names = "ref", "apb";
+        #phy-cells = <0>;
+        resets = <&cru SRST_HDPTX0>, <&cru SRST_P_HDPTX0>,
+                 <&cru SRST_HDPTX0_INIT>, <&cru SRST_HDPTX0_CMN>,
+                 <&cru SRST_HDPTX0_LANE>, <&cru SRST_HDPTX0_ROPLL>,
+                 <&cru SRST_HDPTX0_LCPLL>;
+        reset-names = "phy", "apb", "init", "cmn", "lane", "ropll", "lcpll";
+        rockchip,grf = <&hdptxphy_grf>;
+      };
+    };

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
