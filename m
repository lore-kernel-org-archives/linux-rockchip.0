From: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH v2 01/11] dt-bindings: display: rockchip-lvds: Declare PX30 compatible
Date: Tue, 24 Dec 2019 15:38:50 +0100
Message-ID: <20191224143900.23567-2-miquel.raynal@bootlin.com>
References: <20191224143900.23567-1-miquel.raynal@bootlin.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191224143900.23567-1-miquel.raynal@bootlin.com>
Sender: linux-kernel-owner@vger.kernel.org
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Maxime Chevallier <maxime.chevallier@bootlin.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>, Rob Herring <robh@kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Document the PX30 LVDS compatible.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/display/rockchip/rockchip-lvds.txt       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt b/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
index 7849ff039229..aa5663a6fd42 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
@@ -4,6 +4,7 @@ Rockchip RK3288 LVDS interface
 Required properties:
 - compatible: matching the soc type, one of
 	- "rockchip,rk3288-lvds";
+	- "rockchip,px30-lvds";
 
 - reg: physical base address of the controller and length
 	of memory mapped region.
-- 
2.20.1
