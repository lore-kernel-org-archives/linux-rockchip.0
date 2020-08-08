From: Sasha Levin <sashal@kernel.org>
Subject: [PATCH AUTOSEL 5.7 44/58] spi: rockchip: Fix error in SPI slave pio read
Date: Sat,  8 Aug 2020 19:37:10 -0400
Message-ID: <20200808233724.3618168-44-sashal@kernel.org>
References: <20200808233724.3618168-1-sashal@kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <stable-owner@vger.kernel.org>
In-Reply-To: <20200808233724.3618168-1-sashal@kernel.org>
Sender: stable-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org, stable@vger.kernel.org
Cc: Jon Lin <jon.lin@rock-chips.com>, Emil Renner Berthing <kernel@esmil.dk>, Heiko Stuebner <heiko@sntech.de>, Mark Brown <broonie@kernel.org>, Sasha Levin <sashal@kernel.org>, linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

From: Jon Lin <jon.lin@rock-chips.com>

[ Upstream commit 4294e4accf8d695ea5605f6b189008b692e3e82c ]

The RXFLR is possible larger than rx_left in Rockchip SPI, fix it.

Fixes: 01b59ce5dac8 ("spi: rockchip: use irq rather than polling")
Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
Tested-by: Emil Renner Berthing <kernel@esmil.dk>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Reviewed-by: Emil Renner Berthing <kernel@esmil.dk>
Link: https://lore.kernel.org/r/20200723004356.6390-3-jon.lin@rock-chips.com
Signed-off-by: Mark Brown <broonie@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/spi/spi-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index 70ef63e0b6b8d..02e9205355910 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -286,7 +286,7 @@ static void rockchip_spi_pio_writer(struct rockchip_spi *rs)
 static void rockchip_spi_pio_reader(struct rockchip_spi *rs)
 {
 	u32 words = readl_relaxed(rs->regs + ROCKCHIP_SPI_RXFLR);
-	u32 rx_left = rs->rx_left - words;
+	u32 rx_left = (rs->rx_left > words) ? rs->rx_left - words : 0;
 
 	/* the hardware doesn't allow us to change fifo threshold
 	 * level while spi is enabled, so instead make sure to leave
-- 
2.25.1
