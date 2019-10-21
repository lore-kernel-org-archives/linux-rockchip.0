From: Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v2 3/4] dt-bindings: Add doc for rk3308-evb
Date: Mon, 21 Oct 2019 16:46:42 +0800
Message-ID: <20191021084642.28562-1-andy.yan@rock-chips.com>
References: <20191021084437.28279-1-andy.yan@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191021084437.28279-1-andy.yan@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: kever.yang@rock-chips.com, robh+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Add compatible for RK3308 Evaluation board

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

Changes in v2:
- Split with the dts file

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index c82c5e57d44c..b680c4b8b2c9 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -447,6 +447,11 @@ properties:
           - const: rockchip,r88
           - const: rockchip,rk3368
 
+      - description: Rockchip RK3308 Evaluation board
+        items:
+          - const: rockchip,rk3308-evb
+          - const: rockchip,rk3308
+
       - description: Rockchip RK3228 Evaluation board
         items:
           - const: rockchip,rk3228-evb
-- 
2.17.1
