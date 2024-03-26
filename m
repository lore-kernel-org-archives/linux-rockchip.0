Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90E4CC54E67
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Mar 2024 15:42:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nd773OpkZ+CODYcEEFHYfxsjT0WqKIm/tDmuLETpHBc=; b=dl2GjRbzmstN/H
	YWvirutj4eyLINMSUd3jVvAiT7ePMc4uT7ZiA4kXWbl01zDZWrjEFQWnQqIHcoIzh8DzDw6/irHUq
	zrwHlAOxQkC9SXHw8vRUuMS4E4uvlN1BRaeyDd+X4oWsPdKHNvXNsv+TID9WwZNmCoRieEt+sVe+X
	kBvGUdXfIiSremSYcNnSdGR6Myb8gz3vmdkm3nlr2ket5yZhPBT0iQKomvSmLA+tn7eGU6oUAgP40
	zlPKvTnF1B7zZnqLSg6iwUs+/h67UCBRlU5PuHJnWFXy9bTynF6mFpSOSFNo1tGYVxyklS+XpFz0t
	gRtdLNWlOdUHEeVJ4NsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp8wq-00000005Gsd-37Tz;
	Tue, 26 Mar 2024 15:42:48 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp8v9-00000005Fct-1frY;
	Tue, 26 Mar 2024 15:41:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id ACA78612D3;
	Tue, 26 Mar 2024 15:41:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A22AC43330;
	Tue, 26 Mar 2024 15:41:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711467662;
	bh=0Jei25jBuuYJAKPLzz/1PwMOvUOkVr+WM5HlK6StDig=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=IJgSBPiYi649ud7l0eZgjvJY3jNupnxngoBx/xXNQ7erqOievWoJM2ARaA36kUzwW
	 FEZKAM8xaLOGu2fooYFYrksgN5iYl1N692dR1/bqauLMB4JVdLwQuRMPRVntKeXKtH
	 6UnW/5HZdzuHg2l2+MLIbJ0ODvwmcaAkc0G2gk7zbAEIacTrF44dbbfEXmnFwDTwsB
	 8ETCuRrLd/HYlKGYZXuaekoEzBWysM2dPXl83KdNNW1fD50i/OCektDht4UxFtpSI0
	 fltjI2pLLakwzY2tNkAYc8a+on5VSXPKr6aaC6X4EvG6PHLz7nfHkEKgbK3YSt+iKi
	 H9AASq/jemRvQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 26 Mar 2024 16:40:15 +0100
Subject: [PATCH v11 11/28] drm/connector: hdmi: Calculate TMDS character
 rate
MIME-Version: 1.0
Message-Id: <20240326-kms-hdmi-connector-state-v11-11-c5680ffcf261@kernel.org>
References: <20240326-kms-hdmi-connector-state-v11-0-c5680ffcf261@kernel.org>
In-Reply-To: <20240326-kms-hdmi-connector-state-v11-0-c5680ffcf261@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=6362; i=mripard@kernel.org;
 h=from:subject:message-id; bh=0Jei25jBuuYJAKPLzz/1PwMOvUOkVr+WM5HlK6StDig=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDGlMb5KZbyVXtN725LUw/7ntxCtO+WkKqtO/HU8tZrvSJ
 q0196Rsx1QWBmFOBlkxRZYnMmGnl7cvrnKwX/kDZg4rE8gQBi5OAZiI7BrGava7yvn/d2x2U1fm
 Szr5MdZGvfRYlAKL8q8jy+aw/3t0u1Rq+s3HLaLViVHh2xl4/ptcZ6z3WMKx/69I3u3e3koprSf
 vjIPmrnnxYfYeFj/JP045bDzBexPfe7JzPr7gvdebXyfNuQ8A
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_084103_744649_1329804A 
X-CRM114-Status: GOOD (  16.85  )
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

Most HDMI drivers have some code to calculate the TMDS character rate,
usually to adjust an internal clock to match what the mode requires.

Since the TMDS character rates mostly depends on the resolution, whether
we need to repeat pixels or not, the bpc count and the format, we can
now derive it from the HDMI connector state that stores all those infos
and remove the duplication from drivers.

Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/display/drm_hdmi_state_helper.c    | 67 ++++++++++++++++++++++
 drivers/gpu/drm/drm_atomic.c                       |  1 +
 drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c |  3 +
 include/drm/drm_connector.h                        |  5 ++
 4 files changed, 76 insertions(+)

diff --git a/drivers/gpu/drm/display/drm_hdmi_state_helper.c b/drivers/gpu/drm/display/drm_hdmi_state_helper.c
index f6cd0612ea2c..08630561d864 100644
--- a/drivers/gpu/drm/display/drm_hdmi_state_helper.c
+++ b/drivers/gpu/drm/display/drm_hdmi_state_helper.c
@@ -1,10 +1,11 @@
 // SPDX-License-Identifier: MIT
 
 #include <drm/drm_atomic.h>
 #include <drm/drm_connector.h>
 
+#include <drm/display/drm_hdmi_helper.h>
 #include <drm/display/drm_hdmi_state_helper.h>
 
 /**
  * __drm_atomic_helper_connector_hdmi_reset() - Initializes all HDMI @drm_connector_state resources
  * @connector: DRM connector
@@ -23,10 +24,67 @@ void __drm_atomic_helper_connector_hdmi_reset(struct drm_connector *connector,
 	new_conn_state->max_bpc = max_bpc;
 	new_conn_state->max_requested_bpc = max_bpc;
 }
 EXPORT_SYMBOL(__drm_atomic_helper_connector_hdmi_reset);
 
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
+static enum drm_mode_status
+hdmi_clock_valid(const struct drm_connector *connector,
+		 const struct drm_display_mode *mode,
+		 unsigned long long clock)
+{
+	const struct drm_display_info *info = &connector->display_info;
+
+	if (info->max_tmds_clock && clock > info->max_tmds_clock * 1000)
+		return MODE_CLOCK_HIGH;
+
+	return MODE_OK;
+}
+
+static int
+hdmi_compute_clock(const struct drm_connector *connector,
+		   struct drm_connector_state *conn_state,
+		   const struct drm_display_mode *mode,
+		   unsigned int bpc, enum hdmi_colorspace fmt)
+{
+	enum drm_mode_status status;
+	unsigned long long clock;
+
+	clock = drm_hdmi_compute_mode_clock(mode, bpc, fmt);
+	if (!clock)
+		return -EINVAL;
+
+	status = hdmi_clock_valid(connector, mode, clock);
+	if (status != MODE_OK)
+		return -EINVAL;
+
+	conn_state->hdmi.tmds_char_rate = clock;
+
+	return 0;
+}
+
 /**
  * drm_atomic_helper_connector_hdmi_check() - Helper to check HDMI connector atomic state
  * @connector: DRM Connector
  * @state: the DRM State object
  *
@@ -42,10 +100,19 @@ int drm_atomic_helper_connector_hdmi_check(struct drm_connector *connector,
 {
 	struct drm_connector_state *old_conn_state =
 		drm_atomic_get_old_connector_state(state, connector);
 	struct drm_connector_state *new_conn_state =
 		drm_atomic_get_new_connector_state(state, connector);
+	const struct drm_display_mode *mode =
+		connector_state_get_mode(new_conn_state);
+	int ret;
+
+	ret = hdmi_compute_clock(connector, new_conn_state, mode,
+				 new_conn_state->hdmi.output_bpc,
+				 new_conn_state->hdmi.output_format);
+	if (ret)
+		return ret;
 
 	if (old_conn_state->hdmi.output_bpc != new_conn_state->hdmi.output_bpc ||
 	    old_conn_state->hdmi.output_format != new_conn_state->hdmi.output_format) {
 		struct drm_crtc *crtc = new_conn_state->crtc;
 		struct drm_crtc_state *crtc_state;
diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
index 8730137baa86..26f9e525c0a0 100644
--- a/drivers/gpu/drm/drm_atomic.c
+++ b/drivers/gpu/drm/drm_atomic.c
@@ -1146,10 +1146,11 @@ static void drm_atomic_connector_print_state(struct drm_printer *p,
 	if (connector->connector_type == DRM_MODE_CONNECTOR_HDMIA ||
 	    connector->connector_type == DRM_MODE_CONNECTOR_HDMIB) {
 		drm_printf(p, "\toutput_bpc=%u\n", state->hdmi.output_bpc);
 		drm_printf(p, "\toutput_format=%s\n",
 			   drm_hdmi_connector_get_output_format_name(state->hdmi.output_format));
+		drm_printf(p, "\ttmds_char_rate=%llu\n", state->hdmi.tmds_char_rate);
 	}
 
 	if (connector->connector_type == DRM_MODE_CONNECTOR_WRITEBACK)
 		if (state->writeback_job && state->writeback_job->fb)
 			drm_printf(p, "\tfb=%d\n", state->writeback_job->fb->base.id);
diff --git a/drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c b/drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c
index 8bc1f9b0b12b..4f46a70a5017 100644
--- a/drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c
+++ b/drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c
@@ -70,10 +70,13 @@ static int light_up_connector(struct kunit *test,
 	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, state);
 
 	conn_state = drm_atomic_get_connector_state(state, connector);
 	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, conn_state);
 
+	conn_state->hdmi.output_bpc = connector->max_bpc;
+	conn_state->hdmi.output_format = HDMI_COLORSPACE_RGB;
+
 	ret = drm_atomic_set_crtc_for_connector(conn_state, crtc);
 	KUNIT_EXPECT_EQ(test, ret, 0);
 
 	crtc_state = drm_atomic_get_crtc_state(state, crtc);
 	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, crtc_state);
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index 29883e6f8e50..54899c030031 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -1047,10 +1047,15 @@ struct drm_connector_state {
 
 		/**
 		 * @output_format: Pixel format to output in.
 		 */
 		enum hdmi_colorspace output_format;
+
+		/**
+		 * @tmds_char_rate: TMDS Character Rate, in Hz.
+		 */
+		unsigned long long tmds_char_rate;
 	} hdmi;
 };
 
 /**
  * struct drm_connector_funcs - control connectors on a given device

-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
