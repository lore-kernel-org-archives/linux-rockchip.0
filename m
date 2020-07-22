From: Helen Koike <helen.koike@collabora.com>
Subject: [PATCH v5 2/9] media: staging: dt-bindings: rkisp1: drop i2c unit address
Date: Wed, 22 Jul 2020 12:55:26 -0300
Message-ID: <20200722155533.252844-3-helen.koike@collabora.com>
References: <20200722155533.252844-1-helen.koike@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200722155533.252844-1-helen.koike@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: devicetree@vger.kernel.org, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org, robh+dt@kernel.org, heiko@sntech.de, hverkuil-cisco@xs4all.nl, kernel@collabora.com, dafna.hirschfeld@collabora.com, ezequiel@collabora.com, mark.rutland@arm.com, karthik.poduval@gmail.com, jbx6244@gmail.com, tfiga@chromium.org, eddie.cai.linux@gmail.com, zhengsq@rock-chips.com, robin.murphy@arm.com
List-Id: linux-rockchip.vger.kernel.org

Add missing required items in Rockchip ISP1 dt-bindings example for
a complete i2c node.
Drop unit address to Fix error:
/example-0/parent/i2c@ff160000: node has a unit name, but no reg or ranges property
Remove unecessary fields for the example.

Signed-off-by: Helen Koike <helen.koike@collabora.com>
---

Changes in v5:
- Patch re-written to drop unity address instead of completing i2c node

Changes in v2:
- new patch in the series

tmp: i2c drop fields
---
 .../Documentation/devicetree/bindings/media/rockchip-isp1.yaml | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
index a77b6ec500c95..4c31cfaee2709 100644
--- a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
+++ b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
@@ -168,8 +168,7 @@ examples:
             };
         };
 
-        i2c7: i2c@ff160000 {
-            clock-frequency = <400000>;
+        i2c7: i2c {
             #address-cells = <1>;
             #size-cells = <0>;
 
-- 
2.28.0.rc1
