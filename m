From: Leon Romanovsky <leon@kernel.org>
Subject: [PATCH net-next v1 07/18] net/agere: Delete unneeded driver version
Date: Mon, 24 Feb 2020 10:53:00 +0200
Message-ID: <20200224085311.460338-8-leon@kernel.org>
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

There is no need in driver version for in-tree kernel code.

Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
---
 drivers/net/ethernet/agere/et131x.c | 1 -
 drivers/net/ethernet/agere/et131x.h | 1 -
 2 files changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/agere/et131x.c b/drivers/net/ethernet/agere/et131x.c
index cb6a761d5c11..1b19385ad8a9 100644
--- a/drivers/net/ethernet/agere/et131x.c
+++ b/drivers/net/ethernet/agere/et131x.c
@@ -2958,7 +2958,6 @@ static void et131x_get_drvinfo(struct net_device *netdev,
 	struct et131x_adapter *adapter = netdev_priv(netdev);

 	strlcpy(info->driver, DRIVER_NAME, sizeof(info->driver));
-	strlcpy(info->version, DRIVER_VERSION, sizeof(info->version));
 	strlcpy(info->bus_info, pci_name(adapter->pdev),
 		sizeof(info->bus_info));
 }
diff --git a/drivers/net/ethernet/agere/et131x.h b/drivers/net/ethernet/agere/et131x.h
index be9a11c02526..d0e922584d8a 100644
--- a/drivers/net/ethernet/agere/et131x.h
+++ b/drivers/net/ethernet/agere/et131x.h
@@ -46,7 +46,6 @@
  */

 #define DRIVER_NAME "et131x"
-#define DRIVER_VERSION "v2.0"

 /* EEPROM registers */

--
2.24.1
