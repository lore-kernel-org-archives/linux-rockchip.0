From: Leon Romanovsky <leon@kernel.org>
Subject: [PATCH net-next v1 01/18] net/bond: Delete driver and module versions
Date: Mon, 24 Feb 2020 10:52:54 +0200
Message-ID: <20200224085311.460338-2-leon@kernel.org>
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

The in-kernel code has already unique version, which is based
on Linus's tag, update the bond driver to be consistent with that
version.

Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
---
 drivers/net/bonding/bond_main.c    | 6 +-----
 drivers/net/bonding/bonding_priv.h | 5 ++---
 2 files changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/net/bonding/bond_main.c b/drivers/net/bonding/bond_main.c
index c68c1d1387ee..2e70e43c5df5 100644
--- a/drivers/net/bonding/bond_main.c
+++ b/drivers/net/bonding/bond_main.c
@@ -4370,7 +4370,6 @@ static void bond_ethtool_get_drvinfo(struct net_device *bond_dev,
 				     struct ethtool_drvinfo *drvinfo)
 {
 	strlcpy(drvinfo->driver, DRV_NAME, sizeof(drvinfo->driver));
-	strlcpy(drvinfo->version, DRV_VERSION, sizeof(drvinfo->version));
 	snprintf(drvinfo->fw_version, sizeof(drvinfo->fw_version), "%d",
 		 BOND_ABI_VERSION);
 }
@@ -5008,8 +5007,6 @@ static int __init bonding_init(void)
 	int i;
 	int res;

-	pr_info("%s", bond_version);
-
 	res = bond_check_params(&bonding_defaults);
 	if (res)
 		goto out;
@@ -5064,6 +5061,5 @@ static void __exit bonding_exit(void)
 module_init(bonding_init);
 module_exit(bonding_exit);
 MODULE_LICENSE("GPL");
-MODULE_VERSION(DRV_VERSION);
-MODULE_DESCRIPTION(DRV_DESCRIPTION ", v" DRV_VERSION);
+MODULE_DESCRIPTION(DRV_DESCRIPTION);
 MODULE_AUTHOR("Thomas Davis, tadavis@lbl.gov and many others");
diff --git a/drivers/net/bonding/bonding_priv.h b/drivers/net/bonding/bonding_priv.h
index 5a4d81a9437c..45b77bc8c7b3 100644
--- a/drivers/net/bonding/bonding_priv.h
+++ b/drivers/net/bonding/bonding_priv.h
@@ -14,12 +14,11 @@

 #ifndef _BONDING_PRIV_H
 #define _BONDING_PRIV_H
+#include <linux/vermagic.h>

-#define DRV_VERSION	"3.7.1"
-#define DRV_RELDATE	"April 27, 2011"
 #define DRV_NAME	"bonding"
 #define DRV_DESCRIPTION	"Ethernet Channel Bonding Driver"

-#define bond_version DRV_DESCRIPTION ": v" DRV_VERSION " (" DRV_RELDATE ")\n"
+#define bond_version DRV_DESCRIPTION ": v" UTS_RELEASE "\n"

 #endif
