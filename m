From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v7 0/7] rockchip: Add Binman support
Date: Fri, 10 Jan 2020 00:16:15 +0530
Message-ID: <20200109184622.3098-1-jagan@amarulasolutions.com>
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
Cc: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

This is v7 set for Binman support in rockchip, [1] here is
previous patchset.

This series add single boot image with binman for arm32 and
pad_cat for arm64 rockchip platforms both TPL + SPL and SPL-alone
targets.

Changes for v7:
- fix rock board
- fix phycore-rk3288 size blow issue
Changes for v6:
- drop idbloader.img filename change patch
- update rockchip.rst to include, rockchip TPL, SPI boot as TODO
Changes for v5:
- collect kever review tag
- drop idbloader.img from clean target
Changes for v4:
- support all rockchip platforms
- add new patches for dtsi changes
- update documentation
- format proper commit message
- rebase on master
Changes for v3:
- rebase on master
- add binman for rk3288, rk3328, rk3368, rk3399
- added rst documentation for rockchip
Changes for v2:
- Add few clean target patches
- update bl31.elf env handling code, with logging
- support puma itb, via BL31 and PMUM0 env
- enable BUILD_TARGET for ROCKCHIP_RK3399

[1] https://patchwork.ozlabs.org/cover/1217529/

Any inputs?
Jagan.

Jagan Teki (7):
  Makefile: Add rockchip image type
  Makefile: rockchip: Suffix platform type with tpl name
  Makefile: rockchip: Support SPL-alone mkimage
  arm: dts: rk3036: Add rk3036-u-boot.dtsi
  arm: dts: rk3188: Add rk3188-u-boot.dtsi
  rockchip: Add Single boot image (with binman, pad_cat)
  doc: boards: Add rockchip documentation

 Makefile                                  |  36 +++++-
 arch/arm/Kconfig                          |   1 +
 arch/arm/dts/rk3036-sdk-u-boot.dtsi       |   2 +
 arch/arm/dts/rk3036-u-boot.dtsi           |   6 +
 arch/arm/dts/rk3188-radxarock-u-boot.dtsi |   2 +
 arch/arm/dts/rk3188-u-boot.dtsi           |   6 +
 arch/arm/dts/rk3288-u-boot.dtsi           |   2 +
 arch/arm/dts/rockchip-u-boot.dtsi         |  21 ++++
 configs/phycore-rk3288_defconfig          |   2 -
 doc/board/rockchip/index.rst              |  10 ++
 doc/board/rockchip/rockchip.rst           | 130 ++++++++++++++++++++++
 include/configs/rockchip-common.h         |   3 +
 12 files changed, 214 insertions(+), 7 deletions(-)
 create mode 100644 arch/arm/dts/rk3036-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3188-u-boot.dtsi
 create mode 100644 arch/arm/dts/rockchip-u-boot.dtsi
 create mode 100644 doc/board/rockchip/index.rst
 create mode 100644 doc/board/rockchip/rockchip.rst

-- 
2.18.0.321.gffc6fa0e3
