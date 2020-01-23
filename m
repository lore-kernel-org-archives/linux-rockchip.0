From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 0/4] rockchip: rk3399: Fix HDMI out
Date: Thu, 23 Jan 2020 21:58:41 +0530
Message-ID: <20200123162845.10651-1-jagan@amarulasolutions.com>
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
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Cc: u-boot@lists.denx.de, linux-amarula@amarulasolutions.com, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Due to recent Linux dts(i) sync for rk3399. the existing
vop driver is not working with HDMI out on RK3399.

These patches fixing the same and enabled HDMI out new boards.

Any inputs?
Jagan.

Jagan Teki (4):
  arm64: dts: rk3399-u-boot: Delete vop assigned-clocks/rates
  video: rockchip: Fix vop modes for rk3399
  rockchip: Enable pre console for rk3399
  rockchip: Enable HDMI output on rk3399 board w/ HDMI

 arch/arm/dts/rk3399-u-boot.dtsi                 |  4 ++++
 arch/arm/include/asm/arch-rockchip/vop_rk3288.h | 11 +++++++++++
 arch/arm/mach-rockchip/Kconfig                  |  1 +
 common/Kconfig                                  |  1 +
 configs/nanopc-t4-rk3399_defconfig              |  6 ++++++
 configs/nanopi-m4-rk3399_defconfig              |  6 ++++++
 configs/nanopi-neo4-rk3399_defconfig            |  6 ++++++
 configs/roc-pc-rk3399_defconfig                 |  6 ++++++
 drivers/video/rockchip/rk3399_vop.c             |  2 --
 drivers/video/rockchip/rk_vop.c                 |  4 ++++
 include/configs/evb_rk3399.h                    |  5 +++++
 11 files changed, 50 insertions(+), 2 deletions(-)

-- 
2.18.0.321.gffc6fa0e3
