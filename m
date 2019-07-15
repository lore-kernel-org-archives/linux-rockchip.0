From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v3 08/18] ram: rockchip: Add initial Kconfig
Date: Mon, 15 Jul 2019 23:58:46 +0530
Message-ID: <20190715182856.21688-9-jagan@amarulasolutions.com>
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190715182856.21688-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, gajjar04akash-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Manivannan Sadhasivam <manivannan.sadhasivam-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Right now sdram drivers in rockchip SoC are built based
on the SoC configs which may not be an adequate solutions
while adding common or debug driver.

So, add meaningful Kconfig options start with rk3399.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 drivers/ram/Kconfig           |  1 +
 drivers/ram/rockchip/Kconfig  | 17 +++++++++++++++++
 drivers/ram/rockchip/Makefile |  2 +-
 3 files changed, 19 insertions(+), 1 deletion(-)
 create mode 100644 drivers/ram/rockchip/Kconfig

diff --git a/drivers/ram/Kconfig b/drivers/ram/Kconfig
index fbf7d7b20f..568d8f2c6a 100644
--- a/drivers/ram/Kconfig
+++ b/drivers/ram/Kconfig
@@ -54,4 +54,5 @@ config K3_AM654_DDRSS
 	  config add support for the initialization of the external
 	  SDRAM devices connected to DDR subsystem.
 
+source "drivers/ram/rockchip/Kconfig"
 source "drivers/ram/stm32mp1/Kconfig"
diff --git a/drivers/ram/rockchip/Kconfig b/drivers/ram/rockchip/Kconfig
new file mode 100644
index 0000000000..995cb487b8
--- /dev/null
+++ b/drivers/ram/rockchip/Kconfig
@@ -0,0 +1,17 @@
+config RAM_ROCKCHIP
+	bool "Ram drivers support for Rockchip SoCs"
+	depends on RAM && ARCH_ROCKCHIP
+	default y
+	help
+	  This enables support for ram drivers Rockchip SoCs.
+
+if RAM_ROCKCHIP
+
+config RAM_RK3399
+	bool "Ram driver for Rockchip RK3399"
+	default ROCKCHIP_RK3399
+	help
+	  This enables ram drivers support for the platforms based on
+	  Rockchip RK3399 SoC.
+
+endif # RAM_ROCKCHIP
diff --git a/drivers/ram/rockchip/Makefile b/drivers/ram/rockchip/Makefile
index 5df196066d..07d4b62a9d 100644
--- a/drivers/ram/rockchip/Makefile
+++ b/drivers/ram/rockchip/Makefile
@@ -9,4 +9,4 @@ obj-$(CONFIG_ROCKCHIP_RK3188) = sdram_rk3188.o
 obj-$(CONFIG_ROCKCHIP_RK322X) = sdram_rk322x.o
 obj-$(CONFIG_ROCKCHIP_RK3288) = sdram_rk3288.o
 obj-$(CONFIG_ROCKCHIP_RK3328) = sdram_rk3328.o
-obj-$(CONFIG_ROCKCHIP_RK3399) = sdram_rk3399.o
+obj-$(CONFIG_RAM_RK3399) += sdram_rk3399.o
-- 
2.18.0.321.gffc6fa0e3
