From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 1/3] ram: rk3399: Drop debug stride in driver
Date: Tue, 14 Jul 2020 01:36:33 +0530
Message-ID: <20200713200635.651032-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
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
To: Kever Yang <kever.yang@rock-chips.com>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Simon Glass <sjg@chromium.org>
Cc: Suniel Mahesh <sunil@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org, linux-amarula <linux-amarula@amarulasolutions.com>, Jagan Teki <jagan@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

stride debug is already present in sdram_common.c via
RAM_ROCKCHIP_DEBUG.

So, drop the redundant debug stride code in rk3399 driver.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 25 -------------------------
 1 file changed, 25 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 60a1ab8b51..d2f3fde236 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -2875,31 +2875,6 @@ static unsigned char calculate_stride(struct rk3399_sdram_params *params)
 		if (stride == (-1))
 			goto error;
 	}
-	switch (stride) {
-	case 0xc:
-		printf("128B stride\n");
-		break;
-	case 5:
-	case 9:
-	case 0xd:
-	case 0x11:
-	case 0x19:
-		printf("256B stride\n");
-		break;
-	case 0xa:
-	case 0xe:
-	case 0x12:
-		printf("512B stride\n");
-		break;
-	case 0xf:
-		printf("4K stride\n");
-		break;
-	case 0x1f:
-		printf("32MB + 256B stride\n");
-		break;
-	default:
-		printf("no stride\n");
-	}
 
 	sdram_print_stride(stride);
 
-- 
2.25.1
