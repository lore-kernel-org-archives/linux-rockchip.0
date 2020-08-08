From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v3 2/3] dt-bindings: arm: rockchip: add Zkmagic A95X Z2 description
Date: Sat,  8 Aug 2020 18:06:17 +0200
Message-ID: <20200808160618.15445-3-jbx6244@gmail.com>
References: <20200808160618.15445-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200808160618.15445-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: robh+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Add Zkmagic A95X Z2 description for a board with rk3318 processor.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index db2e35796..7d1961bbd 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -555,4 +555,9 @@ properties:
         items:
           - const: tronsmart,orion-r68-meta
           - const: rockchip,rk3368
+
+      - description: Zkmagic A95X Z2
+        items:
+          - const: zkmagic,a95x-z2
+          - const: rockchip,rk3318
 ...
-- 
2.11.0
