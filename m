From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v3 3/8] phy: rockchip-usb: move per-phy init into a separate
 function
Date: Thu, 19 Nov 2015 22:22:24 +0100
Message-ID: <1447968149-10979-4-git-send-email-heiko@sntech.de>
References: <1447968149-10979-1-git-send-email-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <1447968149-10979-1-git-send-email-heiko@sntech.de>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: kishon@ti.com, mturquette@baylibre.com, sboyd@codeaurora.org
Cc: hl@rock-chips.com, arnd@arndb.de, linux-kernel@vger.kernel.org, dianders@chromium.org, linux-rockchip@lists.infradead.org, romain.perier@gmail.com, linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

This unclutters the loop in probe a lot and makes current (and future)
error handling easier to read.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
---
 drivers/phy/phy-rockchip-usb.c | 83 ++++++++++++++++++++++--------------------
 1 file changed, 43 insertions(+), 40 deletions(-)

diff --git a/drivers/phy/phy-rockchip-usb.c b/drivers/phy/phy-rockchip-usb.c
index 2b4802a..ff3ac33 100644
--- a/drivers/phy/phy-rockchip-usb.c
+++ b/drivers/phy/phy-rockchip-usb.c
@@ -103,14 +103,52 @@ static void rockchip_usb_phy_action(void *data)
 		clk_put(rk_phy->clk);
 }
 
+static int rockchip_usb_phy_init(struct rockchip_usb_phy_base *base,
+				 struct device_node *child)
+{
+	struct rockchip_usb_phy *rk_phy;
+	unsigned int reg_offset;
+	int err;
+
+	rk_phy = devm_kzalloc(base->dev, sizeof(*rk_phy), GFP_KERNEL);
+	if (!rk_phy)
+		return -ENOMEM;
+
+	rk_phy->base = base;
+
+	if (of_property_read_u32(child, "reg", &reg_offset)) {
+		dev_err(base->dev, "missing reg property in node %s\n",
+			child->name);
+		return -EINVAL;
+	}
+
+	rk_phy->reg_offset = reg_offset;
+
+	err = devm_add_action(base->dev, rockchip_usb_phy_action, rk_phy);
+	if (err)
+		return err;
+
+	rk_phy->clk = of_clk_get_by_name(child, "phyclk");
+	if (IS_ERR(rk_phy->clk))
+		rk_phy->clk = NULL;
+
+	rk_phy->phy = devm_phy_create(base->dev, child, &ops);
+	if (IS_ERR(rk_phy->phy)) {
+		dev_err(base->dev, "failed to create PHY\n");
+		return PTR_ERR(rk_phy->phy);
+	}
+	phy_set_drvdata(rk_phy->phy, rk_phy);
+
+	/* only power up usb phy when it use, so disable it when init*/
+	return rockchip_usb_phy_power(rk_phy, 1);
+}
+
 static int rockchip_usb_phy_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct rockchip_usb_phy_base *phy_base;
-	struct rockchip_usb_phy *rk_phy;
 	struct phy_provider *phy_provider;
 	struct device_node *child;
-	unsigned int reg_offset;
 	int err;
 
 	phy_base = devm_kzalloc(dev, sizeof(*phy_base), GFP_KERNEL);
@@ -126,50 +164,15 @@ static int rockchip_usb_phy_probe(struct platform_device *pdev)
 	}
 
 	for_each_available_child_of_node(dev->of_node, child) {
-		rk_phy = devm_kzalloc(dev, sizeof(*rk_phy), GFP_KERNEL);
-		if (!rk_phy) {
-			err = -ENOMEM;
-			goto put_child;
-		}
-
-		rk_phy->base = phy_base;
-
-		if (of_property_read_u32(child, "reg", &reg_offset)) {
-			dev_err(dev, "missing reg property in node %s\n",
-				child->name);
-			err = -EINVAL;
-			goto put_child;
-		}
-
-		rk_phy->reg_offset = reg_offset;
-
-		err = devm_add_action(dev, rockchip_usb_phy_action, rk_phy);
-		if (err)
+		err = rockchip_usb_phy_init(phy_base, child);
+		if (err) {
+			of_node_put(child);
 			return err;
-
-		rk_phy->clk = of_clk_get_by_name(child, "phyclk");
-		if (IS_ERR(rk_phy->clk))
-			rk_phy->clk = NULL;
-
-		rk_phy->phy = devm_phy_create(dev, child, &ops);
-		if (IS_ERR(rk_phy->phy)) {
-			dev_err(dev, "failed to create PHY\n");
-			err = PTR_ERR(rk_phy->phy);
-			goto put_child;
 		}
-		phy_set_drvdata(rk_phy->phy, rk_phy);
-
-		/* only power up usb phy when it use, so disable it when init*/
-		err = rockchip_usb_phy_power(rk_phy, 1);
-		if (err)
-			goto put_child;
 	}
 
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
 	return PTR_ERR_OR_ZERO(phy_provider);
-put_child:
-	of_node_put(child);
-	return err;
 }
 
 static const struct of_device_id rockchip_usb_phy_dt_ids[] = {
-- 
2.6.2
