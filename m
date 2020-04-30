From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [RFC 6/7] pci: rockchip: Switch to generic-phy
Date: Fri,  1 May 2020 03:15:28 +0530
Message-ID: <20200430214529.18887-7-jagan@amarulasolutions.com>
References: <20200430214529.18887-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200430214529.18887-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Tom Rini <trini-OWPKS81ov/FWk0Htik3J/w@public.gmane.org>, Frank Wang <frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Patrice Chotard <patrice.chotard-qxv4g6HH51o@public.gmane.org>
Cc: u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Now, we have a PCIe PHY driver as part of the Generic
PHY framework. Let's use it instead of legacy PHY driver.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 drivers/pci/pcie_rockchip.c | 20 ++++++++++----------
 drivers/pci/pcie_rockchip.h |  5 +++++
 2 files changed, 15 insertions(+), 10 deletions(-)

diff --git a/drivers/pci/pcie_rockchip.c b/drivers/pci/pcie_rockchip.c
index 82a8396e42..3e4ba9635f 100644
--- a/drivers/pci/pcie_rockchip.c
+++ b/drivers/pci/pcie_rockchip.c
@@ -159,8 +159,6 @@ static int rockchip_pcie_atr_init(struct rockchip_pcie *priv)
 static int rockchip_pcie_init_port(struct udevice *dev)
 {
 	struct rockchip_pcie *priv = dev_get_priv(dev);
-	struct rockchip_pcie_phy *phy = pcie_get_phy(priv);
-	struct rockchip_pcie_phy_ops *ops = phy_get_ops(phy);
 	u32 cr, val, status;
 	int ret;
 
@@ -185,7 +183,7 @@ static int rockchip_pcie_init_port(struct udevice *dev)
 		return ret;
 	}
 
-	ret = ops->init(phy);
+	ret = generic_phy_init(&priv->pcie_phy);
 	if (ret) {
 		dev_err(dev, "failed to init phy (ret=%d)\n", ret);
 		goto err_exit_phy;
@@ -242,7 +240,7 @@ static int rockchip_pcie_init_port(struct udevice *dev)
 	cr |= PCIE_CLIENT_CONF_ENABLE | PCIE_CLIENT_MODE_RC;
 	writel(cr, priv->apb_base + PCIE_CLIENT_CONFIG);
 
-	ret = ops->power_on(phy);
+	ret = generic_phy_power_on(&priv->pcie_phy);
 	if (ret) {
 		dev_err(dev, "failed to power on phy (ret=%d)\n", ret);
 		goto err_power_off_phy;
@@ -311,9 +309,9 @@ static int rockchip_pcie_init_port(struct udevice *dev)
 	return 0;
 
 err_power_off_phy:
-	ops->power_off(phy);
+	generic_phy_power_off(&priv->pcie_phy);
 err_exit_phy:
-	ops->exit(phy);
+	generic_phy_exit(&priv->pcie_phy);
 	return ret;
 }
 
@@ -436,6 +434,12 @@ static int rockchip_pcie_parse_dt(struct udevice *dev)
 		return ret;
 	}
 
+	ret = generic_phy_get_by_index(dev, 0, &priv->pcie_phy);
+	if (ret) {
+		dev_err(dev, "failed to get pcie-phy (ret=%d)\n", ret);
+		return ret;
+	}
+
 	return 0;
 }
 
@@ -453,10 +457,6 @@ static int rockchip_pcie_probe(struct udevice *dev)
 	if (ret)
 		return ret;
 
-	ret = rockchip_pcie_phy_get(dev);
-	if (ret)
-		return ret;
-
 	ret = rockchip_pcie_set_vpcie(dev);
 	if (ret)
 		return ret;
diff --git a/drivers/pci/pcie_rockchip.h b/drivers/pci/pcie_rockchip.h
index c3a0a2846d..4b06110bfe 100644
--- a/drivers/pci/pcie_rockchip.h
+++ b/drivers/pci/pcie_rockchip.h
@@ -9,6 +9,8 @@
  *
  */
 
+#include <generic-phy.h>
+
 #define HIWORD_UPDATE(mask, val)        (((mask) << 16) | (val))
 #define HIWORD_UPDATE_BIT(val)          HIWORD_UPDATE(val, val)
 
@@ -126,6 +128,9 @@ struct rockchip_pcie {
 	struct udevice *vpcie3v3;
 	struct udevice *vpcie1v8;
 	struct udevice *vpcie0v9;
+
+	/* phy */
+	struct phy pcie_phy;
 };
 
 int rockchip_pcie_phy_get(struct udevice *dev);
-- 
2.17.1
