From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [RFC PATCH 2/2] phy: phy-rockchip-inno-usb2: remove support for rockchip,rk3366-usb2phy
Date: Wed, 18 Mar 2020 20:29:01 +0100
Message-ID: <20200318192901.5023-2-jbx6244@gmail.com>
References: <20200318192901.5023-1-jbx6244@gmail.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200318192901.5023-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: kishon-l0cyMroinI0@public.gmane.org
Cc: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

'phy-rockchip-inno-usb2.txt' is updated to yaml, whereby
the compatible string 'rockchip,rk3366-usb2phy' was removed,
because it's not in use by a dts file, so remove support
in the code as well.

Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 20 --------------------
 1 file changed, 20 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 680cc0c88..dcdb5589b 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -1299,25 +1299,6 @@ static const struct rockchip_usb2phy_cfg rk3328_phy_cfgs[] = {
 	{ /* sentinel */ }
 };
 
-static const struct rockchip_usb2phy_cfg rk3366_phy_cfgs[] = {
-	{
-		.reg = 0x700,
-		.num_ports	= 2,
-		.clkout_ctl	= { 0x0724, 15, 15, 1, 0 },
-		.port_cfgs	= {
-			[USB2PHY_PORT_HOST] = {
-				.phy_sus	= { 0x0728, 15, 0, 0, 0x1d1 },
-				.ls_det_en	= { 0x0680, 4, 4, 0, 1 },
-				.ls_det_st	= { 0x0690, 4, 4, 0, 1 },
-				.ls_det_clr	= { 0x06a0, 4, 4, 0, 1 },
-				.utmi_ls	= { 0x049c, 14, 13, 0, 1 },
-				.utmi_hstdet	= { 0x049c, 12, 12, 0, 1 }
-			}
-		},
-	},
-	{ /* sentinel */ }
-};
-
 static const struct rockchip_usb2phy_cfg rk3399_phy_cfgs[] = {
 	{
 		.reg		= 0xe450,
@@ -1426,7 +1407,6 @@ static const struct of_device_id rockchip_usb2phy_dt_match[] = {
 	{ .compatible = "rockchip,px30-usb2phy", .data = &rk3328_phy_cfgs },
 	{ .compatible = "rockchip,rk3228-usb2phy", .data = &rk3228_phy_cfgs },
 	{ .compatible = "rockchip,rk3328-usb2phy", .data = &rk3328_phy_cfgs },
-	{ .compatible = "rockchip,rk3366-usb2phy", .data = &rk3366_phy_cfgs },
 	{ .compatible = "rockchip,rk3399-usb2phy", .data = &rk3399_phy_cfgs },
 	{ .compatible = "rockchip,rv1108-usb2phy", .data = &rv1108_phy_cfgs },
 	{}
-- 
2.11.0
