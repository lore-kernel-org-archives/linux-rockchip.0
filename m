From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1] dt-bindings: mmc: synopsys-dw-mshc: fix clock-freq-min-max in example
Date: Sat,  7 Mar 2020 17:05:56 +0100
Message-ID: <20200307160556.16226-1-jbx6244@gmail.com>
Return-path: <linux-mmc-owner@vger.kernel.org>
Sender: linux-mmc-owner@vger.kernel.org
To: ulf.hansson@linaro.org
Cc: heiko@sntech.de, robh+dt@kernel.org, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

A test with the command below does not detect all errors
in combination with 'additionalProperties: false' and
allOf:
  - $ref: "synopsys-dw-mshc-common.yaml#"
allOf:
  - $ref: "mmc-controller.yaml#"

'additionalProperties' applies to all properties that are not
accounted-for by 'properties' or 'patternProperties' in
the immediate schema.

First when we combine synopsys-dw-mshc.yaml,
synopsys-dw-mshc-common.yaml and mmc-controller.yaml it gives
this error:

Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.example.dt.yaml:
mmc@12200000: 'clock-freq-min-max' does not match any of the regexes:
'^.*@[0-9]+$', '^clk-phase-(legacy|sd-hs|mmc-(hs|hs[24]00|ddr52)|
uhs-(sdr(12|25|50|104)|ddr50))$', 'pinctrl-[0-9]+'

'clock-freq-min-max' is deprecated, so replace it by 'max-frequency'.

make ARCH=arm dt_binding_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
index 05f9f36dc..dd2c1b147 100644
--- a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
+++ b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
@@ -62,7 +62,7 @@ examples:
       cap-mmc-highspeed;
       cap-sd-highspeed;
       card-detect-delay = <200>;
-      clock-freq-min-max = <400000 200000000>;
+      max-frequency = <200000000>;
       clock-frequency = <400000000>;
       data-addr = <0x200>;
       fifo-depth = <0x80>;
-- 
2.11.0
