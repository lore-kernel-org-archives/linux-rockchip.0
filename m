Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58213C48297
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Feb 2024 13:14:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aosRJziLMASr+lt/KVn6gf0DB/5ZLJVkl/lL0WImZWc=; b=UYcnRVVqGPLEry
	BFtJL/Pt68N/Viknk458r0hLCbx0jGMYCoufB5jya6UWVOKUyZjbfiXhUiS6McveYH55rbou1akx+
	smb3QdajnvrseDQRRChepbEfjC5LW0+9r6Ckfka0AQwCRIWzoxxfqkLYM4kQ2+HnT7sMu50U7mfeY
	QYKC4V6EQErpOIwu2iFCakA1fUbWPYn+YVOWiZD7Aa9GRSjn+R/JwPPh5SKDZ4y9sNDguwbknMTzY
	3GbKjrbvBydCHJQnXjYtBcarOmLL0sHmWCeSt+//FJtqcwk+GTD5Pnar+HFfxX0r0P8SMEz5Z/BeM
	JkoXcjSJyhuc8wvIpxtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZW8w-00000005PQ6-04eO;
	Mon, 12 Feb 2024 13:14:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZW8M-00000005OsH-45ue;
	Mon, 12 Feb 2024 13:14:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=/AxO4mhg3lwtWGKaeo0nJjZrXRGz/q/OzgMA+R5XEBw=; b=SUM9bjXdM0nlOhBb0GUQAXsAZd
	6fXhn7mEVVIBV7/aHl1GySrXI3Qe4E9G60eMNGfPYRTuhGRQfQeRqdaCudRJYzrd5KYlUYVTa/qFo
	6jOhk8rZPfabBPHwD3R1bLuQlxXskleVh7bb/rXUl8bBKDdnjFvAgHZkgZJNXMUh9GEVgR3vSkdeq
	vdQBFY7FDBqzAmWfegncURo4fLaP7YW+WhEceGRPEX7XhyLzA/60Hvi12m6f19nYDutjjA2cmKJ2a
	ihdnhg6HbsTwYG4RpO+uTbnVHjW9efvqcz8yO5G73SJ6igajTMRotlwoHLhJSv3yQ4dak+scnWuui
	URU8Gj8g==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZW8I-0000000FIMa-4A68;
	Mon, 12 Feb 2024 13:14:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id DF18360FB1;
	Mon, 12 Feb 2024 13:13:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26EBBC433C7;
	Mon, 12 Feb 2024 13:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707743639;
	bh=Uci5nUWFbopiU9JwFehIK0RWTdqj3fqfRO4WqS8ziZg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=aPgnXpLoSCS2gXcpPVgwke7qp7T1PP/zCXkyxxHo2b7zb/PNAAONXihB3n9gC8+Fb
	 7ZidSY6HBhFPB0ncdnw6G32kzBeiAss+Yt3ZabzypK1z/fdhydvGbiWPiOmE/tNT6O
	 u1tC5R74Lkn+sHE/F5pQDY9KN9FEp4HWD3SQaMo4vd4+5YTsrAWSWkCGJOeOz+XRs8
	 KXiYk86sxtnQ8CpgH3uj3J3+vCvPl2oczkZUHbJBmEIPWDUuBcgZOkOt5O1/OVNDej
	 qU7s8pUnJgHIqwBMbAINyWMZoKiQtvjDgANKfIRgh6R2nDE28aLySfBsEv4sTo6LQU
	 us3guei4uAmRA==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 12 Feb 2024 14:12:54 +0100
Subject: [PATCH v6 11/36] drm/connector: hdmi: Add RGB Quantization Range
 to the connector state
MIME-Version: 1.0
Message-Id: <20240212-kms-hdmi-connector-state-v6-11-f4bcdc979e6f@kernel.org>
References: <20240212-kms-hdmi-connector-state-v6-0-f4bcdc979e6f@kernel.org>
In-Reply-To: <20240212-kms-hdmi-connector-state-v6-0-f4bcdc979e6f@kernel.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Emma Anholt <emma@anholt.net>, 
 Jonathan Corbet <corbet@lwn.net>, Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 Maxime Ripard <mripard@kernel.org>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=4240; i=mripard@kernel.org;
 h=from:subject:message-id; bh=Uci5nUWFbopiU9JwFehIK0RWTdqj3fqfRO4WqS8ziZg=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmnJFNndfSHrv3wft5BQ9s3BpPOTZI5cv3VmQ77bxPWe
 /88MumUeUcpC4MYF4OsmCJLjLD5krhTs153svHNg5nDygQyhIGLUwAm0vSd4X/wY3afGnM+MR6V
 5dKeD3v/+yeI6TKu37T4dpDS4gDPn1KMDFt0tmRPcgxu4lE+uTbmYs2+P8eFImN+nfPLPriSt2n
 bK1YA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240212_131404_114611_A59D5DD3 
X-CRM114-Status: GOOD (  15.99  )
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

HDMI controller drivers will need to figure out the RGB range they need
to configure based on a mode and property values. Let's expose that in
the HDMI connector state so drivers can just use that value.

Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/drm_atomic.c              |  4 ++-
 drivers/gpu/drm/drm_atomic_state_helper.c | 44 +++++++++++++++++++++++++++++++
 include/drm/drm_connector.h               |  6 +++++
 3 files changed, 53 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
index 93831850ffcd..0c283964cee0 100644
--- a/drivers/gpu/drm/drm_atomic.c
+++ b/drivers/gpu/drm/drm_atomic.c
@@ -1144,9 +1144,11 @@ static void drm_atomic_connector_print_state(struct drm_printer *p,
 	drm_printf(p, "\tcolorspace=%s\n", drm_get_colorspace_name(state->colorspace));
 
 	if (connector->connector_type == DRM_MODE_CONNECTOR_HDMIA ||
-	    connector->connector_type == DRM_MODE_CONNECTOR_HDMIB)
+	    connector->connector_type == DRM_MODE_CONNECTOR_HDMIB) {
 		drm_printf(p, "\tbroadcast_rgb=%s\n",
 			   drm_hdmi_connector_get_broadcast_rgb_name(state->hdmi.broadcast_rgb));
+		drm_printf(p, "\tis_full_range=%c\n", state->hdmi.is_full_range ? 'y' : 'n');
+	}
 
 	if (connector->connector_type == DRM_MODE_CONNECTOR_WRITEBACK)
 		if (state->writeback_job && state->writeback_job->fb)
diff --git a/drivers/gpu/drm/drm_atomic_state_helper.c b/drivers/gpu/drm/drm_atomic_state_helper.c
index d93bc7f5faee..08db9956840b 100644
--- a/drivers/gpu/drm/drm_atomic_state_helper.c
+++ b/drivers/gpu/drm/drm_atomic_state_helper.c
@@ -31,6 +31,7 @@
 #include <drm/drm_connector.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_device.h>
+#include <drm/drm_edid.h>
 #include <drm/drm_framebuffer.h>
 #include <drm/drm_plane.h>
 #include <drm/drm_print.h>
@@ -637,6 +638,47 @@ int drm_atomic_helper_connector_tv_check(struct drm_connector *connector,
 }
 EXPORT_SYMBOL(drm_atomic_helper_connector_tv_check);
 
+static const struct drm_display_mode *
+connector_state_get_mode(const struct drm_connector_state *conn_state)
+{
+	struct drm_atomic_state *state;
+	struct drm_crtc_state *crtc_state;
+	struct drm_crtc *crtc;
+
+	state = conn_state->state;
+	if (!state)
+		return NULL;
+
+	crtc = conn_state->crtc;
+	if (!crtc)
+		return NULL;
+
+	crtc_state = drm_atomic_get_new_crtc_state(state, crtc);
+	if (!crtc_state)
+		return NULL;
+
+	return &crtc_state->mode;
+}
+
+static bool hdmi_is_full_range(const struct drm_connector *connector,
+			       const struct drm_connector_state *state)
+{
+	const struct drm_display_info *display = &connector->display_info;
+	const struct drm_display_mode *mode =
+		connector_state_get_mode(state);
+
+	if (state->hdmi.broadcast_rgb == DRM_HDMI_BROADCAST_RGB_FULL)
+		return true;
+
+	if (state->hdmi.broadcast_rgb == DRM_HDMI_BROADCAST_RGB_LIMITED)
+		return false;
+
+	if (!display->is_hdmi)
+		return true;
+
+	return drm_default_rgb_quant_range(mode) == HDMI_QUANTIZATION_RANGE_FULL ? true : false;
+}
+
 /**
  * drm_atomic_helper_connector_hdmi_check() - Helper to check HDMI connector atomic state
  * @connector: DRM Connector
@@ -657,6 +699,8 @@ int drm_atomic_helper_connector_hdmi_check(struct drm_connector *connector,
 	struct drm_connector_state *new_state =
 		drm_atomic_get_new_connector_state(state, connector);
 
+	new_state->hdmi.is_full_range = hdmi_is_full_range(connector, new_state);
+
 	if (old_state->hdmi.broadcast_rgb != new_state->hdmi.broadcast_rgb) {
 		struct drm_crtc *crtc = new_state->crtc;
 		struct drm_crtc_state *crtc_state;
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index 3867a4c01b78..76eecd449fb8 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -1066,6 +1066,12 @@ struct drm_connector_state {
 		 * Broadcast RGB selection value.
 		 */
 		enum drm_hdmi_broadcast_rgb broadcast_rgb;
+
+		/**
+		 * @is_full_range: Is the output supposed to use a full
+		 * RGB Quantization Range or not?
+		 */
+		bool is_full_range;
 	} hdmi;
 };
 

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
