Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD1EAC48297
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Feb 2024 13:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=grPM9gHLR/2W9s5MYdE20BLMDDk9yrY0ttGBcHAkrkk=; b=q8KDDhtq6pj9/a
	sJU+IhBt5cybNbBKZnvJ4o2wOy9vYsvV3SJ4bm39ot33KmMsMukfKE2pcuvLiFJY4YHrVyahsTgRl
	SaHu/Ycaq03ZVfwhxAGJ2SsZt6RUjsHiK13IZfLAleWjohUzKPaDQODldzCIEeAJpZopclFbqeGO2
	vjHgv6zPlLzRbHoc1d/bM7l0mDLr5cQ6BC77eObCqYyDvMT9HRRobKpS7HarcmveLw7SGsAheg9fv
	3ZNhB0aiZuTfOjjN1uybI+eIH2PnKlVqJz0BOgdwhLOq7a2L/TUaJ8ejofg/cO8XYgto0Q10vFygx
	fH+Aoj2fN7pl0CZdvuGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZWA4-00000005QP5-47BE;
	Mon, 12 Feb 2024 13:15:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZW8i-00000005PCn-41sI;
	Mon, 12 Feb 2024 13:14:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=YcSgaoeRloBUK1oWLscJaLc/ekzeroUhMyzXNdoGzBw=; b=ZqQwXfqFZBzkSmg5Z+bdzDI9iE
	dH0rbg3GugzpXn2mGUrHlhA27tuFX48GhBvxdv7zvhh3PBHZlzUtDQ6UX80iB+UdXhHg5JSpa561O
	45dEOH5iw48vn2ngcqOmhTckvhxTYmQSi1qar/qJcAFsZjwtg8UpA7FLgK6Idpoioxjx5lh7i4t7J
	WvsiDF9uRj1HN315HED8KBkCv1TKwV2Pp/Awfwz2cnIViaKY5zvTNbaZy418HI8IHE4PvLlPpxLfT
	kcZ/NsrUNi7yL/AWa6YrMjbx/Q1FpjfM8sNqyucf1KN7lrLE6MJTPkiPxYyJmOz6MWL++gn8cW976
	4N6I5Ocw==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZW8e-0000000FITe-0Vfr;
	Mon, 12 Feb 2024 13:14:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id BBC2360FAA;
	Mon, 12 Feb 2024 13:14:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA5F1C43399;
	Mon, 12 Feb 2024 13:14:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707743662;
	bh=13Kiyh9YrUcP7PoXE6E5FXG2OWvL1W7X3RX607K+/pU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=GPXqsnvnZfckQKbhN6tjLLG4VhZCfV40sEdnaMpvKFG7KAzdUGaJpOrSAStqMpj4c
	 kVnHH9AhkaP3KUrNMfg1Ro1cagNOYYtKmTesUFBWSQi0k/+4VIU3snMKCSvtpHmpZw
	 9X6JvyptZ9YlsvVK6sAbmh9rRAu6Z/BsMCA5cMOSFk0lv1ZahGm1AlFwVE5MW4TQTr
	 a9fnFVzJyYW61a2tPY1/ZJlDDi5tziPzB6TL/v+mYhqK7xXN1D7kirIPHXldC+qSD2
	 TWVjgWSs3XrFsEgFCJqBcO8jVQ6Hnkb2eaJ+V+PgwGaVGRMJJsEwnxaOnASN1fKHDa
	 0g4DSTCod2ZXQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 12 Feb 2024 14:13:02 +0100
Subject: [PATCH v6 19/36] drm/connector: hdmi: Calculate TMDS character
 rate
MIME-Version: 1.0
Message-Id: <20240212-kms-hdmi-connector-state-v6-19-f4bcdc979e6f@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4873; i=mripard@kernel.org;
 h=from:subject:message-id; bh=13Kiyh9YrUcP7PoXE6E5FXG2OWvL1W7X3RX607K+/pU=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmnJLM8ZeL46poKZy+7dd7xSb2cStCSyqeL5+XuVTDWn
 XPFoMe7o5SFQYyLQVZMkSVG2HxJ3KlZrzvZ+ObBzGFlAhnCwMUpABNZtIeRYWvF39DUWdN+ZLgp
 7MgQWVe02kG6r0X63bTZAbWdHK1MSxn+JyYHK8WvcOcOZtqh8b+COdF4ws/wAnH9/L13PH/K53t
 wAwA=
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240212_131425_052986_A81FB506 
X-CRM114-Status: GOOD (  14.77  )
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
 drivers/gpu/drm/drm_atomic.c                       |  1 +
 drivers/gpu/drm/drm_atomic_state_helper.c          | 44 ++++++++++++++++++++++
 .../gpu/drm/tests/drm_atomic_state_helper_test.c   |  3 ++
 include/drm/drm_connector.h                        |  5 +++
 4 files changed, 53 insertions(+)

diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
index 47fd2a7ca9e1..ec6c6beda5c9 100644
--- a/drivers/gpu/drm/drm_atomic.c
+++ b/drivers/gpu/drm/drm_atomic.c
@@ -1151,6 +1151,7 @@ static void drm_atomic_connector_print_state(struct drm_printer *p,
 		drm_printf(p, "\toutput_bpc=%u\n", state->hdmi.output_bpc);
 		drm_printf(p, "\toutput_format=%s\n",
 			   drm_hdmi_connector_get_output_format_name(state->hdmi.output_format));
+		drm_printf(p, "\ttmds_char_rate=%llu\n", state->hdmi.tmds_char_rate);
 	}
 
 	if (connector->connector_type == DRM_MODE_CONNECTOR_WRITEBACK)
diff --git a/drivers/gpu/drm/drm_atomic_state_helper.c b/drivers/gpu/drm/drm_atomic_state_helper.c
index 34aee5232974..ac77d47a0ce3 100644
--- a/drivers/gpu/drm/drm_atomic_state_helper.c
+++ b/drivers/gpu/drm/drm_atomic_state_helper.c
@@ -683,6 +683,41 @@ static bool hdmi_is_full_range(const struct drm_connector *connector,
 	return drm_default_rgb_quant_range(mode) == HDMI_QUANTIZATION_RANGE_FULL ? true : false;
 }
 
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
+		   struct drm_connector_state *state,
+		   const struct drm_display_mode *mode,
+		   unsigned int bpc, enum hdmi_colorspace fmt)
+{
+	enum drm_mode_status status;
+	unsigned long long clock;
+
+	clock = drm_connector_hdmi_compute_mode_clock(mode, bpc, fmt);
+	if (!clock)
+		return -EINVAL;
+
+	status = hdmi_clock_valid(connector, mode, clock);
+	if (status != MODE_OK)
+		return -EINVAL;
+
+	state->hdmi.tmds_char_rate = clock;
+
+	return 0;
+}
+
 /**
  * drm_atomic_helper_connector_hdmi_check() - Helper to check HDMI connector atomic state
  * @connector: DRM Connector
@@ -702,9 +737,18 @@ int drm_atomic_helper_connector_hdmi_check(struct drm_connector *connector,
 		drm_atomic_get_old_connector_state(state, connector);
 	struct drm_connector_state *new_state =
 		drm_atomic_get_new_connector_state(state, connector);
+	const struct drm_display_mode *mode =
+		connector_state_get_mode(new_state);
+	int ret;
 
 	new_state->hdmi.is_full_range = hdmi_is_full_range(connector, new_state);
 
+	ret = hdmi_compute_clock(connector, new_state, mode,
+				 new_state->hdmi.output_bpc,
+				 new_state->hdmi.output_format);
+	if (ret)
+		return ret;
+
 	if (old_state->hdmi.broadcast_rgb != new_state->hdmi.broadcast_rgb ||
 	    old_state->hdmi.output_bpc != new_state->hdmi.output_bpc ||
 	    old_state->hdmi.output_format != new_state->hdmi.output_format) {
diff --git a/drivers/gpu/drm/tests/drm_atomic_state_helper_test.c b/drivers/gpu/drm/tests/drm_atomic_state_helper_test.c
index 4e2ec436987b..d3f35600a9f9 100644
--- a/drivers/gpu/drm/tests/drm_atomic_state_helper_test.c
+++ b/drivers/gpu/drm/tests/drm_atomic_state_helper_test.c
@@ -70,6 +70,9 @@ static int light_up_connector(struct kunit *test,
 	conn_state = drm_atomic_get_connector_state(state, connector);
 	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, conn_state);
 
+	conn_state->hdmi.output_bpc = connector->max_bpc;
+	conn_state->hdmi.output_format = HDMI_COLORSPACE_RGB;
+
 	ret = drm_atomic_set_crtc_for_connector(conn_state, crtc);
 	KUNIT_EXPECT_EQ(test, ret, 0);
 
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index 0cc5a8732664..59016d9c17f5 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -1085,6 +1085,11 @@ struct drm_connector_state {
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
 

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
