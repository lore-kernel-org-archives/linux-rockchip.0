From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v4 5/8] rockchip: rk3399: Add bootcount support
Date: Thu,  9 Jan 2020 14:22:19 +0530
Message-ID: <20200109085222.22670-6-jagan@amarulasolutions.com>
References: <20200109085222.22670-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200109085222.22670-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Cc: u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Add bootcount support for Rockchip rk3399.

The bootcount value is preserved in PMU_SYS_REG0 register,
this would help to support redundent boot.

Once the redundant boot triggers, the altboot command
will look for extlinux-rollback.conf on particular
bootable partition which supposed to be a recovery
partition where redundant boot required.

Reviewed-by: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 arch/arm/mach-rockchip/Kconfig        |  2 ++
 arch/arm/mach-rockchip/rk3399/Kconfig | 10 ++++++++++
 include/configs/rk3399_common.h       |  5 ++++-
 3 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index d8d68ba447..9a3c65ec58 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -244,6 +244,8 @@ config ROCKCHIP_RK3399
 	imply TPL_CLK
 	imply TPL_TINY_MEMSET
 	imply TPL_ROCKCHIP_COMMON_BOARD
+	imply SYS_BOOTCOUNT_SINGLEWORD if BOOTCOUNT_LIMIT
+	imply CMD_BOOTCOUNT if BOOTCOUNT_LIMIT
 	help
 	  The Rockchip RK3399 is a ARM-based SoC with a dual-core Cortex-A72
 	  and quad-core Cortex-A53.
diff --git a/arch/arm/mach-rockchip/rk3399/Kconfig b/arch/arm/mach-rockchip/rk3399/Kconfig
index 868e85fc2a..f994152803 100644
--- a/arch/arm/mach-rockchip/rk3399/Kconfig
+++ b/arch/arm/mach-rockchip/rk3399/Kconfig
@@ -113,6 +113,16 @@ config TPL_TEXT_BASE
 config SPL_STACK_R_ADDR
 	default 0x04000000
 
+if BOOTCOUNT_LIMIT
+
+config BOOTCOUNT_BOOTLIMIT
+	default 3
+
+config SYS_BOOTCOUNT_ADDR
+	default 0xff3100f0	# PMU_SYS_REG0
+
+endif # BOOTCOUNT_LIMIT
+
 source "board/rockchip/evb_rk3399/Kconfig"
 source "board/theobroma-systems/puma_rk3399/Kconfig"
 source "board/vamrs/rock960_rk3399/Kconfig"
diff --git a/include/configs/rk3399_common.h b/include/configs/rk3399_common.h
index 127ca1f09c..89a8a44bbe 100644
--- a/include/configs/rk3399_common.h
+++ b/include/configs/rk3399_common.h
@@ -63,7 +63,10 @@
 	"fdtfile=" CONFIG_DEFAULT_FDT_FILE "\0" \
 	"partitions=" PARTS_DEFAULT \
 	ROCKCHIP_DEVICE_SETTINGS \
-	BOOTENV
+	BOOTENV \
+	"altbootcmd=" \
+		"setenv boot_syslinux_conf extlinux/extlinux-rollback.conf;" \
+		"run distro_bootcmd\0"
 
 #endif
 
-- 
2.18.0.321.gffc6fa0e3
