From: Leon Romanovsky <leon@kernel.org>
Subject: [PATCH net-next v1 14/18] net/apm: Remove useless driver version
Date: Mon, 24 Feb 2020 10:53:07 +0200
Message-ID: <20200224085311.460338-15-leon@kernel.org>
References: <20200224085311.460338-1-leon@kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200224085311.460338-1-leon@kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Cc: Leon Romanovsky <leonro@mellanox.com>, Tom Lendacky <thomas.lendacky@amd.com>, Keyur Chudgar <keyur@os.amperecomputing.com>, Don Fry <pcnet32@frontier.com>, Veaceslav Falico <vfalico@gmail.com>, Jay Vosburgh <j.vosburgh@gmail.com>, linux-acenic@sunsite.dk, Maxime Ripard <mripard@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Mark Einon <mark.einon@gmail.com>, Chris Snook <chris.snook@gmail.com>, linux-rockchip@lists.infradead.org, Iyappan Subramanian <iyappan@os.amperecomputing.com>, Igor Russkikh <irusskikh@marvell.com>, David Dillow <dave@thedillows.org>, Netanel Belgazal <netanel@amazon.com>, Quan Nguyen <quan@os.amperecomputing.com>, Jay Cliburn <jcliburn@gmail.com>, Lino Sanfilippo <LinoSanfilippo@gmx.de>, linux-arm-kernel@lists.infradea
List-Id: linux-rockchip.vger.kernel.org

From: Leon Romanovsky <leonro@mellanox.com>

Delete module version in favor of global and unique linux kernel.

Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
---
 drivers/net/ethernet/apm/xgene-v2/ethtool.c         | 1 -
 drivers/net/ethernet/apm/xgene-v2/main.c            | 1 -
 drivers/net/ethernet/apm/xgene-v2/main.h            | 1 -
 drivers/net/ethernet/apm/xgene/xgene_enet_ethtool.c | 1 -
 drivers/net/ethernet/apm/xgene/xgene_enet_main.c    | 1 -
 drivers/net/ethernet/apm/xgene/xgene_enet_main.h    | 1 -
 6 files changed, 6 deletions(-)

diff --git a/drivers/net/ethernet/apm/xgene-v2/ethtool.c b/drivers/net/ethernet/apm/xgene-v2/ethtool.c
index a58250c1b57a..da748beb7047 100644
--- a/drivers/net/ethernet/apm/xgene-v2/ethtool.c
+++ b/drivers/net/ethernet/apm/xgene-v2/ethtool.c
@@ -89,7 +89,6 @@ static void xge_get_drvinfo(struct net_device *ndev,
 	struct platform_device *pdev = pdata->pdev;

 	strcpy(info->driver, "xgene-enet-v2");
-	strcpy(info->version, XGENE_ENET_V2_VERSION);
 	snprintf(info->fw_version, ETHTOOL_FWVERS_LEN, "N/A");
 	sprintf(info->bus_info, "%s", pdev->name);
 }
diff --git a/drivers/net/ethernet/apm/xgene-v2/main.c b/drivers/net/ethernet/apm/xgene-v2/main.c
index c48f60996761..860c18fb7aae 100644
--- a/drivers/net/ethernet/apm/xgene-v2/main.c
+++ b/drivers/net/ethernet/apm/xgene-v2/main.c
@@ -741,5 +741,4 @@ module_platform_driver(xge_driver);

 MODULE_DESCRIPTION("APM X-Gene SoC Ethernet v2 driver");
 MODULE_AUTHOR("Iyappan Subramanian <isubramanian@apm.com>");
-MODULE_VERSION(XGENE_ENET_V2_VERSION);
 MODULE_LICENSE("GPL");
diff --git a/drivers/net/ethernet/apm/xgene-v2/main.h b/drivers/net/ethernet/apm/xgene-v2/main.h
index d41439d2709d..b3985a7be59d 100644
--- a/drivers/net/ethernet/apm/xgene-v2/main.h
+++ b/drivers/net/ethernet/apm/xgene-v2/main.h
@@ -28,7 +28,6 @@
 #include "ring.h"
 #include "ethtool.h"

-#define XGENE_ENET_V2_VERSION	"v1.0"
 #define XGENE_ENET_STD_MTU	1536
 #define XGENE_ENET_MIN_FRAME	60
 #define IRQ_ID_SIZE             16
diff --git a/drivers/net/ethernet/apm/xgene/xgene_enet_ethtool.c b/drivers/net/ethernet/apm/xgene/xgene_enet_ethtool.c
index 246dec27140d..4e7a95bd83d7 100644
--- a/drivers/net/ethernet/apm/xgene/xgene_enet_ethtool.c
+++ b/drivers/net/ethernet/apm/xgene/xgene_enet_ethtool.c
@@ -103,7 +103,6 @@ static void xgene_get_drvinfo(struct net_device *ndev,
 	struct platform_device *pdev = pdata->pdev;

 	strcpy(info->driver, "xgene_enet");
-	strcpy(info->version, XGENE_DRV_VERSION);
 	snprintf(info->fw_version, ETHTOOL_FWVERS_LEN, "N/A");
 	sprintf(info->bus_info, "%s", pdev->name);
 }
diff --git a/drivers/net/ethernet/apm/xgene/xgene_enet_main.c b/drivers/net/ethernet/apm/xgene/xgene_enet_main.c
index 6aee2f0fc0db..5f1fc6582d74 100644
--- a/drivers/net/ethernet/apm/xgene/xgene_enet_main.c
+++ b/drivers/net/ethernet/apm/xgene/xgene_enet_main.c
@@ -2179,7 +2179,6 @@ static struct platform_driver xgene_enet_driver = {
 module_platform_driver(xgene_enet_driver);

 MODULE_DESCRIPTION("APM X-Gene SoC Ethernet driver");
-MODULE_VERSION(XGENE_DRV_VERSION);
 MODULE_AUTHOR("Iyappan Subramanian <isubramanian@apm.com>");
 MODULE_AUTHOR("Keyur Chudgar <kchudgar@apm.com>");
 MODULE_LICENSE("GPL");
diff --git a/drivers/net/ethernet/apm/xgene/xgene_enet_main.h b/drivers/net/ethernet/apm/xgene/xgene_enet_main.h
index 18f4923b1723..d35a338120cf 100644
--- a/drivers/net/ethernet/apm/xgene/xgene_enet_main.h
+++ b/drivers/net/ethernet/apm/xgene/xgene_enet_main.h
@@ -28,7 +28,6 @@
 #include "xgene_enet_ring2.h"
 #include "../../../phy/mdio-xgene.h"

-#define XGENE_DRV_VERSION	"v1.0"
 #define ETHER_MIN_PACKET	64
 #define ETHER_STD_PACKET	1518
 #define XGENE_ENET_STD_MTU	1536
--
2.24.1
