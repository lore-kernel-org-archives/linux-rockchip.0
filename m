Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C36D2C10F05
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Dec 2023 15:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n2iJNgZbmZB4HhuPd6ZZhbuutYrDfdYKPCqYnDWAttY=; b=4TsL4V2l1i2RWQ
	Kr/l4gSGZYYMrd+4KLfEw8gDiIs9uyDmrYlqvkvIkK/TcJRgJNLEflyVOcVe8m/Z93x67VBh0FjPs
	p1d8z+MSAAtDK0dkiiym/e7FbxqgaU8eJvAJt0dt72fE9j/a3dCiM2Oms8dxK8zaWKW/Pkw2M2Z8a
	kwnlDbDUtIUY9YZL2TOeeO+oaXZ7AkLz6JJEbg+B7EacVZz7b3wieAbOWsteWGy7uDhuw6iek9ouj
	I4r/+kvHxNjEFu4kNJ3Qd0LrjckaM0fJk56m6/mOB+/aESfLhh4O2KoiVP1VccB3uUFboQ9r28rca
	CBCGWz2CP7gvsCyX0S2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGdN-00DGGk-1O;
	Thu, 07 Dec 2023 15:49:53 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGdH-00DG8t-3B;
	Thu, 07 Dec 2023 15:49:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 55430CE1D03;
	Thu,  7 Dec 2023 15:49:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FF5AC433C8;
	Thu,  7 Dec 2023 15:49:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701964185;
	bh=xJnMCtf3ntBpekt5KmTcAothtAUv0sGGZE7OhCZRHUo=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=JPwrJE41BLKIlkHNWiy6AiVj6OR3oFFq1xs/pVvlmt+f02zX1eKvB98ppMdDJNIf6
	 CM8ZfF7YJkEv7o3+e9C41ViWC9VnsI7RE9eqorEbabf/TF1WWfXBYjNLLzw0aqXcLB
	 BGRg2wGPcM5tL9rTvVgBcqOd47nlTXELvQ6ASMR+HyOyGYKLNcuq+KBZm95ipTjJTK
	 h671hahnkHveE/+X/5XdJNN1dCyeuMSP9diIimpNu8KbXaYek8zRd0WyM2OOrQog6h
	 wb0prWAgXTQvdJVvYzttiH34iX6QnaQR3fA7yFC8XllpqzrMADopIhjM0WZiGUwZer
	 zUHIsyJ0NjGFQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Thu, 07 Dec 2023 16:49:28 +0100
Subject: [PATCH v5 05/44] drm/tests: connector: Add tests for
 drmm_connector_init
MIME-Version: 1.0
Message-Id: <20231207-kms-hdmi-connector-state-v5-5-6538e19d634d@kernel.org>
References: <20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org>
In-Reply-To: <20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org>
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
 Maxime Ripard <mripard@kernel.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=5901; i=mripard@kernel.org;
 h=from:subject:message-id; bh=xJnMCtf3ntBpekt5KmTcAothtAUv0sGGZE7OhCZRHUo=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmFL1st37PGm0tde7lxacTNpTdzjXymdKg7Z7b9WdjRI
 e/cr7Gzo5SFQYyLQVZMkSVG2HxJ3KlZrzvZ+ObBzGFlAhnCwMUpABN5PpmRYWVfbPNzJb3zjAcE
 2UqnF3auNU8tfFv5bYXpAUWjH3qsGxj+cEpwu5xb189hueqGspHpPoXJayPu/qtiYeN8/457r1s
 hLwA=
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_074948_451067_4E2C9F14 
X-CRM114-Status: GOOD (  15.04  )
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

drmm_connector_init is the preferred function to initialize a
drm_connector structure. Let's add a bunch of unit tests for it.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/tests/drm_connector_test.c | 170 ++++++++++++++++++++++++++++-
 1 file changed, 169 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/tests/drm_connector_test.c b/drivers/gpu/drm/tests/drm_connector_test.c
index c66aa2dc8d9d..a268847be8d1 100644
--- a/drivers/gpu/drm/tests/drm_connector_test.c
+++ b/drivers/gpu/drm/tests/drm_connector_test.c
@@ -3,10 +3,175 @@
  * Kunit test for drm_modes functions
  */
 
+#include <linux/i2c.h>
+
+#include <drm/drm_atomic_state_helper.h>
 #include <drm/drm_connector.h>
+#include <drm/drm_drv.h>
+#include <drm/drm_kunit_helpers.h>
 
 #include <kunit/test.h>
 
+struct drm_connector_init_priv {
+	struct drm_device drm;
+	struct drm_connector connector;
+	struct i2c_adapter ddc;
+};
+
+static const struct drm_connector_funcs dummy_funcs = {
+	.atomic_destroy_state	= drm_atomic_helper_connector_destroy_state,
+	.atomic_duplicate_state	= drm_atomic_helper_connector_duplicate_state,
+	.reset			= drm_atomic_helper_connector_reset,
+};
+
+static int dummy_ddc_xfer(struct i2c_adapter *adapter,
+			  struct i2c_msg *msgs, int num)
+{
+	return num;
+}
+
+static u32 dummy_ddc_func(struct i2c_adapter *adapter)
+{
+	return I2C_FUNC_I2C | I2C_FUNC_SMBUS_EMUL;
+}
+
+static const struct i2c_algorithm dummy_ddc_algorithm = {
+	.master_xfer = dummy_ddc_xfer,
+	.functionality = dummy_ddc_func,
+};
+
+static void i2c_del_adapter_wrapper(void *ptr)
+{
+	struct i2c_adapter *adap = ptr;
+
+	i2c_del_adapter(adap);
+}
+
+static int drm_test_connector_init(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv;
+	struct device *dev;
+	int ret;
+
+	dev = drm_kunit_helper_alloc_device(test);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, dev);
+
+	priv = drm_kunit_helper_alloc_drm_device(test, dev,
+						 struct drm_connector_init_priv, drm,
+						 DRIVER_MODESET | DRIVER_ATOMIC);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, priv);
+
+	strscpy(priv->ddc.name, "dummy-connector-ddc", sizeof(priv->ddc.name));
+	priv->ddc.owner = THIS_MODULE;
+	priv->ddc.algo = &dummy_ddc_algorithm;
+	priv->ddc.dev.parent = dev;
+
+	ret = i2c_add_adapter(&priv->ddc);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	ret = kunit_add_action_or_reset(test, i2c_del_adapter_wrapper, &priv->ddc);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	test->priv = priv;
+	return 0;
+}
+
+/*
+ * Test that the registration of a bog standard connector works as
+ * expected and doesn't report any error.
+ */
+static void drm_test_drmm_connector_init(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	int ret;
+
+	ret = drmm_connector_init(&priv->drm, &priv->connector,
+				  &dummy_funcs,
+				  DRM_MODE_CONNECTOR_HDMIA,
+				  &priv->ddc);
+	KUNIT_EXPECT_EQ(test, ret, 0);
+}
+
+/*
+ * Test that the registration of a connector without a DDC adapter
+ * doesn't report any error.
+ */
+static void drm_test_drmm_connector_init_null_ddc(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	int ret;
+
+	ret = drmm_connector_init(&priv->drm, &priv->connector,
+				  &dummy_funcs,
+				  DRM_MODE_CONNECTOR_HDMIA,
+				  NULL);
+	KUNIT_EXPECT_EQ(test, ret, 0);
+}
+
+/*
+ * Test that the registration of a connector succeeds for all possible
+ * connector types.
+ */
+static void drm_test_drmm_connector_init_type_valid(struct kunit *test)
+{
+       struct drm_connector_init_priv *priv = test->priv;
+       unsigned int connector_type = *(unsigned int *)test->param_value;
+       int ret;
+
+       ret = drmm_connector_init(&priv->drm, &priv->connector,
+				 &dummy_funcs,
+				 connector_type,
+				 &priv->ddc);
+       KUNIT_EXPECT_EQ(test, ret, 0);
+}
+
+static const unsigned int drm_connector_init_type_valid_tests[] = {
+	DRM_MODE_CONNECTOR_Unknown,
+	DRM_MODE_CONNECTOR_VGA,
+	DRM_MODE_CONNECTOR_DVII,
+	DRM_MODE_CONNECTOR_DVID,
+	DRM_MODE_CONNECTOR_DVIA,
+	DRM_MODE_CONNECTOR_Composite,
+	DRM_MODE_CONNECTOR_SVIDEO,
+	DRM_MODE_CONNECTOR_LVDS,
+	DRM_MODE_CONNECTOR_Component,
+	DRM_MODE_CONNECTOR_9PinDIN,
+	DRM_MODE_CONNECTOR_DisplayPort,
+	DRM_MODE_CONNECTOR_HDMIA,
+	DRM_MODE_CONNECTOR_HDMIB,
+	DRM_MODE_CONNECTOR_TV,
+	DRM_MODE_CONNECTOR_eDP,
+	DRM_MODE_CONNECTOR_VIRTUAL,
+	DRM_MODE_CONNECTOR_DSI,
+	DRM_MODE_CONNECTOR_DPI,
+	DRM_MODE_CONNECTOR_WRITEBACK,
+	DRM_MODE_CONNECTOR_SPI,
+	DRM_MODE_CONNECTOR_USB,
+};
+
+static void drm_connector_init_type_desc(const unsigned int *type, char *desc)
+{
+	sprintf(desc, "%s", drm_get_connector_type_name(*type));
+}
+
+KUNIT_ARRAY_PARAM(drm_connector_init_type_valid,
+		  drm_connector_init_type_valid_tests,
+		  drm_connector_init_type_desc);
+
+static struct kunit_case drmm_connector_init_tests[] = {
+	KUNIT_CASE(drm_test_drmm_connector_init),
+	KUNIT_CASE(drm_test_drmm_connector_init_null_ddc),
+	KUNIT_CASE_PARAM(drm_test_drmm_connector_init_type_valid,
+			 drm_connector_init_type_valid_gen_params),
+	{ }
+};
+
+static struct kunit_suite drmm_connector_init_test_suite = {
+	.name = "drmm_connector_init",
+	.init = drm_test_connector_init,
+	.test_cases = drmm_connector_init_tests,
+};
+
 struct drm_get_tv_mode_from_name_test {
 	const char *name;
 	enum drm_connector_tv_mode expected_mode;
@@ -70,7 +235,10 @@ static struct kunit_suite drm_get_tv_mode_from_name_test_suite = {
 	.test_cases = drm_get_tv_mode_from_name_tests,
 };
 
-kunit_test_suite(drm_get_tv_mode_from_name_test_suite);
+kunit_test_suites(
+	&drmm_connector_init_test_suite,
+	&drm_get_tv_mode_from_name_test_suite
+);
 
 MODULE_AUTHOR("Maxime Ripard <maxime@cerno.tech>");
 MODULE_LICENSE("GPL");

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
