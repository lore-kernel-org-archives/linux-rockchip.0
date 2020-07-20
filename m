From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 00/16] board: Add new features for ROCKPi N8/N10
Date: Tue, 21 Jul 2020 00:21:04 +0530
Message-ID: <20200720185120.671064-1-jagan@amarulasolutions.com>
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

Add new features like USB, HDMI, PCIe on ROCKPi N8/N10 boards.

All dts patches are Synced from linux-next and mailing list.

Any inputs?
Jagan.

Jagan Teki (8):
  ARM: dts: rockchip: Sync ROCKPi N8/N10 dts(i) from Linux
  ARM: dts: rockchip: Add usb host0 ohci node for rk3288
  ARM: dts: rockchip: Add USB for RockPI N8/N10
  arm: dts: rockchip: Add HDMI out for RockPI N8/N10
  arm64: dts: rockchip: Add PCIe for RockPI N10
  rock-pi-n10: Enable PCI/NVME
  arm64: dts: rockchip: Add u-boot,spl-boot-order for ROCKPi N10
  rock-p-n8/n10: Disable RAM_ROCKCHIP_DEBUG

Suniel Mahesh (8):
  arm: dts: rockchip: Sync rk3288 dtsi from linux
  configs: Enable USB host on Rock-PI-N10
  configs: Enable HDMI output
  configs: Enable USB Gadget for rock-pi-n10
  configs: Enable USB 2.0 on Rock-PI-N8
  configs: Enable USB Gadget on rock-pi-n8
  rk3288: rock-pi-n8: Add console settings
  configs: Enable HDMI output for rock-pi-n8

 arch/arm/dts/rk3288-rock-pi-n8.dts            |   2 +-
 arch/arm/dts/rk3288-vmarc-som.dtsi            | 132 +++++++-----
 arch/arm/dts/rk3288.dtsi                      |  17 +-
 .../arm/dts/rk3399pro-rock-pi-n10-u-boot.dtsi |   6 +
 arch/arm/dts/rk3399pro-rock-pi-n10.dts        |   6 +-
 arch/arm/dts/rk3399pro-vmarc-som.dtsi         | 201 ++++++++++++++----
 .../dts/rockchip-radxa-dalang-carrier.dtsi    |  95 ++++++---
 configs/rock-pi-n10-rk3399pro_defconfig       |  25 +++
 configs/rock-pi-n8-rk3288_defconfig           |  17 ++
 include/configs/evb_rk3288.h                  |   6 +-
 10 files changed, 379 insertions(+), 128 deletions(-)

-- 
2.25.1
