From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v4 0/6] rockchip: rk3399: Make u-boot.itb as BUILD_TARGET
Date: Thu, 20 Jun 2019 15:37:34 +0530
Message-ID: <20190620100740.6560-1-jagan@amarulasolutions.com>
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
To: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

This is v4 set for supporting u-boot.itb build target
image for rk3399. here is the previous version changes[1]

Changes for v4:
- rebase on master
- support u-boot.itb build even if bl31.elf available
  in PWD like what is doing right now. this would keep 
  the backward compatible.
- update board README changes
Changes for v3:
- skip binman changes
- rebase on u-boot-rockchip/master

Note:
While creating dummy bl31.elf (neither it available in PWD nor it
as part of BL31 env), the build system is creating u-boot.its without
firmware entry which indeed expected. but the resulting u-boot.itb 
seems booting on rk3399, which I'm not sure - any input would help
on this regard.

Travis-CI:
https://travis-ci.org/openedev/u-boot-amarula/builds/548123247

[1] https://patchwork.ozlabs.org/cover/1096499/

Any inputs?
Jagan.
 
Jagan Teki (6):
  Makefile: clean image.map
  Makefile: clean bl31_*.bin
  travis.yml: Add pyelftools install entry
  rockchip: rk3399: Get bl31.elf via BL31
  board: puma: Get bl31.bin via BL31 and rk3399m0.bin via PMUM0
  Kconfig: Add u-boot.itb BUILD_TARGET for Rockchip

 .travis.yml                                   |  1 +
 Kconfig                                       |  2 +-
 Makefile                                      |  3 +-
 arch/arm/mach-rockchip/make_fit_atf.py        | 20 +++-
 board/theobroma-systems/puma_rk3399/README    |  2 +-
 .../puma_rk3399/fit_spl_atf.its               | 58 ------------
 .../puma_rk3399/fit_spl_atf.sh                | 94 +++++++++++++++++++
 board/vamrs/rock960_rk3399/README             |  1 -
 configs/puma-rk3399_defconfig                 |  2 +-
 doc/README.rockchip                           | 14 ++-
 10 files changed, 124 insertions(+), 73 deletions(-)
 delete mode 100644 board/theobroma-systems/puma_rk3399/fit_spl_atf.its
 create mode 100755 board/theobroma-systems/puma_rk3399/fit_spl_atf.sh

-- 
2.18.0.321.gffc6fa0e3
