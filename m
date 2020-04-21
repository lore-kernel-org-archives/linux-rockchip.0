From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH] dt-bindings: media: rockchip-vpu: fix interrupt-names
Date: Tue, 21 Apr 2020 17:51:31 +0200
Message-ID: <20200421155131.5839-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: robh+dt@kernel.org, mchehab@kernel.org, ezequiel@collabora.com, linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

A test with the command below gives for example this error:

arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml: video-codec@ff350000:
interrupts: [[0, 9, 4]] is too short
arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml: video-codec@ff350000:
interrupt-names: ['vdpu'] is too short
arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml: video-codec@ff350000:
interrupt-names:0: 'vepu' was expected

With the conversion of rockchip-vpu.txt to yaml the correct
'interrupt-names' for rk3328 was not included, so add them now.
Also add 'minItems' to 'interrupts'for the completeness.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-vpu.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/media/rockchip-vpu.yaml | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
index d7a42e6f9..27df18ad6 100644
--- a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
@@ -24,12 +24,15 @@ properties:
     maxItems: 1
 
   interrupts:
+    minItems: 1
     maxItems: 2
 
   interrupt-names:
-    items:
-      - const: vepu
+    oneOf:
       - const: vdpu
+      - items:
+        - const: vepu
+        - const: vdpu
 
   clocks:
     maxItems: 2
-- 
2.11.0
