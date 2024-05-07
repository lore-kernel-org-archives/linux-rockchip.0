Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B1F8C41513
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 May 2024 14:31:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qdAfTuAKWS42vmSQLkj1BpMnqanpWnzajeIa0pw/F0c=; b=y+UwqQV0zoOugI
	FqvsuWA0e/LIOyKVaHwCueuFlZx9EVLY0pCVV3g5fTLJ9RY64S0TGKcXnY2k6wgYc6iA0C4TWvFKv
	BXcBxrbTv4+318+Nffb6JYLGoHfdtfbRwn+yGL+vrYSUiktv3rqwFz4/bZw82Z3ECjzOHJEtuz8kV
	j/zUVlhhQtb60Go8AWYFsNJJ/6YfgKZB0kzGyqcx9DACrGk0Ji5zNpTLBEddP/Vs0wtDrClDtgC6O
	q72A5+RsF19+8tQtPXNanwt3KXlm8ds09tDUV0fw+QCyqPKQoILm/CoHeFzF5z0dRw3P+qQcEUCIo
	dpedM76/ojRJClTvSCWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4LqC-0000000BVeW-0wtT;
	Tue, 07 May 2024 14:30:48 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4Khx-0000000B9Uv-2zx4;
	Tue, 07 May 2024 13:18:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 878E66176F;
	Tue,  7 May 2024 13:18:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0461AC4AF66;
	Tue,  7 May 2024 13:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715087892;
	bh=JRINILWiC5p90IRbD/BxY7cNI8xdzxL5sNRwNsYWVcU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=l7ilwVMJfCKlxWm86Ygi8xJmO4PhY8g9jECAqcdJBokuhA4rZT/BjJwbLZAyWn4Mz
	 lyJ4zNtKdD6I+jU2DjeK6VhMPehppaJs4hJDn2fJmvs0Eq7rb0zDM8/wlVPI5vfP4K
	 KnXx4SKz5goJkpipgRhuG7scdPoGs508WsXooERcSGtyLNitspOhRFSbm2omhGLtZ4
	 anxr/42f0pX+LD5qcAbtOVx32wjC99hN17TODKpFwOA+n0w7/zkBtdE2zA/8qoVvpB
	 980eL3UEgcjirzdyJwCIhKA5H4QMLZt8vFpDxLxO4tZMTFH/8d+QoB+UiFVY1dNeDA
	 AdqvvJ3vmuirQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 07 May 2024 15:17:28 +0200
Subject: [PATCH v13 10/28] drm/tests: Add HDMI TDMS character rate tests
MIME-Version: 1.0
Message-Id: <20240507-kms-hdmi-connector-state-v13-10-8fafc5efe8be@kernel.org>
References: <20240507-kms-hdmi-connector-state-v13-0-8fafc5efe8be@kernel.org>
In-Reply-To: <20240507-kms-hdmi-connector-state-v13-0-8fafc5efe8be@kernel.org>
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
 Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=11939; i=mripard@kernel.org;
 h=from:subject:message-id; bh=JRINILWiC5p90IRbD/BxY7cNI8xdzxL5sNRwNsYWVcU=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDGlWmq9luY62Hoy/dn/NdXnN+RcfvTq+r37ypMXGsrETO
 3aW7mL61jGVhUGYk0FWTJHliUzY6eXti6sc7Ff+gJnDygQyhIGLUwAmYjiBsT5zwcnZVRns6VKv
 t3nzsCw5YWWQf+7DlgpR/kfNvMEqfCXR82XtAy/p7MrZqW3XOtc2hLGhK1ZKbtFPuQlRK42eP7k
 23WLRdQ6h56Vdaw4rr9rz+QDvZhGzbwsYpz5jPxqbwLsw618cAA==
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_061814_081748_43DF4D21 
X-CRM114-Status: GOOD (  15.40  )
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

The previous patch added an helper to compute the TMDS character rate on
an HDMI connector. Let's add a few tests to make sure it works as
expected.

Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/tests/drm_connector_test.c | 296 +++++++++++++++++++++++++++++
 1 file changed, 296 insertions(+)

diff --git a/drivers/gpu/drm/tests/drm_connector_test.c b/drivers/gpu/drm/tests/drm_connector_test.c
index 72f22ec951d6..426d974d8d74 100644
--- a/drivers/gpu/drm/tests/drm_connector_test.c
+++ b/drivers/gpu/drm/tests/drm_connector_test.c
@@ -6,11 +6,15 @@
 #include <linux/i2c.h>
 
 #include <drm/drm_atomic_state_helper.h>
 #include <drm/drm_connector.h>
 #include <drm/drm_drv.h>
+#include <drm/drm_edid.h>
 #include <drm/drm_kunit_helpers.h>
+#include <drm/drm_modes.h>
+
+#include <drm/display/drm_hdmi_helper.h>
 
 #include <kunit/test.h>
 
 #include "../drm_crtc_internal.h"
 
@@ -604,14 +608,306 @@ static struct kunit_case drm_hdmi_connector_get_output_format_name_tests[] = {
 static struct kunit_suite drm_hdmi_connector_get_output_format_name_test_suite = {
 	.name = "drm_hdmi_connector_get_output_format_name",
 	.test_cases = drm_hdmi_connector_get_output_format_name_tests,
 };
 
+/*
+ * Test that for a given mode, with 8bpc and an RGB output the TMDS
+ * character rate is equal to the mode pixel clock.
+ */
+static void drm_test_drm_hdmi_compute_mode_clock_rgb(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	const struct drm_display_mode *mode;
+	unsigned long long rate;
+	struct drm_device *drm = &priv->drm;
+
+	mode = drm_display_mode_from_cea_vic(drm, 16);
+	KUNIT_ASSERT_NOT_NULL(test, mode);
+
+	KUNIT_ASSERT_FALSE(test, mode->flags & DRM_MODE_FLAG_DBLCLK);
+
+	rate = drm_hdmi_compute_mode_clock(mode, 8, HDMI_COLORSPACE_RGB);
+	KUNIT_ASSERT_GT(test, rate, 0);
+	KUNIT_EXPECT_EQ(test, mode->clock * 1000ULL, rate);
+}
+
+/*
+ * Test that for a given mode, with 10bpc and an RGB output the TMDS
+ * character rate is equal to 1.25 times the mode pixel clock.
+ */
+static void drm_test_drm_hdmi_compute_mode_clock_rgb_10bpc(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	const struct drm_display_mode *mode;
+	unsigned long long rate;
+	struct drm_device *drm = &priv->drm;
+
+	mode = drm_display_mode_from_cea_vic(drm, 16);
+	KUNIT_ASSERT_NOT_NULL(test, mode);
+
+	KUNIT_ASSERT_FALSE(test, mode->flags & DRM_MODE_FLAG_DBLCLK);
+
+	rate = drm_hdmi_compute_mode_clock(mode, 10, HDMI_COLORSPACE_RGB);
+	KUNIT_ASSERT_GT(test, rate, 0);
+	KUNIT_EXPECT_EQ(test, mode->clock * 1250, rate);
+}
+
+/*
+ * Test that for the VIC-1 mode, with 10bpc and an RGB output the TMDS
+ * character rate computation fails.
+ */
+static void drm_test_drm_hdmi_compute_mode_clock_rgb_10bpc_vic_1(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	const struct drm_display_mode *mode;
+	unsigned long long rate;
+	struct drm_device *drm = &priv->drm;
+
+	mode = drm_display_mode_from_cea_vic(drm, 1);
+	KUNIT_ASSERT_NOT_NULL(test, mode);
+
+	rate = drm_hdmi_compute_mode_clock(mode, 10, HDMI_COLORSPACE_RGB);
+	KUNIT_EXPECT_EQ(test, rate, 0);
+}
+
+/*
+ * Test that for a given mode, with 12bpc and an RGB output the TMDS
+ * character rate is equal to 1.5 times the mode pixel clock.
+ */
+static void drm_test_drm_hdmi_compute_mode_clock_rgb_12bpc(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	const struct drm_display_mode *mode;
+	unsigned long long rate;
+	struct drm_device *drm = &priv->drm;
+
+	mode = drm_display_mode_from_cea_vic(drm, 16);
+	KUNIT_ASSERT_NOT_NULL(test, mode);
+
+	KUNIT_ASSERT_FALSE(test, mode->flags & DRM_MODE_FLAG_DBLCLK);
+
+	rate = drm_hdmi_compute_mode_clock(mode, 12, HDMI_COLORSPACE_RGB);
+	KUNIT_ASSERT_GT(test, rate, 0);
+	KUNIT_EXPECT_EQ(test, mode->clock * 1500, rate);
+}
+
+/*
+ * Test that for the VIC-1 mode, with 12bpc and an RGB output the TMDS
+ * character rate computation fails.
+ */
+static void drm_test_drm_hdmi_compute_mode_clock_rgb_12bpc_vic_1(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	const struct drm_display_mode *mode;
+	unsigned long long rate;
+	struct drm_device *drm = &priv->drm;
+
+	mode = drm_display_mode_from_cea_vic(drm, 1);
+	KUNIT_ASSERT_NOT_NULL(test, mode);
+
+	rate = drm_hdmi_compute_mode_clock(mode, 12, HDMI_COLORSPACE_RGB);
+	KUNIT_EXPECT_EQ(test, rate, 0);
+}
+
+/*
+ * Test that for a mode with the pixel repetition flag, the TMDS
+ * character rate is indeed double the mode pixel clock.
+ */
+static void drm_test_drm_hdmi_compute_mode_clock_rgb_double(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	const struct drm_display_mode *mode;
+	unsigned long long rate;
+	struct drm_device *drm = &priv->drm;
+
+	mode = drm_display_mode_from_cea_vic(drm, 6);
+	KUNIT_ASSERT_NOT_NULL(test, mode);
+
+	KUNIT_ASSERT_TRUE(test, mode->flags & DRM_MODE_FLAG_DBLCLK);
+
+	rate = drm_hdmi_compute_mode_clock(mode, 8, HDMI_COLORSPACE_RGB);
+	KUNIT_ASSERT_GT(test, rate, 0);
+	KUNIT_EXPECT_EQ(test, (mode->clock * 1000ULL) * 2, rate);
+}
+
+/*
+ * Test that the TMDS character rate computation for the VIC modes
+ * explicitly listed in the spec as supporting YUV420 succeed and return
+ * half the mode pixel clock.
+ */
+static void drm_test_connector_hdmi_compute_mode_clock_yuv420_valid(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	const struct drm_display_mode *mode;
+	struct drm_device *drm = &priv->drm;
+	unsigned long long rate;
+	unsigned int vic = *(unsigned int *)test->param_value;
+
+	mode = drm_display_mode_from_cea_vic(drm, vic);
+	KUNIT_ASSERT_NOT_NULL(test, mode);
+
+	KUNIT_ASSERT_FALSE(test, mode->flags & DRM_MODE_FLAG_DBLCLK);
+
+	rate = drm_hdmi_compute_mode_clock(mode, 8, HDMI_COLORSPACE_YUV420);
+	KUNIT_ASSERT_GT(test, rate, 0);
+	KUNIT_EXPECT_EQ(test, (mode->clock * 1000ULL) / 2, rate);
+}
+
+static const unsigned int drm_hdmi_compute_mode_clock_yuv420_vic_valid_tests[] = {
+	96, 97, 101, 102, 106, 107,
+};
+
+static void drm_hdmi_compute_mode_clock_yuv420_vic_desc(const unsigned int *vic, char *desc)
+{
+	sprintf(desc, "VIC %u", *vic);
+}
+
+KUNIT_ARRAY_PARAM(drm_hdmi_compute_mode_clock_yuv420_valid,
+		  drm_hdmi_compute_mode_clock_yuv420_vic_valid_tests,
+		  drm_hdmi_compute_mode_clock_yuv420_vic_desc);
+
+/*
+ * Test that for a given mode listed supporting it and an YUV420 output
+ * with 10bpc, the TMDS character rate is equal to 0.625 times the mode
+ * pixel clock.
+ */
+static void drm_test_connector_hdmi_compute_mode_clock_yuv420_10_bpc(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	const struct drm_display_mode *mode;
+	struct drm_device *drm = &priv->drm;
+	unsigned int vic =
+		drm_hdmi_compute_mode_clock_yuv420_vic_valid_tests[0];
+	unsigned long long rate;
+
+	mode = drm_display_mode_from_cea_vic(drm, vic);
+	KUNIT_ASSERT_NOT_NULL(test, mode);
+
+	KUNIT_ASSERT_FALSE(test, mode->flags & DRM_MODE_FLAG_DBLCLK);
+
+	rate = drm_hdmi_compute_mode_clock(mode, 10, HDMI_COLORSPACE_YUV420);
+	KUNIT_ASSERT_GT(test, rate, 0);
+
+	KUNIT_EXPECT_EQ(test, mode->clock * 625, rate);
+}
+
+/*
+ * Test that for a given mode listed supporting it and an YUV420 output
+ * with 12bpc, the TMDS character rate is equal to 0.75 times the mode
+ * pixel clock.
+ */
+static void drm_test_connector_hdmi_compute_mode_clock_yuv420_12_bpc(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	const struct drm_display_mode *mode;
+	struct drm_device *drm = &priv->drm;
+	unsigned int vic =
+		drm_hdmi_compute_mode_clock_yuv420_vic_valid_tests[0];
+	unsigned long long rate;
+
+	mode = drm_display_mode_from_cea_vic(drm, vic);
+	KUNIT_ASSERT_NOT_NULL(test, mode);
+
+	KUNIT_ASSERT_FALSE(test, mode->flags & DRM_MODE_FLAG_DBLCLK);
+
+	rate = drm_hdmi_compute_mode_clock(mode, 12, HDMI_COLORSPACE_YUV420);
+	KUNIT_ASSERT_GT(test, rate, 0);
+
+	KUNIT_EXPECT_EQ(test, mode->clock * 750, rate);
+}
+
+/*
+ * Test that for a given mode, the computation of the TMDS character
+ * rate with 8bpc and a YUV422 output fails.
+ */
+static void drm_test_connector_hdmi_compute_mode_clock_yuv422_8_bpc(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	const struct drm_display_mode *mode;
+	struct drm_device *drm = &priv->drm;
+	unsigned long long rate;
+
+	mode = drm_display_mode_from_cea_vic(drm, 16);
+	KUNIT_ASSERT_NOT_NULL(test, mode);
+
+	KUNIT_ASSERT_FALSE(test, mode->flags & DRM_MODE_FLAG_DBLCLK);
+
+	rate = drm_hdmi_compute_mode_clock(mode, 8, HDMI_COLORSPACE_YUV422);
+	KUNIT_EXPECT_EQ(test, rate, 0);
+}
+
+/*
+ * Test that for a given mode, the computation of the TMDS character
+ * rate with 10bpc and a YUV422 output fails.
+ */
+static void drm_test_connector_hdmi_compute_mode_clock_yuv422_10_bpc(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	const struct drm_display_mode *mode;
+	struct drm_device *drm = &priv->drm;
+	unsigned long long rate;
+
+	mode = drm_display_mode_from_cea_vic(drm, 16);
+	KUNIT_ASSERT_NOT_NULL(test, mode);
+
+	KUNIT_ASSERT_FALSE(test, mode->flags & DRM_MODE_FLAG_DBLCLK);
+
+	rate = drm_hdmi_compute_mode_clock(mode, 10, HDMI_COLORSPACE_YUV422);
+	KUNIT_EXPECT_EQ(test, rate, 0);
+}
+
+/*
+ * Test that for a given mode, the computation of the TMDS character
+ * rate with 12bpc and a YUV422 output succeeds and returns a rate equal
+ * to the mode pixel clock.
+ */
+static void drm_test_connector_hdmi_compute_mode_clock_yuv422_12_bpc(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	const struct drm_display_mode *mode;
+	struct drm_device *drm = &priv->drm;
+	unsigned long long rate;
+
+	mode = drm_display_mode_from_cea_vic(drm, 16);
+	KUNIT_ASSERT_NOT_NULL(test, mode);
+
+	KUNIT_ASSERT_FALSE(test, mode->flags & DRM_MODE_FLAG_DBLCLK);
+
+	rate = drm_hdmi_compute_mode_clock(mode, 12, HDMI_COLORSPACE_YUV422);
+	KUNIT_ASSERT_GT(test, rate, 0);
+	KUNIT_EXPECT_EQ(test, mode->clock * 1000, rate);
+}
+
+static struct kunit_case drm_hdmi_compute_mode_clock_tests[] = {
+	KUNIT_CASE(drm_test_drm_hdmi_compute_mode_clock_rgb),
+	KUNIT_CASE(drm_test_drm_hdmi_compute_mode_clock_rgb_10bpc),
+	KUNIT_CASE(drm_test_drm_hdmi_compute_mode_clock_rgb_10bpc_vic_1),
+	KUNIT_CASE(drm_test_drm_hdmi_compute_mode_clock_rgb_12bpc),
+	KUNIT_CASE(drm_test_drm_hdmi_compute_mode_clock_rgb_12bpc_vic_1),
+	KUNIT_CASE(drm_test_drm_hdmi_compute_mode_clock_rgb_double),
+	KUNIT_CASE_PARAM(drm_test_connector_hdmi_compute_mode_clock_yuv420_valid,
+			 drm_hdmi_compute_mode_clock_yuv420_valid_gen_params),
+	KUNIT_CASE(drm_test_connector_hdmi_compute_mode_clock_yuv420_10_bpc),
+	KUNIT_CASE(drm_test_connector_hdmi_compute_mode_clock_yuv420_12_bpc),
+	KUNIT_CASE(drm_test_connector_hdmi_compute_mode_clock_yuv422_8_bpc),
+	KUNIT_CASE(drm_test_connector_hdmi_compute_mode_clock_yuv422_10_bpc),
+	KUNIT_CASE(drm_test_connector_hdmi_compute_mode_clock_yuv422_12_bpc),
+	{ }
+};
+
+static struct kunit_suite drm_hdmi_compute_mode_clock_test_suite = {
+	.name = "drm_test_connector_hdmi_compute_mode_clock",
+	.init = drm_test_connector_init,
+	.test_cases = drm_hdmi_compute_mode_clock_tests,
+};
+
 kunit_test_suites(
 	&drmm_connector_hdmi_init_test_suite,
 	&drmm_connector_init_test_suite,
 	&drm_get_tv_mode_from_name_test_suite,
+	&drm_hdmi_compute_mode_clock_test_suite,
 	&drm_hdmi_connector_get_output_format_name_test_suite
 );
 
 MODULE_AUTHOR("Maxime Ripard <maxime@cerno.tech>");
 MODULE_LICENSE("GPL");

-- 
2.45.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
