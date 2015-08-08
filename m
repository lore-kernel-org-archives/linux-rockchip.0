From: Russell King <rmk+kernel-lFZ/pmaqli7XmaaqVzeoHQ@public.gmane.org>
Subject: [PATCH 10/12] drm: bridge/dw_hdmi: fix phy enable/disable handling
Date: Sat, 08 Aug 2015 17:04:11 +0100
Message-ID: <E1ZO6bT-0002vk-3d@rmk-PC.arm.linux.org.uk>
References: <20150808160251.GM7557@n2100.arm.linux.org.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20150808160251.GM7557-l+eeeJia6m9vn6HldHNs0ANdhmdF6hFW@public.gmane.org>
Content-Disposition: inline
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: Fabio Estevam <fabio.estevam-KZfg59tc24xl57MIdRCFDg@public.gmane.org>, David Airlie <airlied-cv59FeDIM0c@public.gmane.org>, Sascha Hauer <s.hauer-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>, Philipp Zabel <p.zabel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>, Yakir Yang <ykk-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Andy Yan <andy.yan-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Jon Nettleton <jon.nettleton-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

The dw_hdmi enable/disable handling is particularly weak in several
regards:
* The hotplug interrupt could call hdmi_poweron() or hdmi_poweroff()
  while DRM is setting a mode, which could race with a mode being set.
* Hotplug will always re-enable the phy whenever it detects an active
  hotplug signal, even if DRM has disabled the output.

Resolve all of these by introducing a mutex to prevent races, and a
state-tracking bool so we know whether DRM wishes the output to be
enabled.  We choose to use our own mutex rather than ->struct_mutex
so that we can still process interrupts in a timely fashion.

Signed-off-by: Russell King <rmk+kernel-lFZ/pmaqli7XmaaqVzeoHQ@public.gmane.org>
---
 drivers/gpu/drm/bridge/dw_hdmi.c | 29 ++++++++++++++++++++++-------
 1 file changed, 22 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/bridge/dw_hdmi.c b/drivers/gpu/drm/bridge/dw_hdmi.c
index 7b8a4e942a71..0ee188930d26 100644
--- a/drivers/gpu/drm/bridge/dw_hdmi.c
+++ b/drivers/gpu/drm/bridge/dw_hdmi.c
@@ -125,6 +125,9 @@ struct dw_hdmi {
 	bool sink_is_hdmi;
 	bool sink_has_audio;
 
+	struct mutex mutex;		/* for state below and previous_mode */
+	bool disabled;			/* DRM has disabled our bridge */
+
 	spinlock_t audio_lock;
 	struct mutex audio_mutex;
 	unsigned int sample_rate;
@@ -1389,8 +1392,12 @@ static void dw_hdmi_bridge_mode_set(struct drm_bridge *bridge,
 {
 	struct dw_hdmi *hdmi = bridge->driver_private;
 
+	mutex_lock(&hdmi->mutex);
+
 	/* Store the display mode for plugin/DKMS poweron events */
 	memcpy(&hdmi->previous_mode, mode, sizeof(hdmi->previous_mode));
+
+	mutex_unlock(&hdmi->mutex);
 }
 
 static bool dw_hdmi_bridge_mode_fixup(struct drm_bridge *bridge,
@@ -1404,14 +1411,20 @@ static void dw_hdmi_bridge_disable(struct drm_bridge *bridge)
 {
 	struct dw_hdmi *hdmi = bridge->driver_private;
 
+	mutex_lock(&hdmi->mutex);
+	hdmi->disabled = true;
 	dw_hdmi_poweroff(hdmi);
+	mutex_unlock(&hdmi->mutex);
 }
 
 static void dw_hdmi_bridge_enable(struct drm_bridge *bridge)
 {
 	struct dw_hdmi *hdmi = bridge->driver_private;
 
+	mutex_lock(&hdmi->mutex);
 	dw_hdmi_poweron(hdmi);
+	hdmi->disabled = false;
+	mutex_unlock(&hdmi->mutex);
 }
 
 static void dw_hdmi_bridge_nop(struct drm_bridge *bridge)
@@ -1534,20 +1547,20 @@ static irqreturn_t dw_hdmi_irq(int irq, void *dev_id)
 	phy_int_pol = hdmi_readb(hdmi, HDMI_PHY_POL0);
 
 	if (intr_stat & HDMI_IH_PHY_STAT0_HPD) {
+		hdmi_modb(hdmi, ~phy_int_pol, HDMI_PHY_HPD, HDMI_PHY_POL0);
+		mutex_lock(&hdmi->mutex);
 		if (phy_int_pol & HDMI_PHY_HPD) {
 			dev_dbg(hdmi->dev, "EVENT=plugin\n");
 
-			hdmi_modb(hdmi, 0, HDMI_PHY_HPD, HDMI_PHY_POL0);
-
-			dw_hdmi_poweron(hdmi);
+			if (!hdmi->disabled)
+				dw_hdmi_poweron(hdmi);
 		} else {
 			dev_dbg(hdmi->dev, "EVENT=plugout\n");
 
-			hdmi_modb(hdmi, HDMI_PHY_HPD, HDMI_PHY_HPD,
-				  HDMI_PHY_POL0);
-
-			dw_hdmi_poweroff(hdmi);
+			if (!hdmi->disabled)
+				dw_hdmi_poweroff(hdmi);
 		}
+		mutex_unlock(&hdmi->mutex);
 		drm_helper_hpd_irq_event(hdmi->bridge->dev);
 	}
 
@@ -1617,7 +1630,9 @@ int dw_hdmi_bind(struct device *dev, struct device *master,
 	hdmi->sample_rate = 48000;
 	hdmi->ratio = 100;
 	hdmi->encoder = encoder;
+	hdmi->disabled = true;
 
+	mutex_init(&hdmi->mutex);
 	mutex_init(&hdmi->audio_mutex);
 	spin_lock_init(&hdmi->audio_lock);
 
-- 
2.1.0
