From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v2 0/9] rk3399: make u-boot-rockchip-with-spl.bin
Date: Sun, 28 Apr 2019 14:39:04 +0530
Message-ID: <20190428090913.10568-1-jagan@amarulasolutions.com>
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

This is v2 for previous series[1] to create single bootable image
using binman for rk3399 platform.

This series resolved the travis-ci build issuesi[2] which were listed
in previous series.

Series introduce BL31 env for exporting bl31.elf, If the builds 
are not exporting BL31 env, the make_fit_atf.py explicitly 
create dummy bl31.elf in u-boot root directory.

patch 1, 2: clean targets for bl31_*.bin and image.map

patch 3: travis.yml for pyelftools

patch 4: add BL31 env for bl31.elf

patch 5: add BL31 env for bl31.bin, PMUM0 env for rk3399m0.bin

patch 6: BUILD_TARGET patch

patch 7: create u-boot-spl-rockchip.bin

patch 8: order dtb builds based on SoC type

patch 9: create u-boot-rockchip-with-spl.bin

Changes for v2:
- Add few clean target patches
- update bl31.elf env handling code, with logging
- support puma itb, via BL31 and PMUM0 env
- enable BUILD_TARGET for ROCKCHIP_RK3399
- add patch to build rockchip dtbs based on SoC types
- update binman patch

[1] https://patchwork.ozlabs.org/cover/1091542/
[2] https://travis-ci.org/openedev/u-boot-amarula/builds/525545316

Jagan Teki (9):
  Makefile: clean image.map
  Makefile: clean bl31_*.bin
  travis.yml: Add pyelftools install entry
  rockchip: rk3399: Get bl31.elf via BL31
  board: puma: Get bl31.bin via BL31 and rk3399m0.bin via PMUM0
  Kconfig: Add u-boot.itb BUILD_TARGET for Rockchip
  Makefile.spl: Create u-boot-spl-rockchip.bin for rk3399
  dts: Makefile: Build rockchip dtbs based on SoC types
  rockchip: rk3399: Create single image using BINMAN

 .travis.yml                                   |  1 +
 Kconfig                                       |  2 +-
 Makefile                                      | 16 ++++++-
 arch/arm/dts/Makefile                         | 35 ++++++++++----
 arch/arm/dts/rk3399-ficus-u-boot.dtsi         |  1 +
 arch/arm/dts/rk3399-rock960-u-boot.dtsi       |  1 +
 arch/arm/dts/rk3399-u-boot.dtsi               | 17 +++++++
 arch/arm/mach-rockchip/Kconfig                |  9 ++++
 arch/arm/mach-rockchip/make_fit_atf.py        | 11 ++++-
 .../{fit_spl_atf.its => fit_spl_atf.sh}       | 46 ++++++++++++++++---
 configs/puma-rk3399_defconfig                 |  2 +-
 doc/README.rockchip                           | 23 ++++------
 include/configs/rk3399_common.h               |  2 +
 scripts/Makefile.spl                          | 21 +++++++++
 14 files changed, 153 insertions(+), 34 deletions(-)
 rename board/theobroma-systems/puma_rk3399/{fit_spl_atf.its => fit_spl_atf.sh} (50%)
 mode change 100644 => 100755

-- 
2.18.0.321.gffc6fa0e3
