From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v2 12/16] spl: Add watchdog support fot TPL
Date: Mon, 26 Aug 2019 23:51:07 +0530
Message-ID: <20190826182111.30999-13-jagan@amarulasolutions.com>
References: <20190826182111.30999-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190826182111.30999-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Cc: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Add support to build watchdog for TPL.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 common/spl/Kconfig | 9 +++++++++
 drivers/Makefile   | 2 +-
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/common/spl/Kconfig b/common/spl/Kconfig
index 660aa66d84..d4c5956b18 100644
--- a/common/spl/Kconfig
+++ b/common/spl/Kconfig
@@ -1370,6 +1370,15 @@ config TPL_YMODEM_SUPPORT
 	  means of transmitting U-Boot over a serial line for using in TPL,
 	  with a checksum to ensure correctness.
 
+config TPL_WATCHDOG_SUPPORT
+	bool "Support watchdog drivers"
+	imply TPL_WDT if !HW_WATCHDOG
+	help
+	  Enable support for watchdog drivers in TPL. A watchdog is
+	  typically a hardware peripheral which can reset the system when it
+	  detects no activity for a while (such as a software crash). This
+	  enables the drivers in drivers/watchdog as part of an TPL build.
+
 endif # TPL
 
 config SPL_AT91_MCK_BYPASS
diff --git a/drivers/Makefile b/drivers/Makefile
index a4bb5e4975..82f9ac4445 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -23,6 +23,7 @@ obj-$(CONFIG_$(SPL_TPL_)SPI_FLASH_SUPPORT) += mtd/spi/
 obj-$(CONFIG_$(SPL_TPL_)SPI_SUPPORT) += spi/
 obj-$(CONFIG_$(SPL_TPL_)TIMER) += timer/
 obj-$(CONFIG_$(SPL_TPL_)VIRTIO) += virtio/
+obj-$(CONFIG_$(SPL_TPL_)WATCHDOG_SUPPORT) += watchdog/
 obj-$(CONFIG_$(SPL_)DM_MAILBOX) += mailbox/
 obj-$(CONFIG_$(SPL_)REMOTEPROC) += remoteproc/
 obj-$(CONFIG_$(SPL_TPL_)TPM) += tpm/
@@ -53,7 +54,6 @@ obj-$(CONFIG_SPL_MUSB_NEW_SUPPORT) += usb/musb-new/
 obj-$(CONFIG_SPL_USB_GADGET) += usb/gadget/
 obj-$(CONFIG_SPL_USB_GADGET) += usb/common/
 obj-$(CONFIG_SPL_USB_GADGET) += usb/gadget/udc/
-obj-$(CONFIG_SPL_WATCHDOG_SUPPORT) += watchdog/
 obj-$(CONFIG_SPL_USB_HOST_SUPPORT) += usb/host/
 obj-$(CONFIG_OMAP_USB_PHY) += usb/phy/
 obj-$(CONFIG_SPL_SATA_SUPPORT) += ata/ scsi/
-- 
2.18.0.321.gffc6fa0e3
