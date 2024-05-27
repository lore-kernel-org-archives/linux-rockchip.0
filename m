Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2929EC41513
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 May 2024 15:00:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zgf4OEDG32WD/93rNHWCCY96AsKXucGdIdwohQvDXQQ=; b=YecwX2et4RBG5/
	fHPIRACR/keW+/EXvx8jUpnzDEXPODxXkqx+cKEP93P1bOxxDZ2H2CsuAU8AgzvAWJTRp4XOV3TUI
	GG93aoPfwNzYmBs6Qkn2HATt0izLtRb4rv/6g9h15xXObKZSDgPET6BJIeVfGIxW4NHxPJZxv7Xns
	SjQSlD+tqshy6cQyOyenxe+DdOXm26YBgzVFyRrRYaFLrHtISHXaPGg2WvxZG7ZGU2Fp+2gt7aQ5w
	iQf4fRlwunCchH0Wp72rpgeLP8y+URdoUoNi6pWeCc7feAE0HG880JcLsIKIjF0tLsY0OOtm6rutJ
	2ennlEt4Eoz/JI2124JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBbpv-0000000FUoY-2IFf;
	Mon, 27 May 2024 15:00:31 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBarl-0000000FCQj-1RXP;
	Mon, 27 May 2024 13:58:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6BDAC6186B;
	Mon, 27 May 2024 13:58:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 958B0C32781;
	Mon, 27 May 2024 13:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716818300;
	bh=+4AzKiyqAeO2P4pZZ0g8gEGGU0uN3S9W/yTh2M+2RBQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=KswPnBShwfR4f80ulS2cCKEU6988qCfChlPRg6meSO0wToqfsZdzbiRE6DT1pBV+M
	 DXBprmq53iL8FwcVBlSSJgRlSZoQJEowx0Rd7qmDu5cIoro9g6bAqnHxPW2fR5ntr4
	 5bUPXckH6j01RCxgAx79Jy8ZtrENyu2X/4+SW0Nmi2TPBKUK7q74iidXI4LZP4Vqez
	 JhEfF2ra3cC7nFlGDs15GmdCGgcsFPvrk/0Wf8y+lvLJ6KhgfJ8Uwl+8r7mVrwjNoB
	 NLCIOkOgW6IkDBrCjnb3ksCYFu4wcK0iFeR7V/ZKk5F2lVN26NtVzB9Ai2fLMLqg8a
	 JV6wLWBtOkE0g==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 27 May 2024 15:57:53 +0200
Subject: [PATCH v15 04/29] drm/connector: hdmi: Add output BPC to the
 connector state
MIME-Version: 1.0
Message-Id: <20240527-kms-hdmi-connector-state-v15-4-c5af16c3aae2@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=9019; i=mripard@kernel.org;
 h=from:subject:message-id; bh=+4AzKiyqAeO2P4pZZ0g8gEGGU0uN3S9W/yTh2M+2RBQ=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDGkhExMnz6hMKK2bqTSt1TNQkuewaK6/Q6nU1M+h1gql3
 0I6k7Z3TGVhEOZkkBVTZHkiE3Z6efviKgf7lT9g5rAygQxh4OIUgIkIzmBsmBf/ZzHDtabfb025
 P5kqa/x4EjDlxrLCud/OBPXdPj2rKzrdojTnve1VhsI9fZFSIhJbGBue1yWZn1EW9lXWkbrjpzx
 d/ss2gcMfJFf0TuU4VW5t9+3a+uxUqzPqq3mtgwPLbiX79QAA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_065821_658147_68911A19 
X-CRM114-Status: GOOD (  20.09  )
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

We'll add automatic selection of the output BPC in a following patch,
but let's add it to the HDMI connector state already.

Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/display/drm_hdmi_state_helper.c | 20 ++++++++++++++++++++
 drivers/gpu/drm/drm_atomic.c                    |  5 +++++
 drivers/gpu/drm/drm_connector.c                 | 20 +++++++++++++++++++-
 drivers/gpu/drm/tests/drm_connector_test.c      | 12 ++++++++----
 include/drm/drm_connector.h                     | 12 +++++++++++-
 5 files changed, 63 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/display/drm_hdmi_state_helper.c b/drivers/gpu/drm/display/drm_hdmi_state_helper.c
index 1e92c1108d23..82293d93b5f8 100644
--- a/drivers/gpu/drm/display/drm_hdmi_state_helper.c
+++ b/drivers/gpu/drm/display/drm_hdmi_state_helper.c
@@ -16,10 +16,14 @@
  * drm_atomic_helper_connector_reset().
  */
 void __drm_atomic_helper_connector_hdmi_reset(struct drm_connector *connector,
 					      struct drm_connector_state *new_conn_state)
 {
+	unsigned int max_bpc = connector->max_bpc;
+
+	new_conn_state->max_bpc = max_bpc;
+	new_conn_state->max_requested_bpc = max_bpc;
 }
 EXPORT_SYMBOL(__drm_atomic_helper_connector_hdmi_reset);
 
 /**
  * drm_atomic_helper_connector_hdmi_check() - Helper to check HDMI connector atomic state
@@ -34,8 +38,24 @@ EXPORT_SYMBOL(__drm_atomic_helper_connector_hdmi_reset);
  * Zero on success, or an errno code otherwise.
  */
 int drm_atomic_helper_connector_hdmi_check(struct drm_connector *connector,
 					   struct drm_atomic_state *state)
 {
+	struct drm_connector_state *old_conn_state =
+		drm_atomic_get_old_connector_state(state, connector);
+	struct drm_connector_state *new_conn_state =
+		drm_atomic_get_new_connector_state(state, connector);
+
+	if (old_conn_state->hdmi.output_bpc != new_conn_state->hdmi.output_bpc) {
+		struct drm_crtc *crtc = new_conn_state->crtc;
+		struct drm_crtc_state *crtc_state;
+
+		crtc_state = drm_atomic_get_crtc_state(state, crtc);
+		if (IS_ERR(crtc_state))
+			return PTR_ERR(crtc_state);
+
+		crtc_state->mode_changed = true;
+	}
+
 	return 0;
 }
 EXPORT_SYMBOL(drm_atomic_helper_connector_hdmi_check);
diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
index a91737adf8e7..4e11cfb4518b 100644
--- a/drivers/gpu/drm/drm_atomic.c
+++ b/drivers/gpu/drm/drm_atomic.c
@@ -1141,10 +1141,15 @@ static void drm_atomic_connector_print_state(struct drm_printer *p,
 	drm_printf(p, "\tcrtc=%s\n", state->crtc ? state->crtc->name : "(null)");
 	drm_printf(p, "\tself_refresh_aware=%d\n", state->self_refresh_aware);
 	drm_printf(p, "\tmax_requested_bpc=%d\n", state->max_requested_bpc);
 	drm_printf(p, "\tcolorspace=%s\n", drm_get_colorspace_name(state->colorspace));
 
+	if (connector->connector_type == DRM_MODE_CONNECTOR_HDMIA ||
+	    connector->connector_type == DRM_MODE_CONNECTOR_HDMIB) {
+		drm_printf(p, "\toutput_bpc=%u\n", state->hdmi.output_bpc);
+	}
+
 	if (connector->connector_type == DRM_MODE_CONNECTOR_WRITEBACK)
 		if (state->writeback_job && state->writeback_job->fb)
 			drm_printf(p, "\tfb=%d\n", state->writeback_job->fb->base.id);
 
 	if (connector->funcs->atomic_print_state)
diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index d9961cce8245..da51a2bcb978 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -457,10 +457,11 @@ EXPORT_SYMBOL(drmm_connector_init);
  * @dev: DRM device
  * @connector: A pointer to the HDMI connector to init
  * @funcs: callbacks for this connector
  * @connector_type: user visible type of the connector
  * @ddc: optional pointer to the associated ddc adapter
+ * @max_bpc: Maximum bits per char the HDMI connector supports
  *
  * Initialises a preallocated HDMI connector. Connectors can be
  * subclassed as part of driver connector objects.
  *
  * Cleanup is automatically handled with a call to
@@ -473,22 +474,39 @@ EXPORT_SYMBOL(drmm_connector_init);
  */
 int drmm_connector_hdmi_init(struct drm_device *dev,
 			     struct drm_connector *connector,
 			     const struct drm_connector_funcs *funcs,
 			     int connector_type,
-			     struct i2c_adapter *ddc)
+			     struct i2c_adapter *ddc,
+			     unsigned int max_bpc)
 {
 	int ret;
 
 	if (!(connector_type == DRM_MODE_CONNECTOR_HDMIA ||
 	      connector_type == DRM_MODE_CONNECTOR_HDMIB))
 		return -EINVAL;
 
+	if (!(max_bpc == 8 || max_bpc == 10 || max_bpc == 12))
+		return -EINVAL;
+
 	ret = drmm_connector_init(dev, connector, funcs, connector_type, ddc);
 	if (ret)
 		return ret;
 
+	/*
+	 * drm_connector_attach_max_bpc_property() requires the
+	 * connector to have a state.
+	 */
+	if (connector->funcs->reset)
+		connector->funcs->reset(connector);
+
+	drm_connector_attach_max_bpc_property(connector, 8, max_bpc);
+	connector->max_bpc = max_bpc;
+
+	if (max_bpc > 8)
+		drm_connector_attach_hdr_output_metadata_property(connector);
+
 	return 0;
 }
 EXPORT_SYMBOL(drmm_connector_hdmi_init);
 
 /**
diff --git a/drivers/gpu/drm/tests/drm_connector_test.c b/drivers/gpu/drm/tests/drm_connector_test.c
index 261d4109946d..2661eb64a5cd 100644
--- a/drivers/gpu/drm/tests/drm_connector_test.c
+++ b/drivers/gpu/drm/tests/drm_connector_test.c
@@ -182,11 +182,12 @@ static void drm_test_connector_hdmi_init_valid(struct kunit *test)
 	int ret;
 
 	ret = drmm_connector_hdmi_init(&priv->drm, &priv->connector,
 				       &dummy_funcs,
 				       DRM_MODE_CONNECTOR_HDMIA,
-				       &priv->ddc);
+				       &priv->ddc,
+				       8);
 	KUNIT_EXPECT_EQ(test, ret, 0);
 }
 
 /*
  * Test that the registration of a connector without a DDC adapter
@@ -198,11 +199,12 @@ static void drm_test_connector_hdmi_init_null_ddc(struct kunit *test)
 	int ret;
 
 	ret = drmm_connector_hdmi_init(&priv->drm, &priv->connector,
 				       &dummy_funcs,
 				       DRM_MODE_CONNECTOR_HDMIA,
-				       NULL);
+				       NULL,
+				       8);
 	KUNIT_EXPECT_EQ(test, ret, 0);
 }
 
 /*
  * Test that the registration of an HDMI connector with an HDMI
@@ -215,11 +217,12 @@ static void drm_test_connector_hdmi_init_type_valid(struct kunit *test)
 	int ret;
 
 	ret = drmm_connector_hdmi_init(&priv->drm, &priv->connector,
 				       &dummy_funcs,
 				       connector_type,
-				       &priv->ddc);
+				       &priv->ddc,
+				       8);
 	KUNIT_EXPECT_EQ(test, ret, 0);
 }
 
 static const unsigned int drm_connector_hdmi_init_type_valid_tests[] = {
 	DRM_MODE_CONNECTOR_HDMIA,
@@ -246,11 +249,12 @@ static void drm_test_connector_hdmi_init_type_invalid(struct kunit *test)
 	int ret;
 
 	ret = drmm_connector_hdmi_init(&priv->drm, &priv->connector,
 				       &dummy_funcs,
 				       connector_type,
-				       &priv->ddc);
+				       &priv->ddc,
+				       8);
 	KUNIT_EXPECT_LT(test, ret, 0);
 }
 
 static const unsigned int drm_connector_hdmi_init_type_invalid_tests[] = {
 	DRM_MODE_CONNECTOR_Unknown,
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index 000a2a156619..d4d2ae15bc1e 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -1035,10 +1035,14 @@ struct drm_connector_state {
 	/**
 	 * @hdmi: HDMI-related variable and properties. Filled by
 	 * @drm_atomic_helper_connector_hdmi_check().
 	 */
 	struct {
+		/**
+		 * @output_bpc: Bits per color channel to output.
+		 */
+		unsigned int output_bpc;
 	} hdmi;
 };
 
 /**
  * struct drm_connector_funcs - control connectors on a given device
@@ -1680,10 +1684,15 @@ struct drm_connector {
 	 * DRM blob property data for the DP MST path property. This should only
 	 * be updated by calling drm_connector_set_path_property().
 	 */
 	struct drm_property_blob *path_blob_ptr;
 
+	/**
+	 * @max_bpc: Maximum bits per color channel the connector supports.
+	 */
+	unsigned int max_bpc;
+
 	/**
 	 * @max_bpc_property: Default connector property for the max bpc to be
 	 * driven out of the connector.
 	 */
 	struct drm_property *max_bpc_property;
@@ -1913,11 +1922,12 @@ int drmm_connector_init(struct drm_device *dev,
 			struct i2c_adapter *ddc);
 int drmm_connector_hdmi_init(struct drm_device *dev,
 			     struct drm_connector *connector,
 			     const struct drm_connector_funcs *funcs,
 			     int connector_type,
-			     struct i2c_adapter *ddc);
+			     struct i2c_adapter *ddc,
+			     unsigned int max_bpc);
 void drm_connector_attach_edid_property(struct drm_connector *connector);
 int drm_connector_register(struct drm_connector *connector);
 void drm_connector_unregister(struct drm_connector *connector);
 int drm_connector_attach_encoder(struct drm_connector *connector,
 				      struct drm_encoder *encoder);

-- 
2.45.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
