Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D24E9C48BF8
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Feb 2024 18:21:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vC81ghxBrc6eyWTkxl5wSTKlVWbem+w1mXzoe5mJTmQ=; b=C2w4NS84hKDg9E
	iq1aVJB08T7uiIb5ke67qt0A3MtEb3hd8WxzmbQBJ+MsxSnw5XKIPexje0cHNp16rejVONp7z+YY/
	FstfmVLc/cY6OhOL9vxyxXuhHpbChWfBUG4iX18+nUh2XDBQ2TezDEHznTE3F4WikOPoarvJngntK
	cTTtmmMKv1ICPXSsgLmWS24oY+cis0I3KbA9GKUaTWRyxcsZrE4Z3sK52CcGQqmxsR65RX74wtGIG
	QeQG1qr75C222OYw5sy+mt3fAZzYwf280G91kf219r3ak16SRqwAtUq2WHbFmQ0YesDb47Q2LbW1k
	vD8LVuiZ5JyfLrSvDQjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdDhX-000000060XB-3v2I;
	Thu, 22 Feb 2024 18:21:43 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdDba-00000005xYJ-43TG;
	Thu, 22 Feb 2024 18:15:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 33F7C6198B;
	Thu, 22 Feb 2024 18:15:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88EF0C433F1;
	Thu, 22 Feb 2024 18:15:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708625732;
	bh=1I2pPlxI3vCCE9moTWhTTQHMRZBIhOmA5gBHqcZ2PGQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=kQs8PYuKf2BOoFOideBCM2lSWzNAzIt4JW4S48egW54sW8bSaH7i+HoZ3sw7JXLzR
	 oVNrchSGET6wc+/X1s2PU0aHysK3vuvBBStPoOqx8VJjxkollvwLGOb2hgF3t0AQ2+
	 kgCzosB3yrbGBlz8RkNUx8sMgvxSOYrf0RCKdyrEtf49sSprjerDXV0HLExiz4rmzs
	 PDNVf18oA/TVuGDwvwsgFyTOJyB64H6uc6UElcGk5h5LPPgJ1pM0iKS+aB77dn/f7V
	 rPwDdrHo6VQMiIhiRfZfLbqbbcr+Kc9npYUhSdD+N8498pVYjRCfY1cLne3XG1mWga
	 f4GkNkUyiz9YQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Thu, 22 Feb 2024 19:14:09 +0100
Subject: [PATCH v7 23/36] drm/connector: hdmi: Add RGB Quantization Range
 to the connector state
MIME-Version: 1.0
Message-Id: <20240222-kms-hdmi-connector-state-v7-23-8f4af575fce2@kernel.org>
References: <20240222-kms-hdmi-connector-state-v7-0-8f4af575fce2@kernel.org>
In-Reply-To: <20240222-kms-hdmi-connector-state-v7-0-8f4af575fce2@kernel.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, 
 Sebastian Wick <sebastian.wick@redhat.com>, 
 =?utf-8?q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>, 
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, Maxime Ripard <mripard@kernel.org>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3455; i=mripard@kernel.org;
 h=from:subject:message-id; bh=1I2pPlxI3vCCE9moTWhTTQHMRZBIhOmA5gBHqcZ2PGQ=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKnX+77fEvb6/ly444irUtcEwZxFuzWexthlX7f0yPpzV
 6CgSLazo5SFQYyLQVZMkSVG2HxJ3KlZrzvZ+ObBzGFlAhnCwMUpABNp+snIsD+C52nM8eWRz4Mf
 FJm8/6j1zu+NgVUns52pr5x2z+tX2xn+eyWXlh3g/9lpeayQicN859aZrHk5n+qDow5XK3t2zmB
 lBQA=
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_101535_255611_78ADC28D 
X-CRM114-Status: GOOD (  14.93  )
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
 drivers/gpu/drm/drm_atomic.c              |  1 +
 drivers/gpu/drm/drm_atomic_state_helper.c | 29 +++++++++++++++++++++++++++++
 include/drm/drm_connector.h               |  6 ++++++
 3 files changed, 36 insertions(+)

diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
index 3e57d98d8418..ec6c6beda5c9 100644
--- a/drivers/gpu/drm/drm_atomic.c
+++ b/drivers/gpu/drm/drm_atomic.c
@@ -1147,6 +1147,7 @@ static void drm_atomic_connector_print_state(struct drm_printer *p,
 	    connector->connector_type == DRM_MODE_CONNECTOR_HDMIB) {
 		drm_printf(p, "\tbroadcast_rgb=%s\n",
 			   drm_hdmi_connector_get_broadcast_rgb_name(state->hdmi.broadcast_rgb));
+		drm_printf(p, "\tis_full_range=%c\n", state->hdmi.is_full_range ? 'y' : 'n');
 		drm_printf(p, "\toutput_bpc=%u\n", state->hdmi.output_bpc);
 		drm_printf(p, "\toutput_format=%s\n",
 			   drm_hdmi_connector_get_output_format_name(state->hdmi.output_format));
diff --git a/drivers/gpu/drm/drm_atomic_state_helper.c b/drivers/gpu/drm/drm_atomic_state_helper.c
index 0e8fb653965a..e66272c0d006 100644
--- a/drivers/gpu/drm/drm_atomic_state_helper.c
+++ b/drivers/gpu/drm/drm_atomic_state_helper.c
@@ -664,6 +664,33 @@ connector_state_get_mode(const struct drm_connector_state *conn_state)
 	return &crtc_state->mode;
 }
 
+static bool hdmi_is_full_range(const struct drm_connector *connector,
+			       const struct drm_connector_state *state)
+{
+	const struct drm_display_info *display = &connector->display_info;
+	const struct drm_display_mode *mode =
+		connector_state_get_mode(state);
+
+	/*
+	 * The Broadcast RGB property only applies to RGB format, and
+	 * i915 just assumes limited range for YCbCr output, so let's
+	 * just do the same.
+	 */
+	if (state->hdmi.output_format != HDMI_COLORSPACE_RGB)
+		return false;
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
 static bool
 sink_supports_format_bpc(const struct drm_connector *connector,
 			 const struct drm_display_info *info,
@@ -910,6 +937,8 @@ int drm_atomic_helper_connector_hdmi_check(struct drm_connector *connector,
 		connector_state_get_mode(new_state);
 	int ret;
 
+	new_state->hdmi.is_full_range = hdmi_is_full_range(connector, new_state);
+
 	ret = hdmi_compute_config(connector, new_state, mode);
 	if (ret)
 		return ret;
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index bb6b6a36ade3..3eaf4d54364d 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -1070,6 +1070,12 @@ struct drm_connector_state {
 		 */
 		enum drm_hdmi_broadcast_rgb broadcast_rgb;
 
+		/**
+		 * @is_full_range: Is the output supposed to use a full
+		 * RGB Quantization Range or not?
+		 */
+		bool is_full_range;
+
 		/**
 		 * @output_bpc: Bits per color channel to output.
 		 */

-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
