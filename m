From: Shailendra Verma <shailendra.v-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
Subject: [PATCH] iio: adc - Fix possible NULL derefrence.
Date: Mon, 30 Jan 2017 10:17:14 +0530
Message-ID: <1485751634-28963-1-git-send-email-shailendra.v@samsung.com>
References: <CGME20170130044724epcas3p444b23d43fed213511e6994ecb4ed0ef3@epcas3p4.samsung.com>
Return-path: <linux-iio-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: linux-iio-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Jonathan Cameron <jic23-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Hartmut Knaack <knaack.h-Mmb7MZpHnFY@public.gmane.org>, Lars-Peter Clausen <lars-Qo5EllUWu/uELgA04lAiVw@public.gmane.org>, Peter Meerwald-Stadler <pmeerw-jW+XmwGofnusTnJN9+BGXg@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Dmitry Torokhov <dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ksenija Stanojevic <ksenija.stanojevic-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Marek Vasut <marex-ynQEQJNshbs@public.gmane.org>, linux-iio-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, p.shailesh-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org, ashish.kalra-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org, Shailendra Verma <shailendra.v-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>, Shailendra Verma <shailendra.capricorn-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

of_match_device could return NULL, and so can cause a NULL
pointer dereference later.

Signed-off-by: Shailendra Verma <shailendra.v-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
---
 drivers/iio/adc/mxs-lradc.c       |   14 ++++++++++----
 drivers/iio/adc/rockchip_saradc.c |    4 ++++
 2 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/iio/adc/mxs-lradc.c b/drivers/iio/adc/mxs-lradc.c
index b84d37c..4308a59 100644
--- a/drivers/iio/adc/mxs-lradc.c
+++ b/drivers/iio/adc/mxs-lradc.c
@@ -1570,10 +1570,8 @@ static int mxs_lradc_probe_touchscreen(struct mxs_lradc *lradc,
 
 static int mxs_lradc_probe(struct platform_device *pdev)
 {
-	const struct of_device_id *of_id =
-		of_match_device(mxs_lradc_dt_ids, &pdev->dev);
-	const struct mxs_lradc_of_config *of_cfg =
-		&mxs_lradc_of_config[(enum mxs_lradc_id)of_id->data];
+	const struct of_device_id *of_id;
+	const struct mxs_lradc_of_config *of_cfg;
 	struct device *dev = &pdev->dev;
 	struct device_node *node = dev->of_node;
 	struct mxs_lradc *lradc;
@@ -1583,6 +1581,14 @@ static int mxs_lradc_probe(struct platform_device *pdev)
 	int i, s;
 	u64 scale_uv;
 
+	of_id = of_match_device(mxs_lradc_dt_ids, &pdev->dev);
+	if (!of_id) {
+		dev_err(&pdev->dev, "Error: No device match found\n");
+		return -ENODEV;
+	}
+
+	of_cfg = &mxs_lradc_of_config[(enum mxs_lradc_id)of_id->data];
+
 	/* Allocate the IIO device. */
 	iio = devm_iio_device_alloc(dev, sizeof(*lradc));
 	if (!iio) {
diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
index 85d7012..08dfb43 100644
--- a/drivers/iio/adc/rockchip_saradc.c
+++ b/drivers/iio/adc/rockchip_saradc.c
@@ -224,6 +224,10 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
 	info = iio_priv(indio_dev);
 
 	match = of_match_device(rockchip_saradc_match, &pdev->dev);
+	if (!match) {
+		dev_err(&pdev->dev, "Error: No device match found\n");
+		return -ENODEV;
+	}
 	info->data = match->data;
 
 	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-- 
1.7.9.5
