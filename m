From: Leon Romanovsky <leon@kernel.org>
Subject: [PATCH net-next v1 08/18] net/alacritech: Delete driver version
Date: Mon, 24 Feb 2020 10:53:01 +0200
Message-ID: <20200224085311.460338-9-leon@kernel.org>
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

Use standard variant of the driver version.

Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
---
 drivers/net/ethernet/alacritech/slicoss.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/net/ethernet/alacritech/slicoss.c b/drivers/net/ethernet/alacritech/slicoss.c
index 9daef4c8feef..6234fcd844ee 100644
--- a/drivers/net/ethernet/alacritech/slicoss.c
+++ b/drivers/net/ethernet/alacritech/slicoss.c
@@ -26,7 +26,6 @@
 #include "slic.h"

 #define DRV_NAME			"slicoss"
-#define DRV_VERSION			"1.0"

 static const struct pci_device_id slic_id_tbl[] = {
 	{ PCI_DEVICE(PCI_VENDOR_ID_ALACRITECH,
@@ -1533,7 +1532,6 @@ static void slic_get_drvinfo(struct net_device *dev,
 	struct slic_device *sdev = netdev_priv(dev);

 	strlcpy(info->driver, DRV_NAME, sizeof(info->driver));
-	strlcpy(info->version, DRV_VERSION, sizeof(info->version));
 	strlcpy(info->bus_info, pci_name(sdev->pdev), sizeof(info->bus_info));
 }

@@ -1852,4 +1850,3 @@ module_pci_driver(slic_driver);
 MODULE_DESCRIPTION("Alacritech non-accelerated SLIC driver");
 MODULE_AUTHOR("Lino Sanfilippo <LinoSanfilippo@gmx.de>");
 MODULE_LICENSE("GPL");
-MODULE_VERSION(DRV_VERSION);
