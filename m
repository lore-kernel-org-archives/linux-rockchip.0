From: Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v5 7/7] dt-bindings: phy: convert to use per-lane Rockchip PCIe PHY
Date: Wed, 19 Jul 2017 17:57:58 +0800
Message-ID: <1500458278-203082-3-git-send-email-shawn.lin@rock-chips.com>
References: <1500458118-139042-1-git-send-email-shawn.lin@rock-chips.com>
 <1500458278-203082-1-git-send-email-shawn.lin@rock-chips.com>
Return-path: <linux-pci-owner@vger.kernel.org>
In-Reply-To: <1500458278-203082-1-git-send-email-shawn.lin@rock-chips.com>
Sender: linux-pci-owner@vger.kernel.org
To: Kishon Vijay Abraham I <kishon@ti.com>, Bjorn Helgaas <bhelgaas@google.com>
Cc: Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, Brian Norris <briannorris@chromium.org>, Jeffy Chen <jeffy.chen@rock-chips.com>, Shawn Lin <shawn.lin@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

This patch deprecate the legacy PCIe PHY and encourage user
to use per-lane PHY mode by setting #phy-cells to 1.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

Acked-by: Rob Herring <robh@kernel.org>
Reviewed-by: Brian Norris <briannorris@chromium.org>
---

Changes in v5: None
Changes in v4: None
Changes in v3:
- rename the commit tile

Changes in v2: None

 Documentation/devicetree/bindings/phy/rockchip-pcie-phy.txt | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/rockchip-pcie-phy.txt b/Documentation/devicetree/bindings/phy/rockchip-pcie-phy.txt
index 0f6222a..b496042 100644
--- a/Documentation/devicetree/bindings/phy/rockchip-pcie-phy.txt
+++ b/Documentation/devicetree/bindings/phy/rockchip-pcie-phy.txt
@@ -3,7 +3,6 @@ Rockchip PCIE PHY
 
 Required properties:
  - compatible: rockchip,rk3399-pcie-phy
- - #phy-cells: must be 0
  - clocks: Must contain an entry in clock-names.
 	See ../clocks/clock-bindings.txt for details.
  - clock-names: Must be "refclk"
@@ -11,6 +10,12 @@ Required properties:
 	See ../reset/reset.txt for details.
  - reset-names: Must be "phy"
 
+Required properties for legacy PHY mode (deprecated):
+ - #phy-cells: must be 0
+
+Required properties for per-lane PHY mode (preferred):
+ - #phy-cells: must be 1
+
 Example:
 
 grf: syscon@ff770000 {
-- 
1.9.1
