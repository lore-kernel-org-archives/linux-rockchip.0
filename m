From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v2 4/4] doc: rockchip: Document SPI flash program steps
Date: Tue,  2 Jun 2020 02:12:13 +0530
Message-ID: <20200601204213.466120-5-jagan@amarulasolutions.com>
References: <20200601204213.466120-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200601204213.466120-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Hugh Cole-Baker <sigmaris-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: U-Boot-Denx <u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula <linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Suniel Mahesh <sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Document SPI flash program steps for rockchip platforms.

Suggested-by: Hugh Cole-Baker <sigmaris-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 doc/board/rockchip/rockchip.rst | 26 +++++++++++++++++++++++++-
 1 file changed, 25 insertions(+), 1 deletion(-)

diff --git a/doc/board/rockchip/rockchip.rst b/doc/board/rockchip/rockchip.rst
index 7b72fab496..76b228a046 100644
--- a/doc/board/rockchip/rockchip.rst
+++ b/doc/board/rockchip/rockchip.rst
@@ -162,6 +162,30 @@ Program the flash::
 Note: for rockchip 32-bit platforms the U-Boot proper image
 is u-boot-dtb.img
 
+SPI
+^^^
+
+Generating idbloader for SPI boot would require to input a multi image
+image format to mkimage tool instead of concerting (like for MMC boot).
+
+SPL-alone SPI boot image::
+
+        ./tools/mkimage -n rk3399 -T rkspi -d spl/u-boot-spl.bin idbloader.img
+
+TPL+SPL SPI boot image::
+
+        ./tools/mkimage -n rk3399 -T rkspi -d tpl/u-boot-tpl.bin:spl/u-boot-spl.bin idbloader.img
+
+Copy SPI boot images into SD card and boot from SD::
+
+        sf probe
+        load mmc 1:1 $kernel_addr_r idbloader.img
+        sf erase 0 +$filesize
+        sf write $kernel_addr_r 0 ${filesize}
+        load mmc 1:1 ${kernel_addr_r} u-boot.itb
+        sf erase 0x60000 +$filesize
+        sf write $kernel_addr_r 0x60000 ${filesize}
+
 TODO
 ----
 
@@ -171,4 +195,4 @@ TODO
 - Add missing SoC's with it boards list
 
 .. Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
-.. Sunday 24 May 2020 10:08:41 PM IST
+.. Tuesday 02 June 2020 12:18:57 AM IST
-- 
2.25.1
