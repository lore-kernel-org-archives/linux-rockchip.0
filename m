From: Leon Romanovsky <leon@kernel.org>
Subject: [PATCH net-next v1 10/18] net/alteon: Properly report FW version
Date: Mon, 24 Feb 2020 10:53:03 +0200
Message-ID: <20200224085311.460338-11-leon@kernel.org>
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

The acenic driver assigns FW version in driver version field,
as part of cleanup driver version, set FW version properly.

Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
---
 drivers/net/ethernet/alteon/acenic.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/alteon/acenic.c b/drivers/net/ethernet/alteon/acenic.c
index f366faf88eee..5d192d551623 100644
--- a/drivers/net/ethernet/alteon/acenic.c
+++ b/drivers/net/ethernet/alteon/acenic.c
@@ -2699,9 +2699,8 @@ static void ace_get_drvinfo(struct net_device *dev,
 	struct ace_private *ap = netdev_priv(dev);

 	strlcpy(info->driver, "acenic", sizeof(info->driver));
-	snprintf(info->version, sizeof(info->version), "%i.%i.%i",
-		 ap->firmware_major, ap->firmware_minor,
-		 ap->firmware_fix);
+	snprintf(info->fw_version, sizeof(info->version), "%i.%i.%i",
+		 ap->firmware_major, ap->firmware_minor, ap->firmware_fix);

 	if (ap->pdev)
 		strlcpy(info->bus_info, pci_name(ap->pdev),
--
2.24.1
