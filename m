From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add libretech for roc-pc binding
Date: Wed, 20 Nov 2019 00:28:16 +0530
Message-ID: <20191119185817.11216-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Levin Du <djw@t-chip.com.cn>, Akash Gajjar <akash@openedev.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Cc: Da Xue <da@lessconfused.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

Though the ROC-PC is manufactured by firefly, it is co-designed
by libretch like other Libretech computer boards from allwinner,
amlogic does.

It is always meaningful to keep maintain those vendors who are
part of design participation, so add libretech roc-pc compatible
with existing binding.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index f7470ed1e17d..45728fd22af8 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -100,6 +100,7 @@ properties:
       - description: Firefly ROC-RK3399-PC
         items:
           - enum:
+              - libretech,roc-rk3399-pc
               - firefly,roc-rk3399-pc
               - firefly,roc-rk3399-pc-mezzanine
           - const: rockchip,rk3399
-- 
2.18.0.321.gffc6fa0e3
