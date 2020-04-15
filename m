From: Sasha Levin <sashal@kernel.org>
Subject: [PATCH AUTOSEL 5.5 029/106] ARM: dts: rockchip: fix lvds-encoder
 ports subnode for rk3188-bqedison2qc
Date: Wed, 15 Apr 2020 07:41:09 -0400
Message-ID: <20200415114226.13103-29-sashal@kernel.org>
References: <20200415114226.13103-1-sashal@kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
In-Reply-To: <20200415114226.13103-1-sashal@kernel.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org
To: linux-kernel@vger.kernel.org, stable@vger.kernel.org
Cc: Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, Johan Jonker <jbx6244@gmail.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

From: Johan Jonker <jbx6244@gmail.com>

[ Upstream commit 1a7e99599dffd836fcb720cdc0eaf3cd43d7af4a ]

A test with the command below gives this error:

arch/arm/boot/dts/rk3188-bqedison2qc.dt.yaml: lvds-encoder:
'ports' is a required property

Fix error by adding a ports wrapper for port@0 and port@1
inside the 'lvds-encoder' node for rk3188-bqedison2qc.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/
bridge/lvds-codec.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Link: https://lore.kernel.org/r/20200316174647.5598-1-jbx6244@gmail.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/rk3188-bqedison2qc.dts | 27 ++++++++++++++----------
 1 file changed, 16 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boot/dts/rk3188-bqedison2qc.dts b/arch/arm/boot/dts/rk3188-bqedison2qc.dts
index 8afb2fd5d9f1b..66a0ff196eb1f 100644
--- a/arch/arm/boot/dts/rk3188-bqedison2qc.dts
+++ b/arch/arm/boot/dts/rk3188-bqedison2qc.dts
@@ -58,20 +58,25 @@
 
 	lvds-encoder {
 		compatible = "ti,sn75lvds83", "lvds-encoder";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
-		port@0 {
-			reg = <0>;
-			lvds_in_vop0: endpoint {
-				remote-endpoint = <&vop0_out_lvds>;
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				lvds_in_vop0: endpoint {
+					remote-endpoint = <&vop0_out_lvds>;
+				};
 			};
-		};
 
-		port@1 {
-			reg = <1>;
-			lvds_out_panel: endpoint {
-				remote-endpoint = <&panel_in_lvds>;
+			port@1 {
+				reg = <1>;
+
+				lvds_out_panel: endpoint {
+					remote-endpoint = <&panel_in_lvds>;
+				};
 			};
 		};
 	};
-- 
2.20.1
