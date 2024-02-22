Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45D67C5478C
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Feb 2024 18:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XQuKe1Qnb23Z+kTSUnfe+JsQrnjQKCqPTNmG6kwqsg4=; b=RZbv9oGGEprO7R
	KBOoR9K9wTmUitoPHE1rpre+yX/mUUVYXUAQhppd+8ZEBazWmdW5+IreD10ui8m5jGgTyCt3tKJsa
	28bQL8YvhoCVgmxAhuL4U/gjwH9HU1o+cguKbaLkgQQvQMMMGHGDJrxipQQKvT77xsymlg/LZn3DI
	w7b6+aqDueKhEbS07hrMG0w7sxiZv5XwRIwvLyFjHkgu6863qCpPEVX8/CQ5NCHGOKv89j90kyEW2
	SZNlj+fSnwcIOWvnyzN7Jy0NZyC1qYZjKPpDU4a0tiA+xRfHWVGiBL/VzgDeCIv2FJg62KPNeV9iS
	9IkSNUoecni4TdjGzz/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdDes-00000005ytL-48eN;
	Thu, 22 Feb 2024 18:18:59 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdDbG-00000005xN6-1bzr;
	Thu, 22 Feb 2024 18:15:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=gujZOU2pwvxo+dyJ8DOtVEZvw7pjQXhi2g7E92ndXhw=; b=P0qw74tRJFRUp3Jjkijtg+BxsW
	whexQg+gzZrspYDt31bJ/kaSEqbkOv68P4fH9QTXlzK63+IVCQnYqeZG2Tk/wYiYlPzFtPBsTsQWe
	VT4u8U4nWvHrRXWNEyrL7x+DryexqFS2mLNFxYIgvoYhzzdUf27OdV6CLjO+aHjJQ3A9mtOhbxsm1
	eKRwSU7S2R8bKj25Wvv6s55uDB1R2wO26EiygQxmv9dbSHDZYqVQDLMr6X27sE8sTXwBIyPmZBzia
	mA5TTw1CVjR6I1g4HVBRLjrMX0fGkoPMw3V7aufPkvbpE7vpU1hJ+py7WQmWlEIqzpQk+8VB+GWVy
	UXMdzsCw==;
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdDbC-00000004Iaz-1gVf;
	Thu, 22 Feb 2024 18:15:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 2E66CCE28BA;
	Thu, 22 Feb 2024 18:15:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 179C3C433F1;
	Thu, 22 Feb 2024 18:15:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708625702;
	bh=35dEQopjUt6A2W23PQkFev/rOQ1owYxpUGVppcAXPW8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=o3rLDusK1Vw0bjrO7qrIF4iJhbGDg6FozAm37wlI3AQmiuDM+fhZG/H0OLsrCBKpf
	 tZA618Fds6vgfNxYnNBDhULGM98xbvKCbsrEoiHHPH4Psu2/yuFiGyHfKGYW9l0+Xi
	 pqnFHKUjnMpSXxjmJvoQH2VebiaDN14iL0B+WFogkGHkJakkD+6/r/w3UNok18r3fH
	 UeFsZN6/NVvbJQmK85+UspdD4daU35QqqkxLOhi6EvVgW6xPTXi+KM0A1ysI0QOcyK
	 XJfXQFHlOZkgW30Oh0xK6oUZIEAEedT8hknOjurXc/f37ynF3QnJx5HK0yvz9DTqiP
	 4AL66vAYjgGlQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Thu, 22 Feb 2024 19:13:58 +0100
Subject: [PATCH v7 12/36] drm/tests: Add output formats tests
MIME-Version: 1.0
Message-Id: <20240222-kms-hdmi-connector-state-v7-12-8f4af575fce2@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=7105; i=mripard@kernel.org;
 h=from:subject:message-id; bh=35dEQopjUt6A2W23PQkFev/rOQ1owYxpUGVppcAXPW8=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKnX+z7oCuXVxn849X/rxa/77958NnPOD/nqxveX/rdzT
 JhzlP/D7Y5SFgYxLgZZMUWWGGHzJXGnZr3uZOObBzOHlQlkCAMXpwBMxN6A4Q+HQc3NaV4KAbWT
 w5Vk1c73LdwVVnXsfX6T3oxXzj3FTGUM//NzLl42vJhwqpdTTsq1kHF/cxnbKhPtwu5LCpF8Iq/
 kGQE=
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_181510_949964_79884500 
X-CRM114-Status: GOOD (  16.78  )
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
index a129ea5f014c..1c3dd8a98fb0 100644
--- a/drivers/gpu/drm/tests/drm_atomic_state_helper_test.c
+++ b/drivers/gpu/drm/tests/drm_atomic_state_helper_test.c
@@ -347,6 +347,15 @@ static void drm_test_check_output_bpc_crtc_mode_not_changed(struct kunit *test)
 static struct kunit_case drm_atomic_helper_connector_hdmi_check_tests[] = {
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
 
@@ -427,10 +436,33 @@ static void drm_test_check_bpc_12_value(struct kunit *test)
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
 	KUNIT_CASE(drm_test_check_bpc_8_value),
 	KUNIT_CASE(drm_test_check_bpc_10_value),
 	KUNIT_CASE(drm_test_check_bpc_12_value),
+	KUNIT_CASE(drm_test_check_format_value),
 	{ }
 };
 
diff --git a/drivers/gpu/drm/tests/drm_connector_test.c b/drivers/gpu/drm/tests/drm_connector_test.c
index a9a57cb23235..5bff67fbed87 100644
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
@@ -510,10 +548,69 @@ static struct kunit_suite drm_get_tv_mode_from_name_test_suite = {
 	.test_cases = drm_get_tv_mode_from_name_tests,
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
 kunit_test_suites(
 	&drmm_connector_hdmi_init_test_suite,
 	&drmm_connector_init_test_suite,
-	&drm_get_tv_mode_from_name_test_suite
+	&drm_get_tv_mode_from_name_test_suite,
+	&drm_hdmi_connector_get_output_format_name_test_suite
 );
 
 MODULE_AUTHOR("Maxime Ripard <maxime@cerno.tech>");

-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
