From: Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH 02/10] drm/rockchip: return a true clock rate to adjusted_mode
Date: Sat, 10 Oct 2015 17:55:22 +0800
Message-ID: <1444470930-17150-3-git-send-email-zyw@rock-chips.com>
References: <1444470930-17150-1-git-send-email-zyw@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1444470930-17150-1-git-send-email-zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: David Airlie <airlied-cv59FeDIM0c@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Mark Yao <mark.yao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Sometimes the clock driver can not set a accurate clock_rate for vop,
get the true rate of vop_dclk and set it back to adjusted_mode, since
the mipi dsi driver need to use the clock to make the calculation of
Blanking.

Signed-off-by: Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---

 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index 5d8ae5e..9986b311ed 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -1232,6 +1232,12 @@ static int vop_crtc_mode_set(struct drm_crtc *crtc,
 	reset_control_deassert(vop->dclk_rst);
 
 	clk_set_rate(vop->dclk, adjusted_mode->clock * 1000);
+
+	/*
+	 * Sometimes the clock driver can not set a accurate clock_rate for vop,
+	 * get the true rate of vop_dclk and set it back to adjusted_mode.
+	 */
+	adjusted_mode->clock = clk_get_rate(vop->dclk) / 1000;
 out:
 	ret_clk = clk_enable(vop->dclk);
 	if (ret_clk < 0) {
-- 
2.6.1
