From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 0/7] rockchip: Add Engicam PX30.Core support
Date: Fri, 24 Jul 2020 16:21:12 +0530
Message-ID: <20200724105119.13123-1-jagan@amarulasolutions.com>
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

PX30.Core is an EDIMM SOM based on Rockchip PX30 from Engicam.

PX30.Core needs to mount on top of Engicam baseboards for creating
complete platform boards.

Possible baseboards are,
- EDIMM2.2 Starter Kit
- C.TOUCH 2.0 10.1" Open Frame

Right now boot support is working via Rockchip miniloader, will
update to U-Boot TPL once the ddr supported.

Note: dts patches are in Linux mailing-list.

Any inputs?
Jagan.

Jagan Teki (7):
  arm: dts: rockchip: px30: Add Engicam EDIMM2.2 Starter Kit
  arm: dts: rockchip: Add Engicam PX30.Core SOM
  rockchip: px30: Add EVB_PX30 Kconfig help
  rockchip: Add Engicam PX30.Core EDIMM2.2 Starter Kit
  arm: dts: rockchip: px30: Add Engicam C.TOUCH 2.0 10.1" OF
  rockchip: Add Engicam PX30.Core C.TOUCH 2.0 10.1" OF
  doc: rockchip: Document Rockchip miniloader flashing

 arch/arm/dts/Makefile                         |   4 +-
 arch/arm/dts/px30-engicam-common.dtsi         |  31 +++
 arch/arm/dts/px30-engicam-ctouch2-of10.dtsi   |   7 +
 arch/arm/dts/px30-engicam-edimm2.2.dtsi       |   7 +
 arch/arm/dts/px30-px30-core-ctouch2-of10.dts  |  21 ++
 arch/arm/dts/px30-px30-core-edimm2.2.dts      |  21 ++
 arch/arm/dts/px30-px30-core.dtsi              | 250 ++++++++++++++++++
 arch/arm/mach-rockchip/px30/Kconfig           |  18 ++
 board/rockchip/evb_px30/MAINTAINERS           |  12 +
 configs/px30-core-ctouch2-of10-px30_defconfig | 108 ++++++++
 configs/px30-core-edimm2.2-px30_defconfig     | 108 ++++++++
 doc/board/rockchip/rockchip.rst               |  40 ++-
 12 files changed, 625 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/dts/px30-engicam-common.dtsi
 create mode 100644 arch/arm/dts/px30-engicam-ctouch2-of10.dtsi
 create mode 100644 arch/arm/dts/px30-engicam-edimm2.2.dtsi
 create mode 100644 arch/arm/dts/px30-px30-core-ctouch2-of10.dts
 create mode 100644 arch/arm/dts/px30-px30-core-edimm2.2.dts
 create mode 100644 arch/arm/dts/px30-px30-core.dtsi
 create mode 100644 configs/px30-core-ctouch2-of10-px30_defconfig
 create mode 100644 configs/px30-core-edimm2.2-px30_defconfig

-- 
2.25.1
