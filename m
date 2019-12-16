From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH RESEND 1/2] dt-bindings: phy: drop #clock-cells from rockchip,px30-dsi-dphy
Date: Mon, 16 Dec 2019 13:24:47 +0100
Message-ID: <20191216122448.27867-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: kishon@ti.com
Cc: robh+dt@kernel.org, mark.rutland@arm.com, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, heiko@sntech.de, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
List-Id: linux-rockchip.vger.kernel.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

Further review of the dsi components for the px30 revealed that the
phy shouldn't expose the pll as clock but instead handle settings
via phy parameters.

As the phy binding is new and not used anywhere yet, just drop them
so they don't get used.

Fixes: 3817c7961179 ("dt-bindings: phy: add yaml binding for rockchip,px30-dsi-dphy")
Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
Hi Kishon,

maybe suitable as a fix for 5.5-rc?

Thanks
Heiko

 .../devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml      | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
index bb0da87bcd84..476c56a1dc8c 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
@@ -13,9 +13,6 @@ properties:
   "#phy-cells":
     const: 0
 
-  "#clock-cells":
-    const: 0
-
   compatible:
     enum:
       - rockchip,px30-dsi-dphy
@@ -49,7 +46,6 @@ properties:
 
 required:
   - "#phy-cells"
-  - "#clock-cells"
   - compatible
   - reg
   - clocks
@@ -66,7 +62,6 @@ examples:
         reg = <0x0 0xff2e0000 0x0 0x10000>;
         clocks = <&pmucru 13>, <&cru 12>;
         clock-names = "ref", "pclk";
-        #clock-cells = <0>;
         resets = <&cru 12>;
         reset-names = "apb";
         #phy-cells = <0>;
-- 
2.23.0
