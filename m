From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v6 0/5] rockchip: roc-rk3399-pc: Custom SPL
Date: Tue, 21 Jul 2020 20:35:59 +0530
Message-ID: <20200721150604.35410-1-jagan@amarulasolutions.com>
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

This series supports custom initialization code required for 
roc-rk3399-pc board on SPL stage.

Now this series is well mature code handling to add custom 
spl_board_init code parts.

roc-rk3399-pc would require custom leds initialization based 
on user intervention of the power key. This code handles the 
user intervention via SPI environment variable. If someone 
or production systems wants this feature then 'pwr_key' has 
to be set otherwise it is normal like other rk3399 boards 
in Mainline.

Changes for v6:
- use spl board init code for led_setup 
Changes for v5:
- drop banner changes
- add code changes in roc-pc-rk3399.c
Changes for v4:
- enable SPL_BOARD_INIT in all platforms
Changes for v3:
- support leds on SPL
- support env 'pwr_key'

Jagan Teki (5):
  rockchip: rk3399: Add weak led_setup()
  rockchip: roc-rk3399-pc: Add custom led_setup()
  rockchip: Don't clear the reset status reg
  rockchip: Separate the reset cause from display cpuinfo
  rockchip: roc-rk3399-pc: Set LED only during POR and pwr_key=y

 arch/arm/include/asm/arch-rockchip/cru.h    |  3 +-
 arch/arm/mach-rockchip/Makefile             |  5 ++-
 arch/arm/mach-rockchip/cpu-info.c           | 26 ++++++-----
 arch/arm/mach-rockchip/rk3399/rk3399.c      |  6 +++
 arch/arm/mach-rockchip/tpl.c                |  7 ---
 board/firefly/roc-pc-rk3399/roc-pc-rk3399.c | 48 +++++++++++++++++----
 configs/roc-pc-mezzanine-rk3399_defconfig   |  6 ++-
 configs/roc-pc-rk3399_defconfig             |  6 ++-
 8 files changed, 71 insertions(+), 36 deletions(-)

-- 
2.25.1
