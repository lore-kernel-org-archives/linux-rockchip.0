From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH] dt-bindings: gpu: add power-domains #cooling-cells to arm,mali-bifrost.yaml
Date: Sat, 25 Apr 2020 17:40:37 +0200
Message-ID: <20200425154037.21083-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: robh+dt@kernel.org, airlied@linux.ie, daniel@ffwll.ch, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

A test with the command below gives this error:

arch/arm64/boot/dts/rockchip/px30-evb.dt.yaml: gpu@ff400000:
'#cooling-cells', 'power-domains'
do not match any of the regexes: 'pinctrl-[0-9]+'

With the conversion to yaml it also filters things
in a node that are used by other drivers like
'#cooling-cells' and 'power-domains'
for Rockchip px30 gpu nodes,
so add them to 'arm,mali-bifrost.yaml'.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/gpu/
arm,mali-bifrost.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
index 0b229a7d4..b1844b9c2 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
@@ -43,9 +43,15 @@ properties:
 
   operating-points-v2: true
 
+  power-domains:
+    maxItems: 1
+
   resets:
     maxItems: 2
 
+  "#cooling-cells":
+    const: 2
+
 required:
   - compatible
   - reg
-- 
2.11.0
