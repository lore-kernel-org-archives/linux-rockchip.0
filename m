From: Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Applied "ASoC: convert rockchip spdif bindings to yaml" to the asoc tree
Date: Tue, 14 Apr 2020 15:46:37 +0100
Message-ID: <applied-20200404115225.4314-1-jbx6244@gmail.com>
References: <20200404115225.4314-1-jbx6244@gmail.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200404115225.4314-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: alsa-devel-K7yf7f+aM1XWsZ/bQMPhNw@public.gmane.org, broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, lgirdwood-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.orgMark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

The patch

   ASoC: convert rockchip spdif bindings to yaml

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git 

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From 4d1a015a203c0249e3332ea217a38ec978118daa Mon Sep 17 00:00:00 2001
From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date: Sat, 4 Apr 2020 13:52:23 +0200
Subject: [PATCH] ASoC: convert rockchip spdif bindings to yaml

Current dts files with 'spdif' nodes are manually verified.
In order to automate this process rockchip-spdif.txt
has to be converted to yaml.

Also rk3188.dtsi, rk3288.dtsi use an extra fallback string,
so change this in the documentation.

Changed:
"rockchip,rk3188-spdif", "rockchip,rk3066-spdif"
"rockchip,rk3288-spdif", "rockchip,rk3066-spdif"

Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Reviewed-by: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Link: https://lore.kernel.org/r/20200404115225.4314-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
Signed-off-by: Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
---
 .../bindings/sound/rockchip-spdif.txt         | 45 ---------
 .../bindings/sound/rockchip-spdif.yaml        | 93 +++++++++++++++++++
 2 files changed, 93 insertions(+), 45 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/rockchip-spdif.txt
 create mode 100644 Documentation/devicetree/bindings/sound/rockchip-spdif.yaml

diff --git a/Documentation/devicetree/bindings/sound/rockchip-spdif.txt b/Documentation/devicetree/bindings/sound/rockchip-spdif.txt
deleted file mode 100644
index ec20c1271e92..000000000000
--- a/Documentation/devicetree/bindings/sound/rockchip-spdif.txt
+++ /dev/null
@@ -1,45 +0,0 @@
-* Rockchip SPDIF transceiver
-
-The S/PDIF audio block is a stereo transceiver that allows the
-processor to receive and transmit digital audio via an coaxial cable or
-a fibre cable.
-
-Required properties:
-
-- compatible: should be one of the following:
-   - "rockchip,rk3066-spdif"
-   - "rockchip,rk3188-spdif"
-   - "rockchip,rk3228-spdif"
-   - "rockchip,rk3288-spdif"
-   - "rockchip,rk3328-spdif"
-   - "rockchip,rk3366-spdif"
-   - "rockchip,rk3368-spdif"
-   - "rockchip,rk3399-spdif"
-- reg: physical base address of the controller and length of memory mapped
-  region.
-- interrupts: should contain the SPDIF interrupt.
-- dmas: DMA specifiers for tx dma. See the DMA client binding,
-  Documentation/devicetree/bindings/dma/dma.txt
-- dma-names: should be "tx"
-- clocks: a list of phandle + clock-specifier pairs, one for each entry
-  in clock-names.
-- clock-names: should contain following:
-   - "hclk": clock for SPDIF controller
-   - "mclk" : clock for SPDIF bus
-
-Required properties on RK3288:
-  - rockchip,grf: the phandle of the syscon node for the general register
-                   file (GRF)
-
-Example for the rk3188 SPDIF controller:
-
-spdif: spdif@1011e000 {
-	compatible = "rockchip,rk3188-spdif", "rockchip,rk3066-spdif";
-	reg = <0x1011e000 0x2000>;
-	interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
-	dmas = <&dmac1_s 8>;
-	dma-names = "tx";
-	clock-names = "hclk", "mclk";
-	clocks = <&cru HCLK_SPDIF>, <&cru SCLK_SPDIF>;
-	#sound-dai-cells = <0>;
-};
diff --git a/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml b/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
new file mode 100644
index 000000000000..bfd44fd8ecbc
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
@@ -0,0 +1,93 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/rockchip-spdif.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip SPDIF transceiver
+
+description:
+  The S/PDIF audio block is a stereo transceiver that allows the
+  processor to receive and transmit digital audio via a coaxial or
+  fibre cable.
+
+maintainers:
+  - Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
+
+properties:
+  compatible:
+    oneOf:
+      - const: rockchip,rk3066-spdif
+      - const: rockchip,rk3228-spdif
+      - const: rockchip,rk3328-spdif
+      - const: rockchip,rk3366-spdif
+      - const: rockchip,rk3368-spdif
+      - const: rockchip,rk3399-spdif
+      - items:
+          - enum:
+            - rockchip,rk3188-spdif
+            - rockchip,rk3288-spdif
+          - const: rockchip,rk3066-spdif
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: clock for SPDIF bus
+      - description: clock for SPDIF controller
+
+  clock-names:
+    items:
+      - const: mclk
+      - const: hclk
+
+  dmas:
+    maxItems: 1
+
+  dma-names:
+    const: tx
+
+  rockchip,grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      The phandle of the syscon node for the GRF register.
+      Required property on RK3288.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - dmas
+  - dma-names
+
+if:
+  properties:
+    compatible:
+      contains:
+        const: rockchip,rk3288-spdif
+
+then:
+  required:
+    - rockchip,grf
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3188-cru.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    spdif: spdif@1011e000 {
+      compatible = "rockchip,rk3188-spdif", "rockchip,rk3066-spdif";
+      reg = <0x1011e000 0x2000>;
+      interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&cru SCLK_SPDIF>, <&cru HCLK_SPDIF>;
+      clock-names = "mclk", "hclk";
+      dmas = <&dmac1_s 8>;
+      dma-names = "tx";
+    };
-- 
2.20.1
