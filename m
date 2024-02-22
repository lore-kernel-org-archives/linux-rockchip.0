Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA00CC5478C
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Feb 2024 18:19:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GfZlr4n1WBa0Tp6pRW9RF/PSxfn4CYd5Mc4yx7JAdQU=; b=ivZKZaEGZCcesu
	PtiSt+btjfgm5y5A6gcg0gQzn+BQVQ2cRh2xaUpTo3vj3jCMQAFb8m7w24u8F0wk+KnYVS+NTWdnd
	PHsOF9CvGzkXAhGteHDuVbpDP/cK26qbtvPQXTSbMGfVInyKOtxWBBpa6YnpZcdLg2mpvvKYUv5TW
	iIuCDnbzKIVzM8EDmHi6jXDUwQuVjl+h+bjvtNESMXzvQK22ZC/frc5YT/TKwbU+9xkUnGyuzLUyi
	S9TmAhpu7Yp0oLKlIuzjBC5xP0rbSq63aNuKItWQwaiwGEl42D7z4lBxytrY4txThmyPD+flaH/Yo
	ebHhot0UMFn0HnmZUMDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdDfN-00000005z7f-0FYn;
	Thu, 22 Feb 2024 18:19:29 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdDbM-00000005xF4-3k5t;
	Thu, 22 Feb 2024 18:15:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id B3DA6CE28C0;
	Thu, 22 Feb 2024 18:15:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A12FDC433F1;
	Thu, 22 Feb 2024 18:15:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708625719;
	bh=/bnaT0uAZ4rOmQ62HDTgavxdwTBZFeEC9ReuYp1t42E=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=t6IImUp7q0+jBz/SYYudGd3z8bkRy7KOdLICaxviN3T5A6qujoHDkB3svwy8jKvba
	 EO4g7EsK0/wq9E81KsIjJD6tY0FW+xG+7I3IIiCxrWInxhZSaL2odT/1SX1ctza/yk
	 KjDRKvkjwnvK0GCHXsxiI2eTKftyIPvo6bM7v+3ypQey1sgoqt5ecJsH3AOyx3aJnF
	 vkcDwMBAfl65cOi0pIpWEeKdit9oN1kdLZ7J2IYhv+VFTnONocIvtv/pyrFbHl6/LB
	 jlUGIgZMj3RyK87GfLSYSRJIu61fBrX86dNLW7tJXICQoyGv1Pro1QEFx+SZXHqUBa
	 6Qx7t+1lIl2/g==
From: Maxime Ripard <mripard@kernel.org>
Date: Thu, 22 Feb 2024 19:14:04 +0100
Subject: [PATCH v7 18/36] drm/tests: Add HDMI connector rate filter hook
 tests
MIME-Version: 1.0
Message-Id: <20240222-kms-hdmi-connector-state-v7-18-8f4af575fce2@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3581; i=mripard@kernel.org;
 h=from:subject:message-id; bh=/bnaT0uAZ4rOmQ62HDTgavxdwTBZFeEC9ReuYp1t42E=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKnX+77UGFwumVh/4vL3kHuPQz6/Xrzw0Pc7x5e2/Jme3
 pa0vpU9pqOUhUGMi0FWTJElRth8SdypWa872fjmwcxhZQIZwsDFKQAT6bjPyNCdaeNRutYo3LSJ
 9f43P6c/+0z/thyvDv/8vkBKdX5mZQHD/9DN70U2PzKWNFu0rH3Wl/AbP7fqrBKy370oc8E2dvU
 pz1kA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_101521_847558_9A333D54 
X-CRM114-Status: GOOD (  15.61  )
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

The previous patch adds a new hook for HDMI connectors to filter out
configurations based on the TMDS character rate. Let's add some tests to
make sure it works as expected.

Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 .../gpu/drm/tests/drm_atomic_state_helper_test.c   | 65 ++++++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/drivers/gpu/drm/tests/drm_atomic_state_helper_test.c b/drivers/gpu/drm/tests/drm_atomic_state_helper_test.c
index 989661ad3aee..5a8750153510 100644
--- a/drivers/gpu/drm/tests/drm_atomic_state_helper_test.c
+++ b/drivers/gpu/drm/tests/drm_atomic_state_helper_test.c
@@ -113,6 +113,18 @@ static int set_connector_edid(struct kunit *test, struct drm_connector *connecto
 static const struct drm_connector_hdmi_funcs dummy_connector_hdmi_funcs = {
 };
 
+static enum drm_mode_status
+reject_connector_tmds_char_rate_valid(const struct drm_connector *connector,
+				       const struct drm_display_mode *mode,
+				       unsigned long long tmds_rate)
+{
+	return MODE_BAD;
+}
+
+static const struct drm_connector_hdmi_funcs reject_connector_hdmi_funcs = {
+	.tmds_char_rate_valid	= reject_connector_tmds_char_rate_valid,
+};
+
 static int dummy_connector_get_modes(struct drm_connector *connector)
 {
 	struct drm_atomic_helper_connector_hdmi_priv *priv =
@@ -491,7 +503,60 @@ static void drm_test_check_tmds_char_rate_rgb_12bpc(struct kunit *test)
 	KUNIT_EXPECT_EQ(test, conn_state->hdmi.tmds_char_rate, preferred->clock * 1500);
 }
 
+/*
+ * Test that if we filter a rate through our hook, it's indeed rejected
+ * by the whole atomic_check logic.
+ *
+ * We do so by first doing a commit on the pipeline to make sure that it
+ * works, change the HDMI helpers pointer, and then try the same commit
+ * again to see if it fails as it should.
+ */
+static void drm_test_check_hdmi_funcs_reject_rate(struct kunit *test)
+{
+	struct drm_atomic_helper_connector_hdmi_priv *priv;
+	struct drm_modeset_acquire_ctx *ctx;
+	struct drm_atomic_state *state;
+	struct drm_display_mode *preferred;
+	struct drm_crtc_state *crtc_state;
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
+	/* You shouldn't be doing that at home. */
+	conn->hdmi.funcs = &reject_connector_hdmi_funcs;
+
+	state = drm_kunit_helper_atomic_state_alloc(test, drm, ctx);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, state);
+
+	crtc_state = drm_atomic_get_crtc_state(state, crtc);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, crtc_state);
+
+	crtc_state->connectors_changed = true;
+
+	ret = drm_atomic_check_only(state);
+	KUNIT_EXPECT_LT(test, ret, 0);
+}
+
 static struct kunit_case drm_atomic_helper_connector_hdmi_check_tests[] = {
+	KUNIT_CASE(drm_test_check_hdmi_funcs_reject_rate),
 	KUNIT_CASE(drm_test_check_output_bpc_crtc_mode_changed),
 	KUNIT_CASE(drm_test_check_output_bpc_crtc_mode_not_changed),
 	KUNIT_CASE(drm_test_check_tmds_char_rate_rgb_8bpc),

-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
