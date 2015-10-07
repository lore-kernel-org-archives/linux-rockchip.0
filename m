From: Yakir Yang <ykk@rock-chips.com>
Subject: Re: [PATCH 10/12] drm: bridge/dw_hdmi: fix phy enable/disable handling
Date: Wed, 07 Oct 2015 12:05:37 +0800
Message-ID: <56149A11.4070102@rock-chips.com>
References: <20150808160251.GM7557@n2100.arm.linux.org.uk>
 <E1ZO6bT-0002vk-3d@rmk-PC.arm.linux.org.uk>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============0263446083=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <E1ZO6bT-0002vk-3d@rmk-PC.arm.linux.org.uk>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Russell King <rmk+kernel@arm.linux.org.uk>, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc: Fabio Estevam <fabio.estevam@freescale.com>, Andy Yan <andy.yan@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

This is a multi-part message in MIME format.
--===============0263446083==
Content-Type: multipart/alternative;
 boundary="------------070200020706080003070904"

This is a multi-part message in MIME format.
--------------070200020706080003070904
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit



On 08/09/2015 12:04 AM, Russell King wrote:
> The dw_hdmi enable/disable handling is particularly weak in several
> regards:
> * The hotplug interrupt could call hdmi_poweron() or hdmi_poweroff()
>    while DRM is setting a mode, which could race with a mode being set.
> * Hotplug will always re-enable the phy whenever it detects an active
>    hotplug signal, even if DRM has disabled the output.
>
> Resolve all of these by introducing a mutex to prevent races, and a
> state-tracking bool so we know whether DRM wishes the output to be
> enabled.  We choose to use our own mutex rather than ->struct_mutex
> so that we can still process interrupts in a timely fashion.
>
> Signed-off-by: Russell King <rmk+kernel@arm.linux.org.uk>
> ---
>   drivers/gpu/drm/bridge/dw_hdmi.c | 29 ++++++++++++++++++++++-------
>   1 file changed, 22 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/bridge/dw_hdmi.c b/drivers/gpu/drm/bridge/dw_hdmi.c
> index 7b8a4e942a71..0ee188930d26 100644
> --- a/drivers/gpu/drm/bridge/dw_hdmi.c
> +++ b/drivers/gpu/drm/bridge/dw_hdmi.c
> @@ -125,6 +125,9 @@ struct dw_hdmi {
>   	bool sink_is_hdmi;
>   	bool sink_has_audio;
>   
> +	struct mutex mutex;		/* for state below and previous_mode */
> +	bool disabled;			/* DRM has disabled our bridge */
> +
>   	spinlock_t audio_lock;
>   	struct mutex audio_mutex;
>   	unsigned int sample_rate;
> @@ -1389,8 +1392,12 @@ static void dw_hdmi_bridge_mode_set(struct drm_bridge *bridge,
>   {
>   	struct dw_hdmi *hdmi = bridge->driver_private;
>   
> +	mutex_lock(&hdmi->mutex);
> +
>   	/* Store the display mode for plugin/DKMS poweron events */
>   	memcpy(&hdmi->previous_mode, mode, sizeof(hdmi->previous_mode));
> +
> +	mutex_unlock(&hdmi->mutex);
>   }
>   
>   static bool dw_hdmi_bridge_mode_fixup(struct drm_bridge *bridge,
> @@ -1404,14 +1411,20 @@ static void dw_hdmi_bridge_disable(struct drm_bridge *bridge)
>   {
>   	struct dw_hdmi *hdmi = bridge->driver_private;
>   
> +	mutex_lock(&hdmi->mutex);
> +	hdmi->disabled = true;
>   	dw_hdmi_poweroff(hdmi);
> +	mutex_unlock(&hdmi->mutex);
>   }
>   
>   static void dw_hdmi_bridge_enable(struct drm_bridge *bridge)
>   {
>   	struct dw_hdmi *hdmi = bridge->driver_private;
>   
> +	mutex_lock(&hdmi->mutex);
>   	dw_hdmi_poweron(hdmi);
> +	hdmi->disabled = false;
> +	mutex_unlock(&hdmi->mutex);
>   }
>   
>   static void dw_hdmi_bridge_nop(struct drm_bridge *bridge)
> @@ -1534,20 +1547,20 @@ static irqreturn_t dw_hdmi_irq(int irq, void *dev_id)
>   	phy_int_pol = hdmi_readb(hdmi, HDMI_PHY_POL0);
>   
>   	if (intr_stat & HDMI_IH_PHY_STAT0_HPD) {
> +		hdmi_modb(hdmi, ~phy_int_pol, HDMI_PHY_HPD, HDMI_PHY_POL0);
> +		mutex_lock(&hdmi->mutex);
>   		if (phy_int_pol & HDMI_PHY_HPD) {
>   			dev_dbg(hdmi->dev, "EVENT=plugin\n");
>   
> -			hdmi_modb(hdmi, 0, HDMI_PHY_HPD, HDMI_PHY_POL0);
> -
> -			dw_hdmi_poweron(hdmi);
> +			if (!hdmi->disabled)
> +				dw_hdmi_poweron(hdmi);
>   		} else {
>   			dev_dbg(hdmi->dev, "EVENT=plugout\n");
>   
> -			hdmi_modb(hdmi, HDMI_PHY_HPD, HDMI_PHY_HPD,
> -				  HDMI_PHY_POL0);
> -
> -			dw_hdmi_poweroff(hdmi);
> +			if (!hdmi->disabled)
> +				dw_hdmi_poweroff(hdmi);

Just like my reply on 08/12, I thought this could be removed, so 
poweron/poweroff
would only be called with bridge->enable/bridge->disable, them maybe no need
mutex here.

Best regards,
- Yakir
>   		}
> +		mutex_unlock(&hdmi->mutex);
>   		drm_helper_hpd_irq_event(hdmi->bridge->dev);
>   	}
>   
> @@ -1617,7 +1630,9 @@ int dw_hdmi_bind(struct device *dev, struct device *master,
>   	hdmi->sample_rate = 48000;
>   	hdmi->ratio = 100;
>   	hdmi->encoder = encoder;
> +	hdmi->disabled = true;
>   
> +	mutex_init(&hdmi->mutex);
>   	mutex_init(&hdmi->audio_mutex);
>   	spin_lock_init(&hdmi->audio_lock);
>   


--------------070200020706080003070904
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <br>
    <br>
    <div class="moz-cite-prefix">On 08/09/2015 12:04 AM, Russell King
      wrote:<br>
    </div>
    <blockquote cite="mid:E1ZO6bT-0002vk-3d@rmk-PC.arm.linux.org.uk"
      type="cite">
      <pre wrap="">The dw_hdmi enable/disable handling is particularly weak in several
regards:
* The hotplug interrupt could call hdmi_poweron() or hdmi_poweroff()
  while DRM is setting a mode, which could race with a mode being set.
* Hotplug will always re-enable the phy whenever it detects an active
  hotplug signal, even if DRM has disabled the output.

Resolve all of these by introducing a mutex to prevent races, and a
state-tracking bool so we know whether DRM wishes the output to be
enabled.  We choose to use our own mutex rather than -&gt;struct_mutex
so that we can still process interrupts in a timely fashion.

Signed-off-by: Russell King <a class="moz-txt-link-rfc2396E" href="mailto:rmk+kernel@arm.linux.org.uk">&lt;rmk+kernel@arm.linux.org.uk&gt;</a>
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
 	struct dw_hdmi *hdmi = bridge-&gt;driver_private;
 
+	mutex_lock(&amp;hdmi-&gt;mutex);
+
 	/* Store the display mode for plugin/DKMS poweron events */
 	memcpy(&amp;hdmi-&gt;previous_mode, mode, sizeof(hdmi-&gt;previous_mode));
+
+	mutex_unlock(&amp;hdmi-&gt;mutex);
 }
 
 static bool dw_hdmi_bridge_mode_fixup(struct drm_bridge *bridge,
@@ -1404,14 +1411,20 @@ static void dw_hdmi_bridge_disable(struct drm_bridge *bridge)
 {
 	struct dw_hdmi *hdmi = bridge-&gt;driver_private;
 
+	mutex_lock(&amp;hdmi-&gt;mutex);
+	hdmi-&gt;disabled = true;
 	dw_hdmi_poweroff(hdmi);
+	mutex_unlock(&amp;hdmi-&gt;mutex);
 }
 
 static void dw_hdmi_bridge_enable(struct drm_bridge *bridge)
 {
 	struct dw_hdmi *hdmi = bridge-&gt;driver_private;
 
+	mutex_lock(&amp;hdmi-&gt;mutex);
 	dw_hdmi_poweron(hdmi);
+	hdmi-&gt;disabled = false;
+	mutex_unlock(&amp;hdmi-&gt;mutex);
 }
 
 static void dw_hdmi_bridge_nop(struct drm_bridge *bridge)
@@ -1534,20 +1547,20 @@ static irqreturn_t dw_hdmi_irq(int irq, void *dev_id)
 	phy_int_pol = hdmi_readb(hdmi, HDMI_PHY_POL0);
 
 	if (intr_stat &amp; HDMI_IH_PHY_STAT0_HPD) {
+		hdmi_modb(hdmi, ~phy_int_pol, HDMI_PHY_HPD, HDMI_PHY_POL0);
+		mutex_lock(&amp;hdmi-&gt;mutex);
 		if (phy_int_pol &amp; HDMI_PHY_HPD) {
 			dev_dbg(hdmi-&gt;dev, "EVENT=plugin\n");
 
-			hdmi_modb(hdmi, 0, HDMI_PHY_HPD, HDMI_PHY_POL0);
-
-			dw_hdmi_poweron(hdmi);
+			if (!hdmi-&gt;disabled)
+				dw_hdmi_poweron(hdmi);
 		} else {
 			dev_dbg(hdmi-&gt;dev, "EVENT=plugout\n");
 
-			hdmi_modb(hdmi, HDMI_PHY_HPD, HDMI_PHY_HPD,
-				  HDMI_PHY_POL0);
-
-			dw_hdmi_poweroff(hdmi);
+			if (!hdmi-&gt;disabled)
+				dw_hdmi_poweroff(hdmi);</pre>
    </blockquote>
    <br>
    Just like my reply on
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    08/12, I thought this could be removed, so poweron/poweroff<br>
    would only be called with bridge-&gt;enable/bridge-&gt;disable, them
    maybe no need<br>
    mutex here.<br>
    <br>
    Best regards,<br>
    - Yakir<br>
    <blockquote cite="mid:E1ZO6bT-0002vk-3d@rmk-PC.arm.linux.org.uk"
      type="cite">
      <pre wrap="">
 		}
+		mutex_unlock(&amp;hdmi-&gt;mutex);
 		drm_helper_hpd_irq_event(hdmi-&gt;bridge-&gt;dev);
 	}
 
@@ -1617,7 +1630,9 @@ int dw_hdmi_bind(struct device *dev, struct device *master,
 	hdmi-&gt;sample_rate = 48000;
 	hdmi-&gt;ratio = 100;
 	hdmi-&gt;encoder = encoder;
+	hdmi-&gt;disabled = true;
 
+	mutex_init(&amp;hdmi-&gt;mutex);
 	mutex_init(&amp;hdmi-&gt;audio_mutex);
 	spin_lock_init(&amp;hdmi-&gt;audio_lock);
 
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------070200020706080003070904--


--===============0263446083==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHA6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK

--===============0263446083==--
