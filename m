From: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH v7 3/5] media: dt-bindings: rockchip: Document RK3399 Video Decoder bindings
Date: Sun, 29 Mar 2020 22:46:14 -0300
Message-ID: <20200330014616.10621-4-ezequiel@collabora.com>
References: <20200330014616.10621-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200330014616.10621-1-ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Nicolas Dufresne <nicolas-dDhyB4GVkw9AFePFGvp55w@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Hans Verkuil <hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>, Alexandre Courbot <acourbot-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Jeffrey Kardatzke <jkardatzke-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

From: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>

Document the Rockchip RK3399 Video Decoder bindings.

Signed-off-by: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Reviewed-by: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Signed-off-by: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
---
 .../bindings/media/rockchip,vdec.yaml         | 73 +++++++++++++++++++
 1 file changed, 73 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/rockchip,vdec.yaml

diff --git a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
new file mode 100644
index 000000000000..0c68cdad9a31
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
@@ -0,0 +1,73 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/rockchip,vdec.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip Video Decoder (VDec) Device Tree Bindings
+
+maintainers:
+  - Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
+
+description: |-
+  The Rockchip rk3399 has a stateless Video Decoder that can decodes H.264,
+  HEVC an VP9 streams.
+
+properties:
+  compatible:
+    const: rockchip,rk3399-vdec
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: The Video Decoder AXI interface clock
+      - description: The Video Decoder AHB interface clock
+      - description: The Video Decoded CABAC clock
+      - description: The Video Decoder core clock
+
+  clock-names:
+    items:
+      - const: axi
+      - const: ahb
+      - const: cabac
+      - const: core
+
+  power-domains:
+    maxItems: 1
+
+  iommus:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - power-domains
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/rk3399-cru.h>
+    #include <dt-bindings/power/rk3399-power.h>
+
+    vdec: video-codec@ff660000 {
+        compatible = "rockchip,rk3399-vdec";
+        reg = <0x0 0xff660000 0x0 0x400>;
+        interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH 0>;
+        clocks = <&cru ACLK_VDU>, <&cru HCLK_VDU>,
+                 <&cru SCLK_VDU_CA>, <&cru SCLK_VDU_CORE>;
+        clock-names = "axi", "ahb", "cabac", "core";
+        power-domains = <&power RK3399_PD_VDU>;
+        iommus = <&vdec_mmu>;
+    };
+
+...
-- 
2.26.0.rc2
