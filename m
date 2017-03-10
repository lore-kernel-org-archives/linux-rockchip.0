From: Romain Perier <romain.perier-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH] drm: dw_hdmi: Gate audio sampler clock from the enablement
 functions
Date: Fri, 10 Mar 2017 10:35:09 +0100
Message-ID: <20170310093509.19044-1-romain.perier@collabora.com>
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
To: Archit Taneja <architt-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, David Airlie <airlied-cv59FeDIM0c@public.gmane.org>
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Romain Perier <romain.perier-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Currently, the audio sampler clock is enabled from dw_hdmi_setup() at
step E. and is kept enabled for later use. This clock should be enabled
and disabled along with the actual audio stream and not always on (that
is bad for PM). Futhermore, this might cause sound glitches with some
HDMI devices, as the CTS+N is forced to zero when the stream is disabled
while the audio clock is still running.

This commit adds a parameter to hdmi_audio_enable_clk() that controls
when the audio sample clock must be enabled or disabled. Then, it moves
the call to this function into dw_hdmi_audio_enable() and
dw_hdmi_audio_disable().

Signed-off-by: Romain Perier <romain.perier-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
---
 drivers/gpu/drm/bridge/dw-hdmi.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/bridge/dw-hdmi.c b/drivers/gpu/drm/bridge/dw-hdmi.c
index b621fc7..5b6090c 100644
--- a/drivers/gpu/drm/bridge/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/dw-hdmi.c
@@ -537,6 +537,12 @@ void dw_hdmi_set_sample_rate(struct dw_hdmi *hdmi, unsigned int rate)
 }
 EXPORT_SYMBOL_GPL(dw_hdmi_set_sample_rate);
 
+static void hdmi_enable_audio_clk(struct dw_hdmi *hdmi, bool enable)
+{
+	hdmi_modb(hdmi, enable ? 0 : HDMI_MC_CLKDIS_AUDCLK_DISABLE,
+		  HDMI_MC_CLKDIS_AUDCLK_DISABLE, HDMI_MC_CLKDIS);
+}
+
 void dw_hdmi_audio_enable(struct dw_hdmi *hdmi)
 {
 	unsigned long flags;
@@ -544,6 +550,7 @@ void dw_hdmi_audio_enable(struct dw_hdmi *hdmi)
 	spin_lock_irqsave(&hdmi->audio_lock, flags);
 	hdmi->audio_enable = true;
 	hdmi_set_cts_n(hdmi, hdmi->audio_cts, hdmi->audio_n);
+	hdmi_enable_audio_clk(hdmi, true);
 	spin_unlock_irqrestore(&hdmi->audio_lock, flags);
 }
 EXPORT_SYMBOL_GPL(dw_hdmi_audio_enable);
@@ -554,6 +561,7 @@ void dw_hdmi_audio_disable(struct dw_hdmi *hdmi)
 
 	spin_lock_irqsave(&hdmi->audio_lock, flags);
 	hdmi->audio_enable = false;
+	hdmi_enable_audio_clk(hdmi, false);
 	hdmi_set_cts_n(hdmi, hdmi->audio_cts, 0);
 	spin_unlock_irqrestore(&hdmi->audio_lock, flags);
 }
@@ -1343,11 +1351,6 @@ static void dw_hdmi_enable_video_path(struct dw_hdmi *hdmi)
 	}
 }
 
-static void hdmi_enable_audio_clk(struct dw_hdmi *hdmi)
-{
-	hdmi_modb(hdmi, 0, HDMI_MC_CLKDIS_AUDCLK_DISABLE, HDMI_MC_CLKDIS);
-}
-
 /* Workaround to clear the overflow condition */
 static void dw_hdmi_clear_overflow(struct dw_hdmi *hdmi)
 {
@@ -1430,7 +1433,7 @@ static int dw_hdmi_setup(struct dw_hdmi *hdmi, struct drm_display_mode *mode)
 
 		/* HDMI Initialization Step E - Configure audio */
 		hdmi_clk_regenerator_update_pixel_clock(hdmi);
-		hdmi_enable_audio_clk(hdmi);
+		hdmi_enable_audio_clk(hdmi, true);
 	}
 
 	/* not for DVI mode */
-- 
2.9.3
