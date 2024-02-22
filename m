Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B2DCC5478C
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Feb 2024 18:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c2sQU8eZySFullA6E4cK9kf3Yd8vcPRzIHwHRFT+/Ow=; b=3zawK2BPC+Fz31
	oThN+KUeNxXd694mr9ba0YfVd4Z6mbao6smzZSET3PjyG+QKt00HpqrHKBcuSNb1EdHT6GalLQv0Y
	HFAEfMthU46JspJJY9MKAHL2eanuwmhX1Iosj61hTynIZfFCy0w1U8kW5dzp7Rd2kZi7fxcw2b6bp
	tzdbWPg7orVdSiIBD/0qfXI73FwVpOLiDH0TxFvJdgHeF+SQ4BzIOs5Tg+zVLXKBiV7PpLSLso3CV
	A0ZWNlq3gppHrkVrmU/6BhlqHHZlNjzj8ZXbpm77lXIhCVpjmZWxwA6GRE0noqloz+6LVVbrmvSOS
	HhlJysMr8LKz4yCqNPHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdDdr-00000005yJb-49jK;
	Thu, 22 Feb 2024 18:17:56 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdDaq-00000005xAt-1siI;
	Thu, 22 Feb 2024 18:14:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=PnX968uCL3A4UpMj1PEiTX97CKD3pWHCd+e4RNRXo1c=; b=q1yQB2eyeIz9DEaQC2fkTC609C
	94lwByI6qrakZ+4R2VLPSOYSlRYIOvR+dhh48/wgdnH9DRDbkqmy3171D1X/BkK3Lj9yQz6pRO0Ho
	xBOdZqg284GxHEvgjOm0Or0vGd+tVvKmaTLnrqxI5XC+VdtH9msYQ6zFPnU/TbL6UTzdRQ9RbMP9L
	IWKfeaAGZ0oas8MdWz1R7NdBjYvDFAje5wd/BlDWZWPQ33g50nX1nt/IVmf8FunCrez/Ki1fhcU8k
	ZakIdJZjw6DAmgIJr9yL8XAaXJDRElAQpZi6eYd0+L1EVcm4c4/u6Hu+vrMhxABbmDsmAetrK59lj
	eGq6tQAQ==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdDal-00000004IFf-1OG8;
	Thu, 22 Feb 2024 18:14:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C53C461997;
	Thu, 22 Feb 2024 18:14:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19E8EC433F1;
	Thu, 22 Feb 2024 18:14:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708625676;
	bh=1ZewVq1VdElOMix4yzkeT47wHJmNn7LzalSFh1GQZY4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=SrhdV9+hCdPfPtwYyUU3l3UAAq1WLmeEROhir6gx7OZCW57ekMjOBbAWo7CddLsH8
	 Eate8zXjRdUeiGJN+Bw3e4IPd8blvmkoj4AfBK/RDjsHEof+VgmcgIjOLP9R5Tqhrd
	 RLcUDbF9ZyppCR4JLtaEByZPy8N9JwzamGPDDHIfwSZdFfFeyYItotbqAXZlYEX+w/
	 Qdy/8/Sg0jcS4vywSVbemRmTKUMNVNIdDRldoFDvN3eJLD66ENbbiSxV9cXNivG/B6
	 cOCQiHDSUWCHpdcyhl7T+o/bF/ce6njxHsbMDImDHl34Q3pouA7gFdS3St9SNlMJWh
	 G1puVZd4YnR2A==
From: Maxime Ripard <mripard@kernel.org>
Date: Thu, 22 Feb 2024 19:13:49 +0100
Subject: [PATCH v7 03/36] drm/tests: Add helper to create mock plane
MIME-Version: 1.0
Message-Id: <20240222-kms-hdmi-connector-state-v7-3-8f4af575fce2@kernel.org>
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
 linux-sunxi@lists.linux.dev, Maxime Ripard <mripard@kernel.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=4849; i=mripard@kernel.org;
 h=from:subject:message-id; bh=1ZewVq1VdElOMix4yzkeT47wHJmNn7LzalSFh1GQZY4=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKnX+17p6G/lCz0rHHfk5FpdgRMGu30O/a7g+y14M0Osw
 uGurGRqRykLgxgXg6yYIkuMsPmSuFOzXney8c2DmcPKBDKEgYtTACay6A7DXwF57o3CmhM7kv+y
 WvHyx1xexVdyT2pN4fHvoUumeLdVyDMyTFjxm+FBdDvbjb3P2GS9pt5kvzVT5ebBP8+7fpgIWs2
 9yAkA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_181443_645912_2386CE24 
X-CRM114-Status: GOOD (  14.63  )
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

We're going to need a full-blown, functional, KMS device to test more
components of the atomic modesetting infrastructure.

Let's add a new helper to create a dumb, mocked, primary plane. By
default, it will create a linear XRGB8888 plane, using the default
helpers.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/tests/drm_kunit_helpers.c | 85 +++++++++++++++++++++++++++++++
 include/drm/drm_kunit_helpers.h           | 11 ++++
 2 files changed, 96 insertions(+)

diff --git a/drivers/gpu/drm/tests/drm_kunit_helpers.c b/drivers/gpu/drm/tests/drm_kunit_helpers.c
index 4fb11b938bc1..32dc8354641a 100644
--- a/drivers/gpu/drm/tests/drm_kunit_helpers.c
+++ b/drivers/gpu/drm/tests/drm_kunit_helpers.c
@@ -3,6 +3,7 @@
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_drv.h>
+#include <drm/drm_fourcc.h>
 #include <drm/drm_kunit_helpers.h>
 #include <drm/drm_managed.h>
 
@@ -164,5 +165,89 @@ drm_kunit_helper_atomic_state_alloc(struct kunit *test,
 }
 EXPORT_SYMBOL_GPL(drm_kunit_helper_atomic_state_alloc);
 
+static const uint32_t default_plane_formats[] = {
+	DRM_FORMAT_XRGB8888,
+};
+
+static const uint64_t default_plane_modifiers[] = {
+	DRM_FORMAT_MOD_LINEAR,
+	DRM_FORMAT_MOD_INVALID
+};
+
+static const struct drm_plane_helper_funcs default_plane_helper_funcs = {
+};
+
+static const struct drm_plane_funcs default_plane_funcs = {
+	.atomic_destroy_state	= drm_atomic_helper_plane_destroy_state,
+	.atomic_duplicate_state	= drm_atomic_helper_plane_duplicate_state,
+	.reset			= drm_atomic_helper_plane_reset,
+};
+
+/**
+ * drm_kunit_helper_create_primary_plane - Creates a mock primary plane for a KUnit test
+ * @test: The test context object
+ * @drm: The device to alloc the plane for
+ * @funcs: Callbacks for the new plane. Optional.
+ * @helper_funcs: Helpers callbacks for the new plane. Optional.
+ * @formats: array of supported formats (DRM_FORMAT\_\*). Optional.
+ * @num_formats: number of elements in @formats
+ * @modifiers: array of struct drm_format modifiers terminated by
+ *             DRM_FORMAT_MOD_INVALID. Optional.
+ *
+ * This allocates and initializes a mock struct &drm_plane meant to be
+ * part of a mock device for a KUnit test.
+ *
+ * Resources will be cleaned up automatically.
+ *
+ * @funcs will default to the default helpers implementations.
+ * @helper_funcs will default to an empty implementation. @formats will
+ * default to XRGB8888 only. @modifiers will default to a linear
+ * modifier only.
+ *
+ * Returns:
+ * A pointer to the new plane, or an ERR_PTR() otherwise.
+ */
+struct drm_plane *
+drm_kunit_helper_create_primary_plane(struct kunit *test,
+				      struct drm_device *drm,
+				      const struct drm_plane_funcs *funcs,
+				      const struct drm_plane_helper_funcs *helper_funcs,
+				      const uint32_t *formats,
+				      unsigned int num_formats,
+				      const uint64_t *modifiers)
+{
+	struct drm_plane *plane;
+
+	if (!funcs)
+		funcs = &default_plane_funcs;
+
+	if (!helper_funcs)
+		helper_funcs = &default_plane_helper_funcs;
+
+	if (!formats || !num_formats) {
+		formats = default_plane_formats;
+		num_formats = ARRAY_SIZE(default_plane_formats);
+	}
+
+	if (!modifiers)
+		modifiers = default_plane_modifiers;
+
+	plane = __drmm_universal_plane_alloc(drm,
+					     sizeof(struct drm_plane), 0,
+					     0,
+					     funcs,
+					     formats,
+					     num_formats,
+					     default_plane_modifiers,
+					     DRM_PLANE_TYPE_PRIMARY,
+					     NULL);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, plane);
+
+	drm_plane_helper_add(plane, helper_funcs);
+
+	return plane;
+}
+EXPORT_SYMBOL_GPL(drm_kunit_helper_create_primary_plane);
+
 MODULE_AUTHOR("Maxime Ripard <maxime@cerno.tech>");
 MODULE_LICENSE("GPL");
diff --git a/include/drm/drm_kunit_helpers.h b/include/drm/drm_kunit_helpers.h
index 3ae19892229d..38667d624aa8 100644
--- a/include/drm/drm_kunit_helpers.h
+++ b/include/drm/drm_kunit_helpers.h
@@ -10,6 +10,8 @@
 #include <kunit/test.h>
 
 struct drm_device;
+struct drm_plane_funcs;
+struct drm_plane_helper_funcs;
 struct kunit;
 
 struct device *drm_kunit_helper_alloc_device(struct kunit *test);
@@ -99,4 +101,13 @@ drm_kunit_helper_atomic_state_alloc(struct kunit *test,
 				    struct drm_device *drm,
 				    struct drm_modeset_acquire_ctx *ctx);
 
+struct drm_plane *
+drm_kunit_helper_create_primary_plane(struct kunit *test,
+				      struct drm_device *drm,
+				      const struct drm_plane_funcs *funcs,
+				      const struct drm_plane_helper_funcs *helper_funcs,
+				      const uint32_t *formats,
+				      unsigned int num_formats,
+				      const uint64_t *modifiers);
+
 #endif // DRM_KUNIT_HELPERS_H_

-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
