From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v2 6/6] roc-rk3399-pc: Update ENV offset, size
Date: Thu, 18 Jun 2020 19:42:59 +0530
Message-ID: <20200618141259.155581-6-jagan@amarulasolutions.com>
References: <20200618141259.155581-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200618141259.155581-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: U-Boot-Denx <u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula <linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Suniel Mahesh <sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Adjust the ENV offset, size to fit into all images
on 16MB flash.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
Changes for v2:
- rebase on master

 configs/rock-pi-4-rk3399_defconfig | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/configs/rock-pi-4-rk3399_defconfig b/configs/rock-pi-4-rk3399_defconfig
index 0d86fdc895..2487872219 100644
--- a/configs/rock-pi-4-rk3399_defconfig
+++ b/configs/rock-pi-4-rk3399_defconfig
@@ -28,6 +28,7 @@ CONFIG_ENV_IS_IN_MMC=y
 CONFIG_SYS_RELOC_GD_ENV_ADDR=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
+CONFIG_MISC=y
 CONFIG_MMC_DW=y
 CONFIG_MMC_DW_ROCKCHIP=y
 CONFIG_MMC_SDHCI=y
@@ -35,11 +36,14 @@ CONFIG_MMC_SDHCI_ROCKCHIP=y
 CONFIG_DM_ETH=y
 CONFIG_ETH_DESIGNWARE=y
 CONFIG_GMAC_ROCKCHIP=y
+CONFIG_PHY_ROCKCHIP_INNO_USB2=y
 configs/roc-pc-mezzanine-rk3399_defconfig | 4 ++--
 configs/roc-pc-rk3399_defconfig           | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/configs/roc-pc-mezzanine-rk3399_defconfig b/configs/roc-pc-mezzanine-rk3399_defconfig
index 7906948374..595f052cb7 100644
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
 CONFIG_ROCKCHIP_RK3399=y
 CONFIG_TARGET_ROC_PC_RK3399=y
diff --git a/configs/roc-pc-rk3399_defconfig b/configs/roc-pc-rk3399_defconfig
index 046fb73858..1c4db3443f 100644
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
 CONFIG_ROCKCHIP_RK3399=y
 CONFIG_TARGET_ROC_PC_RK3399=y
-- 
2.25.1
