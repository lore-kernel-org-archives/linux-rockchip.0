From: Leon Romanovsky <leon@kernel.org>
Subject: [PATCH net-next v1 17/18] net/arc: Delete driver version
Date: Mon, 24 Feb 2020 10:53:10 +0200
Message-ID: <20200224085311.460338-18-leon@kernel.org>
References: <20200224085311.460338-1-leon@kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <netdev-owner@vger.kernel.org>
In-Reply-To: <20200224085311.460338-1-leon@kernel.org>
Sender: netdev-owner@vger.kernel.org
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Cc: Leon Romanovsky <leonro@mellanox.com>, Tom Lendacky <thomas.lendacky@amd.com>, Keyur Chudgar <keyur@os.amperecomputing.com>, Don Fry <pcnet32@frontier.com>, Veaceslav Falico <vfalico@gmail.com>, Jay Vosburgh <j.vosburgh@gmail.com>, linux-acenic@sunsite.dk, Maxime Ripard <mripard@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Mark Einon <mark.einon@gmail.com>, Chris Snook <chris.snook@gmail.com>, linux-rockchip@lists.infradead.org, Iyappan Subramanian <iyappan@os.amperecomputing.com>, Igor Russkikh <irusskikh@marvell.com>, David Dillow <dave@thedillows.org>, Netanel Belgazal <netanel@amazon.com>, Quan Nguyen <quan@os.amperecomputing.com>, Jay Cliburn <jcliburn@gmail.com>, Lino Sanfilippo <LinoSanfilippo@gmx.de>, linux-arm-kernel@lists.infradea
List-Id: linux-rockchip.vger.kernel.org

From: Leon Romanovsky <leonro@mellanox.com>

Drop constant driver version in favour of global linux kernel.

Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
---
 drivers/net/ethernet/arc/emac.h          | 1 -
 drivers/net/ethernet/arc/emac_arc.c      | 2 --
 drivers/net/ethernet/arc/emac_main.c     | 1 -
 drivers/net/ethernet/arc/emac_rockchip.c | 2 --
 4 files changed, 6 deletions(-)

diff --git a/drivers/net/ethernet/arc/emac.h b/drivers/net/ethernet/arc/emac.h
index d9efbc8d783b..d820ae03a966 100644
--- a/drivers/net/ethernet/arc/emac.h
+++ b/drivers/net/ethernet/arc/emac.h
@@ -130,7 +130,6 @@ struct arc_emac_mdio_bus_data {
  */
 struct arc_emac_priv {
 	const char *drv_name;
-	const char *drv_version;
 	void (*set_mac_speed)(void *priv, unsigned int speed);

 	/* Devices */
diff --git a/drivers/net/ethernet/arc/emac_arc.c b/drivers/net/ethernet/arc/emac_arc.c
index 539166112993..1c7736b7eaf7 100644
--- a/drivers/net/ethernet/arc/emac_arc.c
+++ b/drivers/net/ethernet/arc/emac_arc.c
@@ -15,7 +15,6 @@
 #include "emac.h"

 #define DRV_NAME    "emac_arc"
-#define DRV_VERSION "1.0"

 static int emac_arc_probe(struct platform_device *pdev)
 {
@@ -36,7 +35,6 @@ static int emac_arc_probe(struct platform_device *pdev)

 	priv = netdev_priv(ndev);
 	priv->drv_name = DRV_NAME;
-	priv->drv_version = DRV_VERSION;

 	err = of_get_phy_mode(dev->of_node, &interface);
 	if (err) {
diff --git a/drivers/net/ethernet/arc/emac_main.c b/drivers/net/ethernet/arc/emac_main.c
index 17bda4e8cc45..38cd968b6a3b 100644
--- a/drivers/net/ethernet/arc/emac_main.c
+++ b/drivers/net/ethernet/arc/emac_main.c
@@ -92,7 +92,6 @@ static void arc_emac_get_drvinfo(struct net_device *ndev,
 	struct arc_emac_priv *priv = netdev_priv(ndev);

 	strlcpy(info->driver, priv->drv_name, sizeof(info->driver));
-	strlcpy(info->version, priv->drv_version, sizeof(info->version));
 }

 static const struct ethtool_ops arc_emac_ethtool_ops = {
diff --git a/drivers/net/ethernet/arc/emac_rockchip.c b/drivers/net/ethernet/arc/emac_rockchip.c
index aae231c5224f..48ecdf15eddc 100644
--- a/drivers/net/ethernet/arc/emac_rockchip.c
+++ b/drivers/net/ethernet/arc/emac_rockchip.c
@@ -16,7 +16,6 @@
 #include "emac.h"

 #define DRV_NAME        "rockchip_emac"
-#define DRV_VERSION     "1.1"

 struct emac_rockchip_soc_data {
 	unsigned int grf_offset;
@@ -112,7 +111,6 @@ static int emac_rockchip_probe(struct platform_device *pdev)

 	priv = netdev_priv(ndev);
 	priv->emac.drv_name = DRV_NAME;
-	priv->emac.drv_version = DRV_VERSION;
 	priv->emac.set_mac_speed = emac_rockchip_set_mac_speed;

 	err = of_get_phy_mode(dev->of_node, &interface);
