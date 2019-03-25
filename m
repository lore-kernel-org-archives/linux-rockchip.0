From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH v5 1/5] drm: rockchip: introduce rk3066 hdmi
Date: Tue, 26 Mar 2019 00:57:12 +0100
Message-ID: <af902b61-d3a5-4aca-3ba0-2023d5b0a240@gmail.com>
References: <20190321001440.31057-2-jbx6244@gmail.com>
 <fe1b8049-37be-f911-ec5e-399875db46fe@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <fe1b8049-37be-f911-ec5e-399875db46fe-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org


Hi,

Did some testing on what happens when the function
rk3066_hdmi_connector_get_modes()
returns 0 with "hdmi->hdmi_data.sink_is_hdmi = true"

If the connector status is connector_status_connected and without EDID
modes, standard VESA DMT modes up to 1024x768 are automatically added
(drm_add_modes_noedid()). They are all pruned BAD, because they are not
CEA modes.

Finally modes specified via the kernel command line (video=...) are
added in addition to what the earlier probes produced
(drm_helper_probe_add_cmdline_mode()).
These modes are generated using the VESA GTF/CVT formulas.
The encoder is then enabled and setup with GTF modes.
"hdmi->hdmi_data.vic = drm_match_cea_mode(mode)" results in CEA mode 0.
To prevent further setup it's better to set
"hdmi->hdmi_data.sink_is_hdmi = false" in all other cases.
Also moved the extra statement before the first return.
Please advise.

--------------------------------------------------------------------------------
+static int rk3066_hdmi_connector_get_modes(struct drm_connector *connector)
+{
+	struct rk3066_hdmi *hdmi = to_rk3066_hdmi(connector);
+	struct edid *edid;
+	int ret = 0;

Moved extra statement up here:
	hdmi->hdmi_data.sink_is_hdmi = false;

+
+	if (!hdmi->ddc)
+		return 0;
+
+	edid = drm_get_edid(connector, hdmi->ddc);
+	if (edid) {
+		hdmi->hdmi_data.sink_is_hdmi = drm_detect_hdmi_monitor(edid);
+		drm_connector_update_edid_property(connector, edid);
+		ret = drm_add_edid_modes(connector, edid);
+		kfree(edid);
+	}
+
+	return ret;
+}
--------------------------------------------------------------------------------

CONFIG_CMDLINE="console=ttyUSB0,115200n8 console=tty0
video=HDMI-A-1:640x480@60 debug drm.debug=0x3f root=LABEL=linuxroot
init=/sbin/init rootfstype=ext4 rootwait"

[    0.504955] [drm:drm_mode_debug_printmodeline] Modeline "640x480": 0
25175 640 656 752 800 480 490 492 525 0x40 0xa
[    0.504989] [drm:drm_mode_prune_invalid] Not using 640x480 mode: BAD
[    0.505018] [drm:drm_mode_debug_printmodeline] Modeline "800x600": 0
36000 800 824 896 1024 600 601 603 625 0x40 0x5
[    0.505047] [drm:drm_mode_prune_invalid] Not using 800x600 mode: BAD
[    0.505074] [drm:drm_mode_debug_printmodeline] Modeline "800x600": 0
40000 800 840 968 1056 600 601 605 628 0x40 0x5
[    0.505103] [drm:drm_mode_prune_invalid] Not using 800x600 mode: BAD
[    0.505129] [drm:drm_mode_debug_printmodeline] Modeline "848x480": 0
33750 848 864 976 1088 480 486 494 517 0x40 0x5
[    0.505157] [drm:drm_mode_prune_invalid] Not using 848x480 mode: BAD
[    0.505184] [drm:drm_mode_debug_printmodeline] Modeline "1024x768": 0
65000 1024 1048 1184 1344 768 771 777 806 0x40 0xa
[    0.505213] [drm:drm_mode_prune_invalid] Not using 1024x768 mode: BAD
[    0.505237] [drm:drm_setup_crtcs] No connectors reported connected
with modes
[    0.505259] [drm:drm_setup_crtcs] connector 35 enabled? yes
[    0.505280] [drm:drm_setup_crtcs] looking for cmdline mode on
connector 35
[    0.505308] [drm:drm_setup_crtcs] found mode 640x480
[    0.505330] [drm:drm_setup_crtcs] picking CRTCs for 4096x4096 config
[    0.505357] [drm:drm_setup_crtcs] desired mode 640x480 set on crtc 32
(0,0)


[    0.512224] rockchip-rk3066-hdmi 10116000.hdmi:
[drm:rk3066_hdmi_encoder_enable] hdmi encoder enable select: vop0
[    0.512317] rockchip-rk3066-hdmi 10116000.hdmi:
[drm:rk3066_hdmi_encoder_enable] >>>> hdmi->hdmi_data.vic: 0 <<<<
[    0.522996] rockchip-rk3066-hdmi 10116000.hdmi:
[drm:rk3066_hdmi_set_power_mode] mode         :128
