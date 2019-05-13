From: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH v2 2/3] platform/chrome: cros_ec_spi: Force transfers to
 realtime priority
Date: Mon, 13 May 2019 13:18:24 -0700
Message-ID: <20190513201825.166969-3-dianders@chromium.org>
References: <20190513201825.166969-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190513201825.166969-1-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Benson Leung <bleung-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Enric Balletbo i Serra <enric.balletbo-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: drinkcat-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, mka-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Guenter Roeck <groeck-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

All currently known ECs in the wild are very sensitive to timing.
Specifically the ECs are known to drop a transfer if more than 8 ms
passes from the assertion of the chip select until the transfer
finishes.

Let's use the new feature introduced in the patch ("spi: Allow SPI
devices to force transfers on a realtime thread") to specify this and
increase the success rate of our transfers.

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

Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Reviewed-by: Guenter Roeck <groeck-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
---

Changes in v2:
- Renamed variable to "force_rt_transfers".

 drivers/platform/chrome/cros_ec_spi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/platform/chrome/cros_ec_spi.c b/drivers/platform/chrome/cros_ec_spi.c
index 8e9451720e73..a2959365a870 100644
--- a/drivers/platform/chrome/cros_ec_spi.c
+++ b/drivers/platform/chrome/cros_ec_spi.c
@@ -703,6 +703,7 @@ static int cros_ec_spi_probe(struct spi_device *spi)
 
 	spi->bits_per_word = 8;
 	spi->mode = SPI_MODE_0;
+	spi->force_rt_transfers = true;
 	err = spi_setup(spi);
 	if (err < 0)
 		return err;
-- 
2.21.0.1020.gf2820cf01a-goog
