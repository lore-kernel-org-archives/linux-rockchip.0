From: Mark yao <mark.yao@rock-chips.com>
Subject: Question: Re: [PATCH] drm/bridge: analogix: protect power when
 get_modes or detect
Date: Wed, 12 Oct 2016 18:22:45 +0800
Message-ID: <57FE0EF5.7010207@rock-chips.com>
References: <1476266442-29803-1-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============0612561465=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1476266442-29803-1-git-send-email-mark.yao@rock-chips.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Gustavo Padovan <gustavo.padovan@collabora.co.uk>
List-Id: linux-rockchip.vger.kernel.org

--===============0612561465==
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix"><br>
      I'm not familiar with the analogix driver, maybe use a power
      reference count  would better then direct power on/off
      analogix_dp.<br>
      <br>
      Does anyone has the idea to protect detect and get_modes context?<br>
      <br>
      I found many other connector driver also direct access register on
      detect or get_modes, no problem for it?<br>
      <meta http-equiv="content-type" content="text/html; charset=utf-8">
      <br>
      On 2016年10月12日 18:00, Mark Yao wrote:<br>
    </div>
    <blockquote
      cite="mid:1476266442-29803-1-git-send-email-mark.yao@rock-chips.com"
      type="cite">
      <pre wrap="">The drm callback -&gt;detect and -&gt;get_modes seems is not power safe,
they may be called when device is power off, do register access on
detect or get_modes will cause system die.

Here is the path call -&gt;detect before analogix_dp power on
[&lt;ffffff800843babc&gt;] analogix_dp_detect+0x44/0xdc
[&lt;ffffff80083fd840&gt;] drm_helper_probe_single_connector_modes_merge_bits+0xe8/0x41c
[&lt;ffffff80083fdb84&gt;] drm_helper_probe_single_connector_modes+0x10/0x18
[&lt;ffffff8008418d24&gt;] drm_mode_getconnector+0xf4/0x304
[&lt;ffffff800840cff0&gt;] drm_ioctl+0x23c/0x390
[&lt;ffffff80081a8adc&gt;] do_vfs_ioctl+0x4b8/0x58c
[&lt;ffffff80081a8c10&gt;] SyS_ioctl+0x60/0x88

Cc: Inki Dae <a class="moz-txt-link-rfc2396E" href="mailto:inki.dae@samsung.com">&lt;inki.dae@samsung.com&gt;</a>
Cc: Sean Paul <a class="moz-txt-link-rfc2396E" href="mailto:seanpaul@chromium.org">&lt;seanpaul@chromium.org&gt;</a>
Cc: Gustavo Padovan <a class="moz-txt-link-rfc2396E" href="mailto:gustavo.padovan@collabora.co.uk">&lt;gustavo.padovan@collabora.co.uk&gt;</a>
Cc: "Ville Syrjälä" <a class="moz-txt-link-rfc2396E" href="mailto:ville.syrjala@linux.intel.com">&lt;ville.syrjala@linux.intel.com&gt;</a>

Signed-off-by: Mark Yao <a class="moz-txt-link-rfc2396E" href="mailto:mark.yao@rock-chips.com">&lt;mark.yao@rock-chips.com&gt;</a>
---
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 28 ++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index efac8ab..09dece2 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1062,6 +1062,13 @@ int analogix_dp_get_modes(struct drm_connector *connector)
 		return 0;
 	}
 
+	if (dp-&gt;dpms_mode != DRM_MODE_DPMS_ON) {
+		pm_runtime_get_sync(dp-&gt;dev);
+
+		if (dp-&gt;plat_data-&gt;power_on)
+			dp-&gt;plat_data-&gt;power_on(dp-&gt;plat_data);
+	}
+
 	if (analogix_dp_handle_edid(dp) == 0) {
 		drm_mode_connector_update_edid_property(&amp;dp-&gt;connector, edid);
 		num_modes += drm_add_edid_modes(&amp;dp-&gt;connector, edid);
@@ -1073,6 +1080,13 @@ int analogix_dp_get_modes(struct drm_connector *connector)
 	if (dp-&gt;plat_data-&gt;get_modes)
 		num_modes += dp-&gt;plat_data-&gt;get_modes(dp-&gt;plat_data, connector);
 
+	if (dp-&gt;dpms_mode != DRM_MODE_DPMS_ON) {
+		if (dp-&gt;plat_data-&gt;power_off)
+			dp-&gt;plat_data-&gt;power_off(dp-&gt;plat_data);
+
+		pm_runtime_put_sync(dp-&gt;dev);
+	}
+
 	ret = analogix_dp_prepare_panel(dp, false, false);
 	if (ret)
 		DRM_ERROR("Failed to unprepare panel (%d)\n", ret);
@@ -1106,9 +1120,23 @@ analogix_dp_detect(struct drm_connector *connector, bool force)
 		return connector_status_disconnected;
 	}
 
+	if (dp-&gt;dpms_mode != DRM_MODE_DPMS_ON) {
+		pm_runtime_get_sync(dp-&gt;dev);
+
+		if (dp-&gt;plat_data-&gt;power_on)
+			dp-&gt;plat_data-&gt;power_on(dp-&gt;plat_data);
+	}
+
 	if (!analogix_dp_detect_hpd(dp))
 		status = connector_status_connected;
 
+	if (dp-&gt;dpms_mode != DRM_MODE_DPMS_ON) {
+		if (dp-&gt;plat_data-&gt;power_off)
+			dp-&gt;plat_data-&gt;power_off(dp-&gt;plat_data);
+
+		pm_runtime_put_sync(dp-&gt;dev);
+	}
+
 	ret = analogix_dp_prepare_panel(dp, false, false);
 	if (ret)
 		DRM_ERROR("Failed to unprepare panel (%d)\n", ret);
</pre>
    </blockquote>
    <br>
    <br>
    <pre class="moz-signature" cols="72">-- 
Ｍark Yao</pre>
  </body>
</html>


--===============0612561465==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

--===============0612561465==--
