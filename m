From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v2 0/8] rockchip: Add PCIe host support
Date: Thu, 30 Apr 2020 12:34:04 +0530
Message-ID: <20200430070412.12499-1-jagan@amarulasolutions.com>
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
Cc: patrick-Er2xLVyhcs+zQB+pC5nmwQ@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

This series support PCIe host controller support
on rockchip rk3399 platform.

It is based on previous version[1] changes.

Works well on rk3399 boards like rock960, nanopc-t4 
and roc-kr3399-pc-mezzanine board as Gen1 configurable 
host with M.2 SSD.

Changes for v2:
- handle USB, GMAC clocks
- collect kever r-o-b tag
- simplify rd and wr conf API 

[1] http://patchwork.ozlabs.org/project/uboot/cover/20200425110354.12381-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org/

Any inputs?
Jagan.

Jagan Teki (8):
  iopoll: Add dealy to read poll
  iopoll: Add readl_poll_sleep_timeout
  clk: rk3399: Add enable/disable clks
  clk: rk3399: Enable/Disable the PCIEPHY clk
  pci: Add Rockchip PCIe controller driver
  pci: Add Rockchip PCIe PHY controller driver
  rockchip: Enable PCIe/M.2 on rk3399 board w/ M.2
  rockchip: Enable PCIe/M.2 on rock960 board

 arch/arm/dts/rk3399-u-boot.dtsi             |   1 +
 board/vamrs/rock960_rk3399/rock960-rk3399.c |  20 +
 configs/nanopc-t4-rk3399_defconfig          |   4 +
 configs/roc-pc-mezzanine-rk3399_defconfig   |   4 +
 configs/rock960-rk3399_defconfig            |   5 +
 drivers/clk/rockchip/clk_rk3399.c           | 154 ++++++
 drivers/pci/Kconfig                         |   8 +
 drivers/pci/Makefile                        |   1 +
 drivers/pci/pcie_rockchip.c                 | 491 ++++++++++++++++++++
 drivers/pci/pcie_rockchip.h                 | 142 ++++++
 drivers/pci/pcie_rockchip_phy.c             | 205 ++++++++
 include/linux/iopoll.h                      |  23 +-
 12 files changed, 1049 insertions(+), 9 deletions(-)
 create mode 100644 drivers/pci/pcie_rockchip.c
 create mode 100644 drivers/pci/pcie_rockchip.h
 create mode 100644 drivers/pci/pcie_rockchip_phy.c

-- 
2.17.1
