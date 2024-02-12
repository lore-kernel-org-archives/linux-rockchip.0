Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BCECC4829B
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Feb 2024 13:15:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ARr7JCuy5yEJKx0W/N7GUnZvQ0u5wunR80yOV9ysjkI=; b=ii7CMVjq8+PJQE
	z9HSN0uq7iSLGk6rg4E1iay0JET4Q2aDZ7mi5aMfbQxSRoFmoQxDqsuKMIfgGyIB8duRsfFyz3/ge
	uF+MgLwpP5uWNgI7m1d1Kh+U8XK8AURfmIpiLkBP5/sUhGW/GPnXB4/NTFXw2kj60+HfygTdlGxIG
	11dPTEkX66Q7MaA3rBLSPQGwQWkPn+KbZAnT1jJCkfN6n94BtYqzFjXqD91nCjIjriSH5KmKjUx1m
	cYoAGoq2McMyl2ljY5OyqtpTxAkqIVFfGPzIBVnBj1D4ECQyUYpR18xsQpHfX6LPhSWA2HNuGERzB
	q5U30n5sS1jKxtqrP0aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZW9h-00000005Q6Y-1U29;
	Mon, 12 Feb 2024 13:15:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZW8Y-00000005P2z-1uwP;
	Mon, 12 Feb 2024 13:14:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=29OHmR7rJlcZ6xJfRikNnYFtl8Oa6/u/uDVm2p6QEe4=; b=DuqoFazmtSt6PCplQpWUSK8uQh
	1CMjnq5inqeWQGDAW3dmmCuV/iUY9HjIne8nsgyL3ZmDfEXgzkR03atnBDKv1/k5aUZC9RAnkuNIW
	VRc1wREW/A0aUPfPSy0BDVE5acOt6DwvCdh8zu/5L+X6Uf0pZKxK9jVLmNSUPfS0JXI/ezIiSH1kx
	C/CJw1IBZ0UBd6WaG2pO/QQOi+29pbEWCy1x0KNtWk2VyQY7+fD2CUjFyZ7dKJyfRhJWIPhbCBt1F
	9MkW269Pup0zeJqLczRVTfHPw8bcBYLYFUPn/7Z+vi/blgrVUa6zV4OIIqZ5hEl1BaLVRuCJxfQIT
	c1qtfD6A==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZW8V-0000000FIRW-0uEq;
	Mon, 12 Feb 2024 13:14:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D2FBF60FA2;
	Mon, 12 Feb 2024 13:14:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 511F0C433B1;
	Mon, 12 Feb 2024 13:14:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707743653;
	bh=hVvd4FnVrnc0ueFHR5k8VbMr8WUIf39Lt6E/xNOlkQA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=nnYMWO6uMryz6GAC5/40GnLMZ6rY49rA8EJBub3YBhEt40DtA6HD6cofH4S9bXciq
	 DjsDi//2V/UDwFvGYklqLJIYCRW3Jljr3mouNccB56EGamos5Dbzqc+pGi/gIxUcx/
	 jGGXQyvdTqAJMkTbhepo1FDE5U6FPzY7FZUKifJUn5La+NDHPdMsLbZAyudgmmglNZ
	 gCe9QiSqmPCaoxkTbNeZAQBpeClQr0TyW6IV2jR7HtjpiHWL80S/HsczOGP+QJ+wiX
	 5YrTUYMlOHaPTZSAoYosui6nY3M5dzirCsBY0PeOhhuZvDRDtWRtsaaUcZgs/8+b83
	 OQ1TL6/uQyEww==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 12 Feb 2024 14:12:59 +0100
Subject: [PATCH v6 16/36] drm/tests: Add output formats tests
MIME-Version: 1.0
Message-Id: <20240212-kms-hdmi-connector-state-v6-16-f4bcdc979e6f@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=7427; i=mripard@kernel.org;
 h=from:subject:message-id; bh=hVvd4FnVrnc0ueFHR5k8VbMr8WUIf39Lt6E/xNOlkQA=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmnJDNC2fp7UnK4ui+c1DrWdjlZgCU8wH1uBPPvXqYnk
 cs5LJ93lLAwiHExyIopssQImy+JOzXrdScb3zyYOaxMIEMYuDgFYCIRuxh+3OKQVOhfcFc7oVGz
 p70iS9JeZeeq18LvD1/VfqTpNH8WI8ND3w6/YO4Sucfyy3VXOLa2anR4373YIH3w+8aO4osvmbk A
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240212_131415_633620_D9CF4313 
X-CRM114-Status: GOOD (  16.93  )
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

Now that we track the HDMI output format as part of the connector state,
let's add a few tests to make sure it works as expected.

Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 .../gpu/drm/tests/drm_atomic_state_helper_test.c   | 32 +++++++
 drivers/gpu/drm/tests/drm_connector_test.c         | 99 +++++++++++++++++++++-
 2 files changed, 130 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/tests/drm_atomic_state_helper_test.c b/drivers/gpu/drm/tests/drm_atomic_state_helper_test.c
index a5cba3e63f99..4e2ec436987b 100644
--- a/drivers/gpu/drm/tests/drm_atomic_state_helper_test.c
+++ b/drivers/gpu/drm/tests/drm_atomic_state_helper_test.c
@@ -824,6 +824,15 @@ static struct kunit_case drm_atomic_helper_connector_hdmi_check_tests[] = {
 	KUNIT_CASE(drm_test_check_broadcast_rgb_crtc_mode_not_changed),
 	KUNIT_CASE(drm_test_check_output_bpc_crtc_mode_changed),
 	KUNIT_CASE(drm_test_check_output_bpc_crtc_mode_not_changed),
+	/*
+	 * TODO: We should have tests to check that a change in the
+	 * format triggers a CRTC mode change just like we do for the
+	 * RGB Quantization and BPC.
+	 *
+	 * However, we don't have any way to control which format gets
+	 * picked up aside from changing the BPC or mode which would
+	 * already trigger a mode change.
+	 */
 	{ }
 };
 
@@ -924,11 +933,34 @@ static void drm_test_check_bpc_12_value(struct kunit *test)
 	KUNIT_EXPECT_EQ(test, conn_state->hdmi.output_bpc, 0);
 }
 
+/*
+ * Test that the value of the output format property out of reset is set
+ * to RGB, even if the driver supports more than that.
+ */
+static void drm_test_check_format_value(struct kunit *test)
+{
+	struct drm_atomic_helper_connector_hdmi_priv *priv;
+	struct drm_connector_state *conn_state;
+	struct drm_connector *conn;
+
+	priv = drm_atomic_helper_connector_hdmi_init(test,
+						     BIT(HDMI_COLORSPACE_RGB) |
+						     BIT(HDMI_COLORSPACE_YUV422) |
+						     BIT(HDMI_COLORSPACE_YUV444),
+						     8);
+	KUNIT_ASSERT_NOT_NULL(test, priv);
+
+	conn = &priv->connector;
+	conn_state = conn->state;
+	KUNIT_EXPECT_EQ(test, conn_state->hdmi.output_format, HDMI_COLORSPACE_RGB);
+}
+
 static struct kunit_case drm_atomic_helper_connector_hdmi_reset_tests[] = {
 	KUNIT_CASE(drm_test_check_broadcast_rgb_value),
 	KUNIT_CASE(drm_test_check_bpc_8_value),
 	KUNIT_CASE(drm_test_check_bpc_10_value),
 	KUNIT_CASE(drm_test_check_bpc_12_value),
+	KUNIT_CASE(drm_test_check_format_value),
 	{ }
 };
 
diff --git a/drivers/gpu/drm/tests/drm_connector_test.c b/drivers/gpu/drm/tests/drm_connector_test.c
index 9c5ce7e81d01..fa6fe8084107 100644
--- a/drivers/gpu/drm/tests/drm_connector_test.c
+++ b/drivers/gpu/drm/tests/drm_connector_test.c
@@ -348,6 +348,42 @@ static void drm_test_connector_hdmi_init_bpc_12(struct kunit *test)
 	KUNIT_EXPECT_NOT_NULL(test, drm_mode_obj_find_prop_id(&connector->base, prop->base.id));
 }
 
+/*
+ * Test that the registration of an HDMI connector with no supported
+ * format fails.
+ */
+static void drm_test_connector_hdmi_init_formats_empty(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	int ret;
+
+	ret = drmm_connector_hdmi_init(&priv->drm, &priv->connector,
+				       &dummy_funcs,
+				       DRM_MODE_CONNECTOR_HDMIA,
+				       &priv->ddc,
+				       0,
+				       8);
+	KUNIT_EXPECT_LT(test, ret, 0);
+}
+
+/*
+ * Test that the registration of an HDMI connector not listing RGB as a
+ * supported format fails.
+ */
+static void drm_test_connector_hdmi_init_formats_no_rgb(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	int ret;
+
+	ret = drmm_connector_hdmi_init(&priv->drm, &priv->connector,
+				       &dummy_funcs,
+				       DRM_MODE_CONNECTOR_HDMIA,
+				       &priv->ddc,
+				       BIT(HDMI_COLORSPACE_YUV422),
+				       8);
+	KUNIT_EXPECT_LT(test, ret, 0);
+}
+
 /*
  * Test that the registration of an HDMI connector with an HDMI
  * connector type succeeds.
@@ -433,6 +469,8 @@ static struct kunit_case drmm_connector_hdmi_init_tests[] = {
 	KUNIT_CASE(drm_test_connector_hdmi_init_bpc_12),
 	KUNIT_CASE(drm_test_connector_hdmi_init_bpc_invalid),
 	KUNIT_CASE(drm_test_connector_hdmi_init_bpc_null),
+	KUNIT_CASE(drm_test_connector_hdmi_init_formats_empty),
+	KUNIT_CASE(drm_test_connector_hdmi_init_formats_no_rgb),
 	KUNIT_CASE(drm_test_connector_hdmi_init_null_ddc),
 	KUNIT_CASE_PARAM(drm_test_connector_hdmi_init_type_valid,
 			 drm_connector_hdmi_init_type_valid_gen_params),
@@ -567,6 +605,64 @@ static struct kunit_suite drm_hdmi_connector_get_broadcast_rgb_name_test_suite =
 	.test_cases = drm_hdmi_connector_get_broadcast_rgb_name_tests,
 };
 
+struct drm_hdmi_connector_get_output_format_name_test {
+	unsigned int kind;
+	const char *expected_name;
+};
+
+#define OUTPUT_FORMAT_TEST(_kind, _name)	\
+	{					\
+		.kind = _kind,			\
+		.expected_name = _name,		\
+	}
+
+static void drm_test_drm_hdmi_connector_get_output_format_name(struct kunit *test)
+{
+	const struct drm_hdmi_connector_get_output_format_name_test *params =
+		test->param_value;
+
+	KUNIT_EXPECT_STREQ(test,
+			   drm_hdmi_connector_get_output_format_name(params->kind),
+			   params->expected_name);
+}
+
+static const
+struct drm_hdmi_connector_get_output_format_name_test
+drm_hdmi_connector_get_output_format_name_valid_tests[] = {
+	OUTPUT_FORMAT_TEST(HDMI_COLORSPACE_RGB, "RGB"),
+	OUTPUT_FORMAT_TEST(HDMI_COLORSPACE_YUV420, "YUV 4:2:0"),
+	OUTPUT_FORMAT_TEST(HDMI_COLORSPACE_YUV422, "YUV 4:2:2"),
+	OUTPUT_FORMAT_TEST(HDMI_COLORSPACE_YUV444, "YUV 4:4:4"),
+};
+
+static void
+drm_hdmi_connector_get_output_format_name_valid_desc(const struct drm_hdmi_connector_get_output_format_name_test *t,
+						     char *desc)
+{
+	sprintf(desc, "%s", t->expected_name);
+}
+
+KUNIT_ARRAY_PARAM(drm_hdmi_connector_get_output_format_name_valid,
+		  drm_hdmi_connector_get_output_format_name_valid_tests,
+		  drm_hdmi_connector_get_output_format_name_valid_desc);
+
+static void drm_test_drm_hdmi_connector_get_output_format_name_invalid(struct kunit *test)
+{
+	KUNIT_EXPECT_NULL(test, drm_hdmi_connector_get_output_format_name(4));
+};
+
+static struct kunit_case drm_hdmi_connector_get_output_format_name_tests[] = {
+	KUNIT_CASE_PARAM(drm_test_drm_hdmi_connector_get_output_format_name,
+			 drm_hdmi_connector_get_output_format_name_valid_gen_params),
+	KUNIT_CASE(drm_test_drm_hdmi_connector_get_output_format_name_invalid),
+	{ }
+};
+
+static struct kunit_suite drm_hdmi_connector_get_output_format_name_test_suite = {
+	.name = "drm_hdmi_connector_get_output_format_name",
+	.test_cases = drm_hdmi_connector_get_output_format_name_tests,
+};
+
 static void drm_test_drm_connector_attach_broadcast_rgb_property(struct kunit *test)
 {
 	struct drm_connector_init_priv *priv = test->priv;
@@ -628,7 +724,8 @@ kunit_test_suites(
 	&drmm_connector_init_test_suite,
 	&drm_connector_attach_broadcast_rgb_property_test_suite,
 	&drm_get_tv_mode_from_name_test_suite,
-	&drm_hdmi_connector_get_broadcast_rgb_name_test_suite
+	&drm_hdmi_connector_get_broadcast_rgb_name_test_suite,
+	&drm_hdmi_connector_get_output_format_name_test_suite
 );
 
 MODULE_AUTHOR("Maxime Ripard <maxime@cerno.tech>");

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
