From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v3 2/6] rock-pi-4: Enable PCI/NVME
Date: Tue,  7 Jul 2020 19:20:45 +0530
Message-ID: <20200707135049.9521-2-jagan@amarulasolutions.com>
References: <20200707135049.9521-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200707135049.9521-1-jagan@amarulasolutions.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Kever Yang <kever.yang@rock-chips.com>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Simon Glass <sjg@chromium.org>
Cc: Suniel Mahesh <sunil@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org, linux-amarula <linux-amarula@amarulasolutions.com>, Jagan Teki <jagan@amarulasolutions.com>, Tom Cubie <tom@radxa.com>
List-Id: linux-rockchip.vger.kernel.org

Enable PCI/NVME for M.2 Slot on RockPI-4 boards.

=> nvme info
Device 0: Vendor: 0x144d Rev: 2B2QEXM7 Prod: S4EUNG0MC10012Y
            Type: Hard Disk
            Capacity: 238475.1 MB = 232.8 GB (488397168 x 512)

Cc: Tom Cubie <tom@radxa.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
---
Changes for v3:
- collect kever review tag

 configs/rock-pi-4-rk3399_defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/configs/rock-pi-4-rk3399_defconfig b/configs/rock-pi-4-rk3399_defconfig
index 2487872219..f3eeef0293 100644
--- a/configs/rock-pi-4-rk3399_defconfig
+++ b/configs/rock-pi-4-rk3399_defconfig
@@ -18,6 +18,7 @@ CONFIG_TPL=y
 CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_GPT=y
 CONFIG_CMD_MMC=y
+CONFIG_CMD_PCI=y
 CONFIG_CMD_USB=y
 # CONFIG_CMD_SETEXPR is not set
 CONFIG_CMD_TIME=y
@@ -36,6 +37,8 @@ CONFIG_MMC_SDHCI_ROCKCHIP=y
 CONFIG_DM_ETH=y
 CONFIG_ETH_DESIGNWARE=y
 CONFIG_GMAC_ROCKCHIP=y
+CONFIG_NVME=y
+CONFIG_PCI=y
 CONFIG_PHY_ROCKCHIP_INNO_USB2=y
 CONFIG_PHY_ROCKCHIP_TYPEC=y
 CONFIG_PMIC_RK8XX=y
-- 
2.25.1
