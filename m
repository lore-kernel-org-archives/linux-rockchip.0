From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] iio: adc: rockchip_saradc: add missing MODULE_* data
Date: Mon, 25 May 2015 22:36:58 +0200
Message-ID: <4303804.647s4ZjWfi@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Jonathan Cameron <jic23@kernel.org>
Cc: Hartmut Knaack <knaack.h@gmx.de>, Lars-Peter Clausen <lars@metafoo.de>, Peter Meerwald <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

The module-data is currently missing. This includes the license-information
which makes the driver taint the kernel and miss symbols when compiled as
module.

Fixes: 44d6f2ef94f9 ("iio: adc: add driver for Rockchip saradc")
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/iio/adc/rockchip_saradc.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
index 8d4e019..9c311c1 100644
--- a/drivers/iio/adc/rockchip_saradc.c
+++ b/drivers/iio/adc/rockchip_saradc.c
@@ -349,3 +349,7 @@ static struct platform_driver rockchip_saradc_driver = {
 };
 
 module_platform_driver(rockchip_saradc_driver);
+
+MODULE_AUTHOR("Heiko Stuebner <heiko@sntech.de>");
+MODULE_DESCRIPTION("Rockchip SARADC driver");
+MODULE_LICENSE("GPL v2");
-- 
2.1.4
