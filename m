From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 2/3] ram: rk3399: Mark existing prints via RAM_ROCKCHIP_DEBUG
Date: Tue, 14 Jul 2020 01:36:34 +0530
Message-ID: <20200713200635.651032-2-jagan@amarulasolutions.com>
References: <20200713200635.651032-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Right now all these debug statements are printing on the
console to make sure proper dram initialization happens.  

Mark them into RAM_ROCKCHIP_DEBUG would be more meaningful
and work like before since the RAM_ROCKCHIP_DEBUG is by
default yet.

No functionality changes.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index d2f3fde236..670925420d 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -2551,8 +2551,10 @@ static int lpddr4_set_rate(struct dram_info *dram,
 		lpddr4_set_ctl(dram, params, ctl_fn,
 			       dfs_cfgs_lpddr4[ctl_fn].base.ddr_freq);
 
-		printf("%s: change freq to %d mhz %d, %d\n", __func__,
-		       dfs_cfgs_lpddr4[ctl_fn].base.ddr_freq, ctl_fn, phy_fn);
+		if (IS_ENABLED(CONFIG_RAM_ROCKCHIP_DEBUG))
+			printf("%s: change freq to %d mhz %d, %d\n", __func__,
+			       dfs_cfgs_lpddr4[ctl_fn].base.ddr_freq,
+			       ctl_fn, phy_fn);
 	}
 
 	return 0;
@@ -2966,8 +2968,10 @@ static int sdram_init(struct dram_info *dram,
 			params->base.num_channels++;
 		}
 
-		printf("Channel ");
-		printf(channel ? "1: " : "0: ");
+		if (IS_ENABLED(CONFIG_RAM_ROCKCHIP_DEBUG)) {
+			printf("Channel ");
+			printf(channel ? "1: " : "0: ");
+		}
 
 		if (channel == 0)
 			set_ddr_stride(dram->pmusgrf, 0x17);
-- 
2.25.1
