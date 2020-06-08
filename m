From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v3 0/5] roc-rk3399-pc: Custom SPL init
Date: Mon,  8 Jun 2020 14:31:39 -0400
Message-ID: <20200608183144.26809-1-jagan@amarulasolutions.com>
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
To: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: U-Boot-Denx <u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula <linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Suniel Mahesh <sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

This series supports custom initialization code required for 
roc-rk3399-pc board on SPL stage. I have marked it as v3, since 
we have tried this before on this series[1]. 

Now this series is well mature code handling to add custom 
spl_board_init code parts.

roc-rk3399-pc would require custom leds initialization based 
on user intervention of the power key. This code handles the 
user intervention via SPI environment variable. If someone 
or production systems wants this feature then 'pwr_key' has 
to be set otherwise it is normal like other rk3399 boards 
in Mainline.

Changes for v3:
- support leds on SPL
- support env 'pwr_key'

[1] https://patchwork.ozlabs.org/project/uboot/patch/20200319101251.7354-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org/

Any inputs?
Jagan.

Jagan Teki (5):
  rk3399: spl: Add rk_spl_board_init as __weak
  rk3399: spl: Print SPL banner after relocation
  roc-rk3399-pc: Move leds setup in SPL
  rockchip: Separate the reset cause from display cpuinfo
  roc-rk3399-pc: Set LED only during POR and pwr_key=y

 arch/arm/include/asm/arch-rockchip/cru.h    |  2 +
 arch/arm/mach-rockchip/Makefile             |  5 +-
 arch/arm/mach-rockchip/cpu-info.c           | 20 +++++---
 arch/arm/mach-rockchip/rk3399/rk3399.c      | 11 +++-
 arch/arm/mach-rockchip/spl.c                |  1 -
 arch/arm/mach-rockchip/tpl.c                |  7 ---
 board/firefly/roc-pc-rk3399/Makefile        |  4 ++
 board/firefly/roc-pc-rk3399/roc-pc-rk3399.c | 21 --------
 board/firefly/roc-pc-rk3399/spl.c           | 56 +++++++++++++++++++++
 configs/roc-pc-mezzanine-rk3399_defconfig   |  6 ++-
 configs/roc-pc-rk3399_defconfig             |  6 ++-
 11 files changed, 96 insertions(+), 43 deletions(-)
 create mode 100644 board/firefly/roc-pc-rk3399/spl.c

-- 
2.20.1
