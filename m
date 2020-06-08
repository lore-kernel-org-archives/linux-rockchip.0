From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v4 0/4] rockchip: rk3399: Add SPI boot
Date: Mon,  8 Jun 2020 14:17:04 -0400
Message-ID: <20200608181708.17842-1-jagan@amarulasolutions.com>
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

Now, nvme scan seems stable with environment.

This series v4 version for SPI boot support on rk3399.

Changes for v4:
- adjust env offset, size
changes for v3:
- SPI env offset, size changes based on roc-rk3399-pc
Changes for v2:
- same defconfig to support both MMC, SPI boot
- add spi flash program document 

Any inputs?
Jagan.

Jagan Teki (4):
  Makefile: Drop to handle rkspi image type
  roc-rk3399-pc: Mark default env from SPI
  roc-rk3399-pc: Add SPI boot
  doc: rockchip: Document SPI flash program steps

 Makefile                                  | 11 ++--------
 arch/arm/dts/rk3399-roc-pc-u-boot.dtsi    | 12 ++++++++++-
 configs/roc-pc-mezzanine-rk3399_defconfig |  7 +++++-
 configs/roc-pc-rk3399_defconfig           |  7 +++++-
 doc/board/rockchip/rockchip.rst           | 26 ++++++++++++++++++++++-
 include/configs/roc-pc-rk3399.h           |  4 ----
 6 files changed, 50 insertions(+), 17 deletions(-)

-- 
2.20.1
