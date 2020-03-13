From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 3/3] dt-bindings: iio: adc: rockchip-saradc: add description for px30
Date: Fri, 13 Mar 2020 14:29:26 +0100
Message-ID: <20200313132926.10543-3-jbx6244@gmail.com>
References: <20200313132926.10543-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200313132926.10543-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: jic23@kernel.org
Cc: knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net, heiko@sntech.de, robh+dt@kernel.org, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

The description below is already in use for px30.dtsi,
but was somehow never added to a document, so add
"rockchip,px30-saradc", "rockchip,rk3399-saradc"
for saradc nodes on a px30 platform to rockchip-saradc.yaml.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
index d3b78604b..5f398d882 100644
--- a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
@@ -17,6 +17,7 @@ properties:
       - const: rockchip,rk3399-saradc
       - items:
           - enum:
+            - rockchip,px30-saradc
             - rockchip,rk3308-saradc
             - rockchip,rk3328-saradc
             - rockchip,rv1108-saradc
-- 
2.11.0
