From: Jon Lin <jon.lin@rock-chips.com>
Subject: [PATCH v3 3/3] spi: rockchip: Fix error in SPI slave pio read
Date: Thu, 23 Jul 2020 08:43:56 +0800
Message-ID: <20200723004356.6390-3-jon.lin@rock-chips.com>
References: <20200723004356.6390-1-jon.lin@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200723004356.6390-1-jon.lin@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: broonie@kernel.org
Cc: heiko@sntech.de, linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kernel@esmil.dk, Jon Lin <jon.lin@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

The RXFLR is possible larger than rx_left in Rockchip SPI, fix it.

Fixes: 01b59ce5dac8 ("spi: rockchip: use irq rather than polling")
Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Reviewed-by: Emil Renner Berthing <kernel@esmil.dk>
Tested-by: Emil Renner Berthing <kernel@esmil.dk>
---
 drivers/spi/spi-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index a451dacab5cf..75a8a9428ff8 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -291,7 +291,7 @@ static void rockchip_spi_pio_writer(struct rockchip_spi *rs)
 static void rockchip_spi_pio_reader(struct rockchip_spi *rs)
 {
 	u32 words = readl_relaxed(rs->regs + ROCKCHIP_SPI_RXFLR);
-	u32 rx_left = rs->rx_left - words;
+	u32 rx_left = (rs->rx_left > words) ? rs->rx_left - words : 0;
 
 	/* the hardware doesn't allow us to change fifo threshold
 	 * level while spi is enabled, so instead make sure to leave
-- 
2.17.1
