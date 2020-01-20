From: Justin Swartz <justin.swartz@risingedge.co.za>
Subject: [PATCH 2/4] [media] dt-bindings: Add rk3228 to the Rockchip RGA binding doc
Date: Mon, 20 Jan 2020 19:41:55 +0000
Message-ID: <20200120194158.25357-2-justin.swartz@risingedge.co.za>
References: <20200120194158.25357-1-justin.swartz@risingedge.co.za>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200120194158.25357-1-justin.swartz@risingedge.co.za>
Sender: linux-kernel-owner@vger.kernel.org
To: Jacob Chen <jacob-chen@iotwrt.com>, Ezequiel Garcia <ezequiel@collabora.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Justin Swartz <justin.swartz@risingedge.co.za>, linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Add "rockchip,rk3228-rga" to the list of acceptable values for
the "compatible" property.

Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>
---
 Documentation/devicetree/bindings/media/rockchip-rga.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/media/rockchip-rga.txt b/Documentation/devicetree/bindings/media/rockchip-rga.txt
index fd5276abf..9bac1782d 100644
--- a/Documentation/devicetree/bindings/media/rockchip-rga.txt
+++ b/Documentation/devicetree/bindings/media/rockchip-rga.txt
@@ -6,6 +6,7 @@ BitBLT, alpha blending and image blur/sharpness.
 
 Required properties:
 - compatible: value should be one of the following
+		"rockchip,rk3228-rga";
 		"rockchip,rk3288-rga";
 		"rockchip,rk3399-rga";
 
-- 
2.11.0
