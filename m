From: Nickey Yang <nickey.yang@rock-chips.com>
Subject: [PATCH v5 2/3] dt-bindings: display: rockchip: update DSI controller
Date: Wed,  6 Dec 2017 16:33:25 +0800
Message-ID: <1512549206-25638-3-git-send-email-nickey.yang@rock-chips.com>
References: <1512549206-25638-1-git-send-email-nickey.yang@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1512549206-25638-1-git-send-email-nickey.yang@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: robh+dt@kernel.org, heiko@sntech.de, mark.rutland@arm.com, airlied@linux.ie
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, laurent.pinchart@ideasonboard.com, seanpaul@chromium.org, briannorris@chromium.org, mka@chromium.org, hoegsberg@gmail.com, architt@codeaurora.org, philippe.cornu@st.com, yannick.fertre@st.com, hl@rock-chips.com, zyw@rock-chips.com, xbl@rock-chips.com, nickey.yang@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

This patch update describe panel/port links, including
unit addresses in documentation of device tree bindings
for the rockchip DSI controller based on the Synopsys
DesignWare MIPI DSI host controller.

Signed-off-by: Nickey Yang <nickey.yang@rock-chips.com>
Reviewed-by: Brian Norris <briannorris@chromium.org>

---
Changes

v5:
-  add review tag

 .../display/rockchip/dw_mipi_dsi_rockchip.txt      | 23 ++++++++++++++++++++--
 1 file changed, 21 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt b/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt
index 6bb59ab..ce4c1fc 100644
--- a/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt
+++ b/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt
@@ -14,6 +14,8 @@ Required properties:
 - rockchip,grf: this soc should set GRF regs to mux vopl/vopb.
 - ports: contain a port node with endpoint definitions as defined in [2].
   For vopb,set the reg = <0> and set the reg = <1> for vopl.
+- video port 0 for the VOP input, the remote endpoint maybe vopb or vopl
+- video port 1 for either a panel or subsequent encoder
 
 Optional properties:
 - power-domains: a phandle to mipi dsi power domain node.
@@ -40,11 +42,12 @@ Example:
 		ports {
 			#address-cells = <1>;
 			#size-cells = <0>;
-			reg = <1>;
 
-			mipi_in: port {
+			mipi_in: port@0 {
+				reg = <0>;
 				#address-cells = <1>;
 				#size-cells = <0>;
+
 				mipi_in_vopb: endpoint@0 {
 					reg = <0>;
 					remote-endpoint = <&vopb_out_mipi>;
@@ -54,6 +57,16 @@ Example:
 					remote-endpoint = <&vopl_out_mipi>;
 				};
 			};
+
+			mipi_out: port@1 {
+				reg = <1>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				mipi_out_panel: endpoint {
+					remote-endpoint = <&panel_in_mipi>;
+				};
+			};
 		};
 
 		panel {
@@ -64,5 +77,11 @@ Example:
 			pinctrl-names = "default";
 			pinctrl-0 = <&lcd_en>;
 			backlight = <&backlight>;
+
+			port {
+				panel_in_mipi: endpoint {
+					remote-endpoint = <&mipi_out_panel>;
+				};
+			};
 		};
 	};
-- 
1.9.1
