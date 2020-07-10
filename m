From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v4 0/4] rtc: Add RK808 PMIC RTC
Date: Fri, 10 Jul 2020 21:20:53 +0530
Message-ID: <20200710155057.310168-1-jagan@amarulasolutions.com>
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

This series support RK808 PMIC RTC on rk3399. 

Changes for v4:
- rebase on master
- cleanup of style changes

Any inputs?
Jagan.

Suniel Mahesh (4):
  arm: dts: rockchip: rk3399-roc-pc: Add RTC child node for RK808 PMIC
  power: pmic: rk8xx: bind rk808 RTC
  rtc: rk8xx: Add base support for the RK808 PMIC RTC
  roc-rk3399-pc: Enable DM RTC

 arch/arm/dts/rk3399-roc-pc-u-boot.dtsi    |   8 +
 configs/roc-pc-mezzanine-rk3399_defconfig |   1 +
 configs/roc-pc-rk3399_defconfig           |   1 +
 drivers/power/pmic/rk8xx.c                |  19 ++-
 drivers/rtc/Kconfig                       |   8 +
 drivers/rtc/Makefile                      |   1 +
 drivers/rtc/rk808-rtc.c                   | 173 ++++++++++++++++++++++
 7 files changed, 210 insertions(+), 1 deletion(-)
 create mode 100644 drivers/rtc/rk808-rtc.c

-- 
2.25.1
