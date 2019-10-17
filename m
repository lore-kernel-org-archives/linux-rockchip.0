From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v3 0/5] rockchip: Add Binman support
Date: Fri, 18 Oct 2019 00:37:05 +0530
Message-ID: <20191017190710.29985-1-jagan@amarulasolutions.com>
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
To: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Cc: u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

This is v3 set for Binman support in rockchip, [1] here is
previous patchset.

This series add binman support for TPL-based targets, 
binman for SPL-alone boards add in future.

Changes for v3:
- rebase on master
- add binman for rk3288, rk3328, rk3368, rk3399
- added rst documentation for rockchip
Changes for v2:
- Add few clean target patches
- update bl31.elf env handling code, with logging
- support puma itb, via BL31 and PMUM0 env
- enable BUILD_TARGET for ROCKCHIP_RK3399
- add patch to build rockchip dtbs based on SoC types
- update binman patch

[1] http://patchwork.ozlabs.org/cover/1092198/

Any inputs?
Jagan.

Jagan Teki (5):
  Makefile: Add rockchip image type
  Makefile: Rename idbloader.img with u-boot-spl-rockchip.bin
  arm: dts: rk3368: Add rk3368-u-boot.dtsi
  rockchip: Add Binman support
  doc: boards: Add rockchip documentation

 Makefile                                |  23 ++++-
 arch/arm/Kconfig                        |   1 +
 arch/arm/dts/rk3288-u-boot.dtsi         |   2 +
 arch/arm/dts/rk3328-u-boot.dtsi         |   2 +
 arch/arm/dts/rk3368-geekbox-u-boot.dtsi |   2 +
 arch/arm/dts/rk3368-lion-u-boot.dtsi    |   2 +
 arch/arm/dts/rk3368-px5-evb-u-boot.dtsi |   3 +
 arch/arm/dts/rk3368-sheep-u-boot.dtsi   |   2 +
 arch/arm/dts/rk3368-u-boot.dtsi         |   6 ++
 arch/arm/dts/rk3399-u-boot.dtsi         |   2 +
 arch/arm/dts/rockchip-u-boot.dtsi       |  21 ++++
 doc/board/rockchip/index.rst            |  10 ++
 doc/board/rockchip/rockchip.rst         | 125 ++++++++++++++++++++++++
 include/configs/rockchip-common.h       |   2 +
 14 files changed, 200 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/dts/rk3368-u-boot.dtsi
 create mode 100644 arch/arm/dts/rockchip-u-boot.dtsi
 create mode 100644 doc/board/rockchip/index.rst
 create mode 100644 doc/board/rockchip/rockchip.rst

-- 
2.18.0.321.gffc6fa0e3
