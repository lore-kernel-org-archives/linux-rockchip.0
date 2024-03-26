Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61983CD1283
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Mar 2024 18:03:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fgmytUQbeerlJwoHm2BAWGmtNBmYFrmThQSFWYvC6Vo=; b=Fv2+2WvO+hXjA1
	s40QWYujEsHYpwodSbnbfd7iiJKjfPkY9i97sut5DU1kck3FUoPAEd7s3g80nY0yDc0T7sch9i6gq
	1DKUo2kiqw8ARosaHLc7iByYrBsq+R8x41OEYy/jIZ/JN9wNxU8YK8SydszWAHc7W9GUcJhuBVluu
	NHKprz6aQ+4tAucMFPBBCuJ3jIMEhSBu4Jha6n4oPZPG6Hl6Li/u4E92qbwecRuPT9k4GOJH6FsEy
	jdp7jgY3HbG7Y3MHvXKSfziMJGQcyVgfLOGlD3JCWxI9NxbdxmHCstQmcCIRymR7oS6adrnVYixgK
	mY1XV+yv+V9D5I7upUuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpB8a-00000005qYa-32MS;
	Tue, 26 Mar 2024 18:03:04 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp8vf-00000005Fv2-21If;
	Tue, 26 Mar 2024 15:41:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id B16B8CE1F8A;
	Tue, 26 Mar 2024 15:41:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F379BC43394;
	Tue, 26 Mar 2024 15:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711467693;
	bh=Z1h9h/BKTg3T18HJhrzyl0i2u670WHhwWj1kWnPTCTU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=jzFo5rsmPUVk4PfFMT/bj1M8Am7ySltiMXOCCEtwHRheojPmNoZ51nn0J6wBugVEW
	 5I4f1Dd0lf9L8CZur7HDQRKhcUuqGVI8FoGMy0WPRr2z1zop6pF2Q3qsBFmBQjSC6p
	 TYeKh0aW3fFUgfTGZ9fL2u9F7LG4/G4WhaJ1j1t7q9IN9DrZN7ueFRG870mLFi/A7w
	 liVXiuQz1uXZ81dvce5QZC/DuEXhz3FlkZ9LqokB5ODCiRsXSzAoWMjU1gnGdpMNnB
	 /0OBIh1uCGhmnU3nXsPnqQIhF3E8ZWnSaKt9JJNJw1AdvP2oZlVrPMb2y7AVALNaYE
	 fh8zr/Pv74COg==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 26 Mar 2024 16:40:26 +0100
Subject: [PATCH v11 22/28] drm/tests: Add infoframes test
MIME-Version: 1.0
Message-Id: <20240326-kms-hdmi-connector-state-v11-22-c5680ffcf261@kernel.org>
References: <20240326-kms-hdmi-connector-state-v11-0-c5680ffcf261@kernel.org>
In-Reply-To: <20240326-kms-hdmi-connector-state-v11-0-c5680ffcf261@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=8730; i=mripard@kernel.org;
 h=from:subject:message-id; bh=Z1h9h/BKTg3T18HJhrzyl0i2u670WHhwWj1kWnPTCTU=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDGlMbzLEXKpUPqnnizc7hHDmXZ2Ss43HcnbvpYNdk4ROd
 Zc2qX7qmMrCIMzJICumyPJEJuz08vbFVQ72K3/AzGFlAhnCwMUpABNx1WZs2Bgb+kjkYcfJmZt+
 +ni35cvXM97qP/i80dW0cu6RA4+u/FU41+K3clngbUXR64YMoRk3GOv0Ij3KjefrJBbJMu28buF
 XwrVs2/3pihP+1BXNuX80icV03zNulcZrX/dISYVEt9q8ZwIA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_084136_411763_0EC672CD 
X-CRM114-Status: GOOD (  11.74  )
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

The previous patch added the generation of the infoframes matching an
HDMI connector state. Let's add a few tests to make sure it works as
expected.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/tests/drm_connector_test.c | 219 +++++++++++++++++++++++++++++
 1 file changed, 219 insertions(+)

diff --git a/drivers/gpu/drm/tests/drm_connector_test.c b/drivers/gpu/drm/tests/drm_connector_test.c
index 9129cee56975..9260aa378421 100644
--- a/drivers/gpu/drm/tests/drm_connector_test.c
+++ b/drivers/gpu/drm/tests/drm_connector_test.c
@@ -219,10 +219,221 @@ static void drm_test_connector_hdmi_init_null_ddc(struct kunit *test)
 				       BIT(HDMI_COLORSPACE_RGB),
 				       8);
 	KUNIT_EXPECT_EQ(test, ret, 0);
 }
 
+/*
+ * Test that the registration of an HDMI connector with a NULL vendor
+ * fails.
+ */
+static void drm_test_connector_hdmi_init_null_vendor(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	int ret;
+
+	ret = drmm_connector_hdmi_init(&priv->drm, &priv->connector,
+				       NULL, "Product",
+				       &dummy_funcs,
+				       &dummy_hdmi_funcs,
+				       DRM_MODE_CONNECTOR_HDMIA,
+				       &priv->ddc,
+				       BIT(HDMI_COLORSPACE_RGB),
+				       8);
+	KUNIT_EXPECT_LT(test, ret, 0);
+}
+
+/*
+ * Test that the registration of an HDMI connector with a NULL product
+ * fails.
+ */
+static void drm_test_connector_hdmi_init_null_product(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	int ret;
+
+	ret = drmm_connector_hdmi_init(&priv->drm, &priv->connector,
+				       "Vendor", NULL,
+				       &dummy_funcs,
+				       &dummy_hdmi_funcs,
+				       DRM_MODE_CONNECTOR_HDMIA,
+				       &priv->ddc,
+				       BIT(HDMI_COLORSPACE_RGB),
+				       8);
+	KUNIT_EXPECT_LT(test, ret, 0);
+}
+
+/*
+ * Test that the registration of a connector with a valid, shorter than
+ * the max length, product name succeeds, and is stored padded with 0.
+ */
+static void drm_test_connector_hdmi_init_product_valid(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	const unsigned char expected_product[DRM_CONNECTOR_HDMI_PRODUCT_LEN] = {
+		'P', 'r', 'o', 'd',
+	};
+	const char *product_name = "Prod";
+	int ret;
+
+	KUNIT_ASSERT_LT(test, strlen(product_name), DRM_CONNECTOR_HDMI_PRODUCT_LEN);
+
+	ret = drmm_connector_hdmi_init(&priv->drm, &priv->connector,
+				       "Vendor", product_name,
+				       &dummy_funcs,
+				       &dummy_hdmi_funcs,
+				       DRM_MODE_CONNECTOR_HDMIA,
+				       &priv->ddc,
+				       BIT(HDMI_COLORSPACE_RGB),
+				       8);
+	KUNIT_EXPECT_EQ(test, ret, 0);
+	KUNIT_EXPECT_MEMEQ(test,
+			   priv->connector.hdmi.product,
+			   expected_product,
+			   sizeof(priv->connector.hdmi.product));
+}
+
+/*
+ * Test that the registration of a connector with a valid, at max
+ * length, product name succeeds, and is stored padded without any
+ * trailing \0.
+ */
+static void drm_test_connector_hdmi_init_product_length_exact(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	const unsigned char expected_product[DRM_CONNECTOR_HDMI_PRODUCT_LEN] = {
+		'P', 'r', 'o', 'd', 'u', 'c', 't',
+		'P', 'r', 'o', 'd', 'u', 'c', 't',
+		'P', 'r',
+	};
+	const char *product_name = "ProductProductPr";
+	int ret;
+
+	KUNIT_ASSERT_EQ(test, strlen(product_name), DRM_CONNECTOR_HDMI_PRODUCT_LEN);
+
+	ret = drmm_connector_hdmi_init(&priv->drm, &priv->connector,
+				       "Vendor", product_name,
+				       &dummy_funcs,
+				       &dummy_hdmi_funcs,
+				       DRM_MODE_CONNECTOR_HDMIA,
+				       &priv->ddc,
+				       BIT(HDMI_COLORSPACE_RGB),
+				       8);
+	KUNIT_EXPECT_EQ(test, ret, 0);
+	KUNIT_EXPECT_MEMEQ(test,
+			   priv->connector.hdmi.product,
+			   expected_product,
+			   sizeof(priv->connector.hdmi.product));
+}
+
+/*
+ * Test that the registration of a connector with a product name larger
+ * than the maximum length fails.
+ */
+static void drm_test_connector_hdmi_init_product_length_too_long(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	const char *product_name = "ProductProductProduct";
+	int ret;
+
+	KUNIT_ASSERT_GT(test, strlen(product_name), DRM_CONNECTOR_HDMI_PRODUCT_LEN);
+
+	ret = drmm_connector_hdmi_init(&priv->drm, &priv->connector,
+				       "Vendor", product_name,
+				       &dummy_funcs,
+				       &dummy_hdmi_funcs,
+				       DRM_MODE_CONNECTOR_HDMIA,
+				       &priv->ddc,
+				       BIT(HDMI_COLORSPACE_RGB),
+				       8);
+	KUNIT_EXPECT_LT(test, ret, 0);
+}
+
+/*
+ * Test that the registration of a connector with a vendor name smaller
+ * than the maximum length succeeds, and is stored padded with zeros.
+ */
+static void drm_test_connector_hdmi_init_vendor_valid(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	const char expected_vendor[DRM_CONNECTOR_HDMI_VENDOR_LEN] = {
+		'V', 'e', 'n', 'd',
+	};
+	const char *vendor_name = "Vend";
+	int ret;
+
+	KUNIT_ASSERT_LT(test, strlen(vendor_name), DRM_CONNECTOR_HDMI_VENDOR_LEN);
+
+	ret = drmm_connector_hdmi_init(&priv->drm, &priv->connector,
+				       vendor_name, "Product",
+				       &dummy_funcs,
+				       &dummy_hdmi_funcs,
+				       DRM_MODE_CONNECTOR_HDMIA,
+				       &priv->ddc,
+				       BIT(HDMI_COLORSPACE_RGB),
+				       8);
+	KUNIT_EXPECT_EQ(test, ret, 0);
+	KUNIT_EXPECT_MEMEQ(test,
+			   priv->connector.hdmi.vendor,
+			   expected_vendor,
+			   sizeof(priv->connector.hdmi.vendor));
+}
+
+/*
+ * Test that the registration of a connector with a vendor name at the
+ * maximum length succeeds, and is stored padded without the trailing
+ * zero.
+ */
+static void drm_test_connector_hdmi_init_vendor_length_exact(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	const char expected_vendor[DRM_CONNECTOR_HDMI_VENDOR_LEN] = {
+		'V', 'e', 'n', 'd', 'o', 'r',
+		'V', 'e',
+	};
+	const char *vendor_name = "VendorVe";
+	int ret;
+
+	KUNIT_ASSERT_EQ(test, strlen(vendor_name), DRM_CONNECTOR_HDMI_VENDOR_LEN);
+
+	ret = drmm_connector_hdmi_init(&priv->drm, &priv->connector,
+				       vendor_name, "Product",
+				       &dummy_funcs,
+				       &dummy_hdmi_funcs,
+				       DRM_MODE_CONNECTOR_HDMIA,
+				       &priv->ddc,
+				       BIT(HDMI_COLORSPACE_RGB),
+				       8);
+	KUNIT_EXPECT_EQ(test, ret, 0);
+	KUNIT_EXPECT_MEMEQ(test,
+			   priv->connector.hdmi.vendor,
+			   expected_vendor,
+			   sizeof(priv->connector.hdmi.vendor));
+}
+
+/*
+ * Test that the registration of a connector with a vendor name larger
+ * than the maximum length fails.
+ */
+static void drm_test_connector_hdmi_init_vendor_length_too_long(struct kunit *test)
+{
+	struct drm_connector_init_priv *priv = test->priv;
+	const char *vendor_name = "VendorVendor";
+	int ret;
+
+	KUNIT_ASSERT_GT(test, strlen(vendor_name), DRM_CONNECTOR_HDMI_VENDOR_LEN);
+
+	ret = drmm_connector_hdmi_init(&priv->drm, &priv->connector,
+				       vendor_name, "Product",
+				       &dummy_funcs,
+				       &dummy_hdmi_funcs,
+				       DRM_MODE_CONNECTOR_HDMIA,
+				       &priv->ddc,
+				       BIT(HDMI_COLORSPACE_RGB),
+				       8);
+	KUNIT_EXPECT_LT(test, ret, 0);
+}
+
 /*
  * Test that the registration of a connector with an invalid maximum bpc
  * count fails.
  */
 static void drm_test_connector_hdmi_init_bpc_invalid(struct kunit *test)
@@ -499,10 +710,18 @@ static struct kunit_case drmm_connector_hdmi_init_tests[] = {
 	KUNIT_CASE(drm_test_connector_hdmi_init_bpc_invalid),
 	KUNIT_CASE(drm_test_connector_hdmi_init_bpc_null),
 	KUNIT_CASE(drm_test_connector_hdmi_init_formats_empty),
 	KUNIT_CASE(drm_test_connector_hdmi_init_formats_no_rgb),
 	KUNIT_CASE(drm_test_connector_hdmi_init_null_ddc),
+	KUNIT_CASE(drm_test_connector_hdmi_init_null_product),
+	KUNIT_CASE(drm_test_connector_hdmi_init_null_vendor),
+	KUNIT_CASE(drm_test_connector_hdmi_init_product_length_exact),
+	KUNIT_CASE(drm_test_connector_hdmi_init_product_length_too_long),
+	KUNIT_CASE(drm_test_connector_hdmi_init_product_valid),
+	KUNIT_CASE(drm_test_connector_hdmi_init_vendor_length_exact),
+	KUNIT_CASE(drm_test_connector_hdmi_init_vendor_length_too_long),
+	KUNIT_CASE(drm_test_connector_hdmi_init_vendor_valid),
 	KUNIT_CASE_PARAM(drm_test_connector_hdmi_init_type_valid,
 			 drm_connector_hdmi_init_type_valid_gen_params),
 	KUNIT_CASE_PARAM(drm_test_connector_hdmi_init_type_invalid,
 			 drm_connector_hdmi_init_type_invalid_gen_params),
 	{ }

-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
