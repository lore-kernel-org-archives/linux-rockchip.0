From: Liviu Dudau <Liviu.Dudau-5wv7dgnIgG8@public.gmane.org>
Subject: [RFC PATCH 3/4] drm/rockchip: Convert the probe function to the
 generic drm_of_component_probe()
Date: Thu, 15 Oct 2015 17:11:09 +0100
Message-ID: <1444925470-9963-4-git-send-email-Liviu.Dudau@arm.com>
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

Use the generic drm_of_component_probe() function to probe for components.

Signed-off-by: Liviu Dudau <Liviu.Dudau-5wv7dgnIgG8@public.gmane.org>
---
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 84 ++---------------------------
 1 file changed, 5 insertions(+), 79 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
index 9a0c291..8cd6397 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
@@ -47,10 +47,6 @@ int rockchip_drm_dma_attach_device(struct drm_device *drm_dev,
 	struct dma_iommu_mapping *mapping = drm_dev->dev->archdata.mapping;
 	int ret;
 
-	ret = dma_set_coherent_mask(dev, DMA_BIT_MASK(32));
-	if (ret)
-		return ret;
-
 	dma_set_max_seg_size(dev, DMA_BIT_MASK(32));
 
 	return arm_iommu_attach_device(dev, mapping);
@@ -416,29 +412,6 @@ static int compare_of(struct device *dev, void *data)
 	return dev->of_node == np;
 }
 
-static void rockchip_add_endpoints(struct device *dev,
-				   struct component_match **match,
-				   struct device_node *port)
-{
-	struct device_node *ep, *remote;
-
-	for_each_child_of_node(port, ep) {
-		remote = of_graph_get_remote_port_parent(ep);
-		if (!remote || !of_device_is_available(remote)) {
-			of_node_put(remote);
-			continue;
-		} else if (!of_device_is_available(remote->parent)) {
-			dev_warn(dev, "parent device of %s is not available\n",
-				 remote->full_name);
-			of_node_put(remote);
-			continue;
-		}
-
-		component_match_add(dev, match, compare_of, remote);
-		of_node_put(remote);
-	}
-}
-
 static int rockchip_drm_bind(struct device *dev)
 {
 	struct drm_device *drm;
@@ -481,61 +454,14 @@ static const struct component_master_ops rockchip_drm_ops = {
 
 static int rockchip_drm_platform_probe(struct platform_device *pdev)
 {
-	struct device *dev = &pdev->dev;
-	struct component_match *match = NULL;
-	struct device_node *np = dev->of_node;
-	struct device_node *port;
-	int i;
-
-	if (!np)
-		return -ENODEV;
-	/*
-	 * Bind the crtc ports first, so that
-	 * drm_of_find_possible_crtcs called from encoder .bind callbacks
-	 * works as expected.
-	 */
-	for (i = 0;; i++) {
-		port = of_parse_phandle(np, "ports", i);
-		if (!port)
-			break;
-
-		if (!of_device_is_available(port->parent)) {
-			of_node_put(port);
-			continue;
-		}
+	int ret = drm_of_component_probe(&pdev->dev, compare_of,
+					 &rockchip_drm_ops);
 
-		component_match_add(dev, &match, compare_of, port->parent);
-		of_node_put(port);
-	}
-
-	if (i == 0) {
-		dev_err(dev, "missing 'ports' property\n");
+	/* keep compatibility with old code that was returning -ENODEV */
+	if (ret == -EINVAL)
 		return -ENODEV;
-	}
-
-	if (!match) {
-		dev_err(dev, "No available vop found for display-subsystem.\n");
-		return -ENODEV;
-	}
-	/*
-	 * For each bound crtc, bind the encoders attached to its
-	 * remote endpoint.
-	 */
-	for (i = 0;; i++) {
-		port = of_parse_phandle(np, "ports", i);
-		if (!port)
-			break;
-
-		if (!of_device_is_available(port->parent)) {
-			of_node_put(port);
-			continue;
-		}
 
-		rockchip_add_endpoints(dev, &match, port);
-		of_node_put(port);
-	}
-
-	return component_master_add_with_match(dev, &rockchip_drm_ops, match);
+	return ret;
 }
 
 static int rockchip_drm_platform_remove(struct platform_device *pdev)
-- 
2.6.0
