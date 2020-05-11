From: Chris Ruehl <chris.ruehl-CR359r9tUDPXPF5Rlphj1Q@public.gmane.org>
Subject: [PATCH v1 3/3] spi: spi-rockchip: use num-cs property and ctlr->enable_gpiods
Date: Mon, 11 May 2020 16:30:22 +0800
Message-ID: <20200511083022.23678-4-chris.ruehl@gtsys.com.hk>
References: <20200511083022.23678-1-chris.ruehl@gtsys.com.hk>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-spi-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200511083022.23678-1-chris.ruehl-CR359r9tUDPXPF5Rlphj1Q@public.gmane.org>
Sender: linux-spi-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Chris Ruehl <chris.ruehl-CR359r9tUDPXPF5Rlphj1Q@public.gmane.org>, Jack Lo <jack.lo-CR359r9tUDPXPF5Rlphj1Q@public.gmane.org>
Cc: Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-spi-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

The original implementation set num_chipselect to ROCKCHIP_SPI_MAX_CS_NUM (2)
which seems wrong here. spi0 has 2 native cs, all others just one. With
enable and use of cs_gpiods / GPIO CS, its correct to set the num_chipselect
from the num-cs property and set max_native_cs with the define.
If num-cs is missing the default set to num_chipselect = 1.

Signed-off-by: Chris Ruehl <chris.ruehl-CR359r9tUDPXPF5Rlphj1Q@public.gmane.org>
---
 drivers/spi/spi-rockchip.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index f57a8faa6f31..9b8a5e1233c0 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -708,8 +708,15 @@ static int rockchip_spi_probe(struct platform_device *pdev)
 		ctlr->slave_abort = rockchip_spi_slave_abort;
 	} else {
 		ctlr->flags = SPI_MASTER_GPIO_SS;
+		ctlr->max_native_cs = ROCKCHIP_SPI_MAX_CS_NUM;
+		/*
+		 * rk spi0 has two native cs, spi1..5 one cs only
+		 * if num-cs is missing in the dts, default to 1
+		 */
+		if (of_property_read_u16(np, "num-cs", &ctlr->num_chipselect))
+			ctlr->num_chipselect = 1;
+		ctlr->use_gpio_descriptors = true;
 	}
-	ctlr->num_chipselect = ROCKCHIP_SPI_MAX_CS_NUM;
 	ctlr->dev.of_node = pdev->dev.of_node;
 	ctlr->bits_per_word_mask = SPI_BPW_MASK(16) | SPI_BPW_MASK(8) | SPI_BPW_MASK(4);
 	ctlr->min_speed_hz = rs->freq / BAUDR_SCKDV_MAX;
-- 
2.20.1
