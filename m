From: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH v2 02/11] dt-bindings: display: rockchip-lvds: Document PX30 PHY
Date: Tue, 24 Dec 2019 15:38:51 +0100
Message-ID: <20191224143900.23567-3-miquel.raynal@bootlin.com>
References: <20191224143900.23567-1-miquel.raynal@bootlin.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191224143900.23567-1-miquel.raynal@bootlin.com>
Sender: linux-kernel-owner@vger.kernel.org
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Maxime Chevallier <maxime.chevallier@bootlin.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>
List-Id: linux-rockchip.vger.kernel.org

PX30 SoCs use a single PHY shared by two display pipelines: MIPI DSI
and LVDS. In the case of the LVDS IP, document the possibility to fill
a PHY handle.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../devicetree/bindings/display/rockchip/rockchip-lvds.txt     | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt b/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
index aa5663a6fd42..aaf8c44cf90f 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
@@ -19,6 +19,9 @@ Required properties:
 - rockchip,grf: phandle to the general register files syscon
 - rockchip,output: "rgb", "lvds" or "duallvds", This describes the output interface
 
+- phys: LVDS/DSI DPHY (px30 only)
+- phy-names: name of the PHY, must be "dphy" (px30 only)
+
 Optional properties:
 - pinctrl-names: must contain a "lcdc" entry.
 - pinctrl-0: pin control group to be used for this controller.
-- 
2.20.1
