From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v3 00/18] ram: rk3399: Add rank detection
Date: Mon, 15 Jul 2019 23:58:38 +0530
Message-ID: <20190715182856.21688-1-jagan@amarulasolutions.com>
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
To: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, gajjar04akash-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Manivannan Sadhasivam <manivannan.sadhasivam-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

This is v3, version of dynamic rank detection changes from 
previous lpddr4 changes[1].

rank detection would required for probing single channel
ddr configuration like NanoPi NEO4.

Changes for v3:
- rebase in master
- order them in proper way

[1] https://patchwork.ozlabs.org/cover/1116734/

Any inputs?
Jagan.

Jagan Teki (18):
  ram: rk3399: Handle data training return types
  ram: rk3399: Clear PI_175 interrupts in data training
  ram: rk3399: Use rank mask in ca data training
  ram: rk3399: Use rank mask in wdql data training
  ram: rk3399: Add phy pctrl reset support
  ram: rk3399: Move pwrup_srefresh_exit to dram_info
  ram: rk3399: Add pctl start support
  ram: rockchip: Add initial Kconfig
  debug_uart: Add printdec
  ram: rockchip: Add debug sdram driver
  ram: rockchip: debug: Add sdram_print_ddr_info
  ram: rockchip: debug: Get the cs capacity
  ram: rk3399: debug: Add sdram_print_stride
  ram: rk3399: Compute stride for 2 channels
  ram: rk3399: Compute stride for 1 channel a
  ram: rk3399: Add rank detection support
  ram: rk3399: Enable sdram debug functions
  rockchip: dts: rk3399: nanopi-neo4: Use DDR3-1866 dtsi

 arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi   |   1 +
 .../include/asm/arch-rockchip/sdram_common.h  |  21 +
 drivers/ram/Kconfig                           |   1 +
 drivers/ram/rockchip/Kconfig                  |  26 ++
 drivers/ram/rockchip/Makefile                 |   3 +-
 drivers/ram/rockchip/sdram_debug.c            | 147 +++++++
 drivers/ram/rockchip/sdram_rk3399.c           | 366 +++++++++++++++---
 include/debug_uart.h                          |  19 +
 8 files changed, 529 insertions(+), 55 deletions(-)
 create mode 100644 drivers/ram/rockchip/Kconfig
 create mode 100644 drivers/ram/rockchip/sdram_debug.c

-- 
2.18.0.321.gffc6fa0e3
