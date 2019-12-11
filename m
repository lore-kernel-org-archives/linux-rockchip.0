From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH 1/2] Revert "rockchip: spi: fix off-by-one in chunk size
 computation"
Date: Wed, 11 Dec 2019 18:56:22 +0530
Message-ID: <20191211132623.430-2-jagan@amarulasolutions.com>
References: <20191211132623.430-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191211132623.430-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Cc: u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, linux-amarula <linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

The maximum transfer length (in a single transaction) for the Rockchip
SPI controller is 64Kframes (i.e. 0x10000 frames) of 8bit or 16bit
frames and is encoded as (num_frames - 1) in CTRLR1.

So the 0x10000 is offset value for 64K but the actual size value would
be 'minus 1' from 0x10000.

With the existing code of 0x10000 transfer length leads to read
failure when we try to read the flash with > 0x10000 size like,

1. sf read failure when with > 0x10000

2. Boot from SPI flash failed during spi_flash_read call in
   common/spl/spl_spi.c

Observed and Tested in
- Rockpro64 with Gigadevice flash
- ROC-RK3399-PC with Winbond flash

This reverts commit e647decdd93c7408741329432f26758fbec04c7a.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 drivers/spi/rk_spi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/rk_spi.c b/drivers/spi/rk_spi.c
index c04535ac44..d9a310ce80 100644
--- a/drivers/spi/rk_spi.c
+++ b/drivers/spi/rk_spi.c
@@ -451,7 +451,7 @@ static int rockchip_spi_xfer(struct udevice *dev, unsigned int bitlen,
 
 	/* This is the original 8bit reader/writer code */
 	while (len > 0) {
-		int todo = min(len, 0x10000);
+		int todo = min(len, 0xffff);
 
 		rkspi_enable_chip(regs, false);
 		writel(todo - 1, &regs->ctrlr1);
-- 
2.18.0.321.gffc6fa0e3
