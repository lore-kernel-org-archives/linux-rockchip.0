From: Jon Lin <jon.lin@rock-chips.com>
Subject: [PATCH v1 1/3] spi: rockchip: Config spi rx dma burst size depend on xfer length
Date: Wed, 22 Jul 2020 14:52:55 +0800
Message-ID: <20200722065257.17943-1-jon.lin@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: broonie@kernel.org
Cc: heiko@sntech.de, linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jon Lin <jon.lin@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

The burst length can be adjusted according to the transmission
length to improve the transmission rate

Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
---
 drivers/spi/spi-rockchip.c | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index 9b8a5e1233c0..63593a5b87fa 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -384,6 +384,19 @@ static void rockchip_spi_dma_txcb(void *data)
 	spi_finalize_current_transfer(ctlr);
 }
 
+static u32 rockchip_spi_calc_burst_size(u32 data_len)
+{
+	u32 i;
+
+	/* burst size: 1, 2, 4, 8 */
+	for (i = 1; i < 8; i <<= 1) {
+		if (data_len & i)
+			break;
+	}
+
+	return i;
+}
+
 static int rockchip_spi_prepare_dma(struct rockchip_spi *rs,
 		struct spi_controller *ctlr, struct spi_transfer *xfer)
 {
@@ -397,7 +410,8 @@ static int rockchip_spi_prepare_dma(struct rockchip_spi *rs,
 			.direction = DMA_DEV_TO_MEM,
 			.src_addr = rs->dma_addr_rx,
 			.src_addr_width = rs->n_bytes,
-			.src_maxburst = 1,
+			.src_maxburst = rockchip_spi_calc_burst_size(xfer->len /
+								     rs->n_bytes),
 		};
 
 		dmaengine_slave_config(ctlr->dma_rx, &rxconf);
@@ -525,7 +539,8 @@ static void rockchip_spi_config(struct rockchip_spi *rs,
 		writel_relaxed(rs->fifo_len / 2 - 1, rs->regs + ROCKCHIP_SPI_RXFTLR);
 
 	writel_relaxed(rs->fifo_len / 2, rs->regs + ROCKCHIP_SPI_DMATDLR);
-	writel_relaxed(0, rs->regs + ROCKCHIP_SPI_DMARDLR);
+	writel_relaxed(rockchip_spi_calc_burst_size(xfer->len / rs->n_bytes) - 1,
+		       rs->regs + ROCKCHIP_SPI_DMARDLR);
 	writel_relaxed(dmacr, rs->regs + ROCKCHIP_SPI_DMACR);
 
 	/* the hardware only supports an even clock divisor, so
-- 
2.17.1
