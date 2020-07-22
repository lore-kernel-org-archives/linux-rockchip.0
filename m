From: Jon Lin <jon.lin@rock-chips.com>
Subject: [PATCH v1 2/3] spi: rockchip: Support 64-location deep FIFOs
Date: Wed, 22 Jul 2020 14:52:56 +0800
Message-ID: <20200722065257.17943-2-jon.lin@rock-chips.com>
References: <20200722065257.17943-1-jon.lin@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200722065257.17943-1-jon.lin@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: broonie@kernel.org
Cc: heiko@sntech.de, linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jon Lin <jon.lin@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

The FIFO depth of SPI V2 is 64 instead of 32, add support for it.

Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
---
 drivers/spi/spi-rockchip.c | 25 ++++++++++++++-----------
 1 file changed, 14 insertions(+), 11 deletions(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index 63593a5b87fa..a451dacab5cf 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -39,8 +39,9 @@
 #define ROCKCHIP_SPI_RISR			0x0034
 #define ROCKCHIP_SPI_ICR			0x0038
 #define ROCKCHIP_SPI_DMACR			0x003c
-#define ROCKCHIP_SPI_DMATDLR		0x0040
-#define ROCKCHIP_SPI_DMARDLR		0x0044
+#define ROCKCHIP_SPI_DMATDLR			0x0040
+#define ROCKCHIP_SPI_DMARDLR			0x0044
+#define ROCKCHIP_SPI_VERSION			0x0048
 #define ROCKCHIP_SPI_TXDR			0x0400
 #define ROCKCHIP_SPI_RXDR			0x0800
 
@@ -156,6 +157,8 @@
 #define ROCKCHIP_SPI_MAX_TRANLEN		0xffff
 
 #define ROCKCHIP_SPI_MAX_CS_NUM			2
+#define ROCKCHIP_SPI_VER2_TYPE1			0x05EC0002
+#define ROCKCHIP_SPI_VER2_TYPE2			0x00110002
 
 struct rockchip_spi {
 	struct device *dev;
@@ -206,17 +209,17 @@ static inline void wait_for_idle(struct rockchip_spi *rs)
 
 static u32 get_fifo_len(struct rockchip_spi *rs)
 {
-	u32 fifo;
+	u32 ver;
 
-	for (fifo = 2; fifo < 32; fifo++) {
-		writel_relaxed(fifo, rs->regs + ROCKCHIP_SPI_TXFTLR);
-		if (fifo != readl_relaxed(rs->regs + ROCKCHIP_SPI_TXFTLR))
-			break;
-	}
-
-	writel_relaxed(0, rs->regs + ROCKCHIP_SPI_TXFTLR);
+	ver = readl_relaxed(rs->regs + ROCKCHIP_SPI_VERSION);
 
-	return (fifo == 31) ? 0 : fifo;
+	switch (ver) {
+	case ROCKCHIP_SPI_VER2_TYPE1:
+	case ROCKCHIP_SPI_VER2_TYPE2:
+		return 64;
+	default:
+		return 32;
+	}
 }
 
 static void rockchip_spi_set_cs(struct spi_device *spi, bool enable)
-- 
2.17.1
