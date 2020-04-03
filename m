From: Helen Koike <helen.koike@collabora.com>
Subject: [PATCH v2 4/9] media: staging: dt-bindings: phy-rockchip-dphy-rx0: remove non-used reg property
Date: Fri,  3 Apr 2020 13:15:33 -0300
Message-ID: <20200403161538.1375908-5-helen.koike@collabora.com>
References: <20200403161538.1375908-1-helen.koike@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200403161538.1375908-1-helen.koike@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: devicetree@vger.kernel.org, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org, robh+dt@kernel.org, heiko@sntech.de, hverkuil-cisco@xs4all.nl, kernel@collabora.com, dafna.hirschfeld@collabora.com, ezequiel@collabora.com, mark.rutland@arm.com, karthik.poduval@gmail.com, jbx6244@gmail.com, kishon@ti.com
List-Id: linux-rockchip.vger.kernel.org

reg property is not used in Rockchip MIPI DPHY RX0 bindings, thus remove
it.

Suggested-by: Johan Jonker <jbx6244@gmail.com>
Signed-off-by: Helen Koike <helen.koike@collabora.com>
---

Changes in v2:
- this is a new patch in the series
---
 .../devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml        | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/media/phy-rockchip-dphy-rx0/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml b/drivers/staging/media/phy-rockchip-dphy-rx0/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml
index 5dacece35702b..7d888d3588239 100644
--- a/drivers/staging/media/phy-rockchip-dphy-rx0/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml
+++ b/drivers/staging/media/phy-rockchip-dphy-rx0/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml
@@ -18,9 +18,6 @@ properties:
   compatible:
     const: rockchip,rk3399-mipi-dphy-rx0
 
-  reg:
-    maxItems: 1
-
   clocks:
     items:
       - description: MIPI D-PHY ref clock
-- 
2.26.0
