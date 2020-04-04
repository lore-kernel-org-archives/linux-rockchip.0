From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v3 3/3] dt-bindings: sound: rockchip-spdif: add power-domains property
Date: Sat,  4 Apr 2020 13:52:25 +0200
Message-ID: <20200404115225.4314-3-jbx6244@gmail.com>
References: <20200404115225.4314-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200404115225.4314-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: lgirdwood@gmail.com
Cc: broonie@kernel.org, heiko@sntech.de, robh+dt@kernel.org, alsa-devel@alsa-project.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

In the old txt situation we add/describe only properties that are used
by the driver/hardware itself. With yaml it also filters things in a
node that are used by other drivers like 'power-domains' for rk3399,
so add it to 'rockchip-spdif.yaml'.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
Changes v3:
  Add reviewed by
---
 Documentation/devicetree/bindings/sound/rockchip-spdif.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml b/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
index f381dbbf5..c46715265 100644
--- a/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
+++ b/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
@@ -51,6 +51,9 @@ properties:
   dma-names:
     const: tx
 
+  power-domains:
+    maxItems: 1
+
   rockchip,grf:
     $ref: /schemas/types.yaml#/definitions/phandle
     description:
-- 
2.11.0
