From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 3/3] roc-rk3399-pc: Disable RAM_ROCKCHIP_DEBUG
Date: Tue, 14 Jul 2020 01:36:35 +0530
Message-ID: <20200713200635.651032-3-jagan@amarulasolutions.com>
References: <20200713200635.651032-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200713200635.651032-1-jagan@amarulasolutions.com>
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

Disable ram rockchip debug driver for roc-rk3399-pc
boards since we have verified ram in many instances
with respective U-Boot versions.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 configs/roc-pc-mezzanine-rk3399_defconfig | 1 +
 configs/roc-pc-rk3399_defconfig           | 1 +
 2 files changed, 2 insertions(+)

diff --git a/configs/roc-pc-mezzanine-rk3399_defconfig b/configs/roc-pc-mezzanine-rk3399_defconfig
index f15dddc684..c87a8568fc 100644
--- a/configs/roc-pc-mezzanine-rk3399_defconfig
+++ b/configs/roc-pc-mezzanine-rk3399_defconfig
@@ -53,6 +53,7 @@ CONFIG_PMIC_RK8XX=y
 CONFIG_REGULATOR_PWM=y
 CONFIG_REGULATOR_RK8XX=y
 CONFIG_PWM_ROCKCHIP=y
+# CONFIG_RAM_ROCKCHIP_DEBUG is not set
 CONFIG_RAM_RK3399_LPDDR4=y
 CONFIG_DM_RESET=y
 CONFIG_BAUDRATE=1500000
diff --git a/configs/roc-pc-rk3399_defconfig b/configs/roc-pc-rk3399_defconfig
index 9ffde7f960..601f5c6ae1 100644
--- a/configs/roc-pc-rk3399_defconfig
+++ b/configs/roc-pc-rk3399_defconfig
@@ -50,6 +50,7 @@ CONFIG_PMIC_RK8XX=y
 CONFIG_REGULATOR_PWM=y
 CONFIG_REGULATOR_RK8XX=y
 CONFIG_PWM_ROCKCHIP=y
+# CONFIG_RAM_ROCKCHIP_DEBUG is not set
 CONFIG_RAM_RK3399_LPDDR4=y
 CONFIG_DM_RESET=y
 CONFIG_BAUDRATE=1500000
-- 
2.25.1
