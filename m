Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC6DCC00E86
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Sep 2023 14:36:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YZ/op6XJg572GyVg3KK485QAbjIF7Dov7nYIQYcjesw=; b=NEhYhofy6D5XcR
	JhpeVEuihTg2Yv6ieK5BuNro1exDuiM28jJf9wm8AZUq64DvrP6CgoOjzSDbhARyZEnDlvhbpRVw9
	Kp59d3E5L72uM/XbMQEVONvk7akbauU4MWjbsQoYBGKY/9TrEL5kHMo3H38nd6wgtETnrNMWO1KEc
	jmEf6Fwja4uVhWNb5EMVncbYgMNJA6fb/gGPN35Z188IlFZYr47WJAlT2EZiaJyuqQMn+l/QVIcbz
	iePdjYKoEVGQ7t1vLWvZ0QA0doYIAj6qWFuane06Q6dbQb5Tj8Q4Mjd3zzqXNlogHi12wfZYJwwyt
	AF9g2groxWnothl/oRYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiyJK-003LCP-2C;
	Wed, 20 Sep 2023 14:36:14 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiyJ0-003KwA-2Y;
	Wed, 20 Sep 2023 14:35:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 530C761C11;
	Wed, 20 Sep 2023 14:35:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4BF8C433C9;
	Wed, 20 Sep 2023 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695220554;
	bh=JesZ3/fGi45agkZSRIpZKjw+nUimuCRXqZlxL7MJq34=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=rN6jdbxR+lin7qkeZL8yAqr/9jAXLXWnjbHZLeMB3wWStx51gdaKnwaxY4i882Tzn
	 nvDHWD/Sq+Ts4Rz+N91IJz2929Pg8QrcsD9wsk122eC01Z91DvG1eYbfT5hqq1F+CN
	 dGRQ/N0DItDe+mUiWq3X12tKUAjBdxoUXPgeEP8t4qALwXRQd+qgmtpxrM8lZadLCm
	 hmR4j1P67xycAaOAbEYkcdU8kcI7VIjEXV13xFm2ApyA/JTfkxhtT+DSxIMhfxq1Zq
	 oEC68LBlpqGJYB3uVR5TBDWhqwc+c9FlSNdPM0DyymJdjzyxyt/7zutX+7/74Bv78T
	 EDd+FdC9Y0WBw==
From: Maxime Ripard <mripard@kernel.org>
Date: Wed, 20 Sep 2023 16:35:19 +0200
Subject: [PATCH RFC v2 04/37] drm/connector: hdmi: Add helper to get the
 RGB range
MIME-Version: 1.0
Message-Id: <20230920-kms-hdmi-connector-state-v2-4-17932daddd7d@kernel.org>
References: <20230920-kms-hdmi-connector-state-v2-0-17932daddd7d@kernel.org>
In-Reply-To: <20230920-kms-hdmi-connector-state-v2-0-17932daddd7d@kernel.org>
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
 Maxime Ripard <mripard@kernel.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3424; i=mripard@kernel.org;
 h=from:subject:message-id; bh=JesZ3/fGi45agkZSRIpZKjw+nUimuCRXqZlxL7MJq34=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKnczJbnTpQ8z3V13da+PPDPnKPHGC5skdTlOr3x/S4Wu
 /T5DVEFHaUsDGJcDLJiiiwxwuZL4k7Net3JxjcPZg4rE8gQBi5OAZhISBDD/5AFbUndRWYKhxny
 b5xofhR9Tl/LQ7PfUc06N3zryfolKxgZVhdcd78bEheQzxT0e7OP7ZlfbOUq00O+hSc/yTlpvMe
 MBwA=
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230920_073554_939988_54B2FEC5 
X-CRM114-Status: GOOD (  13.62  )
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
to configure based on a given atomic state.

Let's provide a helper to provide that information.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/drm_atomic_state_helper.c | 39 +++++++++++++++++++++++++++++++
 include/drm/drm_atomic_state_helper.h     |  5 ++++
 2 files changed, 44 insertions(+)

diff --git a/drivers/gpu/drm/drm_atomic_state_helper.c b/drivers/gpu/drm/drm_atomic_state_helper.c
index 4b24ebb7e3e8..0f7e5ba555b8 100644
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
@@ -621,6 +622,15 @@ int drm_atomic_helper_connector_tv_check(struct drm_connector *connector,
 }
 EXPORT_SYMBOL(drm_atomic_helper_connector_tv_check);
 
+static const struct drm_display_mode *
+connector_state_get_adjusted_mode(const struct drm_connector_state *state)
+{
+	struct drm_crtc *crtc = state->crtc;
+	struct drm_crtc_state *crtc_state = crtc->state;
+
+	return &crtc_state->adjusted_mode;
+}
+
 /**
  * drm_atomic_helper_connector_hdmi_check() - Helper to check HDMI connector atomic state
  * @connector: DRM Connector
@@ -656,6 +666,35 @@ int drm_atomic_helper_connector_hdmi_check(struct drm_connector *connector,
 }
 EXPORT_SYMBOL(drm_atomic_helper_connector_hdmi_check);
 
+/**
+ * drm_atomic_helper_connector_hdmi_is_full_range() - Checks whether a state uses Full-Range RGB
+ * @connector: the HDMI connector this state refers to
+ * @state: the HDMI connector state to check
+ *
+ * RETURNS:
+ * True if @state requires a Full range RGB output, False otherwise
+ */
+bool
+drm_atomic_helper_connector_hdmi_is_full_range(const struct drm_connector *connector,
+					       const struct drm_connector_state *state)
+{
+	const struct drm_display_mode *mode =
+		connector_state_get_adjusted_mode(state);
+	const struct drm_display_info *display = &connector->display_info;
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
+	return drm_default_rgb_quant_range(mode);
+}
+EXPORT_SYMBOL(drm_atomic_helper_connector_hdmi_is_full_range);
+
 /**
  * __drm_atomic_helper_connector_duplicate_state - copy atomic connector state
  * @connector: connector object
diff --git a/include/drm/drm_atomic_state_helper.h b/include/drm/drm_atomic_state_helper.h
index d59d2b3aef9a..c6d941b9e846 100644
--- a/include/drm/drm_atomic_state_helper.h
+++ b/include/drm/drm_atomic_state_helper.h
@@ -88,6 +88,11 @@ void
 __drm_atomic_helper_connector_destroy_state(struct drm_connector_state *state);
 void drm_atomic_helper_connector_destroy_state(struct drm_connector *connector,
 					  struct drm_connector_state *state);
+
+bool
+drm_atomic_helper_connector_hdmi_is_full_range(const struct drm_connector *connector,
+					       const struct drm_connector_state *state);
+
 void __drm_atomic_helper_private_obj_duplicate_state(struct drm_private_obj *obj,
 						     struct drm_private_state *state);
 

-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
