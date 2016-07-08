From: John Keeping <john-HooS5bfzL4hWk0Htik3J/w@public.gmane.org>
Subject: Re: [PATCH 5/7] drm/rockchip: dw-mipi: support HPD poll
Date: Fri, 8 Jul 2016 14:52:11 +0100
Message-ID: <20160708145211.6bf83d8f.john@metanate.com>
References: <1467968701-15620-1-git-send-email-zyw@rock-chips.com>
 <1467968701-15620-6-git-send-email-zyw@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1467968701-15620-6-git-send-email-zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, yzq-TNX95d0MmH7DzftRWevZcw@public.gmane.org, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, David Airlie <airlied-cv59FeDIM0c@public.gmane.org>, tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Mark Yao <mark.yao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Fri,  8 Jul 2016 17:04:59 +0800, Chris Zhong wrote:

> At the first time of bind, there is no any panel attach in mipi. Add a
> DRM_CONNECTOR_POLL_HPD porperty to detect the panel status, when panel
> probe, the dw_mipi_dsi_host_attach would be called, then mipi-dsi will
> trigger a event to notify the drm framework.
> 
> Signed-off-by: Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

Can we do something like this instead?  We know that the panel must
always be attached and this has the advantage that the display size will
be known when the framebuffer console loads.

-- >8 --
Subject: [PATCH] drm/rockchip: dw-mipi-dsi: defer probe if panel is not loaded

This ensures that the output resolution is known before fbcon loads.

Signed-off-by: John Keeping <john-HooS5bfzL4hWk0Htik3J/w@public.gmane.org>
---
 drivers/gpu/drm/rockchip/dw-mipi-dsi.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
index 6ef5f3be8468..c0499266d116 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
@@ -1154,10 +1154,17 @@ static int dw_mipi_dsi_bind(struct device *dev, struct device *master,
 
 	dsi->dsi_host.ops = &dw_mipi_dsi_host_ops;
 	dsi->dsi_host.dev = dev;
-	return mipi_dsi_host_register(&dsi->dsi_host);
+	ret = mipi_dsi_host_register(&dsi->dsi_host);
+	if (!ret && !dsi->panel) {
+		mipi_dsi_host_unregister(&dsi->dsi_host);
+		drm_encoder_cleanup(&dsi->encoder);
+		drm_connector_cleanup(&dsi->connector);
+		ret = -EPROBE_DEFER;
+	}
 
 err_pllref:
-	clk_disable_unprepare(dsi->pllref_clk);
+	if (ret)
+		clk_disable_unprepare(dsi->pllref_clk);
 	return ret;
 }
