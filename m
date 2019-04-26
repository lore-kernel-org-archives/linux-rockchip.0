From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH 0/5] rk3399: make u-boot-rockchip-with-spl.bin
Date: Fri, 26 Apr 2019 19:04:25 +0530
Message-ID: <20190426133430.17802-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>, Tom Rini <trini-OWPKS81ov/FWk0Htik3J/w@public.gmane.org>, Manivannan Sadhasivam <manivannan.sadhasivam-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
Cc: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

This series will create single bootable image 'u-boot-rockchip-with-spl.bin'
for rk3399 platform with single make command instead of building u-boot 
separately for u-boot.itb and burn them separately for SPL and U-Boot proper.

This series has dependecy with[1]

travis-ci issue:
- need to include 'python-pyelftools' package, tried but can't succeed
- right now build failed if BL31 is not exported, but this would manage to
create dummy arm64 elf but any help on this would appreciate.

[1] https://patchwork.ozlabs.org/cover/1091008/

Any inputs?
Jagan.

Jagan Teki (5):
  arm64: rockchip: dts: rk3399: Create -u-boot.dtsi files
  rockchip: rk3399: Get bl31.elf via BL31 env
  Kconfig: Add u-boot.itb BUILD_TARGET for Rockchip
  Makefile.spl: Create u-boot-spl-rockchip.bin for rk3399
  rockchip: rk3399: Create single image using BINMAN

 Kconfig                                 |  2 +-
 Makefile                                | 13 +++++++++++++
 arch/arm/dts/rk3399-evb-u-boot.dtsi     |  7 +++++++
 arch/arm/dts/rk3399-evb.dts             |  2 --
 arch/arm/dts/rk3399-ficus-u-boot.dtsi   |  7 +++++++
 arch/arm/dts/rk3399-ficus.dts           |  1 -
 arch/arm/dts/rk3399-firefly-u-boot.dtsi |  7 +++++++
 arch/arm/dts/rk3399-firefly.dts         |  2 --
 arch/arm/dts/rk3399-gru-bob-u-boot.dtsi |  7 +++++++
 arch/arm/dts/rk3399-gru-bob.dts         |  1 -
 arch/arm/dts/rk3399-gru.dtsi            |  1 -
 arch/arm/dts/rk3399-puma-ddr1600.dts    |  2 +-
 arch/arm/dts/rk3399-puma.dtsi           |  3 ---
 arch/arm/dts/rk3399-rock960-u-boot.dtsi |  7 +++++++
 arch/arm/dts/rk3399-rock960.dts         |  1 -
 arch/arm/dts/rk3399-u-boot.dtsi         | 21 +++++++++++++++++++++
 arch/arm/mach-rockchip/Kconfig          |  9 +++++++++
 arch/arm/mach-rockchip/make_fit_atf.py  |  5 ++++-
 doc/README.rockchip                     | 15 ++++-----------
 include/configs/rk3399_common.h         |  2 ++
 scripts/Makefile.spl                    | 21 +++++++++++++++++++++
 21 files changed, 111 insertions(+), 25 deletions(-)
 create mode 100644 arch/arm/dts/rk3399-evb-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-ficus-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-firefly-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-gru-bob-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-rock960-u-boot.dtsi

-- 
2.18.0.321.gffc6fa0e3
