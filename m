Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6836BC5478C
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Feb 2024 18:18:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XywtTrL4jsayy3qc+EUu5l12670az552iWL45wIol0I=; b=E3p8fT9EFBkro2
	LqupgOgnh1ez42QH2UPF2RH2xJ5ZYlHwHCcHWo3+txYO6s/DtMDN1BlIyJZ0w9wJzFR002ZfG9Qhd
	R8qk0oYg7uxPJ8rBuF9Gj+fwvhP9A1LJZActYre3RQ0R3Sza+jVb61dMSb5vBAZMxg/CD3R5XzIN+
	TZ2apqJMH0Loty8uoHa5dhwl9ZN4nYDjoq8MtLPXvUKKCEegs9NrRtBCWFuaXC7dp0V79s2PWkrg0
	egDrPraRS9UJy+oMe7/y6BUi7fmFYISkvBbqoyjjjSKeizLkTfDoP0PfZv6ikCHFMPhiUYjion9Vn
	2wVHQJv00oXrI6gZkpgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdDdt-00000005yL7-139U;
	Thu, 22 Feb 2024 18:17:57 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdDas-00000005xBm-0umw;
	Thu, 22 Feb 2024 18:14:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=NyM5WwLHCQ8kcNNuykIG0lYgEGjrMzTAcwMIS0N2Ln4=; b=Opqf9oI0d45C7Fc/PMHQn5ywCm
	W+l3bUP9xNwTb8SBoXTxlfMwth+vbSfKvqxjwdHyr46bo1zdFGqBppg1oL5SnxUeRtytNiuS/WIqT
	S6NzdZsYrNeS6j7WOOLk+1SX/5qM4Sh76X5+LMgja+8zdfLPVfY9eMB8eCq+GVIhPeqPaywzadzc1
	GtKhsYHwxfzVQQ0+QL7QNxKjXsxJsw23jnEBJGgMwVcSXjLntDRtDMZh8mxT0ch/iuX2Ud8HMz9Nf
	Uuz2LFlwSd+PQXkySQTeUgexM95Z547NdLFbn1UUbGBw6hmLuwfbOGb12yHc5qVgrfP2kBZ9NqBAp
	JXZpPvMw==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdDao-00000004IJE-3Urg;
	Thu, 22 Feb 2024 18:14:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0E60861999;
	Thu, 22 Feb 2024 18:14:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5BDDCC433C7;
	Thu, 22 Feb 2024 18:14:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708625679;
	bh=+carovPUcrljcpRVv3z7gkTq0nha5XSrXPMvLfHaNxg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=VTou2p8d5pbdwCO+Z3GcUPUivBLpLhufXqW8+OuEelivIxPbghA+PYfDssNS9cQvW
	 PzMNpHlt7W84SRvfR1YIr4O2j+HqmAPo0Xy/THcrFGkxc4QNIhVVzK+ULkmExuWVnN
	 obPiBogyAuxx+aVMYoDnUETyR4nYjfrKXkC00K5qfvTLdsuAp9XkKRVs57Blyhm1op
	 +fPF6SEw4ku8nyTrYEM3i562cf0WmT530YbXaneZbD8XEI4EzBTb253/RMOcVZus76
	 N+XSHhummEb3AUf3ZgmWC6x1/9/QBgmkeMxFamaU+YuoIU+Wrue7QoWG6gcqf0l3Ys
	 oUTXxM3hfiMAg==
From: Maxime Ripard <mripard@kernel.org>
Date: Thu, 22 Feb 2024 19:13:50 +0100
Subject: [PATCH v7 04/36] drm/tests: Add helper to create mock crtc
MIME-Version: 1.0
Message-Id: <20240222-kms-hdmi-connector-state-v7-4-8f4af575fce2@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3793; i=mripard@kernel.org;
 h=from:subject:message-id; bh=+carovPUcrljcpRVv3z7gkTq0nha5XSrXPMvLfHaNxg=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKnX+16XHBar+OE7IWvpjKy0Y49FT84w9d/UVemtuWmGb
 lbNOZHnHaUsDGJcDLJiiiwxwuZL4k7Net3JxjcPZg4rE8gQBi5OAZjI3zZGhgcLp77/cPPhwsA/
 5nWW8+c+jzRTm/1ljU73On4Xiw+Cp94yMmxf2JHh+i8td3ZH3d2HKjOSLVO1A0QbvZu0Oa50fTc
 r5wAA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_181447_129847_5397150C 
X-CRM114-Status: GOOD (  13.54  )
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

Let's add a new helper to create a dumb, mocked, CRTC. By default it
will create a CRTC relying only on the default helpers, but drivers are
free to deviate from that.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/tests/drm_kunit_helpers.c | 62 +++++++++++++++++++++++++++++++
 include/drm/drm_kunit_helpers.h           | 10 +++++
 2 files changed, 72 insertions(+)

diff --git a/drivers/gpu/drm/tests/drm_kunit_helpers.c b/drivers/gpu/drm/tests/drm_kunit_helpers.c
index 32dc8354641a..d5317d13d3fc 100644
--- a/drivers/gpu/drm/tests/drm_kunit_helpers.c
+++ b/drivers/gpu/drm/tests/drm_kunit_helpers.c
@@ -249,5 +249,67 @@ drm_kunit_helper_create_primary_plane(struct kunit *test,
 }
 EXPORT_SYMBOL_GPL(drm_kunit_helper_create_primary_plane);
 
+static const struct drm_crtc_helper_funcs default_crtc_helper_funcs = {
+};
+
+static const struct drm_crtc_funcs default_crtc_funcs = {
+	.atomic_destroy_state   = drm_atomic_helper_crtc_destroy_state,
+	.atomic_duplicate_state = drm_atomic_helper_crtc_duplicate_state,
+	.reset                  = drm_atomic_helper_crtc_reset,
+};
+
+/**
+ * drm_kunit_helper_create_crtc - Creates a mock CRTC for a KUnit test
+ * @test: The test context object
+ * @drm: The device to alloc the plane for
+ * @primary: Primary plane for CRTC
+ * @cursor: Cursor plane for CRTC. Optional.
+ * @funcs: Callbacks for the new plane. Optional.
+ * @helper_funcs: Helpers callbacks for the new plane. Optional.
+ *
+ * This allocates and initializes a mock struct &drm_crtc meant to be
+ * part of a mock device for a KUnit test.
+ *
+ * Resources will be cleaned up automatically.
+ *
+ * @funcs will default to the default helpers implementations.
+ * @helper_funcs will default to an empty implementation.
+ *
+ * Returns:
+ * A pointer to the new CRTC, or an ERR_PTR() otherwise.
+ */
+struct drm_crtc *
+drm_kunit_helper_create_crtc(struct kunit *test,
+			     struct drm_device *drm,
+			     struct drm_plane *primary,
+			     struct drm_plane *cursor,
+			     const struct drm_crtc_funcs *funcs,
+			     const struct drm_crtc_helper_funcs *helper_funcs)
+{
+	struct drm_crtc *crtc;
+	int ret;
+
+	if (!funcs)
+		funcs = &default_crtc_funcs;
+
+	if (!helper_funcs)
+		helper_funcs = &default_crtc_helper_funcs;
+
+	crtc = drmm_kzalloc(drm, sizeof(*crtc), GFP_KERNEL);
+	KUNIT_ASSERT_NOT_NULL(test, crtc);
+
+	ret = drmm_crtc_init_with_planes(drm, crtc,
+					 primary,
+					 cursor,
+					 funcs,
+					 NULL);
+	KUNIT_ASSERT_EQ(test, ret, 0);
+
+	drm_crtc_helper_add(crtc, helper_funcs);
+
+	return crtc;
+}
+EXPORT_SYMBOL_GPL(drm_kunit_helper_create_crtc);
+
 MODULE_AUTHOR("Maxime Ripard <maxime@cerno.tech>");
 MODULE_LICENSE("GPL");
diff --git a/include/drm/drm_kunit_helpers.h b/include/drm/drm_kunit_helpers.h
index 38667d624aa8..6e99627edf45 100644
--- a/include/drm/drm_kunit_helpers.h
+++ b/include/drm/drm_kunit_helpers.h
@@ -9,6 +9,8 @@
 
 #include <kunit/test.h>
 
+struct drm_crtc_funcs;
+struct drm_crtc_helper_funcs;
 struct drm_device;
 struct drm_plane_funcs;
 struct drm_plane_helper_funcs;
@@ -110,4 +112,12 @@ drm_kunit_helper_create_primary_plane(struct kunit *test,
 				      unsigned int num_formats,
 				      const uint64_t *modifiers);
 
+struct drm_crtc *
+drm_kunit_helper_create_crtc(struct kunit *test,
+			     struct drm_device *drm,
+			     struct drm_plane *primary,
+			     struct drm_plane *cursor,
+			     const struct drm_crtc_funcs *funcs,
+			     const struct drm_crtc_helper_funcs *helper_funcs);
+
 #endif // DRM_KUNIT_HELPERS_H_

-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
