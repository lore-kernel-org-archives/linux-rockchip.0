Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B90F1C4829D
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Feb 2024 13:16:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4XWEhmWeVe2Yc72G1Ld6+35rPiAsC8xMhB+B5r1mF8k=; b=eAGH+Z/bK+ZOun
	x7Jt2Jk6ifuEH7BOaWCnNMD3I51jKvysCf5ILNO5hmAJNHadyeh/WY5/JeS3eZ3SaZXjXH7FpuP9w
	s1pS+3A0+Vc9oWbABRuML90TMY1go1KXI2CFEmqSGM84eL1vgO7lWPtgaJcAzRFEqbIi0Eo4lWb9L
	4oeagc5pv/WiYB7wi4CW/XQCnS6Hh8aos43tLov3J+O8ZbHbGd4WhKEE7I/NNknZtMBSwLluZGJ1v
	gw6Wg1TosAnKwJhH7QyEUZMRXTC7y8grNBebndUEjTHBA5kXHUC/oRawSAA2QO1KnF7MbYFNmqDoS
	+apspNnWv/+BR05RewZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZWAS-00000005QiN-3lHt;
	Mon, 12 Feb 2024 13:16:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZW8u-00000005PO7-00H7;
	Mon, 12 Feb 2024 13:14:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=9v4Ts6NdSbTCWSlTuguSaZ9/dF98VqvHfymIrNsXEOo=; b=Qo3NBYPD8VH0CiPSi2o+3gMu7X
	B3TC7TQ93b6dOi3lmSGemvZ+ia/j8ofRv/No6MQFFJD4OgLK6m7wV9vb/WDNzUO4e4OgHR7E2TKLl
	LJVRosr+Tsu3cqFU3Bkc+iAasfeizeCYeldGKlBdfZ297jg1AMBPAD50XzjqaxRd+Mf0tX6M8WJVC
	J3jBO7w+OnJLgBlqF5QJywqtk3wvBGDg926ZP3zp1PI3hd1Y0ENGnvVdc7/JLShb7I6uWOOcfBCW3
	fsUSXAv2RTj4YcS9RpjU4OimfuHJmP5FDKR7XIhbDiAVOrNjTp/13NWj83hN2P2IIvcE4l1tREmrp
	kep4fCxw==;
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZW8n-0000000FIWz-3TBU;
	Mon, 12 Feb 2024 13:14:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 5F332CE10CC;
	Mon, 12 Feb 2024 13:14:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4ADDBC3277A;
	Mon, 12 Feb 2024 13:14:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707743670;
	bh=qjCUh+MOUGaoHfnBp8m5jk+g0FV9Vj8vmvysXWvLAuQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=rt0dQRF3MEGHjZ6GyqelsvJ6Lplv8YjXD+dViULXEzR9MA6D/cKMBfcPZjOoo5p4g
	 E0lf2h0N1h4RlX5oHsaS0KAGUX4JURpHn7Ha7C/e9TVf8dYAXqspm+vBPX4SG1wvqj
	 nF30sMDzUwDo4TS1gcS2zbPYLck+4n0fIkXCsJp+34NGWCYD0OHFm/E0gDgoklJnHS
	 iKR7LHWPHkEh9eUBkzNZrpM2bqX2mu3eAjkFF3GZERuM0VQNY/T5C8HxNDUS8jS6zu
	 hE00WupkFsbyfMuozkH05W05iUaGLM2vhrUvPyWcJXJnt0DLg2SMhSK8dYoY6sNbIn
	 vtshyAadq8L8A==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 12 Feb 2024 14:13:05 +0100
Subject: [PATCH v6 22/36] drm/tests: Add HDMI connector rate filter hook
 tests
MIME-Version: 1.0
Message-Id: <20240212-kms-hdmi-connector-state-v6-22-f4bcdc979e6f@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4001; i=mripard@kernel.org;
 h=from:subject:message-id; bh=qjCUh+MOUGaoHfnBp8m5jk+g0FV9Vj8vmvysXWvLAuQ=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmnJHOWBSdMXbnm0bKYlNPiuhcX+m6NSs791tnvxnXVJ
 ufAizKHjlIWBjEuBlkxRZYYYfMlcadmve5k45sHM4eVCWQIAxenAEzkeRgjQzuLXoiGJtPzI9Ff
 Q0O/G/i2htw9tm+q1+E/h4+cT3RxdWT47zTl2qe27yvF2U1evDxrcvpWxnnt91lvdNaLx21Z7cl
 /lhMA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240212_131435_927756_9BD1F41C 
X-CRM114-Status: GOOD (  15.69  )
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
index a43bbfc2c2d0..e7dbdd4a4e7f 100644
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
@@ -960,6 +972,58 @@ static void drm_test_check_tmds_char_rate_rgb_12bpc(struct kunit *test)
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
 	KUNIT_CASE(drm_test_check_broadcast_rgb_auto_cea_mode),
 	KUNIT_CASE(drm_test_check_broadcast_rgb_auto_cea_mode_vic_1),
@@ -969,6 +1033,7 @@ static struct kunit_case drm_atomic_helper_connector_hdmi_check_tests[] = {
 	KUNIT_CASE(drm_test_check_broadcast_rgb_limited_cea_mode_vic_1),
 	KUNIT_CASE(drm_test_check_broadcast_rgb_crtc_mode_changed),
 	KUNIT_CASE(drm_test_check_broadcast_rgb_crtc_mode_not_changed),
+	KUNIT_CASE(drm_test_check_hdmi_funcs_reject_rate),
 	KUNIT_CASE(drm_test_check_output_bpc_crtc_mode_changed),
 	KUNIT_CASE(drm_test_check_output_bpc_crtc_mode_not_changed),
 	KUNIT_CASE(drm_test_check_tmds_char_rate_rgb_8bpc),

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
