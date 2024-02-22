Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B797C48BF8
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Feb 2024 18:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BJGCavozoq5mFMd9WghetyCN3OjWwkcdX2RzYS25pMA=; b=uedYi3L1gZt5Nx
	QTBmiQRNWpKZlKQZUd1+4Jx4x/qjahUjOt9a6jMJrme0VJpf8PO8xLYAWZVCrn94Vm2poWq7PplEt
	JOI36wteKzr8HQoTflbaw1Hadn7S2lUTQKmGwoOHfnezxVtRgAsg4sdXWbYxPdqZE6RccaWU2X7iy
	ODg/mHgN3Br8qkX8/2/Qu2wpGdD8M7q6QV6sm5pjFpeDsaxtAQ38yoZpIsSnTbKAzaQwb9EGh2CdA
	2KLd8zQewY+AAaOwgsdA1xbNIB111ED13qZ9t53hKSykcLH3tUfAP3Z8yORmYwUA56iU5yofbhJ9x
	vFmxbLpbMt2Ia9EcDzLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdE0Q-000000069x0-0GA1;
	Thu, 22 Feb 2024 18:41:14 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdDzd-000000069TY-3c2Q;
	Thu, 22 Feb 2024 18:40:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=GcpVXsJcy60zS9t2ACfwVyym7WjKVKCydaA9dFZHyko=; b=Ral5jKdt2DTRbLr3WKr2ji5iHb
	R5okW/WILKg+CFz5YsgP2ThOlE4I9eUt7TCNkmGqlwpenqhUAX9kSItytapWxQyYstwlT9osUblyp
	06PBGzi7t+26FHA0yOJdn5ahwxZ+riU4D9pNyMUMrKQit/WLye2Pwj26DKt0ewJpt0ZUQUkq+ctbM
	AgOR6aBqNyThURmqJLUiiiTKQdvKviK8ECCaxq1kM5DVLfNjNwhwbApZNejdwre9Q3buzXM9j+d7Z
	q54C6Oaz+hYjvC8wTIPRQGzP/vqZMkKyCXDJ8DJpFHjw3zN+iC5+Xaadxd0CGF2Tg3aIBQFAcwD02
	0F+0OeFg==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdDbz-00000004Iu4-1mv0;
	Thu, 22 Feb 2024 18:16:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C25B0619FE;
	Thu, 22 Feb 2024 18:15:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25C59C433C7;
	Thu, 22 Feb 2024 18:15:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708625752;
	bh=8tamAetoSgHQ1OcsRskLkqCtZqUknTtgTwiDjxhENTo=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=QR1hMWSIWiLieEB07vaDhgJeHXTdXha3tjaZH33S3sg362WRN1ZZmhTXdIBRJ2RIf
	 kx5G6BVDwCFO2Pw8zKk3fB2XvclUOSpITaHM3lqqvIkXIYzyl96eagH3ajpktkHGz1
	 RqnIoyB6FYqgD63xmGjdZdw+smV+y0a//JDUBtaa+JlqvGSJ2DeBCP3hVa6WBFe0BC
	 QQE2Ify7Tb7bNNr9u3aY2UU5ba24WpD/o0QL6ND+9jauSeUtCls8QxG/nLoBrbfgrr
	 cLgiQYtjjkcwsJFjqul27/k+DKr/TkF29jBqwh7bwT7BBxywGsC8TgpXk8O5R0haLC
	 ksyfoNvuab6Pw==
From: Maxime Ripard <mripard@kernel.org>
Date: Thu, 22 Feb 2024 19:14:16 +0100
Subject: [PATCH v7 30/36] drm/vc4: tests: Convert to plane creation helper
MIME-Version: 1.0
Message-Id: <20240222-kms-hdmi-connector-state-v7-30-8f4af575fce2@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2025; i=mripard@kernel.org;
 h=from:subject:message-id; bh=8tamAetoSgHQ1OcsRskLkqCtZqUknTtgTwiDjxhENTo=;
 b=kA0DAAoW4+8Nb2cYUcUByyZiAGXXjvyhaRrBDlWjl3LMUICDVFNoGLYbz56S+cfYlsUBjdB/8
 4h1BAAWCgAdFiEEXBM3pF7KmuuJBg6e4+8Nb2cYUcUFAmXXjvwACgkQ4+8Nb2cYUcX6lQD+LVKq
 N8MxTOTivfG8G6auJjmW4gY0MqC1O3/UbUDHPsgBAL3lPa49s3q5gr6HBNPRtQL4Ct9vghvk+cx
 KHDnHkGQN
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_181559_747065_1C2F8177 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
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

Now that we have a plane create helper for kunit mocked drivers, let's
convert to it in vc4.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/vc4/tests/vc4_mock_plane.c | 34 +++++++-----------------------
 1 file changed, 8 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/vc4/tests/vc4_mock_plane.c b/drivers/gpu/drm/vc4/tests/vc4_mock_plane.c
index 973f5f929097..14357db82238 100644
--- a/drivers/gpu/drm/vc4/tests/vc4_mock_plane.c
+++ b/drivers/gpu/drm/vc4/tests/vc4_mock_plane.c
@@ -1,43 +1,25 @@
 // SPDX-License-Identifier: GPL-2.0
 
-#include <drm/drm_atomic_state_helper.h>
-#include <drm/drm_fourcc.h>
-#include <drm/drm_modeset_helper_vtables.h>
+#include <drm/drm_kunit_helpers.h>
 #include <drm/drm_plane.h>
 
 #include <kunit/test.h>
 
 #include "vc4_mock.h"
 
-static const struct drm_plane_helper_funcs vc4_dummy_plane_helper_funcs = {
-};
-
-static const struct drm_plane_funcs vc4_dummy_plane_funcs = {
-	.atomic_destroy_state	= drm_atomic_helper_plane_destroy_state,
-	.atomic_duplicate_state	= drm_atomic_helper_plane_duplicate_state,
-	.reset			= drm_atomic_helper_plane_reset,
-};
-
-static const uint32_t vc4_dummy_plane_formats[] = {
-	DRM_FORMAT_XRGB8888,
-};
-
 struct drm_plane *vc4_dummy_plane(struct kunit *test, struct drm_device *drm,
 				  enum drm_plane_type type)
 {
 	struct drm_plane *plane;
 
-	plane = __drmm_universal_plane_alloc(drm, sizeof(struct drm_plane), 0,
-						 0,
-						 &vc4_dummy_plane_funcs,
-						 vc4_dummy_plane_formats,
-						 ARRAY_SIZE(vc4_dummy_plane_formats),
-						 NULL,
-						 DRM_PLANE_TYPE_PRIMARY,
-						 NULL);
+	KUNIT_ASSERT_EQ(test, type, DRM_PLANE_TYPE_PRIMARY);
+
+	plane = drm_kunit_helper_create_primary_plane(test, drm,
+						      NULL,
+						      NULL,
+						      NULL, 0,
+						      NULL);
 	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, plane);
 
-	drm_plane_helper_add(plane, &vc4_dummy_plane_helper_funcs);
-
 	return plane;
 }

-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
