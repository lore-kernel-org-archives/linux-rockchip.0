From: Mirza Krak <mirza.krak-MHOZLiH8ODazQB+pC5nmwQ@public.gmane.org>
Subject: [PATCH 1/1] drm/rockchip: dw-mipi-dsi: fix possible un-balanced
 runtime PM enable
Date: Wed, 15 Nov 2017 08:17:53 +0000
Message-ID: <1510733873-37358-1-git-send-email-mirza.krak@endian.se>
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
To: mark.yao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, airlied-cv59FeDIM0c@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, Mirza Krak <mirza.krak-MHOZLiH8ODazQB+pC5nmwQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

In the case of the the binds gets defered we would end up with a
un-balanced runtime PM enable call.

Fix this by simply moving the pm_runtime_enable call to the end of
the bind function when all paths have succeeded.

Signed-off-by: Mirza Krak <mirza.krak-MHOZLiH8ODazQB+pC5nmwQ@public.gmane.org>
---
 drivers/gpu/drm/rockchip/dw-mipi-dsi.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
index 9a20b9d..f7fc652 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
@@ -1275,8 +1275,6 @@ static int dw_mipi_dsi_bind(struct device *dev, struct device *master,
 		goto err_pllref;
 	}
 
-	pm_runtime_enable(dev);
-
 	dsi->dsi_host.ops = &dw_mipi_dsi_host_ops;
 	dsi->dsi_host.dev = dev;
 	ret = mipi_dsi_host_register(&dsi->dsi_host);
@@ -1291,6 +1289,7 @@ static int dw_mipi_dsi_bind(struct device *dev, struct device *master,
 	}
 
 	dev_set_drvdata(dev, dsi);
+	pm_runtime_enable(dev);
 	return 0;
 
 err_mipi_dsi_host:
-- 
2.1.4
