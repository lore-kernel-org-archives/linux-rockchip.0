Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7576CD6E65
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jun 2026 22:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HWs7ueR8GuxRvMvf5FxcVPzoBPl74csl8Kz3MRFsofw=; b=ComCNaTfvvXWEu
	66STwAlFWh5lOoQ/FwtjYE7hb9sPy+JhZ2ev/sjXEn38/l6bKq1Q2IId5tk+NYGhdLwPmchjo1OHs
	oyS4AvQv9X2Y9V0kjew5OFeM7v2DNVlhJDEIc+R9nElHYoMmwoYJI7i14Vr6wHwZNbAdkf9q3xmdP
	7fSYQTRujcWtp1BBsyS89/hPF+XugvNDMeATnKu5XyJLiKWR2dvYIlpJ0V8aj8Eby+FJTBVYUYmCN
	gE+GjqJA3MBmbI8VQDblIjP7cG4gJ7SGQUhxUjZpi1QQQhK1FtI4EekAEdJrglaZz9MdWcEbk8djI
	pa8C8KpzEsIcPgxukH1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUBNl-0000000By3k-1qgO;
	Mon, 01 Jun 2026 22:45:17 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUBNh-0000000By0b-3DWS;
	Mon, 01 Jun 2026 22:45:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1780353911;
	bh=5mPr8GUk4/dmA8bUsbqpackEWr0cr5253B/asVUafak=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=JJsVftFHlRGlVRSmnGPRWiHKbFb6/QgR+x6Basa6eJ2/zHzKhP2l6hLa2QoFxTTCn
	 OCuE5RO9/q5UIU0oe8DJYTmSr8o8nG9ni7CU4baXv2MZEW2gb6Gw2fSIbo53r0j0T7
	 YWvNzpN3oDTYTghiiWA8pWllPOSn3xzMOr/Gj6Hu5/USSwfa5j8clJ9rKm8Eq2YAbI
	 b+o2dVDayc+JaZwh8eHSkkwthDVRT+9eX+5rq9Pvud3tZNzUSKQYVjHHBhmyz8gHdq
	 g7PPAN6G4kERaux5v5vG7ItWgUZq8tW1SZaPp9T43Z8eraGMmsyX9nUF38Q2T8ZWO7
	 3gARCgqmCn7Jg==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C5BFD17E045E;
	Tue,  2 Jun 2026 00:45:11 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 02 Jun 2026 01:44:02 +0300
Subject: [PATCH v7 02/30] drm/connector: Add HDMI 2.0 scrambler
 infrastructure
MIME-Version: 1.0
Message-Id: <20260602-dw-hdmi-qp-scramb-v7-2-445eb54ee1ed@collabora.com>
References: <20260602-dw-hdmi-qp-scramb-v7-0-445eb54ee1ed@collabora.com>
In-Reply-To: <20260602-dw-hdmi-qp-scramb-v7-0-445eb54ee1ed@collabora.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Daniel Stone <daniels@collabora.com>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_154513_959706_DED17238 
X-CRM114-Status: GOOD (  19.99  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add the connector-level infrastructure to support HDMI 2.0 scrambling:

- A scrambler_supported flag to indicate whether the source supports the
  scrambling capability, in which case the newly introduced
  .scrambler_{enable|disable}() callbacks in drm_connector_hdmi_funcs
  are mandatory
- A scrambler_needed flag to be managed by the hdmi state helpers based
  on the negotiated TMDS character rate and the source/sink scrambling
  capabilities
- A scrambler_enabled flag to track whether scrambling is currently
  active
- A delayed work item (scdc_work) with an associated callback (scdc_cb)
  to monitor sink-side scrambling status and retry the setup if the sink
  resets it

These are intended to be used by SCDC scrambling helpers to coordinate
scrambling setup and teardown between the source driver and the DRM
core.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/drm_connector.c | 18 +++++++++
 include/drm/drm_connector.h     | 81 +++++++++++++++++++++++++++++++++++++++++
 2 files changed, 99 insertions(+)

diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index a5d13b92b665..526dc2931b8a 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -220,6 +220,19 @@ void drm_connector_free_work_fn(struct work_struct *work)
 	}
 }
 
+static void drm_connector_hdmi_scdc_work(struct work_struct *work)
+{
+	struct drm_connector *connector;
+	struct drm_connector_hdmi *hdmi;
+
+	hdmi = container_of(to_delayed_work(work), struct drm_connector_hdmi,
+			    scdc_work);
+	connector = container_of(hdmi, struct drm_connector, hdmi);
+
+	if (hdmi->scdc_cb)
+		hdmi->scdc_cb(connector);
+}
+
 static int drm_connector_init_only(struct drm_device *dev,
 				   struct drm_connector *connector,
 				   const struct drm_connector_funcs *funcs,
@@ -285,6 +298,7 @@ static int drm_connector_init_only(struct drm_device *dev,
 	mutex_init(&connector->edid_override_mutex);
 	mutex_init(&connector->hdmi.infoframes.lock);
 	mutex_init(&connector->hdmi_audio.lock);
+	INIT_DELAYED_WORK(&connector->hdmi.scdc_work, drm_connector_hdmi_scdc_work);
 	connector->edid_blob_ptr = NULL;
 	connector->epoch_counter = 0;
 	connector->tile_blob_ptr = NULL;
@@ -606,6 +620,10 @@ int drmm_connector_hdmi_init(struct drm_device *dev,
 	    !hdmi_funcs->hdmi.write_infoframe)
 		return -EINVAL;
 
+	if (connector->hdmi.scrambler_supported &&
+	    (!hdmi_funcs->scrambler_enable || !hdmi_funcs->scrambler_disable))
+		return -EINVAL;
+
 	ret = drmm_connector_init(dev, connector, funcs, connector_type, ddc);
 	if (ret)
 		return ret;
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index 529755c2e862..f1c5c15a6cce 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -28,6 +28,7 @@
 #include <linux/ctype.h>
 #include <linux/hdmi.h>
 #include <linux/notifier.h>
+#include <linux/workqueue.h>
 #include <drm/drm_mode_object.h>
 #include <drm/drm_util.h>
 #include <drm/drm_property.h>
@@ -1057,6 +1058,19 @@ struct drm_connector_hdmi_state {
 	 * @tmds_char_rate: TMDS Character Rate, in Hz.
 	 */
 	unsigned long long tmds_char_rate;
+
+	/**
+	 * @scrambler_needed: Whether HDMI 2.0 SCDC scrambling is required
+	 * for the negotiated mode/bpc/format.
+	 *
+	 * Computed by drm_atomic_helper_connector_hdmi_check() from
+	 * @tmds_char_rate and the source/sink scrambling capabilities.
+	 *
+	 * Per HDMI 2.0, scrambling is mandatory above 340 MHz TMDS
+	 * character rate. Optional scrambling at lower rates is
+	 * deliberately not requested by the helper.
+	 */
+	bool scrambler_needed;
 };
 
 /**
@@ -1358,6 +1372,36 @@ struct drm_connector_hdmi_funcs {
 	 */
 	const struct drm_edid *(*read_edid)(struct drm_connector *connector);
 
+	/**
+	 * @scrambler_enable:
+	 *
+	 * This callback is invoked through @drm_scdc_start_scrambling during
+	 * a commit to setup SCDC scrambling and high TMDS clock ratio on
+	 * source side.
+	 *
+	 * The @scrambler_enable callback is mandatory if HDMI 2.0 is to be
+	 * supported.
+	 *
+	 * Returns:
+	 * 0 on success, a negative error code otherwise
+	 */
+	int (*scrambler_enable)(struct drm_connector *connector);
+
+	/**
+	 * @scrambler_disable:
+	 *
+	 * This callback is invoked through @drm_scdc_stop_scrambling during
+	 * a commit to disable SCDC scrambling and high TMDS clock ratio on
+	 * source side.
+	 *
+	 * The @scrambler_disable callback is mandatory if HDMI 2.0 is to be
+	 * supported.
+	 *
+	 * Returns:
+	 * 0 on success, a negative error code otherwise
+	 */
+	int (*scrambler_disable)(struct drm_connector *connector);
+
 	/**
 	 * @avi:
 	 *
@@ -1960,6 +2004,43 @@ struct drm_connector_hdmi {
 	 */
 	unsigned long supported_formats;
 
+	/**
+	 * @scrambler_supported: Indicates whether the HDMI controller
+	 * (source) supports HDMI 2.0 SCDC scrambling.
+	 *
+	 * When true, @drm_connector_hdmi_funcs.scrambler_enable and
+	 * @drm_connector_hdmi_funcs.scrambler_disable are mandatory.
+	 * This is enforced by drmm_connector_hdmi_init().
+	 *
+	 * For HDMI bridge based drivers using drm_bridge_connector_init(),
+	 * this is propagated automatically from bridges that set the
+	 * DRM_BRIDGE_OP_HDMI_SCRAMBLER flag in their &drm_bridge->ops.
+	 * Other drivers must set this field on @connector->hdmi before calling
+	 * drmm_connector_hdmi_init().
+	 */
+	bool scrambler_supported;
+
+	/**
+	 * @scrambler_enabled: Tracks whether HDMI 2.0 scrambler is currently enabled.
+	 */
+	bool scrambler_enabled;
+
+	/**
+	 * @scdc_work: Work item currently used to monitor sink-side scrambling
+	 * status and retry setup if the sink resets it.
+	 */
+	struct delayed_work scdc_work;
+
+	/** @scdc_cb: Callback to be invoked as part of @scdc_work.
+	 *
+	 * Currently used to monitor sink-side scrambling status and retry
+	 * setup if the sink resets it.
+	 *
+	 * This is assigned by the framework when making use of
+	 * drm_scdc_start_scrambling() helper.
+	 */
+	void (*scdc_cb)(struct drm_connector *connector);
+
 	/**
 	 * @funcs: HDMI connector Control Functions
 	 */

-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
