Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 187E3C48BF6
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Mar 2024 13:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=26jogUq8sykkSb4PqYRObzpRgLEUztr5s0g5h7TsMtY=; b=T34swSqhCCVXCe
	TwX0yNZzlCosrBc5E5NpgLs/NBCMEwp+xTjsgruVyqjNHD5DDMoKd7McaYr4Wmz7/Q3xDpMetxgIZ
	LEPFuhaZWnSTXiR6xlKgA65r8EfpSyBU2+/jIcDAQxaiGqsx+IyKZ9ROpXXvbeO9SFc2ME2eg6gCd
	FM7f+hfD4RO/pl7/up+lDEHR3SJro+3j1HUAZuiBfhao/xyzOvnLe7EOA5CJ7WyMSpXmLObNMReA1
	/YqXeA9sYBFHgIJUvGbVoIFlO7Ofsd0HCLa9xZ2HxzcXUhq4l+Tw3PT07NoX34RF/KTSSG3fVq8ZN
	VHlnINGJnmNzh5pPLwaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riDyY-00000004nDD-0HLL;
	Thu, 07 Mar 2024 13:39:58 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riDy7-00000004mqm-2zHN;
	Thu, 07 Mar 2024 13:39:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=SGHXY+F8wJAViFUgRAz20E/WHwkPZP2R8lJxPSl7fsQ=; b=lm8P59Hk+yDi7IWz5UzLGNPVPd
	aYbAWWZH/yFQLX/x/pGXjcW1KTPbACpdgPTQEB7C3K5KVoiu0fJ8zd9NgLjmchBbfWwfgoLmCWPu/
	0F68Q3GPRrAaXv6a2r49SCdsocdzgNPY9ZbpjciZwb3WMD2WzcX2wnBOmDwm3ApOwL7VfLEeIqHko
	9wf6y1TPMRNhbuj9aFOu7JO8E7Snmi+80dVjpawrurHUKLM3FIdG+mBmJhbeKWchRSIYdrwIhZVa0
	7JyjnpVuhkjvVAUhX5H3uqE7OMkCzDSn0/VQSXdKk6tj7ldIjaUU2qTWkW4Y+xTak/bEHokpnLWcE
	CjoA0kbQ==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riDy2-00000009EuD-3xCq;
	Thu, 07 Mar 2024 13:39:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1B127617F5;
	Thu,  7 Mar 2024 13:39:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C45FC43390;
	Thu,  7 Mar 2024 13:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709818761;
	bh=mDmu05P60hTHdrx0GPadTWyad21c+S0aaMLwlQPO8EU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=QXuQ8YmfGcyynf4nIAjUX1mgTsv/QBvh3wnzADMgIdREIMMGmzAWfgC/7BlVBg6EK
	 VEJZ2m/dWC/CQ/AIlka7Fvzu68zoW2OZHLUmnySH334RE6DCK5JVhPwJ547xiDk1O+
	 eyR150ehAhsJmaOCbpkIhQ8DMuIx8bdhY0DKVvrTahn6mkeauV+KM6n6rcfFTOicRu
	 lvOKuz9PrEpYYjPRpHUEh7oCqnONVa2eXTX4SriPEDa4uxD0/iVt8PyIieBcu7M0v3
	 kPf3dNDOEy25MV+3wJi9z9z8Az2BGMwH0biR+B99EssX30XAoqyjycGX37e+ipRbAQ
	 ATjdYeoY4Z5gQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Thu, 07 Mar 2024 14:38:36 +0100
Subject: [PATCH v8 09/27] drm/tests: Add HDMI TDMS character rate tests
MIME-Version: 1.0
Message-Id: <20240307-kms-hdmi-connector-state-v8-9-ef6a6f31964b@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=13448; i=mripard@kernel.org;
 h=from:subject:message-id; bh=mDmu05P60hTHdrx0GPadTWyad21c+S0aaMLwlQPO8EU=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKkvDyfkb5t76OqeZTdVDBqvG/IKrw19EmrV08bYp7V9e
 UVbQHhZRykLgxgXg6yYIkuMsPmSuFOzXney8c2DmcPKBDKEgYtTACaiksvwm2V5Is8RU9mzrkUn
 mBfXs7+ob3uzbPu3daI5eZeDF/EJNDD8s1srWl29Yub9W5u/+tvfErjwvlc8fs3vEzLhHzzfpPz
 XZQAA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240307_133927_241860_B7B0F97C 
X-CRM114-Status: GOOD (  17.02  )
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
 drivers/gpu/drm/tests/drm_connector_test.c | 323 +++++++++++++++++++++++++++++
 1 file changed, 323 insertions(+)

diff --git a/drivers/gpu/drm/tests/drm_connector_test.c b/drivers/gpu/drm/tests/drm_connector_test.c
index 72f22ec951d6..4d1ac744a844 100644
--- a/drivers/gpu/drm/tests/drm_connector_test.c
+++ b/drivers/gpu/drm/tests/drm_connector_test.c
@@ -6,11 +6,13 @@
 #include <linux/i2c.h>
 
 #include <drm/drm_atomic_state_helper.h>
 #include <drm/drm_connector.h>
 #include <drm/drm_drv.h>
+#include <drm/drm_edid.h>
 #include <drm/drm_kunit_helpers.h>
+#include <drm/drm_modes.h>
 
 #include <kunit/test.h>
 
 #include "../drm_crtc_internal.h"
 
@@ -604,13 +606,334 @@ static struct kunit_case drm_hdmi_connector_get_output_format_name_tests[] = {
 static struct kunit_suite drm_hdmi_connector_get_output_format_name_test_suite = {
 	.name = "drm_hdmi_connector_get_output_format_name",
 	.test_cases = drm_hdmi_connector_get_output_format_name_tests,
 };
 
+/*
+ * Test that for a given mode, with 8bpc and an RGB output the TMDS
+ * character rate is equal to the mode pixel clock.
+ */
+static void drm_test_drm_connector_hdmi_compute_mode_clock_rgb(struct kunit *test)
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
+	rate = drm_connector_hdmi_compute_mode_clock(mode, 8, HDMI_COLORSPACE_RGB);
+	KUNIT_ASSERT_GT(test, rate, 0);
+	KUNIT_EXPECT_EQ(test, mode->clock * 1000ULL, rate);
+}
+
+/*
+ * Test that for a given mode, with 10bpc and an RGB output the TMDS
+ * character rate is equal to 1.25 times the mode pixel clock.
+ */
+static void drm_test_drm_connector_hdmi_compute_mode_clock_rgb_10bpc(struct kunit *test)
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
+	rate = drm_connector_hdmi_compute_mode_clock(mode, 10, HDMI_COLORSPACE_RGB);
+	KUNIT_ASSERT_GT(test, rate, 0);
+	KUNIT_EXPECT_EQ(test, mode->clock * 1250, rate);
+}
+
+/*
+ * Test that for the VIC-1 mode, with 10bpc and an RGB output the TMDS
+ * character rate computation fails.
+ */
+static void drm_test_drm_connector_hdmi_compute_mode_clock_rgb_10bpc_vic_1(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	const struct drm_display_mode *mode;
+	unsigned long long rate;
+	struct drm_device *drm = &priv->drm;
+
+	mode = drm_display_mode_from_cea_vic(drm, 1);
+	KUNIT_ASSERT_NOT_NULL(test, mode);
+
+	rate = drm_connector_hdmi_compute_mode_clock(mode, 10, HDMI_COLORSPACE_RGB);
+	KUNIT_EXPECT_EQ(test, rate, 0);
+}
+
+/*
+ * Test that for a given mode, with 12bpc and an RGB output the TMDS
+ * character rate is equal to 1.5 times the mode pixel clock.
+ */
+static void drm_test_drm_connector_hdmi_compute_mode_clock_rgb_12bpc(struct kunit *test)
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
+	rate = drm_connector_hdmi_compute_mode_clock(mode, 12, HDMI_COLORSPACE_RGB);
+	KUNIT_ASSERT_GT(test, rate, 0);
+	KUNIT_EXPECT_EQ(test, mode->clock * 1500, rate);
+}
+
+/*
+ * Test that for the VIC-1 mode, with 12bpc and an RGB output the TMDS
+ * character rate computation fails.
+ */
+static void drm_test_drm_connector_hdmi_compute_mode_clock_rgb_12bpc_vic_1(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	const struct drm_display_mode *mode;
+	unsigned long long rate;
+	struct drm_device *drm = &priv->drm;
+
+	mode = drm_display_mode_from_cea_vic(drm, 1);
+	KUNIT_ASSERT_NOT_NULL(test, mode);
+
+	rate = drm_connector_hdmi_compute_mode_clock(mode, 12, HDMI_COLORSPACE_RGB);
+	KUNIT_EXPECT_EQ(test, rate, 0);
+}
+
+/*
+ * Test that for a mode with the pixel repetition flag, the TMDS
+ * character rate is indeed double the mode pixel clock.
+ */
+static void drm_test_drm_connector_hdmi_compute_mode_clock_rgb_double(struct kunit *test)
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
+	rate = drm_connector_hdmi_compute_mode_clock(mode, 8, HDMI_COLORSPACE_RGB);
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
+	rate = drm_connector_hdmi_compute_mode_clock(mode, 8, HDMI_COLORSPACE_YUV420);
+	KUNIT_ASSERT_GT(test, rate, 0);
+	KUNIT_EXPECT_EQ(test, (mode->clock * 1000ULL) / 2, rate);
+}
+
+static const unsigned int drm_connector_hdmi_compute_mode_clock_yuv420_vic_valid_tests[] = {
+	96, 97, 101, 102, 106, 107,
+};
+
+static void drm_connector_hdmi_compute_mode_clock_yuv420_vic_desc(const unsigned int *vic, char *desc)
+{
+	sprintf(desc, "VIC %u", *vic);
+}
+
+KUNIT_ARRAY_PARAM(drm_connector_hdmi_compute_mode_clock_yuv420_valid,
+		  drm_connector_hdmi_compute_mode_clock_yuv420_vic_valid_tests,
+		  drm_connector_hdmi_compute_mode_clock_yuv420_vic_desc);
+
+/*
+ * Test that trying to compute the TMDS char rate with the YUV420 format
+ * for a mode that doesn't support the YUV420 encoding returns an error.
+ *
+ * TODO: We should probably test this with all the VIC but the
+ * explicitly supported ones. Since the list of VIC is quite long and
+ * not linear, the best way to support it at the moment would be to
+ * create a custom gen_params function that would only return valid
+ * VICs. At the moment, that function expects to get a pointer back
+ * however, and compilers don't really like casting between integer and
+ * pointers.
+ */
+static void drm_test_connector_hdmi_compute_mode_clock_yuv420_invalid(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	const struct drm_display_mode *mode;
+	struct drm_device *drm = &priv->drm;
+	unsigned long long rate;
+
+	mode = drm_display_mode_from_cea_vic(drm, 42);
+	KUNIT_ASSERT_NOT_NULL(test, mode);
+
+	KUNIT_ASSERT_FALSE(test, mode->flags & DRM_MODE_FLAG_DBLCLK);
+
+	rate = drm_connector_hdmi_compute_mode_clock(mode, 8, HDMI_COLORSPACE_YUV420);
+	KUNIT_EXPECT_EQ(test, rate, 0);
+}
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
+		drm_connector_hdmi_compute_mode_clock_yuv420_vic_valid_tests[0];
+	unsigned long long rate;
+
+	mode = drm_display_mode_from_cea_vic(drm, vic);
+	KUNIT_ASSERT_NOT_NULL(test, mode);
+
+	KUNIT_ASSERT_FALSE(test, mode->flags & DRM_MODE_FLAG_DBLCLK);
+
+	rate = drm_connector_hdmi_compute_mode_clock(mode, 10, HDMI_COLORSPACE_YUV420);
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
+		drm_connector_hdmi_compute_mode_clock_yuv420_vic_valid_tests[0];
+	unsigned long long rate;
+
+	mode = drm_display_mode_from_cea_vic(drm, vic);
+	KUNIT_ASSERT_NOT_NULL(test, mode);
+
+	KUNIT_ASSERT_FALSE(test, mode->flags & DRM_MODE_FLAG_DBLCLK);
+
+	rate = drm_connector_hdmi_compute_mode_clock(mode, 12, HDMI_COLORSPACE_YUV420);
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
+	rate = drm_connector_hdmi_compute_mode_clock(mode, 8, HDMI_COLORSPACE_YUV422);
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
+	rate = drm_connector_hdmi_compute_mode_clock(mode, 10, HDMI_COLORSPACE_YUV422);
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
+	rate = drm_connector_hdmi_compute_mode_clock(mode, 12, HDMI_COLORSPACE_YUV422);
+	KUNIT_ASSERT_GT(test, rate, 0);
+	KUNIT_EXPECT_EQ(test, mode->clock * 1000, rate);
+}
+
+static struct kunit_case drm_connector_hdmi_compute_mode_clock_tests[] = {
+	KUNIT_CASE(drm_test_drm_connector_hdmi_compute_mode_clock_rgb),
+	KUNIT_CASE(drm_test_drm_connector_hdmi_compute_mode_clock_rgb_10bpc),
+	KUNIT_CASE(drm_test_drm_connector_hdmi_compute_mode_clock_rgb_10bpc_vic_1),
+	KUNIT_CASE(drm_test_drm_connector_hdmi_compute_mode_clock_rgb_12bpc),
+	KUNIT_CASE(drm_test_drm_connector_hdmi_compute_mode_clock_rgb_12bpc_vic_1),
+	KUNIT_CASE(drm_test_drm_connector_hdmi_compute_mode_clock_rgb_double),
+	KUNIT_CASE_PARAM(drm_test_connector_hdmi_compute_mode_clock_yuv420_valid,
+			 drm_connector_hdmi_compute_mode_clock_yuv420_valid_gen_params),
+	KUNIT_CASE(drm_test_connector_hdmi_compute_mode_clock_yuv420_invalid),
+	KUNIT_CASE(drm_test_connector_hdmi_compute_mode_clock_yuv420_10_bpc),
+	KUNIT_CASE(drm_test_connector_hdmi_compute_mode_clock_yuv420_12_bpc),
+	KUNIT_CASE(drm_test_connector_hdmi_compute_mode_clock_yuv422_8_bpc),
+	KUNIT_CASE(drm_test_connector_hdmi_compute_mode_clock_yuv422_10_bpc),
+	KUNIT_CASE(drm_test_connector_hdmi_compute_mode_clock_yuv422_12_bpc),
+	{ }
+};
+
+static struct kunit_suite drm_connector_hdmi_compute_mode_clock_test_suite = {
+	.name = "drm_test_connector_hdmi_compute_mode_clock",
+	.init = drm_test_connector_init,
+	.test_cases = drm_connector_hdmi_compute_mode_clock_tests,
+};
+
 kunit_test_suites(
 	&drmm_connector_hdmi_init_test_suite,
 	&drmm_connector_init_test_suite,
+	&drm_connector_hdmi_compute_mode_clock_test_suite,
 	&drm_get_tv_mode_from_name_test_suite,
 	&drm_hdmi_connector_get_output_format_name_test_suite
 );
 
 MODULE_AUTHOR("Maxime Ripard <maxime@cerno.tech>");

-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
