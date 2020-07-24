From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 7/7] doc: rockchip: Document Rockchip miniloader flashing
Date: Fri, 24 Jul 2020 16:21:19 +0530
Message-ID: <20200724105119.13123-8-jagan@amarulasolutions.com>
References: <20200724105119.13123-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200724105119.13123-1-jagan@amarulasolutions.com>
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

This would be useful and recommended boot flow for new boards
which has doesn't have the DDR support yet in mainline.

Sometimes it is very useful for debugging mainline DDR support.

Documen it for px30 boot flow.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 doc/board/rockchip/rockchip.rst | 40 ++++++++++++++++++++++++++++++++-
 1 file changed, 39 insertions(+), 1 deletion(-)

diff --git a/doc/board/rockchip/rockchip.rst b/doc/board/rockchip/rockchip.rst
index 8c92de0c92..ea061ad171 100644
--- a/doc/board/rockchip/rockchip.rst
+++ b/doc/board/rockchip/rockchip.rst
@@ -123,6 +123,9 @@ To build rk3399 boards::
 Flashing
 --------
 
+1. Package the image with U-Boot TPL/SPL
+-----------------------------------------
+
 SD Card
 ^^^^^^^
 
@@ -187,6 +190,39 @@ Copy SPI boot images into SD card and boot from SD::
         sf erase 0x60000 +$filesize
         sf write $kernel_addr_r 0x60000 ${filesize}
 
+2. Package the image with Rockchip miniloader
+---------------------------------------------
+
+Image package with Rockchip miniloader requires robin [1].
+
+Create idbloader.img
+
+.. code-block:: none
+
+  cd u-boot
+  ./tools/mkimage -n px30 -T rksd -d rkbin/bin/rk33/px30_ddr_333MHz_v1.15.bin idbloader.img
+  cat rkbin/bin/rk33/px30_miniloader_v1.22.bin >> idbloader.img
+  sudo dd if=idbloader.img of=/dev/sda seek=64
+
+Create trust.img
+
+.. code-block:: none
+
+  cd rkbin
+  ./tools/trust_merger RKTRUST/PX30TRUST.ini
+  sudo dd if=trust.img of=/dev/sda seek=24576
+
+Create uboot.img
+
+.. code-block:: none
+
+  rbink/tools/loaderimage --pack --uboot u-boot-dtb.bin uboot.img 0x200000
+  sudo dd if=uboot.img of=/dev/sda seek=16384
+
+Note:
+1. 0x200000 is load address and it's an optional in some platforms.
+2. rkbin binaries are kept on updating, so would recommend to use the latest versions.
+
 TODO
 ----
 
@@ -195,5 +231,7 @@ TODO
 - Document SPI flash boot
 - Add missing SoC's with it boards list
 
+[1] https://github.com/rockchip-linux/rkbin
+
 .. Jagan Teki <jagan@amarulasolutions.com>
-.. Tuesday 02 June 2020 12:18:57 AM IST
+.. Thursday 23 July 2020 04:50:22 PM IST
-- 
2.25.1
