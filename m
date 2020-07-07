From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v3 6/6] roc-rk3399-pc: Update ENV offset, size
Date: Tue,  7 Jul 2020 19:20:49 +0530
Message-ID: <20200707135049.9521-6-jagan@amarulasolutions.com>
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
Cc: Suniel Mahesh <sunil@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org, linux-amarula <linux-amarula@amarulasolutions.com>, Jagan Teki <jagan@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

Adjust the ENV offset, size to fit into all images
on 16MB flash.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- fix configs

 configs/roc-pc-mezzanine-rk3399_defconfig | 4 ++--
 configs/roc-pc-rk3399_defconfig           | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/configs/roc-pc-mezzanine-rk3399_defconfig b/configs/roc-pc-mezzanine-rk3399_defconfig
index b2c370cc59..f15dddc684 100644
--- a/configs/roc-pc-mezzanine-rk3399_defconfig
+++ b/configs/roc-pc-mezzanine-rk3399_defconfig
@@ -1,8 +1,8 @@
 CONFIG_ARM=y
 CONFIG_ARCH_ROCKCHIP=y
 CONFIG_SYS_TEXT_BASE=0x00200000
-CONFIG_ENV_SIZE=0x6000
-CONFIG_ENV_OFFSET=0x460000
+CONFIG_ENV_SIZE=0x8000
+CONFIG_ENV_OFFSET=0x3F8000
 CONFIG_ENV_SECT_SIZE=0x1000
 CONFIG_SPL_DM_SPI=y
 CONFIG_ROCKCHIP_RK3399=y
diff --git a/configs/roc-pc-rk3399_defconfig b/configs/roc-pc-rk3399_defconfig
index 588d03952a..9ffde7f960 100644
--- a/configs/roc-pc-rk3399_defconfig
+++ b/configs/roc-pc-rk3399_defconfig
@@ -1,8 +1,8 @@
 CONFIG_ARM=y
 CONFIG_ARCH_ROCKCHIP=y
 CONFIG_SYS_TEXT_BASE=0x00200000
-CONFIG_ENV_SIZE=0x6000
-CONFIG_ENV_OFFSET=0x460000
+CONFIG_ENV_SIZE=0x8000
+CONFIG_ENV_OFFSET=0x3F8000
 CONFIG_ENV_SECT_SIZE=0x1000
 CONFIG_SPL_DM_SPI=y
 CONFIG_ROCKCHIP_RK3399=y
-- 
2.25.1
