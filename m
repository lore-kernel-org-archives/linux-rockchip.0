Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C380AC54E4A
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Mar 2024 14:51:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GRrRYWpVfGWw7f8AclUst1YAsn0UhCYZsi/C/43VtuM=; b=GVXuSXxu4OkaGI
	cpsLQRHm72QQLLJD/vGoXKwt094rX5/PBTPjK658xO3nGBYYwLX0Q848ghk7BsS0AMOBEv/rIrXmb
	jjuy1m0aj7ib0v9AWTYjWRmfBBHe0oJoZVfyJP7F7IwRAFiJKUsEUYyizq602OoQrv5x8yw8uXUgv
	Lf4fvDDA0r3EdawnjVsI/pLOmdeuTNceALVhgq0ph51Na1UT++lDOfzLpvZAiSTiC4NMTTOgT83/Z
	fxkYuqwYqF0YSITQw1ofgJMT30RAqxGOzC8kndgWRzz/waDvV+iw4A/uBp9QjZm+S7ErqmS4gaRuv
	D9OTOtDzLumuHaV+qMaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riF63-000000058DA-34hE;
	Thu, 07 Mar 2024 14:51:47 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riDyL-00000004n2i-0Di3;
	Thu, 07 Mar 2024 13:39:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 71DA8617E9;
	Thu,  7 Mar 2024 13:39:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C2CBC43390;
	Thu,  7 Mar 2024 13:39:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709818783;
	bh=ETz9nlR0atHV46UY5p7KYA1JJn6mH150Vspr8N/BJpw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=BYs46iaD++8CAjRszVVYrrrXajYO0TYv2pgN7WRrepuFU3k0Pfh+CCRVaM/0oeAXC
	 CrXFnXbtNDZ/LdCZsFCpsgFd0/olpjUS4yLrk/FRxKcz8Fu+sqSO961NrxIt/ScEEj
	 PCrJUqXHmIjAIri3y5fkG9/vUz2hHa6Sy5hcLWFlwxS3krTmtIPU8fyohyGNjKAVvq
	 Ez4xkL+wYwf8berVcOOlGeIIBsnFF+C6IJ+i5Pgi5KhZ6K3T7Cnj3JAVxQp5SWjIWx
	 XYOoHmkNPn+Xaw2q3oBQQ9+nwPhhcH8AxrIw60ofLarbRbaRT5ZNG4/+LeZMn5ua57
	 EnECmlDlR5aRA==
From: Maxime Ripard <mripard@kernel.org>
Date: Thu, 07 Mar 2024 14:38:44 +0100
Subject: [PATCH v8 17/27] drm/tests: Add tests for Broadcast RGB property
MIME-Version: 1.0
Message-Id: <20240307-kms-hdmi-connector-state-v8-17-ef6a6f31964b@kernel.org>
References: <20240307-kms-hdmi-connector-state-v8-0-ef6a6f31964b@kernel.org>
In-Reply-To: <20240307-kms-hdmi-connector-state-v8-0-ef6a6f31964b@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=13818; i=mripard@kernel.org;
 h=from:subject:message-id; bh=ETz9nlR0atHV46UY5p7KYA1JJn6mH150Vspr8N/BJpw=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKkvD6fK3/ptvC9zehLTTJOzp7rEE95dMdBemqOt1xIgF
 FfLlfepo5SFQYyLQVZMkSVG2HxJ3KlZrzvZ+ObBzGFlAhnCwMUpABOpdWP4774p31LqzsySu0oP
 bPT2/JMScaje3jHZ/ba9R5TZ4mzDjQz/1B6o2zFqLYyT/aGl5v/PYv363B2zmSwztuxk2rL877/
 9LAA=
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240307_053945_453209_6425FC53 
X-CRM114-Status: GOOD (  17.48  )
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

This had a bunch of kunit tests to make sure our code to handle the
Broadcast RGB property behaves properly.

This requires bringing a bit of infrastructure to create mock HDMI
connectors, with custom EDIDs.

Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 .../gpu/drm/tests/drm_atomic_state_helper_test.c   | 151 +++++++++++++++++++++
 drivers/gpu/drm/tests/drm_connector_test.c         | 116 ++++++++++++++++
 2 files changed, 267 insertions(+)

diff --git a/drivers/gpu/drm/tests/drm_atomic_state_helper_test.c b/drivers/gpu/drm/tests/drm_atomic_state_helper_test.c
index c0f26422e925..3de15cec2f5f 100644
--- a/drivers/gpu/drm/tests/drm_atomic_state_helper_test.c
+++ b/drivers/gpu/drm/tests/drm_atomic_state_helper_test.c
@@ -222,10 +222,138 @@ drm_atomic_helper_connector_hdmi_init(struct kunit *test,
 	KUNIT_ASSERT_EQ(test, ret, 0);
 
 	return priv;
 }
 
+/*
+ * Test that if we change the RGB quantization property to a different
+ * value, we trigger a mode change on the connector's CRTC, which will
+ * in turn disable/enable the connector.
+ */
+static void drm_test_check_broadcast_rgb_crtc_mode_changed(struct kunit *test)
+{
+	struct drm_atomic_helper_connector_hdmi_priv *priv;
+	struct drm_modeset_acquire_ctx *ctx;
+	struct drm_connector_state *old_conn_state;
+	struct drm_connector_state *new_conn_state;
+	struct drm_crtc_state *crtc_state;
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
+	ctx = drm_kunit_helper_acquire_ctx_alloc(test);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, ctx);
+
+	conn = &priv->connector;
+	preferred = find_preferred_mode(conn);
+	KUNIT_ASSERT_NOT_NULL(test, preferred);
+
+	drm = &priv->drm;
+	crtc = priv->crtc;
+	ret = light_up_connector(test, drm, crtc, conn, preferred, ctx);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	state = drm_kunit_helper_atomic_state_alloc(test, drm, ctx);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, state);
+
+	new_conn_state = drm_atomic_get_connector_state(state, conn);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, new_conn_state);
+
+	old_conn_state = drm_atomic_get_old_connector_state(state, conn);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, old_conn_state);
+
+	new_conn_state->hdmi.broadcast_rgb = DRM_HDMI_BROADCAST_RGB_FULL;
+
+	KUNIT_ASSERT_NE(test,
+			old_conn_state->hdmi.broadcast_rgb,
+			new_conn_state->hdmi.broadcast_rgb);
+
+	ret = drm_atomic_check_only(state);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	new_conn_state = drm_atomic_get_new_connector_state(state, conn);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, new_conn_state);
+	KUNIT_EXPECT_EQ(test, new_conn_state->hdmi.broadcast_rgb, DRM_HDMI_BROADCAST_RGB_FULL);
+
+	crtc_state = drm_atomic_get_new_crtc_state(state, crtc);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, crtc_state);
+	KUNIT_EXPECT_TRUE(test, crtc_state->mode_changed);
+}
+
+/*
+ * Test that if we set the RGB quantization property to the same value,
+ * we don't trigger a mode change on the connector's CRTC and leave the
+ * connector unaffected.
+ */
+static void drm_test_check_broadcast_rgb_crtc_mode_not_changed(struct kunit *test)
+{
+	struct drm_atomic_helper_connector_hdmi_priv *priv;
+	struct drm_modeset_acquire_ctx *ctx;
+	struct drm_connector_state *old_conn_state;
+	struct drm_connector_state *new_conn_state;
+	struct drm_crtc_state *crtc_state;
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
+	ctx = drm_kunit_helper_acquire_ctx_alloc(test);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, ctx);
+
+	conn = &priv->connector;
+	preferred = find_preferred_mode(conn);
+	KUNIT_ASSERT_NOT_NULL(test, preferred);
+
+	drm = &priv->drm;
+	crtc = priv->crtc;
+	ret = light_up_connector(test, drm, crtc, conn, preferred, ctx);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	state = drm_kunit_helper_atomic_state_alloc(test, drm, ctx);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, state);
+
+	new_conn_state = drm_atomic_get_connector_state(state, conn);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, new_conn_state);
+
+	old_conn_state = drm_atomic_get_old_connector_state(state, conn);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, old_conn_state);
+
+	new_conn_state->hdmi.broadcast_rgb = old_conn_state->hdmi.broadcast_rgb;
+
+	ret = drm_atomic_check_only(state);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	old_conn_state = drm_atomic_get_old_connector_state(state, conn);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, old_conn_state);
+
+	new_conn_state = drm_atomic_get_new_connector_state(state, conn);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, new_conn_state);
+
+	KUNIT_EXPECT_EQ(test,
+			old_conn_state->hdmi.broadcast_rgb,
+			new_conn_state->hdmi.broadcast_rgb);
+
+	crtc_state = drm_atomic_get_new_crtc_state(state, crtc);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, crtc_state);
+	KUNIT_EXPECT_FALSE(test, crtc_state->mode_changed);
+}
+
 /*
  * Test that if we change the maximum bpc property to a different value,
  * we trigger a mode change on the connector's CRTC, which will in turn
  * disable/enable the connector.
  */
@@ -1057,10 +1185,12 @@ static void drm_test_check_output_bpc_format_display_8bpc_only(struct kunit *tes
 	KUNIT_EXPECT_EQ(test, conn_state->hdmi.output_bpc, 8);
 	KUNIT_EXPECT_EQ(test, conn_state->hdmi.output_format, HDMI_COLORSPACE_RGB);
 }
 
 static struct kunit_case drm_atomic_helper_connector_hdmi_check_tests[] = {
+	KUNIT_CASE(drm_test_check_broadcast_rgb_crtc_mode_changed),
+	KUNIT_CASE(drm_test_check_broadcast_rgb_crtc_mode_not_changed),
 	KUNIT_CASE(drm_test_check_hdmi_funcs_reject_rate),
 	KUNIT_CASE(drm_test_check_max_tmds_rate_bpc_fallback),
 	KUNIT_CASE(drm_test_check_max_tmds_rate_format_fallback),
 	KUNIT_CASE(drm_test_check_output_bpc_crtc_mode_changed),
 	KUNIT_CASE(drm_test_check_output_bpc_crtc_mode_not_changed),
@@ -1088,10 +1218,30 @@ static struct kunit_case drm_atomic_helper_connector_hdmi_check_tests[] = {
 static struct kunit_suite drm_atomic_helper_connector_hdmi_check_test_suite = {
 	.name		= "drm_atomic_helper_connector_hdmi_check",
 	.test_cases	= drm_atomic_helper_connector_hdmi_check_tests,
 };
 
+/*
+ * Test that the value of the Broadcast RGB property out of reset is set
+ * to auto.
+ */
+static void drm_test_check_broadcast_rgb_value(struct kunit *test)
+{
+	struct drm_atomic_helper_connector_hdmi_priv *priv;
+	struct drm_connector_state *conn_state;
+	struct drm_connector *conn;
+
+	priv = drm_atomic_helper_connector_hdmi_init(test,
+						     BIT(HDMI_COLORSPACE_RGB),
+						     8);
+	KUNIT_ASSERT_NOT_NULL(test, priv);
+
+	conn = &priv->connector;
+	conn_state = conn->state;
+	KUNIT_EXPECT_EQ(test, conn_state->hdmi.broadcast_rgb, DRM_HDMI_BROADCAST_RGB_AUTO);
+}
+
 /*
  * Test that if the connector was initialised with a maximum bpc of 8,
  * the value of the max_bpc and max_requested_bpc properties out of
  * reset are also set to 8, and output_bpc is set to 0 and will be
  * filled at atomic_check time.
@@ -1205,10 +1355,11 @@ static void drm_test_check_tmds_char_value(struct kunit *test)
 	conn_state = conn->state;
 	KUNIT_EXPECT_EQ(test, conn_state->hdmi.tmds_char_rate, 0);
 }
 
 static struct kunit_case drm_atomic_helper_connector_hdmi_reset_tests[] = {
+	KUNIT_CASE(drm_test_check_broadcast_rgb_value),
 	KUNIT_CASE(drm_test_check_bpc_8_value),
 	KUNIT_CASE(drm_test_check_bpc_10_value),
 	KUNIT_CASE(drm_test_check_bpc_12_value),
 	KUNIT_CASE(drm_test_check_format_value),
 	KUNIT_CASE(drm_test_check_tmds_char_value),
diff --git a/drivers/gpu/drm/tests/drm_connector_test.c b/drivers/gpu/drm/tests/drm_connector_test.c
index ac4b8d00e992..d5320a089887 100644
--- a/drivers/gpu/drm/tests/drm_connector_test.c
+++ b/drivers/gpu/drm/tests/drm_connector_test.c
@@ -562,10 +562,67 @@ static struct kunit_case drm_get_tv_mode_from_name_tests[] = {
 static struct kunit_suite drm_get_tv_mode_from_name_test_suite = {
 	.name = "drm_get_tv_mode_from_name",
 	.test_cases = drm_get_tv_mode_from_name_tests,
 };
 
+struct drm_hdmi_connector_get_broadcast_rgb_name_test {
+	unsigned int kind;
+	const char *expected_name;
+};
+
+#define BROADCAST_RGB_TEST(_kind, _name)	\
+	{					\
+		.kind = _kind,			\
+		.expected_name = _name,		\
+	}
+
+static void drm_test_drm_hdmi_connector_get_broadcast_rgb_name(struct kunit *test)
+{
+	const struct drm_hdmi_connector_get_broadcast_rgb_name_test *params =
+		test->param_value;
+
+	KUNIT_EXPECT_STREQ(test,
+			   drm_hdmi_connector_get_broadcast_rgb_name(params->kind),
+			   params->expected_name);
+}
+
+static const
+struct drm_hdmi_connector_get_broadcast_rgb_name_test
+drm_hdmi_connector_get_broadcast_rgb_name_valid_tests[] = {
+	BROADCAST_RGB_TEST(DRM_HDMI_BROADCAST_RGB_AUTO, "Automatic"),
+	BROADCAST_RGB_TEST(DRM_HDMI_BROADCAST_RGB_FULL, "Full"),
+	BROADCAST_RGB_TEST(DRM_HDMI_BROADCAST_RGB_LIMITED, "Limited 16:235"),
+};
+
+static void
+drm_hdmi_connector_get_broadcast_rgb_name_valid_desc(const struct drm_hdmi_connector_get_broadcast_rgb_name_test *t,
+						     char *desc)
+{
+	sprintf(desc, "%s", t->expected_name);
+}
+
+KUNIT_ARRAY_PARAM(drm_hdmi_connector_get_broadcast_rgb_name_valid,
+		  drm_hdmi_connector_get_broadcast_rgb_name_valid_tests,
+		  drm_hdmi_connector_get_broadcast_rgb_name_valid_desc);
+
+static void drm_test_drm_hdmi_connector_get_broadcast_rgb_name_invalid(struct kunit *test)
+{
+	KUNIT_EXPECT_NULL(test, drm_hdmi_connector_get_broadcast_rgb_name(3));
+};
+
+static struct kunit_case drm_hdmi_connector_get_broadcast_rgb_name_tests[] = {
+	KUNIT_CASE_PARAM(drm_test_drm_hdmi_connector_get_broadcast_rgb_name,
+			 drm_hdmi_connector_get_broadcast_rgb_name_valid_gen_params),
+	KUNIT_CASE(drm_test_drm_hdmi_connector_get_broadcast_rgb_name_invalid),
+	{ }
+};
+
+static struct kunit_suite drm_hdmi_connector_get_broadcast_rgb_name_test_suite = {
+	.name = "drm_hdmi_connector_get_broadcast_rgb_name",
+	.test_cases = drm_hdmi_connector_get_broadcast_rgb_name_tests,
+};
+
 struct drm_hdmi_connector_get_output_format_name_test {
 	unsigned int kind;
 	const char *expected_name;
 };
 
@@ -620,10 +677,67 @@ static struct kunit_case drm_hdmi_connector_get_output_format_name_tests[] = {
 static struct kunit_suite drm_hdmi_connector_get_output_format_name_test_suite = {
 	.name = "drm_hdmi_connector_get_output_format_name",
 	.test_cases = drm_hdmi_connector_get_output_format_name_tests,
 };
 
+static void drm_test_drm_connector_attach_broadcast_rgb_property(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	struct drm_connector *connector = &priv->connector;
+	struct drm_property *prop;
+	int ret;
+
+	ret = drmm_connector_init(&priv->drm, connector,
+				  &dummy_funcs,
+				  DRM_MODE_CONNECTOR_HDMIA,
+				  &priv->ddc);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	ret = drm_connector_attach_broadcast_rgb_property(connector);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	prop = connector->broadcast_rgb_property;
+	KUNIT_ASSERT_NOT_NULL(test, prop);
+	KUNIT_EXPECT_NOT_NULL(test, drm_mode_obj_find_prop_id(&connector->base, prop->base.id));
+}
+
+static void drm_test_drm_connector_attach_broadcast_rgb_property_hdmi_connector(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	struct drm_connector *connector = &priv->connector;
+	struct drm_property *prop;
+	int ret;
+
+	ret = drmm_connector_hdmi_init(&priv->drm, connector,
+				       &dummy_funcs,
+				       &dummy_hdmi_funcs,
+				       DRM_MODE_CONNECTOR_HDMIA,
+				       &priv->ddc,
+				       BIT(HDMI_COLORSPACE_RGB),
+				       8);
+	KUNIT_EXPECT_EQ(test, ret, 0);
+
+	ret = drm_connector_attach_broadcast_rgb_property(connector);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	prop = connector->broadcast_rgb_property;
+	KUNIT_ASSERT_NOT_NULL(test, prop);
+	KUNIT_EXPECT_NOT_NULL(test, drm_mode_obj_find_prop_id(&connector->base, prop->base.id));
+}
+
+static struct kunit_case drm_connector_attach_broadcast_rgb_property_tests[] = {
+	KUNIT_CASE(drm_test_drm_connector_attach_broadcast_rgb_property),
+	KUNIT_CASE(drm_test_drm_connector_attach_broadcast_rgb_property_hdmi_connector),
+	{ }
+};
+
+static struct kunit_suite drm_connector_attach_broadcast_rgb_property_test_suite = {
+	.name = "drm_connector_attach_broadcast_rgb_property",
+	.init = drm_test_connector_init,
+	.test_cases = drm_connector_attach_broadcast_rgb_property_tests,
+};
+
 /*
  * Test that for a given mode, with 8bpc and an RGB output the TMDS
  * character rate is equal to the mode pixel clock.
  */
 static void drm_test_drm_connector_hdmi_compute_mode_clock_rgb(struct kunit *test)
@@ -943,12 +1057,14 @@ static struct kunit_suite drm_connector_hdmi_compute_mode_clock_test_suite = {
 };
 
 kunit_test_suites(
 	&drmm_connector_hdmi_init_test_suite,
 	&drmm_connector_init_test_suite,
+	&drm_connector_attach_broadcast_rgb_property_test_suite,
 	&drm_connector_hdmi_compute_mode_clock_test_suite,
 	&drm_get_tv_mode_from_name_test_suite,
+	&drm_hdmi_connector_get_broadcast_rgb_name_test_suite,
 	&drm_hdmi_connector_get_output_format_name_test_suite
 );
 
 MODULE_AUTHOR("Maxime Ripard <maxime@cerno.tech>");
 MODULE_LICENSE("GPL");

-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
