From: Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH 1/2] dt-bindings: Add doc for Firefly ROC-RK3308-CC board
Date: Wed, 30 Oct 2019 15:26:48 +0800
Message-ID: <20191030072648.29738-1-andy.yan@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: heiko@sntech.de, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, Andy Yan <andy.yan@rock-chips.com>, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Add compatible for Firefly ROC-RK3308-CC board.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index bf86e8237363..6b6c9d5611ce 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -77,6 +77,11 @@ properties:
           - const: firefly,firefly-rk3288-reload
           - const: rockchip,rk3288
 
+      - description: Firefly ROC-RK3308-CC
+        items:
+          - const: firefly, roc-rk3308-cc
+          - const: rockchip,rk3308
+
       - description: Firefly Firefly-RK3399
         items:
           - const: firefly,firefly-rk3399
-- 
2.17.1
