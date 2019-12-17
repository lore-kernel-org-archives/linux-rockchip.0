From: Akash Gajjar <akash@openedev.com>
Subject: [PATCH 2/2] phy: phy-rockchip-inno-usb2: add usb2-phy support for RK3308 SoC
Date: Tue, 17 Dec 2019 13:27:15 +0530
Message-ID: <20191217075722.11646-3-akash@openedev.com>
References: <20191217075722.11646-1-akash@openedev.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191217075722.11646-1-akash@openedev.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: jagan@openedev.com, tom@radxa.com, kever.yang@rock-chips.com, Akash Gajjar <akash@openedev.com>, Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Andy Yan <andy.yan@rock-chips.com>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

This patch adds usb2-phy support for RK3308 SoCs and amend phy Documentation.

Signed-off-by: Akash Gajjar <akash@openedev.com>
---
 .../bindings/phy/phy-rockchip-inno-usb2.txt   |  1 +
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 44 +++++++++++++++++++
 2 files changed, 45 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt
index 541f5298827c..e978aad34d3f 100644
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt
@@ -5,6 +5,7 @@ Required properties (phy (parent) node):
 	* "rockchip,px30-usb2phy"
 	* "rockchip,rk3228-usb2phy"
 	* "rockchip,rk3328-usb2phy"
+	* "rockchip,rk3308-usb2phy"
 	* "rockchip,rk3366-usb2phy"
 	* "rockchip,rk3399-usb2phy"
 	* "rockchip,rv1108-usb2phy"
diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 680cc0c8825c..9fe817486ea1 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -1256,6 +1256,49 @@ static const struct rockchip_usb2phy_cfg rk3228_phy_cfgs[] = {
 	{ /* sentinel */ }
 };
 
+static const struct rockchip_usb2phy_cfg rk3308_phy_cfgs[] = {
+	{
+		.reg = 0x100,
+		.num_ports	= 2,
+		.clkout_ctl	= { 0x0108, 4, 4, 1, 0 },
+		.port_cfgs	= {
+			[USB2PHY_PORT_OTG] = {
+				.phy_sus	= { 0x0100, 8, 0, 0, 0x1d1 },
+				.bvalid_det_en	= { 0x3020, 2, 2, 0, 1 },
+				.bvalid_det_st	= { 0x3024, 2, 2, 0, 1 },
+				.bvalid_det_clr = { 0x3028, 2, 2, 0, 1 },
+				.ls_det_en	= { 0x3020, 0, 0, 0, 1 },
+				.ls_det_st	= { 0x3024, 0, 0, 0, 1 },
+				.ls_det_clr	= { 0x3028, 0, 0, 0, 1 },
+				.utmi_avalid	= { 0x0120, 10, 10, 0, 1 },
+				.utmi_bvalid	= { 0x0120, 9, 9, 0, 1 },
+				.utmi_ls	= { 0x0120, 5, 4, 0, 1 },
+			},
+			[USB2PHY_PORT_HOST] = {
+				.phy_sus	= { 0x0104, 8, 0, 0, 0x1d1 },
+				.ls_det_en	= { 0x3020, 1, 1, 0, 1 },
+				.ls_det_st	= { 0x3024, 1, 1, 0, 1 },
+				.ls_det_clr	= { 0x3028, 1, 1, 0, 1 },
+				.utmi_ls	= { 0x120, 17, 16, 0, 1 },
+				.utmi_hstdet	= { 0x120, 19, 19, 0, 1 }
+			}
+		},
+		.chg_det = {
+			.opmode		= { 0x0100, 3, 0, 5, 1 },
+			.cp_det		= { 0x0120, 24, 24, 0, 1 },
+			.dcp_det	= { 0x0120, 23, 23, 0, 1 },
+			.dp_det		= { 0x0120, 25, 25, 0, 1 },
+			.idm_sink_en	= { 0x0108, 8, 8, 0, 1 },
+			.idp_sink_en	= { 0x0108, 7, 7, 0, 1 },
+			.idp_src_en	= { 0x0108, 9, 9, 0, 1 },
+			.rdm_pdwn_en	= { 0x0108, 10, 10, 0, 1 },
+			.vdm_src_en	= { 0x0108, 12, 12, 0, 1 },
+			.vdp_src_en	= { 0x0108, 11, 11, 0, 1 },
+		},
+	},
+	{ /* sentinel */ }
+};
+
 static const struct rockchip_usb2phy_cfg rk3328_phy_cfgs[] = {
 	{
 		.reg = 0x100,
@@ -1425,6 +1468,7 @@ static const struct rockchip_usb2phy_cfg rv1108_phy_cfgs[] = {
 static const struct of_device_id rockchip_usb2phy_dt_match[] = {
 	{ .compatible = "rockchip,px30-usb2phy", .data = &rk3328_phy_cfgs },
 	{ .compatible = "rockchip,rk3228-usb2phy", .data = &rk3228_phy_cfgs },
+	{ .compatible = "rockchip,rk3308-usb2phy", .data = &rk3308_phy_cfgs },
 	{ .compatible = "rockchip,rk3328-usb2phy", .data = &rk3328_phy_cfgs },
 	{ .compatible = "rockchip,rk3366-usb2phy", .data = &rk3366_phy_cfgs },
 	{ .compatible = "rockchip,rk3399-usb2phy", .data = &rk3399_phy_cfgs },
-- 
2.17.1
