From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v2 0/6] rk3399: Sync linux v5.7-rc1 dts(i)
Date: Tue, 28 Apr 2020 15:30:13 +0530
Message-ID: <20200428100019.19155-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Cc: u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

This would help to add new boards along with new drivers
like DWC3, PCIe on rk3399 platform.

So, add v5.7-rc1 linux-next dts(i) files on rk3399 platform.

Changes for v2:
- keep roc-rk3399-pc dc_12v changes to -u-boot.dtsi 

[1] https://patchwork.ozlabs.org/project/uboot/cover/20200425105319.12009-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org/

Any inputs?
Jagan.

Jagan Teki (5):
  arm64: dts: rk3399-puma: Move u-boot properties into -u-boot.dtsi
  arm64: dts: rk3399-evb: Move u-boot properties into -u-boot.dtsi
  clk: rk3399: Set empty for HCLK_SD assigned-clocks
  arm64: dts: rk3399: Sync v5.7-rc1 from Linux
  arm: dts: rk3399: Sync roc-pc-mezzanine from v5.7-rc1

Suniel Mahesh (1):
  rk3399: Add ROC-RK3399-PC Mezzanine board

 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/cros-ec-keyboard.dtsi            |  10 +-
 arch/arm/dts/cros-ec-sbs.dtsi                 |  39 +-
 arch/arm/dts/rk3399-evb-u-boot.dtsi           |   8 +
 arch/arm/dts/rk3399-evb.dts                   | 522 ++++++++----
 arch/arm/dts/rk3399-ficus.dts                 |   6 +
 arch/arm/dts/rk3399-firefly.dts               | 251 ++++--
 arch/arm/dts/rk3399-gru-bob.dts               |  16 +-
 arch/arm/dts/rk3399-gru-chromebook.dtsi       |  40 +-
 arch/arm/dts/rk3399-gru-kevin.dts             |  34 +-
 arch/arm/dts/rk3399-gru.dtsi                  |  90 +-
 arch/arm/dts/rk3399-khadas-edge.dtsi          |   3 +
 arch/arm/dts/rk3399-leez-p710.dts             |  36 +-
 arch/arm/dts/rk3399-nanopc-t4.dts             |  47 +-
 arch/arm/dts/rk3399-nanopi4.dtsi              |  66 +-
 arch/arm/dts/rk3399-orangepi.dts              |  79 +-
 arch/arm/dts/rk3399-puma-u-boot.dtsi          |  31 +-
 arch/arm/dts/rk3399-puma.dtsi                 | 578 +++++--------
 .../dts/rk3399-roc-pc-mezzanine-u-boot.dtsi   |   6 +
 arch/arm/dts/rk3399-roc-pc-mezzanine.dts      |  93 ++
 arch/arm/dts/rk3399-roc-pc-u-boot.dtsi        |  36 +
 arch/arm/dts/rk3399-roc-pc.dts                |   3 +-
 arch/arm/dts/rk3399-roc-pc.dtsi               |  35 +-
 arch/arm/dts/rk3399-rock-pi-4.dts             | 129 +++
 arch/arm/dts/rk3399-rock960.dts               |  49 ++
 arch/arm/dts/rk3399-rock960.dtsi              |  13 +-
 arch/arm/dts/rk3399-rockpro64.dts             | 751 +----------------
 arch/arm/dts/rk3399-rockpro64.dtsi            | 797 ++++++++++++++++++
 arch/arm/dts/rk3399-u-boot.dtsi               |   1 +
 arch/arm/dts/rk3399.dtsi                      | 583 ++++++++-----
 board/firefly/roc-pc-rk3399/MAINTAINERS       |   2 +
 configs/roc-pc-mezzanine-rk3399_defconfig     |  67 ++
 drivers/clk/rockchip/clk_rk3399.c             |   1 +
 33 files changed, 2763 insertions(+), 1660 deletions(-)
 create mode 100644 arch/arm/dts/rk3399-roc-pc-mezzanine-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-roc-pc-mezzanine.dts
 create mode 100644 arch/arm/dts/rk3399-rockpro64.dtsi
 create mode 100644 configs/roc-pc-mezzanine-rk3399_defconfig

-- 
2.17.1
