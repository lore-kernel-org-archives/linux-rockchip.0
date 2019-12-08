From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 1/3] dt-bindings: gpu: mali-bifrost: Add Rockchip PX30
Date: Sun,  8 Dec 2019 15:55:06 +0100
Message-ID: <20191208145508.3124-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org
Cc: robh+dt@kernel.org, mark.rutland@arm.com, heiko@sntech.de, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
List-Id: linux-rockchip.vger.kernel.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

Define a compatible string for the Mali Bifrost GPU found in
Rockchip's PX30 SoCs.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
index 0c426e371e71..4ea6a8789699 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
@@ -18,6 +18,7 @@ properties:
       - enum:
           - amlogic,meson-g12a-mali
           - realtek,rtd1619-mali
+          - rockchip,px30-mali
       - const: arm,mali-bifrost # Mali Bifrost GPU model/revision is fully discoverable
 
   reg:
-- 
2.24.0
