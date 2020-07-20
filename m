From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 10/16] configs: Enable USB 2.0 on Rock-PI-N8
Date: Tue, 21 Jul 2020 00:21:14 +0530
Message-ID: <20200720185120.671064-11-jagan@amarulasolutions.com>
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

Enable USB 2.0 and related configs for the Rock-PI-N8 target,
which hosts RK3288-VMARC-SOM.

Log:
Bus usb@ff500000: USB EHCI 1.00
Bus usb@ff540000: USB DWC2
Bus usb@ff580000: USB DWC2
scanning bus usb@ff500000 for devices... 2 USB Device(s) found
scanning bus usb@ff540000 for devices... 1 USB Device(s) found
scanning bus usb@ff580000 for devices... 1 USB Device(s) found
        scanning usb for storage devices... 1 Storage Device(s) found
=> usb tree
USB device tree:
1  Hub (480 Mb/s, 0mA)
|  u-boot EHCI Host Controller
|
+-2  Mass Storage (480 Mb/s, 224mA)
        SanDisk Dual Drive 04019c9b2e1a58f24ee318c3c123aa5

1  Hub (480 Mb/s, 0mA)
   U-Boot Root Hub

1  Hub (480 Mb/s, 0mA)
   U-Boot Root Hub

Signed-off-by: Suniel Mahesh <sunil@amarulasolutions.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 configs/rock-pi-n8-rk3288_defconfig | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/configs/rock-pi-n8-rk3288_defconfig b/configs/rock-pi-n8-rk3288_defconfig
index 6b31e19eda..4cbb07d870 100644
--- a/configs/rock-pi-n8-rk3288_defconfig
+++ b/configs/rock-pi-n8-rk3288_defconfig
@@ -22,6 +22,7 @@ CONFIG_CMD_GPIO=y
 CONFIG_CMD_GPT=y
 CONFIG_CMD_I2C=y
 CONFIG_CMD_MMC=y
+CONFIG_CMD_USB=y
 # CONFIG_CMD_SETEXPR is not set
 CONFIG_CMD_CACHE=y
 CONFIG_CMD_TIME=y
@@ -63,4 +64,11 @@ CONFIG_RAM=y
 CONFIG_SPL_RAM=y
 CONFIG_DEBUG_UART_SHIFT=2
 CONFIG_SYSRESET=y
+CONFIG_USB=y
+CONFIG_USB_EHCI_HCD=y
+CONFIG_USB_EHCI_GENERIC=y
+CONFIG_USB_DWC2=y
+CONFIG_ROCKCHIP_USB2_PHY=y
+CONFIG_USB_KEYBOARD=y
+# CONFIG_USB_KEYBOARD_FN_KEYS is not set
 CONFIG_ERRNO_STR=y
-- 
2.25.1
