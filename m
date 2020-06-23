From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Subject: [PATCH 2/2] dt-bindings: sound: add missing clock description of
 rk3328 DT schema
Date: Tue, 23 Jun 2020 21:47:34 +0900
Message-ID: <20200623124734.1736470-2-katsuhiro@katsuster.net>
References: <20200623124734.1736470-1-katsuhiro@katsuster.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <alsa-devel-bounces@alsa-project.org>
In-Reply-To: <20200623124734.1736470-1-katsuhiro@katsuster.net>
List-Unsubscribe: <https://mailman.alsa-project.org/mailman/options/alsa-devel>,
 <mailto:alsa-devel-request@alsa-project.org?subject=unsubscribe>
List-Archive: <http://mailman.alsa-project.org/pipermail/alsa-devel/>
List-Post: <mailto:alsa-devel@alsa-project.org>
List-Help: <mailto:alsa-devel-request@alsa-project.org?subject=help>
List-Subscribe: <https://mailman.alsa-project.org/mailman/listinfo/alsa-devel>,
 <mailto:alsa-devel-request@alsa-project.org?subject=subscribe>
Errors-To: alsa-devel-bounces@alsa-project.org
Sender: "Alsa-devel" <alsa-devel-bounces@alsa-project.org>
To: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Cc: Katsuhiro Suzuki <katsuhiro@katsuster.net>, linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org, Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

This patch adds description about "mclk" clock and fixes some errors
which are dt_binding_check reported.

Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
---
 .../bindings/sound/rockchip,rk3328-codec.yaml     | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/rockchip,rk3328-codec.yaml b/Documentation/devicetree/bindings/sound/rockchip,rk3328-codec.yaml
index 08a74e28e483..525b48c2f5de 100644
--- a/Documentation/devicetree/bindings/sound/rockchip,rk3328-codec.yaml
+++ b/Documentation/devicetree/bindings/sound/rockchip,rk3328-codec.yaml
@@ -19,10 +19,12 @@ properties:
   clocks:
     items:
       - description: clock for audio codec
+      - description: clock for I2S master clock
 
   clock-names:
     items:
       - const: pclk
+      - const: mclk
 
   rockchip,grf:
     $ref: /schemas/types.yaml#/definitions/phandle
@@ -41,21 +43,28 @@ properties:
       GPIO specifier for external line driver control (typically the
       dedicated GPIO_MUTE pin)
 
+  "#sound-dai-cells":
+    const: 0
+
 required:
   - compatible
   - reg
   - clocks
   - clock-names
   - rockchip,grf
+  - "#sound-dai-cells"
 
 examples:
   - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/clock/rk3328-cru.h>
     codec: codec@ff410000 {
       compatible = "rockchip,rk3328-codec";
       reg = <0xff410000 0x1000>;
-      clocks = <&cru PCLK_ACODEC>;
-      clock-names = "pclk";
+      clocks = <&cru PCLK_ACODECPHY>, <&cru SCLK_I2S1>;
+      clock-names = "pclk", "mclk";
       rockchip,grf = <&grf>;
       mute-gpios = <&grf_gpio 0 GPIO_ACTIVE_LOW>;
-      spk-depop-time-ms = 100;
+      spk-depop-time-ms = <100>;
+      #sound-dai-cells = <0>;
     };
-- 
2.27.0
