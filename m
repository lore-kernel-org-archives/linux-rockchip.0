Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86E23CFB449
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 16:31:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wpsRROAKE9h+s0xFr2nGvrWMdU+LjHrwHgdS1fruqdQ=; b=T/HQJewy1FP+Ly
	ox55cpNClwMrWI86g0qplarYAIIEhFUegn8Ipzliy8Ygr63E44K3AoKCVKu0JJWGfNYg62oxd1OID
	IYqhs1mAqSwHdLUH5LWSfI+QIRjQYbBW7B7+rHVkqWIusgh+ii4z+utwy4MD+nxm4spidXH3HzcxK
	p+ZYSPrPZA5LE/HqQF5G4ATSp5K8UpFUz7He4xlHDKKWKb1yNf9Quaj7KBW48yupYQOZF9HolZlMo
	YXPqm9M2y97MikdDtrtrnUORoahs++b9P59OXauJYrwB2RwihsD1xpKdRUvq3SLQYdcD67RA7PbCp
	ZFInu/vDMJsB/3fRcsPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxqdd-00000003ANG-0HsH;
	Mon, 07 Oct 2024 16:31:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxqaA-000000039cp-2t58;
	Mon, 07 Oct 2024 16:27:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=qy8O/TmsmzDYewUZ3qCB4nBDlcLj83mGmeo1Cj46QWA=; b=Zovv+n4pff8MEXXuktE+AXOoNe
	6lNCbcBspcLrCRQWmyeMy4K3rmclXxRqpwFlmVLIoSotLC4PGQBdsp7hz+VuhHkpXTM6akvS10Coq
	ld9QjxDwWYoxJcxwPsRt+NeMea6RaUHQxkna15fTsSdDVtj/wdHA1ghkFd6IjSTW+O7GTk4ZnIRKA
	OGbZalQ/+jYzJ3PFn0gpTq4DFT9tJsV/W0UJibhPOC2G+NUBSKEpC58m03GA4krv85oAXrU/6798o
	EK+5lKSzSKNpRVZOF9kV1du0znoXJpuMdPnT32NqLSdWzzmN9B+scOtficsXXR+pqOjLpuOs+1RuA
	HPhEYKUw==;
Received: from i5e860d18.versanet.de ([94.134.13.24] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sxqa9-0002o8-4T; Mon, 07 Oct 2024 18:27:37 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: vkoul@kernel.org,
	kishon@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: phy: rk3228-hdmi-phy: convert to yaml
Date: Mon,  7 Oct 2024 18:27:32 +0200
Message-ID: <20241007162732.2450168-1-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_092738_751235_EB93D293 
X-CRM114-Status: GOOD (  17.91  )
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

Convert the binding to yaml and rename it according to its first
compatible instead of the unspecific rockchip-inno-hdmi naming.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 .../bindings/phy/phy-rockchip-inno-hdmi.txt   | 43 --------
 .../phy/rockchip,rk3228-hdmi-phy.yaml         | 97 +++++++++++++++++++
 2 files changed, 97 insertions(+), 43 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-inno-hdmi.txt
 create mode 100644 Documentation/devicetree/bindings/phy/rockchip,rk3228-hdmi-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-hdmi.txt b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-hdmi.txt
deleted file mode 100644
index 710cccd5ee56..000000000000
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-hdmi.txt
+++ /dev/null
@@ -1,43 +0,0 @@
-ROCKCHIP HDMI PHY WITH INNO IP BLOCK
-
-Required properties:
- - compatible : should be one of the listed compatibles:
-	* "rockchip,rk3228-hdmi-phy",
-	* "rockchip,rk3328-hdmi-phy";
- - reg : Address and length of the hdmi phy control register set
- - clocks : phandle + clock specifier for the phy clocks
- - clock-names : string, clock name, must contain "sysclk" for system
-	  control and register configuration, "refoclk" for crystal-
-	  oscillator reference PLL clock input and "refpclk" for pclk-
-	  based refeference PLL clock input.
- - #clock-cells: should be 0.
- - clock-output-names : shall be the name for the output clock.
- - interrupts : phandle + interrupt specified for the hdmiphy interrupt
- - #phy-cells : must be 0. See ./phy-bindings.txt for details.
-
-Optional properties for rk3328-hdmi-phy:
- - nvmem-cells = phandle + nvmem specifier for the cpu-version efuse
- - nvmem-cell-names : "cpu-version" to read the chip version, required
-	  for adjustment to some frequency settings
-
-Example:
-	hdmi_phy: hdmi-phy@12030000 {
-		compatible = "rockchip,rk3228-hdmi-phy";
-		reg = <0x12030000 0x10000>;
-		#phy-cells = <0>;
-		clocks = <&cru PCLK_HDMI_PHY>, <&xin24m>, <&cru DCLK_HDMIPHY>;
-		clock-names = "sysclk", "refoclk", "refpclk";
-		#clock-cells = <0>;
-		clock-output-names = "hdmi_phy";
-		status = "disabled";
-	};
-
-Then the PHY can be used in other nodes such as:
-
-	hdmi: hdmi@200a0000 {
-		compatible = "rockchip,rk3228-dw-hdmi";
-		...
-		phys = <&hdmi_phy>;
-		phy-names = "hdmi";
-		...
-	};
diff --git a/Documentation/devicetree/bindings/phy/rockchip,rk3228-hdmi-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,rk3228-hdmi-phy.yaml
new file mode 100644
index 000000000000..ac15bf857ef9
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/rockchip,rk3228-hdmi-phy.yaml
@@ -0,0 +1,97 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/rockchip,rk3228-hdmi-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip HDMI PHY with Innosilicon IP block
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3228-hdmi-phy
+      - rockchip,rk3328-hdmi-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 3
+
+  clock-names:
+    items:
+      - const: sysclk
+      - const: refoclk
+      - const: refpclk
+
+  clock-output-names:
+    description:
+      The hdmiphy output clock name, that gets fed back to the CRU.
+
+  "#clock-cells":
+    const: 0
+
+  interrupts:
+    maxItems: 1
+
+  nvmem-cells:
+    maxItems: 1
+    description: A phandle + nvmem specifier for the cpu-version efuse
+      for adjustment to some frequency settings, depending on cpu-version
+
+  nvmem-cell-names:
+    items:
+      - const: cpu-version
+
+  '#phy-cells':
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - clock-output-names
+  - '#clock-cells'
+  - '#phy-cells'
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3228-hdmi-phy
+
+    then:
+      properties:
+        interrupts: false
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3328-hdmi-phy
+
+    then:
+      required:
+        - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+
+    #include <dt-bindings/clock/rk3228-cru.h>
+    hdmi_phy: phy@12030000 {
+      compatible = "rockchip,rk3228-hdmi-phy";
+      reg = <0x12030000 0x10000>;
+      #phy-cells = <0>;
+      clocks = <&cru PCLK_HDMI_PHY>, <&xin24m>, <&cru DCLK_HDMI_PHY>;
+      clock-names = "sysclk", "refoclk", "refpclk";
+      #clock-cells = <0>;
+
+      clock-output-names = "hdmi_phy";
+    };
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
