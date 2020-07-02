From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH] rockchip: rk3288: Add OF board setup
Date: Thu,  2 Jul 2020 14:18:20 +0530
Message-ID: <20200702084820.35942-1-jagan@amarulasolutions.com>
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
To: Kever Yang <kever.yang@rock-chips.com>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Simon Glass <sjg@chromium.org>, heiko@sntech.de, mylene.josserand@collabora.com
Cc: Suniel Mahesh <sunil@amarulasolutions.com>, Michael Trimarchi <michael@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org, linux-amarula <linux-amarula@amarulasolutions.com>, Jagan Teki <jagan@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

The new rk3288 revision rk3288w has some changes with respect
to legacy rk3288 like hclk_vio and usb host0 ohci.

In order to work these on the same in Linux kernel update the
compatible the root compatible with rockchip,rk3288w before
booting.

So, this support during of board setup code of rk3288.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/mach-rockchip/Kconfig         |  1 +
 arch/arm/mach-rockchip/rk3288/rk3288.c | 26 ++++++++++++++++++++++++++
 2 files changed, 27 insertions(+)

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index b1008a5058..822d8d4e9c 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -98,6 +98,7 @@ config ROCKCHIP_RK322X
 config ROCKCHIP_RK3288
 	bool "Support Rockchip RK3288"
 	select CPU_V7A
+	select OF_BOARD_SETUP
 	select SUPPORT_SPL
 	select SPL
 	select SUPPORT_TPL
diff --git a/arch/arm/mach-rockchip/rk3288/rk3288.c b/arch/arm/mach-rockchip/rk3288/rk3288.c
index 804abe8a1b..8a682675e6 100644
--- a/arch/arm/mach-rockchip/rk3288/rk3288.c
+++ b/arch/arm/mach-rockchip/rk3288/rk3288.c
@@ -115,6 +115,32 @@ int rk_board_late_init(void)
 	return rk3288_board_late_init();
 }
 
+#ifdef CONFIG_OF_BOARD_SETUP
+
+#define RK3288_HDMI_PHYS	0xff980000
+#define RK3288W_HDMI_REV	0x1A
+#define HDMI_CONFIG0_ID		0x04
+
+int ft_board_setup(void *blob, bd_t *bd)
+{
+	u8 config0;
+	int ret;
+
+	config0 = readb(RK3288_HDMI_PHYS + HDMI_CONFIG0_ID);
+	if (config0 == RK3288W_HDMI_REV) {
+		ret = fdt_setprop_string(blob, 0,
+					 "compatible", "rockchip,rk3288w");
+		if (ret < 0) {
+			printf("failed to set rk3288w compatible (ret=%d)\n",
+			       ret);
+			return ret;
+		}
+	}
+
+	return 0;
+}
+#endif
+
 static int do_clock(struct cmd_tbl *cmdtp, int flag, int argc,
 		    char *const argv[])
 {
-- 
2.25.1
