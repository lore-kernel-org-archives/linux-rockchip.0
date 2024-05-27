Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A77A5C25B74
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 May 2024 14:02:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vwbAgvyOw9Db++dSkctnCC4mQtE1qP+3Tfdr8mNdRIg=; b=H4GftKBaZ62kEY
	qRmDUxoBvFheoMQ6wguOrcPSQGQvHsd4keYHg2c0YB8Rl2z9KgLjUIdxAVYQK+bBZRNubBAt3m35R
	jwnlyg+hW8E9Mq2Wk1k70Llp/StF1RhM+Ojxu7ShSUVofdOJf6chKBVFXUo2RDAhffas1vCgheytD
	W0x8c9p+kCR+BDU0/LjuarId6jue17b4GHd/fVG0UNHz2mggDCSl/hUPksG231RHgalVjDGG9DfSR
	l1jZDJRjZRfrdFKzbqbPEXmPvaz2X/tG7yytbF9sDYJiTV+OQuE+TvotDz6A8Klrvzo+mzbgvTKU0
	OhjPrnap3iMVe9Npr9pQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBavj-0000000FExw-3TI3;
	Mon, 27 May 2024 14:02:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBasd-0000000FD4a-1J4n;
	Mon, 27 May 2024 13:59:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=nyGs9zxncy9XBTw6n3f9M2w3a2iv4EOlI+ALT/F3Rlc=; b=IazD09TXE2QTJhq9kip28Jtf1I
	zFmsillma44Cy0HzoydnV0k++Ljbo4nBYab1TBIkWEOn7H7Y39ELHXsUIgG5dB7Uctx2hfpgss/aF
	C5ku5wV/bNKvjDELJzA075PzPaSEgCctfijBXlAMs6RmrwqCGBr2XoxrLOLcafWHgbb8atlClNpkH
	91lzBwv3pzdlBfIPldfirGvX6JBcYHb7jcB5+UFx09k7PsEEw9WpvfOsmDtZ0DFQI1Pw4thu3Mw+O
	pHgPSlsXXRdP0hfPoatzme2Xmm/1402ERr6epq3FUPjuVgA7F1Ytw5KjwTow9HmOhLUAZ5OEiD1cT
	ML6iqhvg==;
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBasZ-0000000BKD4-1X4O;
	Mon, 27 May 2024 13:59:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 357A7CE0F9C;
	Mon, 27 May 2024 13:59:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0FA9DC2BBFC;
	Mon, 27 May 2024 13:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716818346;
	bh=pkm6XySVQFGHgpsx1ECyPB5mDR4hBXnwFBK5QF6pLZs=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=EkGT4LORdAkRLSMbW+E4ALrTw0vstTCStHPXEoG/J3CJ2PPhJoIxaRAi7H8EbDPKE
	 u35aCwmJ+8x2C5izlHs3qxzVPktgHxV6ii6FL81a0qGgg1wnatZ7D/2koNWwqYUFUn
	 xZfBYu3bnFGubqLk2qrjyDy9vnvQt5orjzyROMN01ibcXVTiYv5VA4H8cmSX3fWYmn
	 Xn+82d9SjtYJ5+I3/pFfxzxlEkeLK8quAHLArtJw1MqcfEt9hG12PpCVh1JAkPV70t
	 ILXfwelTd/rCAq6sIKkhfNVTMSXBS/K82RUE/eTGEizkXMrd8QlmO7AcNEgoDu5jI5
	 xHKT3FOTOng3Q==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 27 May 2024 15:58:10 +0200
Subject: [PATCH v15 21/29] drm/tests: Add RGB Quantization tests
MIME-Version: 1.0
Message-Id: <20240527-kms-hdmi-connector-state-v15-21-c5af16c3aae2@kernel.org>
References: <20240527-kms-hdmi-connector-state-v15-0-c5af16c3aae2@kernel.org>
In-Reply-To: <20240527-kms-hdmi-connector-state-v15-0-c5af16c3aae2@kernel.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Andy Yan <andy.yan@rock-chips.com>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, 
 Sebastian Wick <sebastian.wick@redhat.com>, 
 =?utf-8?q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>, 
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, Maxime Ripard <mripard@kernel.org>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=13529; i=mripard@kernel.org;
 h=from:subject:message-id; bh=pkm6XySVQFGHgpsx1ECyPB5mDR4hBXnwFBK5QF6pLZs=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDGkhEzPbPwr/cZ3S8SrJ7dYCl57iAEUR93lL5209lTknY
 7Pf6qVMHVNZGIQ5GWTFFFmeyISdXt6+uMrBfuUPmDmsTCBDGLg4BWAix3wZG6Y7dDfo3eoL441e
 ct18Z1HOPqvCev8nd28mKMQLtnJeubfngOwaI4GJK+6uO9MW944pk7Fh2bUeiZmlTTkTiq05Xuu
 cjX4QV+il81PfuG7Fkimqoud4Di7OqW6vZkusVlOsNPn91x4A
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_145912_328495_C6A5AAAC 
X-CRM114-Status: GOOD (  14.21  )
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

The previous commit added the infrastructure to the connector state to
track what RGB Quantization should be used in a given state for an HDMI
connector.

Let's add some kunit tests to make sure it works as expected.

Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c | 355 +++++++++++++++++++++
 1 file changed, 355 insertions(+)

diff --git a/drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c b/drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c
index ff9a882201eb..da5c3d9a80bb 100644
--- a/drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c
+++ b/drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c
@@ -353,10 +353,354 @@ static void drm_test_check_broadcast_rgb_crtc_mode_not_changed(struct kunit *tes
 	crtc_state = drm_atomic_get_new_crtc_state(state, crtc);
 	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, crtc_state);
 	KUNIT_EXPECT_FALSE(test, crtc_state->mode_changed);
 }
 
+/*
+ * Test that for an HDMI connector, with an HDMI monitor, if the
+ * Broadcast RGB property is set to auto with a mode that isn't the
+ * VIC-1 mode, we will get a limited RGB Quantization Range.
+ */
+static void drm_test_check_broadcast_rgb_auto_cea_mode(struct kunit *test)
+{
+	struct drm_atomic_helper_connector_hdmi_priv *priv;
+	struct drm_modeset_acquire_ctx *ctx;
+	struct drm_connector_state *conn_state;
+	struct drm_atomic_state *state;
+	struct drm_display_mode *preferred;
+	struct drm_connector *conn;
+	struct drm_device *drm;
+	struct drm_crtc *crtc;
+	int ret;
+
+	priv = drm_atomic_helper_connector_hdmi_init(test,
+						     BIT(HDMI_COLORSPACE_RGB),
+						     8);
+	KUNIT_ASSERT_NOT_NULL(test, priv);
+
+	conn = &priv->connector;
+	KUNIT_ASSERT_TRUE(test, conn->display_info.is_hdmi);
+
+	ctx = drm_kunit_helper_acquire_ctx_alloc(test);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, ctx);
+
+	preferred = find_preferred_mode(conn);
+	KUNIT_ASSERT_NOT_NULL(test, preferred);
+	KUNIT_ASSERT_NE(test, drm_match_cea_mode(preferred), 1);
+
+	drm = &priv->drm;
+	crtc = priv->crtc;
+	ret = light_up_connector(test, drm, crtc, conn, preferred, ctx);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	state = drm_kunit_helper_atomic_state_alloc(test, drm, ctx);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, state);
+
+	conn_state = drm_atomic_get_connector_state(state, conn);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, conn_state);
+
+	KUNIT_ASSERT_EQ(test,
+			conn_state->hdmi.broadcast_rgb,
+			DRM_HDMI_BROADCAST_RGB_AUTO);
+
+	ret = drm_atomic_check_only(state);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	conn_state = drm_atomic_get_connector_state(state, conn);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, conn_state);
+
+	KUNIT_EXPECT_TRUE(test, conn_state->hdmi.is_limited_range);
+}
+
+/*
+ * Test that for an HDMI connector, with an HDMI monitor, if the
+ * Broadcast RGB property is set to auto with a VIC-1 mode, we will get
+ * a full RGB Quantization Range.
+ */
+static void drm_test_check_broadcast_rgb_auto_cea_mode_vic_1(struct kunit *test)
+{
+	struct drm_atomic_helper_connector_hdmi_priv *priv;
+	struct drm_modeset_acquire_ctx *ctx;
+	struct drm_connector_state *conn_state;
+	struct drm_atomic_state *state;
+	struct drm_display_mode *mode;
+	struct drm_connector *conn;
+	struct drm_device *drm;
+	struct drm_crtc *crtc;
+	int ret;
+
+	priv = drm_atomic_helper_connector_hdmi_init(test,
+						     BIT(HDMI_COLORSPACE_RGB),
+						     8);
+	KUNIT_ASSERT_NOT_NULL(test, priv);
+
+	drm = &priv->drm;
+	conn = &priv->connector;
+	KUNIT_ASSERT_TRUE(test, conn->display_info.is_hdmi);
+
+	ctx = drm_kunit_helper_acquire_ctx_alloc(test);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, ctx);
+
+	mode = drm_display_mode_from_cea_vic(drm, 1);
+	KUNIT_ASSERT_NOT_NULL(test, mode);
+
+	drm = &priv->drm;
+	crtc = priv->crtc;
+	ret = light_up_connector(test, drm, crtc, conn, mode, ctx);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	state = drm_kunit_helper_atomic_state_alloc(test, drm, ctx);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, state);
+
+	conn_state = drm_atomic_get_connector_state(state, conn);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, conn_state);
+
+	KUNIT_ASSERT_EQ(test,
+			conn_state->hdmi.broadcast_rgb,
+			DRM_HDMI_BROADCAST_RGB_AUTO);
+
+	ret = drm_atomic_check_only(state);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	conn_state = drm_atomic_get_connector_state(state, conn);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, conn_state);
+
+	KUNIT_EXPECT_FALSE(test, conn_state->hdmi.is_limited_range);
+}
+
+/*
+ * Test that for an HDMI connector, with an HDMI monitor, if the
+ * Broadcast RGB property is set to full with a mode that isn't the
+ * VIC-1 mode, we will get a full RGB Quantization Range.
+ */
+static void drm_test_check_broadcast_rgb_full_cea_mode(struct kunit *test)
+{
+	struct drm_atomic_helper_connector_hdmi_priv *priv;
+	struct drm_modeset_acquire_ctx *ctx;
+	struct drm_connector_state *conn_state;
+	struct drm_atomic_state *state;
+	struct drm_display_mode *preferred;
+	struct drm_connector *conn;
+	struct drm_device *drm;
+	struct drm_crtc *crtc;
+	int ret;
+
+	priv = drm_atomic_helper_connector_hdmi_init(test,
+						     BIT(HDMI_COLORSPACE_RGB),
+						     8);
+	KUNIT_ASSERT_NOT_NULL(test, priv);
+
+	conn = &priv->connector;
+	KUNIT_ASSERT_TRUE(test, conn->display_info.is_hdmi);
+
+	ctx = drm_kunit_helper_acquire_ctx_alloc(test);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, ctx);
+
+	preferred = find_preferred_mode(conn);
+	KUNIT_ASSERT_NOT_NULL(test, preferred);
+	KUNIT_ASSERT_NE(test, drm_match_cea_mode(preferred), 1);
+
+	drm = &priv->drm;
+	crtc = priv->crtc;
+	ret = light_up_connector(test, drm, crtc, conn, preferred, ctx);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	state = drm_kunit_helper_atomic_state_alloc(test, drm, ctx);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, state);
+
+	conn_state = drm_atomic_get_connector_state(state, conn);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, conn_state);
+
+	conn_state->hdmi.broadcast_rgb = DRM_HDMI_BROADCAST_RGB_FULL;
+
+	ret = drm_atomic_check_only(state);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	conn_state = drm_atomic_get_connector_state(state, conn);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, conn_state);
+
+	KUNIT_ASSERT_EQ(test,
+			conn_state->hdmi.broadcast_rgb,
+			DRM_HDMI_BROADCAST_RGB_FULL);
+
+	KUNIT_EXPECT_FALSE(test, conn_state->hdmi.is_limited_range);
+}
+
+/*
+ * Test that for an HDMI connector, with an HDMI monitor, if the
+ * Broadcast RGB property is set to full with a VIC-1 mode, we will get
+ * a full RGB Quantization Range.
+ */
+static void drm_test_check_broadcast_rgb_full_cea_mode_vic_1(struct kunit *test)
+{
+	struct drm_atomic_helper_connector_hdmi_priv *priv;
+	struct drm_modeset_acquire_ctx *ctx;
+	struct drm_connector_state *conn_state;
+	struct drm_atomic_state *state;
+	struct drm_display_mode *mode;
+	struct drm_connector *conn;
+	struct drm_device *drm;
+	struct drm_crtc *crtc;
+	int ret;
+
+	priv = drm_atomic_helper_connector_hdmi_init(test,
+						     BIT(HDMI_COLORSPACE_RGB),
+						     8);
+	KUNIT_ASSERT_NOT_NULL(test, priv);
+
+	drm = &priv->drm;
+	conn = &priv->connector;
+	KUNIT_ASSERT_TRUE(test, conn->display_info.is_hdmi);
+
+	ctx = drm_kunit_helper_acquire_ctx_alloc(test);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, ctx);
+
+	mode = drm_display_mode_from_cea_vic(drm, 1);
+	KUNIT_ASSERT_NOT_NULL(test, mode);
+
+	drm = &priv->drm;
+	crtc = priv->crtc;
+	ret = light_up_connector(test, drm, crtc, conn, mode, ctx);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	state = drm_kunit_helper_atomic_state_alloc(test, drm, ctx);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, state);
+
+	conn_state = drm_atomic_get_connector_state(state, conn);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, conn_state);
+
+	conn_state->hdmi.broadcast_rgb = DRM_HDMI_BROADCAST_RGB_FULL;
+
+	ret = drm_atomic_check_only(state);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	conn_state = drm_atomic_get_connector_state(state, conn);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, conn_state);
+
+	KUNIT_ASSERT_EQ(test,
+			conn_state->hdmi.broadcast_rgb,
+			DRM_HDMI_BROADCAST_RGB_FULL);
+
+	KUNIT_EXPECT_FALSE(test, conn_state->hdmi.is_limited_range);
+}
+
+/*
+ * Test that for an HDMI connector, with an HDMI monitor, if the
+ * Broadcast RGB property is set to limited with a mode that isn't the
+ * VIC-1 mode, we will get a limited RGB Quantization Range.
+ */
+static void drm_test_check_broadcast_rgb_limited_cea_mode(struct kunit *test)
+{
+	struct drm_atomic_helper_connector_hdmi_priv *priv;
+	struct drm_modeset_acquire_ctx *ctx;
+	struct drm_connector_state *conn_state;
+	struct drm_atomic_state *state;
+	struct drm_display_mode *preferred;
+	struct drm_connector *conn;
+	struct drm_device *drm;
+	struct drm_crtc *crtc;
+	int ret;
+
+	priv = drm_atomic_helper_connector_hdmi_init(test,
+						     BIT(HDMI_COLORSPACE_RGB),
+						     8);
+	KUNIT_ASSERT_NOT_NULL(test, priv);
+
+	conn = &priv->connector;
+	KUNIT_ASSERT_TRUE(test, conn->display_info.is_hdmi);
+
+	ctx = drm_kunit_helper_acquire_ctx_alloc(test);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, ctx);
+
+	preferred = find_preferred_mode(conn);
+	KUNIT_ASSERT_NOT_NULL(test, preferred);
+	KUNIT_ASSERT_NE(test, drm_match_cea_mode(preferred), 1);
+
+	drm = &priv->drm;
+	crtc = priv->crtc;
+	ret = light_up_connector(test, drm, crtc, conn, preferred, ctx);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	state = drm_kunit_helper_atomic_state_alloc(test, drm, ctx);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, state);
+
+	conn_state = drm_atomic_get_connector_state(state, conn);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, conn_state);
+
+	conn_state->hdmi.broadcast_rgb = DRM_HDMI_BROADCAST_RGB_LIMITED;
+
+	ret = drm_atomic_check_only(state);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	conn_state = drm_atomic_get_connector_state(state, conn);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, conn_state);
+
+	KUNIT_ASSERT_EQ(test,
+			conn_state->hdmi.broadcast_rgb,
+			DRM_HDMI_BROADCAST_RGB_LIMITED);
+
+	KUNIT_EXPECT_TRUE(test, conn_state->hdmi.is_limited_range);
+}
+
+/*
+ * Test that for an HDMI connector, with an HDMI monitor, if the
+ * Broadcast RGB property is set to limited with a VIC-1 mode, we will
+ * get a limited RGB Quantization Range.
+ */
+static void drm_test_check_broadcast_rgb_limited_cea_mode_vic_1(struct kunit *test)
+{
+	struct drm_atomic_helper_connector_hdmi_priv *priv;
+	struct drm_modeset_acquire_ctx *ctx;
+	struct drm_connector_state *conn_state;
+	struct drm_atomic_state *state;
+	struct drm_display_mode *mode;
+	struct drm_connector *conn;
+	struct drm_device *drm;
+	struct drm_crtc *crtc;
+	int ret;
+
+	priv = drm_atomic_helper_connector_hdmi_init(test,
+						     BIT(HDMI_COLORSPACE_RGB),
+						     8);
+	KUNIT_ASSERT_NOT_NULL(test, priv);
+
+	drm = &priv->drm;
+	conn = &priv->connector;
+	KUNIT_ASSERT_TRUE(test, conn->display_info.is_hdmi);
+
+	ctx = drm_kunit_helper_acquire_ctx_alloc(test);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, ctx);
+
+	mode = drm_display_mode_from_cea_vic(drm, 1);
+	KUNIT_ASSERT_NOT_NULL(test, mode);
+
+	drm = &priv->drm;
+	crtc = priv->crtc;
+	ret = light_up_connector(test, drm, crtc, conn, mode, ctx);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	state = drm_kunit_helper_atomic_state_alloc(test, drm, ctx);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, state);
+
+	conn_state = drm_atomic_get_connector_state(state, conn);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, conn_state);
+
+	conn_state->hdmi.broadcast_rgb = DRM_HDMI_BROADCAST_RGB_LIMITED;
+
+	ret = drm_atomic_check_only(state);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	conn_state = drm_atomic_get_connector_state(state, conn);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, conn_state);
+
+	KUNIT_ASSERT_EQ(test,
+			conn_state->hdmi.broadcast_rgb,
+			DRM_HDMI_BROADCAST_RGB_LIMITED);
+
+	KUNIT_EXPECT_TRUE(test, conn_state->hdmi.is_limited_range);
+}
+
 /*
  * Test that if we change the maximum bpc property to a different value,
  * we trigger a mode change on the connector's CRTC, which will in turn
  * disable/enable the connector.
  */
@@ -1192,10 +1536,21 @@ static void drm_test_check_output_bpc_format_display_8bpc_only(struct kunit *tes
 	KUNIT_EXPECT_EQ(test, conn_state->hdmi.output_bpc, 8);
 	KUNIT_EXPECT_EQ(test, conn_state->hdmi.output_format, HDMI_COLORSPACE_RGB);
 }
 
 static struct kunit_case drm_atomic_helper_connector_hdmi_check_tests[] = {
+	KUNIT_CASE(drm_test_check_broadcast_rgb_auto_cea_mode),
+	KUNIT_CASE(drm_test_check_broadcast_rgb_auto_cea_mode_vic_1),
+	KUNIT_CASE(drm_test_check_broadcast_rgb_full_cea_mode),
+	KUNIT_CASE(drm_test_check_broadcast_rgb_full_cea_mode_vic_1),
+	KUNIT_CASE(drm_test_check_broadcast_rgb_limited_cea_mode),
+	KUNIT_CASE(drm_test_check_broadcast_rgb_limited_cea_mode_vic_1),
+	/*
+	 * TODO: When we'll have YUV output support, we need to check
+	 * that the limited range is always set to limited no matter
+	 * what the value of Broadcast RGB is.
+	 */
 	KUNIT_CASE(drm_test_check_broadcast_rgb_crtc_mode_changed),
 	KUNIT_CASE(drm_test_check_broadcast_rgb_crtc_mode_not_changed),
 	KUNIT_CASE(drm_test_check_hdmi_funcs_reject_rate),
 	KUNIT_CASE(drm_test_check_max_tmds_rate_bpc_fallback),
 	KUNIT_CASE(drm_test_check_max_tmds_rate_format_fallback),

-- 
2.45.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
