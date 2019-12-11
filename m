From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 0/2] spi: rk_spi: Fix transfer size overflow
Date: Wed, 11 Dec 2019 18:56:21 +0530
Message-ID: <20191211132623.430-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Simon Glass <sjg@chromium.org>, Kever Yang <kever.yang@rock-chips.com>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Cc: u-boot@lists.denx.de, linux-amarula <linux-amarula@amarulasolutions.com>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

These two patches are fixing flash read with > 64K size and
spi flash read during SPI boot.

Any inputs?
Jagan.

Jagan Teki (2):
  Revert "rockchip: spi: fix off-by-one in chunk size computation"
  spi: rk_spi: Fix overflow max chunk size

 drivers/spi/rk_spi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

-- 
2.18.0.321.gffc6fa0e3
