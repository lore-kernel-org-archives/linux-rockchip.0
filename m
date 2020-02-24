From: Leon Romanovsky <leon@kernel.org>
Subject: [PATCH net-next v1 02/18] net/dummy: Ditch driver and module versions
Date: Mon, 24 Feb 2020 10:52:55 +0200
Message-ID: <20200224085311.460338-3-leon@kernel.org>
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

Delete constant driver and module versions in favor of
standard global version which is unique to whole kernel.

Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
---
 drivers/net/dummy.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/net/dummy.c b/drivers/net/dummy.c
index 3031a5fc5427..bab3a9bb5e6f 100644
--- a/drivers/net/dummy.c
+++ b/drivers/net/dummy.c
@@ -42,7 +42,6 @@
 #include <linux/u64_stats_sync.h>

 #define DRV_NAME	"dummy"
-#define DRV_VERSION	"1.0"

 static int numdummies = 1;

@@ -104,7 +103,6 @@ static void dummy_get_drvinfo(struct net_device *dev,
 			      struct ethtool_drvinfo *info)
 {
 	strlcpy(info->driver, DRV_NAME, sizeof(info->driver));
-	strlcpy(info->version, DRV_VERSION, sizeof(info->version));
 }

 static const struct ethtool_ops dummy_ethtool_ops = {
@@ -212,4 +210,3 @@ module_init(dummy_init_module);
 module_exit(dummy_cleanup_module);
 MODULE_LICENSE("GPL");
 MODULE_ALIAS_RTNL_LINK(DRV_NAME);
-MODULE_VERSION(DRV_VERSION);
--
2.24.1
