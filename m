From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2 3/3] dt-bindings: sound: rockchip-i2s: add power-domains property
Date: Tue, 24 Mar 2020 10:41:49 +0100
Message-ID: <20200324094149.6904-3-jbx6244@gmail.com>
References: <20200324094149.6904-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200324094149.6904-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: lgirdwood@gmail.com
Cc: broonie@kernel.org, heiko@sntech.de, robh+dt@kernel.org, alsa-devel@alsa-project.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

In the old txt situation we add/describe only properties that are used
by the driver/hardware itself. With yaml it also filters things in a
node that are used by other drivers like 'power-domains' for rk3399,
so add it to 'rockchip-i2s.yaml'.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/sound/rockchip-i2s.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
index 7cd0e278e..a3ba2186d 100644
--- a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
+++ b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
@@ -56,6 +56,9 @@ properties:
       - const: tx
       - const: rx
 
+  power-domains:
+    maxItems: 1
+
   rockchip,capture-channels:
     allOf:
       - $ref: /schemas/types.yaml#/definitions/uint32
-- 
2.11.0
