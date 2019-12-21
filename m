From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH 01/11] spi: rk: Limit transfers to (64K - 1) bytes
Date: Sat, 21 Dec 2019 13:24:30 +0530
Message-ID: <20191221075440.6944-2-jagan@amarulasolutions.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191221075440.6944-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
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

The Rockchip SPI controller's length register only supports 16-bits,
yielding a maximum length of 64KiB (the CTRLR1 register holds "length -
1"). Trying to transfer more than that (e.g., with a large SPI flash
read) will cause the driver to hang.

Now, it seems that while theoretically we should be able to program
CTRLR1 with 0xffff, and get a 64KiB transfer, but that also seems to
cause the core to choke, so stick with a maximum of 64K - 1 bytes --
i.e., 0xffff.

Note, that the size is further divided into 'minus 1' while writing
into CTRLR1.

This change fixed two different read issues,

1. sf read failure when with > 0x10000

2. Boot from SPI flash failed during spi_flash_read call in
   common/spl/spl_spi.c

Observed and Tested in
- Rockpro64 with Gigadevice flash
- ROC-RK3399-PC with Winbond flash

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 drivers/spi/rk_spi.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/rk_spi.c b/drivers/spi/rk_spi.c
index c04535ac44..95eeb8307a 100644
--- a/drivers/spi/rk_spi.c
+++ b/drivers/spi/rk_spi.c
@@ -27,6 +27,12 @@
 /* Change to 1 to output registers at the start of each transaction */
 #define DEBUG_RK_SPI	0
 
+/*
+ * ctrlr1 is 16-bits, so we should support lengths of 0xffff + 1. However,
+ * the controller seems to hang when given 0x10000, so stick with this for now.
+ */
+#define ROCKCHIP_SPI_MAX_TRANLEN		0xffff
+
 struct rockchip_spi_params {
 	/* RXFIFO overruns and TXFIFO underruns stop the master clock */
 	bool master_manages_fifo;
@@ -367,7 +373,7 @@ static inline int rockchip_spi_16bit_reader(struct udevice *dev,
 	 * represented in CTRLR1.
 	 */
 	if (data && data->master_manages_fifo)
-		max_chunk_size = 0x10000;
+		max_chunk_size = ROCKCHIP_SPI_MAX_TRANLEN;
 
 	// rockchip_spi_configure(dev, mode, size)
 	rkspi_enable_chip(regs, false);
@@ -451,7 +457,7 @@ static int rockchip_spi_xfer(struct udevice *dev, unsigned int bitlen,
 
 	/* This is the original 8bit reader/writer code */
 	while (len > 0) {
-		int todo = min(len, 0x10000);
+		int todo = min(len, ROCKCHIP_SPI_MAX_TRANLEN);
 
 		rkspi_enable_chip(regs, false);
 		writel(todo - 1, &regs->ctrlr1);
-- 
2.18.0.321.gffc6fa0e3
