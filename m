From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 1/2] rk3399: Add boot flash script offet, size
Date: Mon,  3 Feb 2020 14:49:23 +0530
Message-ID: <20200203091924.15385-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Cc: u-boot@lists.denx.de, linux-amarula@amarulasolutions.com, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Most of the SPI flash devices in rockchip (rk3399)
are 16MiB size. So, let's use the script offset at
the end of 8K. 

This way it cannot overlap any offsets being used
by software components in flash layout.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
---
 include/configs/rk3399_common.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/configs/rk3399_common.h b/include/configs/rk3399_common.h
index 89a8a44bbe..01a9174bd2 100644
--- a/include/configs/rk3399_common.h
+++ b/include/configs/rk3399_common.h
@@ -48,6 +48,8 @@
 
 #define ENV_MEM_LAYOUT_SETTINGS \
 	"scriptaddr=0x00500000\0" \
+	"script_offset_f=0xffe000\0" \
+	"script_size_f=0x2000\0" \
 	"pxefile_addr_r=0x00600000\0" \
 	"fdt_addr_r=0x01f00000\0" \
 	"kernel_addr_r=0x02080000\0" \
-- 
2.17.1
