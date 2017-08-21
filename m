From: Guillaume Tucker <guillaume.tucker@collabora.com>
Subject: [PATCH] regulator: fan53555: fix I2C device ids
Date: Mon, 21 Aug 2017 13:47:43 +0100
Message-ID: <20170821124743.52924-1-guillaume.tucker@collabora.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>
Cc: linux-kernel@vger.kernel.org, Sjoerd Simons <sjoerd.simons@collabora.com>, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, Wookey <wookey@wookware.org>, Guillaume Tucker <guillaume.tucker@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

The device tree nodes all correctly describe the regulators as
syr827 or syr828, but the I2C device id is currently set to the
wildcard value of syr82x in the driver.  This causes udev to fail
to match the driver module with the modalias data from sysfs.

Fix this by replacing the I2C device ids with ones that match the
device tree descriptions, with syr827 and syr828.  Tested on
Firefly rk3288 board.  The syr82x id was not used anywhere.

Fixes: e80c47bd738b (regulator: fan53555: Export I2C module alias information)
Signed-off-by: Guillaume Tucker <guillaume.tucker@collabora.com>
---
 drivers/regulator/fan53555.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/regulator/fan53555.c b/drivers/regulator/fan53555.c
index 60f431831582..ca29d49fdadd 100644
--- a/drivers/regulator/fan53555.c
+++ b/drivers/regulator/fan53555.c
@@ -476,7 +476,10 @@ static const struct i2c_device_id fan53555_id[] = {
 		.name = "fan53555",
 		.driver_data = FAN53555_VENDOR_FAIRCHILD
 	}, {
-		.name = "syr82x",
+		.name = "syr827",
+		.driver_data = FAN53555_VENDOR_SILERGY
+	}, {
+		.name = "syr828",
 		.driver_data = FAN53555_VENDOR_SILERGY
 	},
 	{ },
-- 
2.11.0
