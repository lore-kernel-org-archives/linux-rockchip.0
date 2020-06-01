From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v2 0/4] rockchip: rk3399: Add SPI boot
Date: Tue,  2 Jun 2020 02:12:09 +0530
Message-ID: <20200601204213.466120-1-jagan@amarulasolutions.com>
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
To: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Hugh Cole-Baker <sigmaris-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: U-Boot-Denx <u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula <linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Suniel Mahesh <sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

I have marked this series as v2, since the previous 
one has SPL SPI boot via different defconfig.

Thanks to Hugh Cole-Baker for inputs about SPI boot
image creation.

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
 configs/roc-pc-mezzanine-rk3399_defconfig |  3 +++
 configs/roc-pc-rk3399_defconfig           |  6 +++++-
 doc/board/rockchip/rockchip.rst           | 26 ++++++++++++++++++++++-
 include/configs/roc-pc-rk3399.h           |  4 ----
 6 files changed, 46 insertions(+), 16 deletions(-)

-- 
2.25.1
