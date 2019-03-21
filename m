From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: Re: [PATCH v5 1/5] drm: rockchip: introduce rk3066 hdmi
Date: Thu, 21 Mar 2019 21:35:45 +0100
Message-ID: <fe1b8049-37be-f911-ec5e-399875db46fe@gmail.com>
References: <20190321001440.31057-2-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190321001440.31057-2-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
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

On Heiko's request the function rk3066_hdmi_connector_get_modes() was
made equel to the inno driver. The variable "sink_is_hdmi" now only
changes with valid edid. What happens if we plug in a device with valid
hdmi video and then with something wrong with edid then "sink_is_hdmi"
never turns false. Shouldn't we add an extra statement in this and in
the inno driver that makes sure that "sink_is_hdmi" is false in all
other cases? Please advise.


+static int rk3066_hdmi_connector_get_modes(struct drm_connector *connector)
+{
+	struct rk3066_hdmi *hdmi = to_rk3066_hdmi(connector);
+	struct edid *edid;
+	int ret = 0;
+
+	if (!hdmi->ddc)
+		return 0;
+

Add extra statement here:
	hdmi->hdmi_data.sink_is_hdmi = false;

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
