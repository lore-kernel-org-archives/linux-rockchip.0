From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH 2/2] spi: rk_spi: Fix overflow max chunk size
Date: Wed, 11 Dec 2019 18:56:23 +0530
Message-ID: <20191211132623.430-3-jagan@amarulasolutions.com>
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

The max chunk size (in a single transaction) for the Rockchip
SPI controller is 64Kframes (i.e. 0x10000 frames) of 8bit or 16bit
frames and is encoded as (num_frames - 1) in CTRLR1.

So the 0x10000 is offset value for 64K but the actual size value would
be 'minus 1' from 0x10000.

With the existing code of 0x10000 max chunk size leads to read
failure when we try to read the flash with > 0x10000 size like,

1. sf read failure when with > 0x10000

2. Boot from SPI flash failed during spi_flash_read call in
   common/spl/spl_spi.c

Observed and Tested in
- Rockpro64 with Gigadevice flash
- ROC-RK3399-PC with Winbond flash

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 drivers/spi/rk_spi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/rk_spi.c b/drivers/spi/rk_spi.c
index d9a310ce80..6059f2415a 100644
--- a/drivers/spi/rk_spi.c
+++ b/drivers/spi/rk_spi.c
@@ -367,7 +367,7 @@ static inline int rockchip_spi_16bit_reader(struct udevice *dev,
 	 * represented in CTRLR1.
 	 */
 	if (data && data->master_manages_fifo)
-		max_chunk_size = 0x10000;
+		max_chunk_size = 0xffff;
 
 	// rockchip_spi_configure(dev, mode, size)
 	rkspi_enable_chip(regs, false);
-- 
2.18.0.321.gffc6fa0e3
