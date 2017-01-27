From: Shailendra Verma <shailendra.v-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
Subject: [PATCH] Gpu: drm: rockchip - Fix possible NULL derefrence.
Date: Fri, 27 Jan 2017 16:41:50 +0530
Message-ID: <1485515510-3129-1-git-send-email-shailendra.v@samsung.com>
References: <CGME20170127111200epcas3p34bf747c6c3c0da798ddaf34788d1a324@epcas3p3.samsung.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Mark Yao <mark.yao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, David Airlie <airlied-cv59FeDIM0c@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, p.shailesh-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org, ashish.kalra-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org, Shailendra Verma <shailendra.v-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>, Shailendra Verma <shailendra.capricorn-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

of_match_device could return NULL, and so can cause a NULL
pointer dereference later.

Signed-off-by: Shailendra Verma <shailendra.v-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
---
 drivers/gpu/drm/rockchip/dw-mipi-dsi.c |   13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
index ca22e5e..dbb99cf 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
@@ -1082,15 +1082,22 @@ static enum drm_mode_status rk3288_mipi_dsi_mode_valid(
 static int dw_mipi_dsi_bind(struct device *dev, struct device *master,
 			     void *data)
 {
-	const struct of_device_id *of_id =
-			of_match_device(dw_mipi_dsi_dt_ids, dev);
-	const struct dw_mipi_dsi_plat_data *pdata = of_id->data;
+	const struct of_device_id *of_id;
+	const struct dw_mipi_dsi_plat_data *pdata;
 	struct platform_device *pdev = to_platform_device(dev);
 	struct drm_device *drm = data;
 	struct dw_mipi_dsi *dsi;
 	struct resource *res;
 	int ret;
 
+	of_id = of_match_device(dw_mipi_dsi_dt_ids, dev);
+	if (!of_id) {
+		dev_err(dev, "Error: No device match found\n");
+		return -ENODEV;
+	}
+
+	pdata = of_id->data;
+
 	dsi = devm_kzalloc(dev, sizeof(*dsi), GFP_KERNEL);
 	if (!dsi)
 		return -ENOMEM;
-- 
1.7.9.5
