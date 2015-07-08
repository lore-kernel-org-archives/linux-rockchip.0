From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [PATCH RESEND] iio: adc: rockchip_saradc: add missing MODULE_* data
Date: Wed, 08 Jul 2015 16:17:08 +0200
Message-ID: <8215730.uluDfnE1h7@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-iio-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: linux-iio-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Jonathan Cameron <jic23-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: Hartmut Knaack <knaack.h-Mmb7MZpHnFY@public.gmane.org>, Lars-Peter Clausen <lars-Qo5EllUWu/uELgA04lAiVw@public.gmane.org>, Peter Meerwald <pmeerw-jW+XmwGofnusTnJN9+BGXg@public.gmane.org>, linux-iio-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

The module-data is currently missing. This includes the license-information
which makes the driver taint the kernel and miss symbols when compiled as
module.

Fixes: 44d6f2ef94f9 ("iio: adc: add driver for Rockchip saradc")
Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
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
+MODULE_AUTHOR("Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>");
+MODULE_DESCRIPTION("Rockchip SARADC driver");
+MODULE_LICENSE("GPL v2");
-- 
2.1.4
