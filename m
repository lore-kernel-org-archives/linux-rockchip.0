Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86678C47DDB
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Jan 2024 19:38:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XrPk8sI+J8u0ILQBwZOZsAMqnacV2THiBjYz6kwVMOg=; b=JL/1RKtnIBJqhC
	Yb0MAHK553bZVqQZUX9usVfrPAtngI1S7TQIclSHK6UJJBHAHICQPNur1D6PhaC7g/a+mVoroHt4p
	VrKXbAJsBZhDSyNZU4vaiShvd1dC8ktT97QfXvWF5SAz+LetOlyi9j1woE4S5SnP5d6Qfrf5kaLA2
	feWLan8lAYYbZk5KYkZo4pWKIV/oX9znT/diqUL0OYiaHqkeYvIbqE6CuVnlEqx6NJVuHSgCPI8mN
	VoxGKj25uipboL0Wtg8BuQEvOgKUUk32Gu28VrRr+uG0otkE7Q2Vn7rIERqsz985d0a2CqPhyfb+L
	J9NYpgzZ/be3AEO7X4/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQuhB-006UOq-0r;
	Fri, 19 Jan 2024 19:38:29 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQugx-006UJG-1q;
	Fri, 19 Jan 2024 19:38:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1705693091;
	bh=UiKN/wzt2VTmVDCklnrDfyuyegL48RVt7U2udrBOTgo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Y7esV1ww9FoQwrw6eE23ZrECWdlVd6hxgSo5ucA047ZlPDkVwLqejHHeT/MkkALxx
	 JeC6QdY5IIQg+2DfATdq0jZ7p9T4oaXCq8F6CAC6TD/zXAiYOmu6O+XJwWOeBgm5R+
	 YnEj/qOUV79GykMJBV/2i2msA9yRplfM2Pszm3w1XyyF7w13Tk+3e+QtMdTyWX1RNb
	 zPnM0Nk+hVC6q9VaRX7ZnYoNfSJf0kBgdVuyKfouAgbA9dRepyNCW2Ml0FMkfkXw5/
	 oyUibKwmOWkxjJ5zlzYJM+uKvfbEMjdRY9nkFc6ufBNaC34OzFWNoRL8iwRwjLBAUy
	 nRfGe8JwfyJww==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 205CF3782088;
	Fri, 19 Jan 2024 19:38:11 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Jonker <jbx6244@gmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Algea Cao <algea.cao@rock-chips.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH 2/3] dt-bindings: phy: Add Rockchip HDMI/DP Combo PHY schema
Date: Fri, 19 Jan 2024 21:38:02 +0200
Message-ID: <20240119193806.1030214-3-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240119193806.1030214-1-cristian.ciocaltea@collabora.com>
References: <20240119193806.1030214-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_113815_777846_301A864F 
X-CRM114-Status: GOOD (  12.94  )
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

Add dt-binding schema for the Rockchip HDMI/DP Transmitter Combo PHY
found on RK3588 SoC.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 .../phy/rockchip,rk3588-hdptx-phy.yaml        | 96 +++++++++++++++++++
 1 file changed, 96 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/rockchip,rk3588-hdptx-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/rockchip,rk3588-hdptx-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,rk3588-hdptx-phy.yaml
new file mode 100644
index 000000000000..dd357994ba1b
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/rockchip,rk3588-hdptx-phy.yaml
@@ -0,0 +1,96 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/rockchip,rk3588-hdptx-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip SoC HDMI/DP Transmitter Combo PHY
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
+      hdptxphy_grf: syscon@fd5e0000 {
+        compatible = "rockchip,rk3588-hdptxphy-grf", "syscon";
+        reg = <0x0 0xfd5e0000 0x0 0x100>;
+      };
+
+      hdptxphy: phy@fed60000 {
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
