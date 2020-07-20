From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 09/16] configs: Enable USB Gadget for rock-pi-n10
Date: Tue, 21 Jul 2020 00:21:13 +0530
Message-ID: <20200720185120.671064-10-jagan@amarulasolutions.com>
References: <20200720185120.671064-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200720185120.671064-1-jagan@amarulasolutions.com>
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

From: Suniel Mahesh <sunil@amarulasolutions.com>

Enable fastboot and USB gadget related config options for
rock-pi-n10 target which hosts RK3399Pro-VMARC-SOM .

Note: Connect the Host USB cable (Type A) to rock-pi-n10
USB 3.0 port on carrier board for fastboot.

Signed-off-by: Suniel Mahesh <sunil@amarulasolutions.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 configs/rock-pi-n10-rk3399pro_defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/configs/rock-pi-n10-rk3399pro_defconfig b/configs/rock-pi-n10-rk3399pro_defconfig
index ba2babe20f..895820fbe6 100644
--- a/configs/rock-pi-n10-rk3399pro_defconfig
+++ b/configs/rock-pi-n10-rk3399pro_defconfig
@@ -9,6 +9,7 @@ CONFIG_NR_DRAM_BANKS=1
 CONFIG_DEBUG_UART_BASE=0xFF1A0000
 CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_DEBUG_UART=y
+# CONFIG_ANDROID_BOOT_IMAGE is not set
 # CONFIG_CONSOLE_MUX is not set
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399pro-rock-pi-n10.dtb"
 CONFIG_MISC_INIT_R=y
@@ -55,8 +56,10 @@ CONFIG_USB_EHCI_HCD=y
 CONFIG_USB_EHCI_GENERIC=y
 CONFIG_USB_DWC3=y
 CONFIG_USB_DWC3_GENERIC=y
+CONFIG_ROCKCHIP_USB2_PHY=y
 CONFIG_USB_KEYBOARD=y
 # CONFIG_USB_KEYBOARD_FN_KEYS is not set
+CONFIG_USB_GADGET=y
 CONFIG_DM_VIDEO=y
 CONFIG_DISPLAY=y
 CONFIG_VIDEO_ROCKCHIP=y
-- 
2.25.1
