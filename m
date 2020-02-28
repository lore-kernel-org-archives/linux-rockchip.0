From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH 3/4] dt-bindings: arm: fix Rockchip rk3399-evb bindings
Date: Fri, 28 Feb 2020 07:14:35 +0100
Message-ID: <20200228061436.13506-3-jbx6244@gmail.com>
References: <20200228061436.13506-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200228061436.13506-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: robh+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

A test with the command below gives this error:

arch/arm64/boot/dts/rockchip/rk3399-evb.dt.yaml: /: compatible:
['rockchip,rk3399-evb', 'rockchip,rk3399', 'google,rk3399evb-rev2']
is not valid under any of the given schemas

Fix this error by adding 'google,rk3399evb-rev2' to the compatible
property in rockchip.yaml

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/arm/rockchip.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index d303790f5..6c6e8273e 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -509,6 +509,7 @@ properties:
         items:
           - const: rockchip,rk3399-evb
           - const: rockchip,rk3399
+          - const: google,rk3399evb-rev2
 
       - description: Rockchip RK3399 Sapphire standalone
         items:
-- 
2.11.0
