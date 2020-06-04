From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v3 0/4] rockchip: rk3399: Add SPI boot
Date: Thu,  4 Jun 2020 20:21:37 +0530
Message-ID: <20200604145141.356702-1-jagan@amarulasolutions.com>
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
To: Kever Yang <kever.yang@rock-chips.com>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Simon Glass <sjg@chromium.org>, Hugh Cole-Baker <sigmaris@gmail.com>
Cc: Suniel Mahesh <sunil@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org, linux-amarula <linux-amarula@amarulasolutions.com>, Jagan Teki <jagan@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

Thanks to Hugh Cole-Baker for inputs about SPI boot
image creation.

V2 changes can be available at [1]
Changes for v3:
- SPI env offset, size changes based on roc-rk3399-pc
Changes for v2:
- same defconfig to support both MMC, SPI boot
- add spi flash program document 

Any inputs?
Jagan.

[1] https://patchwork.ozlabs.org/project/uboot/cover/20200601204213.466120-1-jagan@amarulasolutions.com/

Jagan Teki (4):
  Makefile: Drop to handle rkspi image type
  roc-rk3399-pc: Mark default env from SPI
  roc-rk3399-pc: Add SPI boot
  doc: rockchip: Document SPI flash program steps

 Makefile                                  | 11 ++--------
 arch/arm/dts/rk3399-roc-pc-u-boot.dtsi    | 12 ++++++++++-
 configs/roc-pc-mezzanine-rk3399_defconfig |  9 ++++++--
 configs/roc-pc-rk3399_defconfig           |  9 ++++++--
 doc/board/rockchip/rockchip.rst           | 26 ++++++++++++++++++++++-
 include/configs/roc-pc-rk3399.h           |  4 ----
 6 files changed, 52 insertions(+), 19 deletions(-)

-- 
2.25.1
