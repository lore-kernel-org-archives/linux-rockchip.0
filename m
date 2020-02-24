From: Leon Romanovsky <leon@kernel.org>
Subject: [PATCH net-next v1 16/18] net/aquantia: Delete module version
Date: Mon, 24 Feb 2020 10:53:09 +0200
Message-ID: <20200224085311.460338-17-leon@kernel.org>
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

There is no need to keep module and driver versions in in-tree
kernel code.

Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
---
 drivers/net/ethernet/aquantia/atlantic/aq_cfg.h     |  4 ----
 drivers/net/ethernet/aquantia/atlantic/aq_common.h  |  1 -
 drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c |  1 -
 drivers/net/ethernet/aquantia/atlantic/aq_main.c    |  1 -
 drivers/net/ethernet/aquantia/atlantic/ver.h        | 12 ------------
 5 files changed, 19 deletions(-)
 delete mode 100644 drivers/net/ethernet/aquantia/atlantic/ver.h

diff --git a/drivers/net/ethernet/aquantia/atlantic/aq_cfg.h b/drivers/net/ethernet/aquantia/atlantic/aq_cfg.h
index f0c41f7408e5..7560f5506e55 100644
--- a/drivers/net/ethernet/aquantia/atlantic/aq_cfg.h
+++ b/drivers/net/ethernet/aquantia/atlantic/aq_cfg.h
@@ -9,8 +9,6 @@
 #ifndef AQ_CFG_H
 #define AQ_CFG_H

-#include <generated/utsrelease.h>
-
 #define AQ_CFG_VECS_DEF   8U
 #define AQ_CFG_TCS_DEF    1U

@@ -85,7 +83,5 @@
 #define AQ_CFG_DRV_AUTHOR      "aQuantia"
 #define AQ_CFG_DRV_DESC        "aQuantia Corporation(R) Network Driver"
 #define AQ_CFG_DRV_NAME        "atlantic"
-#define AQ_CFG_DRV_VERSION	UTS_RELEASE \
-				AQ_CFG_DRV_VERSION_SUFFIX

 #endif /* AQ_CFG_H */
diff --git a/drivers/net/ethernet/aquantia/atlantic/aq_common.h b/drivers/net/ethernet/aquantia/atlantic/aq_common.h
index 42ea8d8daa46..c8c402b013bb 100644
--- a/drivers/net/ethernet/aquantia/atlantic/aq_common.h
+++ b/drivers/net/ethernet/aquantia/atlantic/aq_common.h
@@ -12,7 +12,6 @@
 #include <linux/etherdevice.h>
 #include <linux/pci.h>
 #include <linux/if_vlan.h>
-#include "ver.h"
 #include "aq_cfg.h"
 #include "aq_utils.h"

diff --git a/drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c b/drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c
index 7b55633d2cb9..0bdaa0d785b7 100644
--- a/drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c
+++ b/drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c
@@ -132,7 +132,6 @@ static void aq_ethtool_get_drvinfo(struct net_device *ndev,
 	regs_count = aq_nic_get_regs_count(aq_nic);

 	strlcat(drvinfo->driver, AQ_CFG_DRV_NAME, sizeof(drvinfo->driver));
-	strlcat(drvinfo->version, AQ_CFG_DRV_VERSION, sizeof(drvinfo->version));

 	snprintf(drvinfo->fw_version, sizeof(drvinfo->fw_version),
 		 "%u.%u.%u", firmware_version >> 24,
diff --git a/drivers/net/ethernet/aquantia/atlantic/aq_main.c b/drivers/net/ethernet/aquantia/atlantic/aq_main.c
index 538f460a3da7..9fcab646cbd5 100644
--- a/drivers/net/ethernet/aquantia/atlantic/aq_main.c
+++ b/drivers/net/ethernet/aquantia/atlantic/aq_main.c
@@ -19,7 +19,6 @@
 #include <linux/udp.h>

 MODULE_LICENSE("GPL v2");
-MODULE_VERSION(AQ_CFG_DRV_VERSION);
 MODULE_AUTHOR(AQ_CFG_DRV_AUTHOR);
 MODULE_DESCRIPTION(AQ_CFG_DRV_DESC);

diff --git a/drivers/net/ethernet/aquantia/atlantic/ver.h b/drivers/net/ethernet/aquantia/atlantic/ver.h
deleted file mode 100644
index 597654b51e01..000000000000
--- a/drivers/net/ethernet/aquantia/atlantic/ver.h
+++ /dev/null
@@ -1,12 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * aQuantia Corporation Network Driver
- * Copyright (C) 2014-2017 aQuantia Corporation. All rights reserved
- */
-
-#ifndef VER_H
-#define VER_H
-
-#define AQ_CFG_DRV_VERSION_SUFFIX "-kern"
-
-#endif /* VER_H */
