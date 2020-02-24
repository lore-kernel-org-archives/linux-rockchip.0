From: Leon Romanovsky <leon@kernel.org>
Subject: [PATCH net-next v1 05/18] net/aeroflex: Clean ethtool_info struct assignments
Date: Mon, 24 Feb 2020 10:52:58 +0200
Message-ID: <20200224085311.460338-6-leon@kernel.org>
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

If FW version is not available, it is enough to leave that field as
empty, there is no need to write N/A.

The driver version is replaced in favor of generally available
in-tree variant.

Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
---
 drivers/net/ethernet/aeroflex/greth.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/aeroflex/greth.c b/drivers/net/ethernet/aeroflex/greth.c
index 2a9f8643629c..198f1544e271 100644
--- a/drivers/net/ethernet/aeroflex/greth.c
+++ b/drivers/net/ethernet/aeroflex/greth.c
@@ -1114,7 +1114,6 @@ static void greth_get_drvinfo(struct net_device *dev, struct ethtool_drvinfo *in

 	strlcpy(info->driver, dev_driver_string(greth->dev),
 		sizeof(info->driver));
-	strlcpy(info->version, "revision: 1.0", sizeof(info->version));
 	strlcpy(info->bus_info, greth->dev->bus->name, sizeof(info->bus_info));
 	strlcpy(info->fw_version, "N/A", sizeof(info->fw_version));
 }
--
2.24.1
