From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v3 0/6] rockchip: rk3399: Make u-boot.itb as BUILD_TARGET
Date: Wed,  8 May 2019 00:22:09 +0530
Message-ID: <20190507185215.15441-1-jagan@amarulasolutions.com>
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
To: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

RK3399 TPL changes are merged recently which I was thinking 
of waiting for next MW. so this series skip binman changes 
from previous version[1] and have only BUILD_TARGET changes.

BINMAN changes would need another rework, where we need to consider 
the TPL image as well and that would send separately.

CHanges for v3:
- skip binman changes
- rebase on u-boot-rockchip/master
 
[1] https://patchwork.ozlabs.org/cover/1092198/

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
 arch/arm/mach-rockchip/make_fit_atf.py        | 11 ++-
 .../puma_rk3399/fit_spl_atf.its               | 58 ------------
 .../puma_rk3399/fit_spl_atf.sh                | 94 +++++++++++++++++++
 configs/puma-rk3399_defconfig                 |  2 +-
 doc/README.rockchip                           | 14 ++-
 8 files changed, 115 insertions(+), 70 deletions(-)
 delete mode 100644 board/theobroma-systems/puma_rk3399/fit_spl_atf.its
 create mode 100755 board/theobroma-systems/puma_rk3399/fit_spl_atf.sh

-- 
2.18.0.321.gffc6fa0e3
