From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH 3/4] platform/chrome: cros_ec_spi: Set ourselves as timing sensitive
Date: Fri, 10 May 2019 15:34:36 -0700
Message-ID: <20190510223437.84368-4-dianders@chromium.org>
References: <20190510223437.84368-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190510223437.84368-1-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Mark Brown <broonie@kernel.org>, Benson Leung <bleung@chromium.org>, Enric Balletbo i Serra <enric.balletbo@collabora.com>
Cc: linux-rockchip@lists.infradead.org, drinkcat@chromium.org, Guenter Roeck <groeck@chromium.org>, briannorris@chromium.org, mka@chromium.org, Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

All currently known ECs in the wild are very sensitive to timing.
Specifically the ECs are known to drop a transfer if more than 8 ms
passes from the assertion of the chip select until the transfer
finishes.

Let's use the new feature introduced in the patch ("spi: Allow SPI
devices to specify that they are timing sensitive") to specify this
and increase the success rate of our transfers.

NOTE: if future Chrome OS ECs ever fix themselves to be less sensitive
then we could consider adding a property (or compatible string) to not
set this property.  For now we need it across the board.

With this change we can revert the commit 37a186225a0c
("platform/chrome: cros_ec_spi: Transfer messages at high priority").
...and, in fact, transfers are _even more_ reliable than they were
with that commit since the SPI framework will use a higher priority
(realtime) and we no longer lose our priority when we get shunted over
to the message pumping thread (because we now always get shunted and
the thread is high priority).

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 drivers/platform/chrome/cros_ec_spi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/platform/chrome/cros_ec_spi.c b/drivers/platform/chrome/cros_ec_spi.c
index 8e9451720e73..757a115502ec 100644
--- a/drivers/platform/chrome/cros_ec_spi.c
+++ b/drivers/platform/chrome/cros_ec_spi.c
@@ -703,6 +703,7 @@ static int cros_ec_spi_probe(struct spi_device *spi)
 
 	spi->bits_per_word = 8;
 	spi->mode = SPI_MODE_0;
+	spi->timing_sensitive = true;
 	err = spi_setup(spi);
 	if (err < 0)
 		return err;
-- 
2.21.0.1020.gf2820cf01a-goog
