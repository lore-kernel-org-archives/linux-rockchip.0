From: Liviu Dudau <Liviu.Dudau-5wv7dgnIgG8@public.gmane.org>
Subject: [RFC PATCH 2/4] drm/imx: Convert the probe function to the generic
 drm_of_component_probe()
Date: Thu, 15 Oct 2015 17:11:08 +0100
Message-ID: <1444925470-9963-3-git-send-email-Liviu.Dudau@arm.com>
References: <1444925470-9963-1-git-send-email-Liviu.Dudau@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1444925470-9963-1-git-send-email-Liviu.Dudau-5wv7dgnIgG8@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: David Airlie <airlied-cv59FeDIM0c@public.gmane.org>, Daniel Vetter <daniel.vetter-/w4YWyX8dFk@public.gmane.org>, Philipp Zabel <p.zabel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>, Mark Yao <mark.yao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Russell King <rmk+kernel-lFZ/pmaqli7XmaaqVzeoHQ@public.gmane.org>
Cc: linux-rockchip <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, LAKML <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, dri-devel <dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

The generic function is functionally equivalent to the driver's
imx_drm_platform_probe(). Use the generic function and reduce the
overall code size.

Signed-off-by: Liviu Dudau <Liviu.Dudau-5wv7dgnIgG8@public.gmane.org>
---
 drivers/gpu/drm/imx/imx-drm-core.c | 54 +-------------------------------------
 1 file changed, 1 insertion(+), 53 deletions(-)

diff --git a/drivers/gpu/drm/imx/imx-drm-core.c b/drivers/gpu/drm/imx/imx-drm-core.c
index 74f505b..c25e39d 100644
--- a/drivers/gpu/drm/imx/imx-drm-core.c
+++ b/drivers/gpu/drm/imx/imx-drm-core.c
@@ -531,59 +531,7 @@ static const struct component_master_ops imx_drm_ops = {
 
 static int imx_drm_platform_probe(struct platform_device *pdev)
 {
-	struct device_node *ep, *port, *remote;
-	struct component_match *match = NULL;
-	int ret;
-	int i;
-
-	/*
-	 * Bind the IPU display interface ports first, so that
-	 * imx_drm_encoder_parse_of called from encoder .bind callbacks
-	 * works as expected.
-	 */
-	for (i = 0; ; i++) {
-		port = of_parse_phandle(pdev->dev.of_node, "ports", i);
-		if (!port)
-			break;
-
-		component_match_add(&pdev->dev, &match, compare_of, port);
-	}
-
-	if (i == 0) {
-		dev_err(&pdev->dev, "missing 'ports' property\n");
-		return -ENODEV;
-	}
-
-	/* Then bind all encoders */
-	for (i = 0; ; i++) {
-		port = of_parse_phandle(pdev->dev.of_node, "ports", i);
-		if (!port)
-			break;
-
-		for_each_child_of_node(port, ep) {
-			remote = of_graph_get_remote_port_parent(ep);
-			if (!remote || !of_device_is_available(remote)) {
-				of_node_put(remote);
-				continue;
-			} else if (!of_device_is_available(remote->parent)) {
-				dev_warn(&pdev->dev, "parent device of %s is not available\n",
-					 remote->full_name);
-				of_node_put(remote);
-				continue;
-			}
-
-			component_match_add(&pdev->dev, &match, compare_of,
-					    remote);
-			of_node_put(remote);
-		}
-		of_node_put(port);
-	}
-
-	ret = dma_set_coherent_mask(&pdev->dev, DMA_BIT_MASK(32));
-	if (ret)
-		return ret;
-
-	return component_master_add_with_match(&pdev->dev, &imx_drm_ops, match);
+	return drm_of_component_probe(&pdev->dev, compare_of, &imx_drm_ops);
 }
 
 static int imx_drm_platform_remove(struct platform_device *pdev)
-- 
2.6.0
