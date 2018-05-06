From: "Marty E. Plummer" <hanetzer-zVALfsKDk1AS+FvcfC7Uqw@public.gmane.org>
Subject: [PATCH 1/3] sf: Add GigaDevice gd25q32b entry
Date: Sun,  6 May 2018 09:25:11 -0500
Message-ID: <20180506142513.19911-2-hanetzer@startmail.com>
References: <20180506142513.19911-1-hanetzer@startmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20180506142513.19911-1-hanetzer-zVALfsKDk1AS+FvcfC7Uqw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
Cc: vagrant-8fiUuRrzOP0dnm+yROfE0A@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, "Marty E. Plummer" <hanetzer-zVALfsKDk1AS+FvcfC7Uqw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Add entry for GigaDevice gd25q32b part.

Signed-off-by: Marty E. Plummer <hanetzer-zVALfsKDk1AS+FvcfC7Uqw@public.gmane.org>
---
 drivers/mtd/spi/spi_flash_ids.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/spi/spi_flash_ids.c b/drivers/mtd/spi/spi_flash_ids.c
index ef55abb01d..de940645ed 100644
--- a/drivers/mtd/spi/spi_flash_ids.c
+++ b/drivers/mtd/spi/spi_flash_ids.c
@@ -63,6 +63,7 @@ const struct spi_flash_info spi_flash_ids[] = {
 	{"en25s64",	   INFO(0x1c3817, 0x0, 64 * 1024,   128, 0) },
 #endif
 #ifdef CONFIG_SPI_FLASH_GIGADEVICE	/* GIGADEVICE */
+	{"gd25q32b",	   INFO(0xc84016, 0x0, 64 * 1024,    64, SECT_4K) },
 	{"gd25q64b",	   INFO(0xc84017, 0x0, 64 * 1024,   128, SECT_4K) },
 	{"gd25lq32",	   INFO(0xc86016, 0x0, 64 * 1024,    64, SECT_4K) },
 #endif
-- 
2.17.0
