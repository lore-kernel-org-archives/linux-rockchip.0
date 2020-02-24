From: Leon Romanovsky <leon@kernel.org>
Subject: [PATCH net-next v1 04/18] net/adaptec: Clean driver versions
Date: Mon, 24 Feb 2020 10:52:57 +0200
Message-ID: <20200224085311.460338-5-leon@kernel.org>
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

Delete useless driver version in favor of default ones.

Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
---
 drivers/net/ethernet/adaptec/starfire.c | 19 +------------------
 1 file changed, 1 insertion(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/adaptec/starfire.c b/drivers/net/ethernet/adaptec/starfire.c
index 165d18405b0c..2db42211329f 100644
--- a/drivers/net/ethernet/adaptec/starfire.c
+++ b/drivers/net/ethernet/adaptec/starfire.c
@@ -27,8 +27,6 @@
 */

 #define DRV_NAME	"starfire"
-#define DRV_VERSION	"2.1"
-#define DRV_RELDATE	"July  6, 2008"

 #include <linux/interrupt.h>
 #include <linux/module.h>
@@ -47,6 +45,7 @@
 #include <asm/processor.h>		/* Processor type for cache alignment. */
 #include <linux/uaccess.h>
 #include <asm/io.h>
+#include <linux/vermagic.h>

 /*
  * The current frame processor firmware fails to checksum a fragment
@@ -165,15 +164,9 @@ static int rx_copybreak /* = 0 */;
 #define FIRMWARE_RX	"adaptec/starfire_rx.bin"
 #define FIRMWARE_TX	"adaptec/starfire_tx.bin"

-/* These identify the driver base version and may not be removed. */
-static const char version[] =
-KERN_INFO "starfire.c:v1.03 7/26/2000  Written by Donald Becker <becker@scyld.com>\n"
-" (unofficial 2.2/2.4 kernel port, version " DRV_VERSION ", " DRV_RELDATE ")\n";
-
 MODULE_AUTHOR("Donald Becker <becker@scyld.com>");
 MODULE_DESCRIPTION("Adaptec Starfire Ethernet driver");
 MODULE_LICENSE("GPL");
-MODULE_VERSION(DRV_VERSION);
 MODULE_FIRMWARE(FIRMWARE_RX);
 MODULE_FIRMWARE(FIRMWARE_TX);

@@ -654,13 +647,6 @@ static int starfire_init_one(struct pci_dev *pdev,
 	int drv_flags, io_size;
 	int boguscnt;

-/* when built into the kernel, we only print version if device is found */
-#ifndef MODULE
-	static int printed_version;
-	if (!printed_version++)
-		printk(version);
-#endif
-
 	if (pci_enable_device (pdev))
 		return -EIO;

@@ -1853,7 +1839,6 @@ static void get_drvinfo(struct net_device *dev, struct ethtool_drvinfo *info)
 {
 	struct netdev_private *np = netdev_priv(dev);
 	strlcpy(info->driver, DRV_NAME, sizeof(info->driver));
-	strlcpy(info->version, DRV_VERSION, sizeof(info->version));
 	strlcpy(info->bus_info, pci_name(np->pci_dev), sizeof(info->bus_info));
 }

@@ -2073,8 +2058,6 @@ static int __init starfire_init (void)
 {
 /* when a module, this is printed whether or not devices are found in probe */
 #ifdef MODULE
-	printk(version);
-
 	printk(KERN_INFO DRV_NAME ": polling (NAPI) enabled\n");
 #endif

--
2.24.1
