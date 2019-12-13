From: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH 02/12] dt-bindings: display: rockchip-lvds: Document PX30 PHY
Date: Fri, 13 Dec 2019 19:10:41 +0100
Message-ID: <20191213181051.25983-3-miquel.raynal@bootlin.com>
References: <20191213181051.25983-1-miquel.raynal@bootlin.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20191213181051.25983-1-miquel.raynal@bootlin.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org, Maxime Chevallier <maxime.chevallier@bootlin.com>, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Miquel Raynal <miquel.raynal@bootlin.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

PX30 SoCs use a single PHY shared by two display pipelines: MIPI DSI
and LVDS. In the case of the LVDS IP, document the possibility to fill
a PHY handle.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../devicetree/bindings/display/rockchip/rockchip-lvds.txt     | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt b/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
index aa5663a6fd42..ec7b4341cfd2 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
@@ -19,6 +19,9 @@ Required properties:
 - rockchip,grf: phandle to the general register files syscon
 - rockchip,output: "rgb", "lvds" or "duallvds", This describes the output interface
 
+- phys: LVDS/DSI DPHY (px30 only)
+- phy-names: name of the PHY, should be "dphy"
+
 Optional properties:
 - pinctrl-names: must contain a "lcdc" entry.
 - pinctrl-0: pin control group to be used for this controller.
-- 
2.20.1
