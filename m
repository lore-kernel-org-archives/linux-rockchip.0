From: Justin Swartz <justin.swartz@risingedge.co.za>
Subject: [PATCH v4 1/3] [media] dt-bindings: Add binding for rk3228 rga
Date: Mon,  3 Feb 2020 22:40:15 +0000
Message-ID: <4e66b3f029c56d7c7709d39ed15894b86f51fd37.1580768038.git.justin.swartz@risingedge.co.za>
References: <cover.1580768038.git.justin.swartz@risingedge.co.za>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <cover.1580768038.git.justin.swartz@risingedge.co.za>
Sender: linux-kernel-owner@vger.kernel.org
To: Jacob Chen <jacob-chen@iotwrt.com>, Ezequiel Garcia <ezequiel@collabora.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Justin Swartz <justin.swartz@risingedge.co.za>, linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Indicate that the rk3228 rga is compatible with that of the rk3288.

But if any rk3228-specific quirks are identified in future that
require handling logic that differs from what is provided for the
rk3288, then allow for the compatibility string "rockchip,rk3228-rga"
to be matched instead of "rockchip,rk3288-rga".

Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>
---
 Documentation/devicetree/bindings/media/rockchip-rga.txt | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/rockchip-rga.txt b/Documentation/devicetree/bindings/media/rockchip-rga.txt
index fd5276abf..c53a8e513 100644
--- a/Documentation/devicetree/bindings/media/rockchip-rga.txt
+++ b/Documentation/devicetree/bindings/media/rockchip-rga.txt
@@ -6,8 +6,9 @@ BitBLT, alpha blending and image blur/sharpness.
 
 Required properties:
 - compatible: value should be one of the following
-		"rockchip,rk3288-rga";
-		"rockchip,rk3399-rga";
+  "rockchip,rk3228-rga", "rockchip,rk3288-rga": for Rockchip RK3228
+  "rockchip,rk3288-rga": for Rockchip RK3288
+  "rockchip,rk3399-rga": for Rockchip RK3399
 
 - interrupts: RGA interrupt specifier.
 
-- 
2.11.0
