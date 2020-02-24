From: Leon Romanovsky <leon@kernel.org>
Subject: [PATCH net-next v1 09/18] net/allwinner: Remove driver version
Date: Mon, 24 Feb 2020 10:53:02 +0200
Message-ID: <20200224085311.460338-10-leon@kernel.org>
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

There is no need in custom driver version for in-tree code.

Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
---
 drivers/net/ethernet/allwinner/sun4i-emac.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/allwinner/sun4i-emac.c b/drivers/net/ethernet/allwinner/sun4i-emac.c
index 22cadfbeedfb..18d3b4340bd4 100644
--- a/drivers/net/ethernet/allwinner/sun4i-emac.c
+++ b/drivers/net/ethernet/allwinner/sun4i-emac.c
@@ -33,7 +33,6 @@
 #include "sun4i-emac.h"

 #define DRV_NAME		"sun4i-emac"
-#define DRV_VERSION		"1.02"

 #define EMAC_MAX_FRAME_LEN	0x0600

@@ -212,7 +211,6 @@ static void emac_get_drvinfo(struct net_device *dev,
 			      struct ethtool_drvinfo *info)
 {
 	strlcpy(info->driver, DRV_NAME, sizeof(info->driver));
-	strlcpy(info->version, DRV_VERSION, sizeof(info->version));
 	strlcpy(info->bus_info, dev_name(&dev->dev), sizeof(info->bus_info));
 }
